void *sub_100244BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1001F55A4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1001AC934(v4, v11, &qword_1003771F8, &qword_1002F23A0);
      sub_1001A551C(&qword_1003771F8, &qword_1002F23A0);
      sub_1001A551C(&qword_100379B70, &qword_1002F2380);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F55A4((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[6 * v6];
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100244D40(unint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_100249EA4(a1, 1, &v6);

  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_100244DE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_100377070, &qword_1002F2258);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1001A773C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100201570(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100201570(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100201570(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100201570(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_1002450A8(uint64_t a1, uint64_t a2)
{
  sub_1001AC934(a1, v7, &qword_1003771E8, &qword_1002F2390);
  if (swift_dynamicCast())
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  sub_1002015DC(v7);
  sub_1001AC934(a2, v7, &qword_1003771E8, &qword_1002F2390);
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1002015DC(v7);
  return v4 < v3;
}

uint64_t sub_100245198(int64_t a1, void *a2)
{
  if (qword_100374FC0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v5 = swift_allocObject();
  v6 = &type metadata for Int;
  v125 = xmmword_1002EED40;
  *(v5 + 16) = xmmword_1002EED40;
  v7 = &protocol witness table for Int;
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = a1;
  os_log(_:dso:log:type:_:)();

  if (a1 > 806912)
  {
    if (a1 != 806913)
    {
      if (a1 != 827650)
      {
        if (a1 == 827746)
        {
          v8 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
          *&v129 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
          *(&v129 + 1) = v8;

          v9 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v9)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v129 = 0u;
            v130 = 0u;
          }

          v127 = v129;
          v128 = v130;
          if (*(&v130 + 1))
          {
            if (swift_dynamicCast())
            {
              v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
              sub_1001A5474(*&v126[0], *(&v126[0] + 1));
              goto LABEL_79;
            }
          }

          else
          {
            sub_1001AC99C(&v127, &qword_100375D68, &unk_1002F2370);
          }

          v56.super.isa = 0;
LABEL_79:
          v57 = [objc_allocWithZone(CellularRatLacSrvInfo) initWithData:v56.super.isa];

          if (!v57)
          {
            goto LABEL_159;
          }

          v58 = [v57 dictionaryRepresentation];

          if (v58)
          {
LABEL_90:
            v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            return v22;
          }

          return 0;
        }

        goto LABEL_19;
      }

      v14 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
      *&v129 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
      *(&v129 + 1) = v14;

      v15 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v15)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v129 = 0u;
        v130 = 0u;
      }

      v127 = v129;
      v128 = v130;
      if (*(&v130 + 1))
      {
        if (swift_dynamicCast())
        {
          v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1001A5474(*&v126[0], *(&v126[0] + 1));
LABEL_37:
          v25 = [objc_allocWithZone(CellularRegisteredPlmnStatus) initWithData:v24.super.isa];

          if (!v25)
          {
            goto LABEL_157;
          }

          v26 = [v25 dictionaryRepresentation];

          if (!v26)
          {
            return 0;
          }

          v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v131 = v22;
          *&v129 = 0x6C5F6E6D6C706865;
          *(&v129 + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          if (!v22[2] || (v27 = sub_1001F6774(&v127), (v28 & 1) == 0))
          {
            sub_1002015DC(&v127);
            v129 = 0u;
            v130 = 0u;
            sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
            return v22;
          }

          sub_1001A773C(v22[7] + 32 * v27, &v129);
          sub_1002015DC(&v127);
          sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
          *&v126[0] = 0x6C5F6E6D6C706865;
          *(&v126[0] + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          if (!v22[2] || (v29 = sub_1001F6774(&v127), (v30 & 1) == 0))
          {
            sub_1002015DC(&v127);
            return v22;
          }

          sub_1001A773C(v22[7] + 32 * v29, &v129);
          sub_1002015DC(&v127);
          sub_1001A551C(&unk_100378CA0, &qword_1002F3FE8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return v22;
          }

          v31 = *(*&v126[0] + 16);
          if (!v31)
          {

            return v22;
          }

          v32 = 0;
          v33 = 0;
          v34 = *&v126[0] + 32;
          v35 = 1;
          v36 = 1;
          do
          {
            sub_1001A773C(v34, &v127);
            sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
            if (swift_dynamicCast())
            {
              v62 = v129;
              if (*(v129 + 16) && (v63 = sub_1001F66B8(4408141, 0xE300000000000000), (v64 & 1) != 0))
              {
                sub_1001A773C(*(v62 + 56) + 32 * v63, &v127);
                v65 = swift_dynamicCast();
                if (v65)
                {
                  v33 = v129;
                }

                else
                {
                  v33 = 0;
                }

                v36 = v65 ^ 1;
              }

              else
              {
                v33 = 0;
                v36 = 1;
              }

              if (*(v62 + 16) && (v66 = sub_1001F66B8(4410957, 0xE300000000000000), (v67 & 1) != 0))
              {
                sub_1001A773C(*(v62 + 56) + 32 * v66, &v127);

                v68 = swift_dynamicCast();
                if (v68)
                {
                  v32 = v129;
                }

                else
                {
                  v32 = 0;
                }

                v35 = v68 ^ 1;
              }

              else
              {

                v32 = 0;
                v35 = 1;
              }
            }

            v34 += 32;
            --v31;
          }

          while (v31);

          if ((v36 | v35))
          {
            return v22;
          }

          *&v129 = 1313688656;
          *(&v129 + 1) = 0xE400000000000000;
          AnyHashable.init<A>(_:)();
          *&v129 = v33;
          *&v129 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v129 + 1) = v112;

          v113._countAndFlagsBits = 32;
          v113._object = 0xE100000000000000;
          String.append(_:)(v113);

          v114 = v129;
          *&v129 = v32;
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;
          v129 = v114;

          v118._countAndFlagsBits = v115;
          v118._object = v117;
          String.append(_:)(v118);

          *(&v130 + 1) = &type metadata for String;
          sub_100201570(&v129, v126);
          v119 = v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1001F8F64(v126, &v127, isUniquelyReferenced_nonNull_native);
          sub_1002015DC(&v127);
          v131 = v119;
          *&v129 = 0x6C5F6E6D6C706865;
          *(&v129 + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          sub_1001F69A4(&v127, &v129);
LABEL_30:
          sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
          sub_1002015DC(&v127);
          return v131;
        }
      }

      else
      {
        sub_1001AC99C(&v127, &qword_100375D68, &unk_1002F2370);
      }

      v24.super.isa = 0;
      goto LABEL_37;
    }

    v12 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
    *&v129 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
    *(&v129 + 1) = v12;

    v13 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v13)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v127 = v129;
    v128 = v130;
    if (*(&v130 + 1))
    {
      if (swift_dynamicCast())
      {
        v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1001A5474(*&v126[0], *(&v126[0] + 1));
LABEL_27:
        v21 = [objc_allocWithZone(CellularNrOtaMsg) initWithData:v20.super.isa];

        if (!v21)
        {
          goto LABEL_156;
        }

        v22 = [v21 dictionaryRepresentation];

        if (!v22)
        {
          return v22;
        }

        v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v131 = v23;
        *&v129 = 0x6E61725F71657266;
        *(&v129 + 1) = 0xEA00000000006567;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v127, &v129);
        sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v127);
        *&v129 = 0x6C6C65635F796870;
        *(&v129 + 1) = 0xEB0000000064695FLL;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v127, &v129);
        sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v127);
        *&v129 = 0x77625F6C64;
        *(&v129 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v127, &v129);
        sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v127);
        strcpy(&v129, "freq_band_ind");
        HIWORD(v129) = -4864;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v127, &v129);
        sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v127);
        *&v129 = 0x77625F6C64;
        *(&v129 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v127, &v129);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1001AC99C(&v127, &qword_100375D68, &unk_1002F2370);
    }

    v20.super.isa = 0;
    goto LABEL_27;
  }

  if (a1 != 806480)
  {
    if (a1 != 806743)
    {
LABEL_19:
      if (qword_100374F98 != -1)
      {
LABEL_152:
        swift_once();
      }

      static os_log_type_t.default.getter();
      v19 = swift_allocObject();
      *(v19 + 16) = v125;
      *(v19 + 56) = v6;
      *(v19 + 64) = v7;
      *(v19 + 32) = a1;
      os_log(_:dso:log:type:_:)();
LABEL_91:

      return 0;
    }

    v10 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
    *&v129 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
    *(&v129 + 1) = v10;

    v11 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v129 = 0u;
      v130 = 0u;
    }

    v127 = v129;
    v128 = v130;
    if (*(&v130 + 1))
    {
      if (swift_dynamicCast())
      {
        v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1001A5474(*&v126[0], *(&v126[0] + 1));
        goto LABEL_88;
      }
    }

    else
    {
      sub_1001AC99C(&v127, &qword_100375D68, &unk_1002F2370);
    }

    v59.super.isa = 0;
LABEL_88:
    v60 = [objc_allocWithZone(CellularLteConnectionStats) initWithData:v59.super.isa];

    if (!v60)
    {
      goto LABEL_160;
    }

    v58 = [v60 dictionaryRepresentation];

    if (v58)
    {
      goto LABEL_90;
    }

    return 0;
  }

  v16 = sub_1001FD444(_swiftEmptyArrayStorage);
  v131 = v16;
  v17 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
  *&v129 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
  *(&v129 + 1) = v17;

  v18 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v127 = v129;
  v128 = v130;
  if (*(&v130 + 1))
  {
    if (swift_dynamicCast())
    {
      v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001A5474(*&v126[0], *(&v126[0] + 1));
      goto LABEL_53;
    }
  }

  else
  {
    sub_1001AC99C(&v127, &qword_100375D68, &unk_1002F2370);
  }

  v37.super.isa = 0;
LABEL_53:
  v38 = [objc_allocWithZone(CellularLteCellMetric) initWithData:v37.super.isa];

  if (!v38)
  {
    goto LABEL_158;
  }

  v39 = [v38 dictionaryRepresentation];

  if (!v39)
  {
    goto LABEL_91;
  }

  v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v129 = 0x64695F73627573;
  *(&v129 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v40 + 16) && (v41 = sub_1001F6774(&v127), (v42 & 1) != 0))
  {
    sub_1001A773C(*(v40 + 56) + 32 * v41, &v129);
    sub_1002015DC(&v127);
    sub_100201570(&v129, v126);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001F90B0(v126, 0x64695F73627573, 0xE700000000000000, v43);
    v131 = v16;
  }

  else
  {
    sub_1002015DC(&v127);
    sub_1001F6A48(0x64695F73627573, 0xE700000000000000, &v129);
    sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
  }

  *&v129 = 0x6D617473656D6974;
  *(&v129 + 1) = 0xE900000000000070;
  AnyHashable.init<A>(_:)();
  if (*(v40 + 16) && (v44 = sub_1001F6774(&v127), (v45 & 1) != 0))
  {
    sub_1001A773C(*(v40 + 56) + 32 * v44, &v129);
    sub_1002015DC(&v127);
    sub_100201570(&v129, v126);
    v46 = v131;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001F90B0(v126, 0x6D617473656D6974, 0xE900000000000070, v47);
    v131 = v46;
  }

  else
  {
    sub_1002015DC(&v127);
    sub_1001F6A48(0x6D617473656D6974, 0xE900000000000070, &v129);
    sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
  }

  v48 = sub_1002467B8(v40);

  if (!v48)
  {
    goto LABEL_95;
  }

  if (!*(v48 + 16))
  {
    goto LABEL_94;
  }

  v49 = sub_1001F66B8(0x7274656D5F65746CLL, 0xEB00000000736369);
  if ((v50 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_1001A773C(*(v48 + 56) + 32 * v49, &v127);

  sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_95;
  }

  if (!*(v129 + 16))
  {
    goto LABEL_94;
  }

  v51 = *(v129 + 32);

  if (!*(v51 + 16))
  {
    goto LABEL_94;
  }

  v52 = sub_1001F66B8(1819043171, 0xE400000000000000);
  if ((v53 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_1001A773C(*(v51 + 56) + 32 * v52, &v127);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_95:
    v22 = sub_100244DE0(v131);

    return v22;
  }

  v54 = v129;
  v123 = *(v129 + 16);
  if (!v123)
  {
LABEL_94:

    goto LABEL_95;
  }

  v55 = 0;
  v121 = v129;
  v122 = v129 + 32;
  while (v55 < *(v54 + 16))
  {
    v69 = *(v122 + 8 * v55);
    a1 = *(v69 + 16);

    if (a1 && (v70 = sub_1001F66B8(1684955490, 0xE400000000000000), (v71 & 1) != 0) && (sub_1001A773C(*(v69 + 56) + 32 * v70, &v127), swift_dynamicCast()))
    {
      *&v125 = v129;
    }

    else
    {
      *&v125 = 0;
    }

    v124 = v55 + 1;
    v6 = (v69 + 64);
    v72 = 1 << *(v69 + 32);
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v74 = v73 & *(v69 + 64);
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    while (v74)
    {
LABEL_131:
      v78 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v79 = (*(v69 + 48) + ((v76 << 10) | (16 * v78)));
      v81 = *v79;
      v80 = v79[1];
      *&v127 = v125;

      *&v127 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v127 + 1) = v82;

      v83._countAndFlagsBits = 45;
      v83._object = 0xE100000000000000;
      String.append(_:)(v83);

      v84._countAndFlagsBits = 0x6E6F6974636573;
      v84._object = 0xE700000000000000;
      String.append(_:)(v84);

      v85._countAndFlagsBits = 45;
      v85._object = 0xE100000000000000;
      String.append(_:)(v85);

      v86._countAndFlagsBits = v81;
      v86._object = v80;
      String.append(_:)(v86);

      v7 = *(&v127 + 1);
      v87 = v127;
      if (*(v69 + 16))
      {
        v88 = sub_1001F66B8(v81, v80);
        v90 = v89;

        if ((v90 & 1) == 0)
        {
          goto LABEL_138;
        }

        sub_1001A773C(*(v69 + 56) + 32 * v88, &v127);
        sub_100201570(&v127, &v129);
        v91 = v131;
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *&v126[0] = v91;
        v93 = sub_1001F66B8(v87, v7);
        v95 = *(v91 + 16);
        v96 = (v94 & 1) == 0;
        v97 = __OFADD__(v95, v96);
        v98 = v95 + v96;
        if (v97)
        {
          __break(1u);
          goto LABEL_154;
        }

        v99 = v94;
        if (*(v91 + 24) >= v98)
        {
          if (v92)
          {
            goto LABEL_143;
          }

          v108 = v93;
          sub_1001F9D54();
          v93 = v108;
          if ((v99 & 1) == 0)
          {
            goto LABEL_146;
          }

LABEL_144:
          v106 = v93;

          v107 = *&v126[0];
          a1 = *(*&v126[0] + 56) + 32 * v106;
          sub_1001A5654(a1);
          sub_100201570(&v129, a1);
          v131 = v107;
        }

        else
        {
          sub_1001F76E0(v98, v92);
          v93 = sub_1001F66B8(v87, v7);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_161;
          }

LABEL_143:
          if (v99)
          {
            goto LABEL_144;
          }

LABEL_146:
          a1 = *&v126[0];
          *(*&v126[0] + 8 * (v93 >> 6) + 64) |= 1 << v93;
          v109 = (*(a1 + 48) + 16 * v93);
          *v109 = v87;
          v109[1] = v7;
          sub_100201570(&v129, (*(a1 + 56) + 32 * v93));
          v110 = *(a1 + 16);
          v97 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v97)
          {
            goto LABEL_155;
          }

          *(a1 + 16) = v111;
          v131 = a1;
        }
      }

      else
      {

LABEL_138:
        v101 = v131;
        a1 = sub_1001F66B8(v87, v7);
        v103 = v102;

        if (v103)
        {
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *&v126[0] = v101;
          if (!v104)
          {
            sub_1001F9D54();
            v101 = *&v126[0];
          }

          v105 = *(*(v101 + 48) + 16 * a1 + 8);

          sub_100201570((*(v101 + 56) + 32 * a1), &v129);
          sub_1001F85E0(a1, v101);
          v131 = v101;
        }

        else
        {
          v129 = 0u;
          v130 = 0u;
        }

        sub_1001AC99C(&v129, &qword_100375D68, &unk_1002F2370);
      }
    }

    while (1)
    {
      v77 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        __break(1u);
        goto LABEL_152;
      }

      if (v77 >= v75)
      {
        break;
      }

      v74 = v6[v77];
      ++v76;
      if (v74)
      {
        v76 = v77;
        goto LABEL_131;
      }
    }

    v55 = v124;
    v54 = v121;
    if (v124 == v123)
    {
      goto LABEL_94;
    }
  }

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
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1002467B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_100201580(*(a1 + 48) + 40 * v14, v29);
        sub_1001A773C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_100201580(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1001A773C(v27 + 8, v22);
        sub_1001AC99C(v26, &qword_1003771E8, &qword_1002F2390);
        v23 = v20;
        sub_100201570(v22, v24);
        v15 = v23;
        sub_100201570(v24, v25);
        sub_100201570(v25, &v23);
        result = sub_1001F66B8(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1001A5654(v12);
          result = sub_100201570(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_100201570(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1001AC99C(v26, &qword_1003771E8, &qword_1002F2390);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100246A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v12[1] = 0x6D617473656D6974;
  v12[2] = 0xE900000000000070;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    return sub_1002015DC(v13);
  }

  v9 = sub_1001F6774(v13);
  if ((v10 & 1) == 0)
  {
    return sub_1002015DC(v13);
  }

  sub_1001A773C(*(a1 + 56) + 32 * v9, v14);
  sub_1002015DC(v13);
  result = swift_dynamicCast();
  if (result)
  {
    Date.init(timeIntervalSince1970:)();
    (*(v5 + 8))(a2, v4);
    return (*(v5 + 32))(a2, v8, v4);
  }

  return result;
}

uint64_t sub_100246C40(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v7 = 0x64695F73627573;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v149 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for UUID();
  v12 = *(v148 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v148);
  v150 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for Metric(0);
  v15 = *(*(v147 - 1) + 64);
  __chkstk_darwin(v147);
  v146 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v145 = &v116 - v18;
  *&v157[0] = 0x64695F73627573;
  *(&v157[0] + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v19 = sub_1001F6774(v166), (v20 & 1) == 0))
  {
    v115 = v166;
    return sub_1002015DC(v115);
  }

  sub_1001A773C(*(a1 + 56) + 32 * v19, v164);
  sub_1002015DC(v166);
  result = swift_dynamicCast();
  if (result)
  {
    v126 = a2;
    v136 = a3;
    v119 = v3;
    LODWORD(a3) = v157[0];
    if (qword_100374FC0 != -1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v22 = qword_1003824A8;
      static os_log_type_t.default.getter();
      v144 = sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v23 = swift_allocObject();
      v116 = xmmword_1002EED40;
      *(v23 + 16) = xmmword_1002EED40;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      v139 = a3;
      *(v23 + 32) = a3;
      v143 = v22;
      os_log(_:dso:log:type:_:)();

      v24 = a1 + 64;
      v25 = 1 << *(a1 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      a3 = v26 & *(a1 + 64);
      v27 = (v25 + 63) >> 6;
      v123 = (v12 + 16);
      v124 = (v9 + 16);
      v28 = (v9 + 8);
      v9 = v27;
      v121 = (v12 + 8);
      v122 = v28;

      v12 = 0;
      v118 = xmmword_1002F2BB0;
      v120 = xmmword_1002F2090;
      v137 = xmmword_1002EED50;
      v117 = xmmword_1002EED30;
      v125 = a1;
      v138 = v8;
      v8 = &type metadata for Any;
      v127 = a1 + 64;
      v128 = v9;
      if (a3)
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v29 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v29 >= v9)
        {
        }

        a3 = *(v24 + 8 * v29);
        ++v12;
        if (a3)
        {
          v12 = v29;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
    }

    while (1)
    {
LABEL_12:
      sub_100201580(*(a1 + 48) + 40 * (__clz(__rbit64(a3)) | (v12 << 6)), v166);
      v164[0] = v166[0];
      v164[1] = v166[1];
      v165 = v167;
      if (*(a1 + 16))
      {
        v30 = sub_1001F6774(v164);
        v31 = v7;
        if (v32)
        {
          sub_1001A773C(*(a1 + 56) + 32 * v30, &v162);
        }

        else
        {
          v162 = 0u;
          v163 = 0u;
        }
      }

      else
      {
        v31 = v7;
        v162 = 0u;
        v163 = 0u;
      }

      a3 &= a3 - 1;
      sub_1001AC934(&v162, v161, &qword_100375D68, &unk_1002F2370);
      if (!v161[3])
      {
        goto LABEL_64;
      }

      sub_1001AC934(v161, v160, &qword_100375D68, &unk_1002F2370);
      if (swift_dynamicCast())
      {
        *&v151 = *&v157[0];
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_22:
        v35 = v33;
        v36 = v34;
        v37 = 0xE300000000000000;
        v141 = 5525065;
        goto LABEL_23;
      }

      if (swift_dynamicCast())
      {
        v33 = Float.description.getter();
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        v90 = v157[0];
        v151 = v157[0];
        *&v155 = 47;
        *(&v155 + 1) = 0xE100000000000000;
        sub_1001A56A0();
        v91 = StringProtocol.contains<A>(_:)();
        v142 = v90;
        if (v91)
        {
          v36 = *(&v90 + 1);
          v37 = 0xE400000000000000;
          v92 = 1163149636;
        }

        else
        {
          v151 = v90;
          v36 = *(&v90 + 1);
          *&v155 = 58;
          *(&v155 + 1) = 0xE100000000000000;
          v95 = StringProtocol.contains<A>(_:)();
          if (v95)
          {
            v92 = 1163149636;
          }

          else
          {
            v92 = 0x474E49525453;
          }

          if (v95)
          {
            v37 = 0xE400000000000000;
          }

          else
          {
            v37 = 0xE600000000000000;
          }
        }

        v141 = v92;
        v35 = v142;
LABEL_23:
        sub_1001A5654(v160);
        sub_1001AC99C(v161, &qword_100375D68, &unk_1002F2370);
        v38.isa = AnyHashable._bridgeToObjectiveC()().isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClassUnconditional();
        v40 = HIBYTE(v36) & 0xF;
        v140 = v36;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v40 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (!v40 || (v37 & 0xF00000000000000) == 0)
        {

          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          sub_1001AC99C(&v162, &qword_100375D68, &unk_1002F2370);
          v115 = v164;
          return sub_1002015DC(v115);
        }

        v41 = v35;
        v134 = v39;
        isa = v38.isa;
        if (qword_100375018 != -1)
        {
          swift_once();
        }

        v142 = v37;
        v42 = *(qword_100382500 + 24);
        v43 = static os_log_type_t.default.getter();
        v44 = swift_allocObject();
        if (v42 == 1)
        {
          *(v44 + 16) = v118;
          v45 = v126;
          v169 = *v126;
          *(v44 + 56) = &type metadata for String;
          v46 = sub_1001A76E8();
          *(v44 + 64) = v46;
          v47 = v45[1];
          *(v44 + 32) = *v45;
          v168 = v47;
          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v46;
          *(v44 + 72) = v47;
          sub_1001ACE9C(&v169, v157);
          sub_1001ACE9C(&v168, v157);
          v48 = AnyHashable.description.getter();
          *(v44 + 136) = &type metadata for String;
          *(v44 + 144) = v46;
          *(v44 + 112) = v48;
          *(v44 + 120) = v49;
          *(v44 + 176) = &type metadata for String;
          *(v44 + 184) = v46;
          LODWORD(v133) = v43;
          *(v44 + 152) = v41;
          *(v44 + 160) = v140;
          *(v44 + 216) = &type metadata for String;
          *(v44 + 224) = v46;
          v50 = v142;
          *(v44 + 192) = v141;
          *(v44 + 200) = v50;
          LODWORD(v157[0]) = v139;

          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v44 + 256) = &type metadata for String;
          *(v44 + 264) = v46;
          *(v44 + 232) = v51;
          *(v44 + 240) = v52;
        }

        else
        {
          *(v44 + 16) = v117;
          v45 = v126;
          v171 = *v126;
          *(v44 + 56) = &type metadata for String;
          v53 = sub_1001A76E8();
          *(v44 + 64) = v53;
          v54 = v45[1];
          *(v44 + 32) = *v45;
          v170 = v54;
          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v53;
          *(v44 + 72) = v54;
          sub_1001ACE9C(&v171, v157);
          sub_1001ACE9C(&v170, v157);
          v55 = AnyHashable.description.getter();
          *(v44 + 136) = &type metadata for String;
          *(v44 + 144) = v53;
          *(v44 + 112) = v55;
          *(v44 + 120) = v56;
        }

        os_log(_:dso:log:type:_:)();

        UUID.init()();
        v57 = *v45;
        v58 = *(v45 + 1);
        v141 = String._bridgeToObjectiveC()();
        v59 = *(v45 + 2);
        v60 = *(v45 + 3);
        v140 = String._bridgeToObjectiveC()();
        v132 = String._bridgeToObjectiveC()();
        v131 = String._bridgeToObjectiveC()();
        v133 = *v124;
        v133(v149, v136, v138);
        v61 = [objc_allocWithZone(NSNumber) initWithInteger:*(v45 + 4)];
        v62 = [v61 stringValue];
        if (!v62)
        {
          __break(1u);
LABEL_80:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v63 = v62;

        v64 = v134;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        LODWORD(v142) = sub_1002205A4(v59, v60, v65, v66);

        v67 = v147;
        v68 = v147[14];
        v69 = v147[16];
        v129 = v147[15];
        v130 = v69;
        v70 = v145;
        (*v123)(v145, v150, v148);
        v71 = v140;
        *(v70 + v67[5]) = v141;
        *(v70 + v67[6]) = v71;
        *(v70 + v67[7]) = v64;
        *(v70 + v67[8]) = v64;
        v72 = v131;
        *(v70 + v67[9]) = v132;
        *(v70 + v67[10]) = v72;
        v73 = v149;
        v74 = v138;
        v133((v70 + v67[11]), v149, v138);
        *(v70 + v67[12]) = v63;
        *(v70 + v67[13]) = v139;
        *(v70 + v68) = v142 & 1;
        *(v70 + v129) = 0;
        v75 = *v122;
        v142 = isa;
        v75(v73, v74);
        (*v121)(v150, v148);
        *(v70 + v130) = v120;
        static os_log_type_t.default.getter();
        v76 = swift_allocObject();
        *(v76 + 16) = v137;
        v77 = sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        *(v76 + 56) = v77;
        v78 = sub_10020346C(&unk_100378C70, &qword_1003770C8, NSString_ptr);
        v80 = v140;
        v79 = v141;
        *(v76 + 32) = v141;
        *(v76 + 96) = v77;
        *(v76 + 104) = v78;
        *(v76 + 64) = v78;
        *(v76 + 72) = v80;
        v81 = v79;
        v82 = v80;
        os_log(_:dso:log:type:_:)();

        v83 = v146;
        sub_100249AC8(v70, v146);
        if (qword_100375020 != -1)
        {
          swift_once();
        }

        v84 = qword_100382508;
        sub_100215264(v70);

        static os_log_type_t.default.getter();
        v85 = swift_allocObject();
        *(v85 + 16) = v137;
        v86 = *(v83 + v67[5]);
        *(v85 + 56) = v77;
        *(v85 + 64) = v78;
        *(v85 + 32) = v86;
        v87 = *(v83 + v67[6]);
        *(v85 + 96) = v77;
        *(v85 + 104) = v78;
        *(v85 + 72) = v87;
        v88 = v86;
        v89 = v87;
        os_log(_:dso:log:type:_:)();

        sub_100249B2C(v83);
        sub_100249B2C(v70);
        sub_1001AC99C(&v162, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(v164);
        a1 = v125;
        v7 = 0x64695F73627573;
        v8 = &type metadata for Any;
        v24 = v127;
        v9 = v128;
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1001A551C(&qword_100377A10, &unk_1002F2BA0);
        if (swift_dynamicCast())
        {
          v93 = *&v154[0];
          *&v151 = v31;
          *(&v151 + 1) = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          v152 = &type metadata for Int32;
          LODWORD(v151) = v139;
          sub_100201570(&v151, &v155);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v159 = v93;
          sub_1001F8F64(&v155, v157, isUniquelyReferenced_nonNull_native);
          sub_1002015DC(v157);
          sub_100246C40(v159, v126, v136);

          v141 = 0;
          v35 = 0;
          v37 = 0xE000000000000000;
          v36 = 0xE000000000000000;
          goto LABEL_23;
        }

        sub_1001A551C(&unk_100378C60, &qword_1002F3FD0);
        if (swift_dynamicCast())
        {
          v96 = v126;
          v142 = v159;
          v97 = *(v159 + 2);
          if (!v97)
          {
LABEL_70:

            v141 = 0;
            v35 = 0;
            v37 = 0xE000000000000000;
            v36 = 0xE000000000000000;
            goto LABEL_23;
          }

          v7 = v142 + 32;
          while (2)
          {
            v99 = *v7;

            v158 = sub_1001FD020(_swiftEmptyArrayStorage);
            sub_1002491A4(v99, &v158);

            *&v151 = 0x64695F73627573;
            *(&v151 + 1) = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            v156 = &type metadata for Int32;
            LODWORD(v155) = v139;
            sub_100201570(&v155, v154);
            v100 = v158;
            v9 = swift_isUniquelyReferenced_nonNull_native();
            v153 = v100;
            v101 = sub_1001F6774(v157);
            v103 = *(v100 + 16);
            v104 = (v102 & 1) == 0;
            v105 = __OFADD__(v103, v104);
            v106 = v103 + v104;
            if (v105)
            {
              goto LABEL_77;
            }

            v8 = v102;
            if (*(v100 + 24) >= v106)
            {
              if (v9)
              {
                goto LABEL_59;
              }

              v110 = v101;
              sub_1001F9BB0();
              v101 = v110;
              v108 = v153;
              if ((v8 & 1) == 0)
              {
                goto LABEL_52;
              }

LABEL_60:
              v109 = (v108[7] + 32 * v101);
              sub_1001A5654(v109);
              sub_100201570(v154, v109);
            }

            else
            {
              sub_1001F7428(v106, v9);
              v101 = sub_1001F6774(v157);
              if ((v8 & 1) != (v107 & 1))
              {
                goto LABEL_80;
              }

LABEL_59:
              v108 = v153;
              if (v8)
              {
                goto LABEL_60;
              }

LABEL_52:
              v98 = v101;
              sub_100201580(v157, &v151);
              sub_1001F94B8(v98, &v151, v154, v108);
            }

            sub_1002015DC(v157);
            sub_100246C40(v108, v96, v136);

            v7 += 8;
            if (!--v97)
            {
              goto LABEL_70;
            }

            continue;
          }
        }

        sub_1001A5654(v160);
        v9 = v128;
LABEL_64:
        if (qword_100375018 != -1)
        {
          swift_once();
        }

        if (*(qword_100382500 + 24) == 1)
        {
          static os_log_type_t.error.getter();
          v111 = swift_allocObject();
          *(v111 + 16) = v116;
          sub_1001AC934(&v162, v157, &qword_100375D68, &unk_1002F2370);
          sub_1001A551C(&qword_100375D68, &unk_1002F2370);
          v112 = String.init<A>(describing:)();
          v114 = v113;
          *(v111 + 56) = &type metadata for String;
          *(v111 + 64) = sub_1001A76E8();
          *(v111 + 32) = v112;
          v8 = &type metadata for Any;
          *(v111 + 40) = v114;
          v9 = v128;
          os_log(_:dso:log:type:_:)();
          v24 = v127;
        }

        sub_1001AC99C(&v162, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(v164);
        sub_1001AC99C(v161, &qword_100375D68, &unk_1002F2370);
        v7 = v31;
        if (!a3)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return result;
}

id sub_100247E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100247FE4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC8A0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_10024809C(v5);
  *a1 = v2;
  return result;
}

void *sub_100248050()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_100225470(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

Swift::Int sub_10024809C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002483AC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002481A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002481A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = v27 + 72 * a3;
    v5 = result - a3;
LABEL_5:
    v17 = v4;
    v18 = a3;
    v16 = v5;
    while (1)
    {
      sub_1001AC934(v4, &v22, &qword_1003771E8, &qword_1002F2390);
      v6 = (v4 - 72);
      sub_1001AC934(v4 - 72, v21, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(&v22, v20, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v7 = v19;
      }

      else
      {
        v7 = 0;
      }

      sub_1002015DC(v20);
      sub_1001AC934(v21, v20, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v8 = v19;
      }

      else
      {
        v8 = 0;
      }

      sub_1002015DC(v20);
      sub_1001AC99C(v21, &qword_1003771E8, &qword_1002F2390);
      result = sub_1001AC99C(&v22, &qword_1003771E8, &qword_1002F2390);
      if (v8 >= v7)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 72;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v23 = *(v4 + 16);
      v24 = *(v4 + 32);
      v25 = *(v4 + 48);
      v26 = *(v4 + 64);
      v22 = *v4;
      v9 = *(v4 - 24);
      *(v4 + 32) = *(v4 - 40);
      *(v4 + 48) = v9;
      *(v4 + 64) = *(v4 - 8);
      v10 = *(v4 - 56);
      *v4 = *v6;
      *(v4 + 16) = v10;
      *v6 = v22;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      *(v4 - 8) = v26;
      *(v4 - 40) = v12;
      *(v4 - 24) = v13;
      *(v4 - 56) = v11;
      v4 -= 72;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002483AC(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v86 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_107:
    v6 = *v86;
    if (!*v86)
    {
      goto LABEL_150;
    }

    v4 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_144;
    }

    result = v4;
LABEL_110:
    v102 = result;
    v77 = *(result + 16);
    if (v77 >= 2)
    {
      v4 = 72;
      while (*v8)
      {
        v78 = *(result + 16 * v77);
        v79 = result;
        v80 = *(result + 16 * (v77 - 1) + 40);
        sub_100248CD0((*v8 + 72 * v78), (*v8 + 72 * *(result + 16 * (v77 - 1) + 32)), (*v8 + 72 * v80), v6);
        if (v7)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1001FA564(v79);
        }

        if (v77 - 2 >= *(v79 + 2))
        {
          goto LABEL_138;
        }

        v81 = &v79[16 * v77];
        *v81 = v78;
        *(v81 + 1) = v80;
        v102 = v79;
        sub_1001FA4D8(v77 - 1);
        result = v102;
        v77 = *(v102 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v88 = v11;
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
      goto LABEL_28;
    }

    v12 = *v8;
    sub_1001AC934(*v8 + 72 * (v10 + 1), &v97, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v12 + 72 * v10, v96, &qword_1003771E8, &qword_1002F2390);
    LODWORD(v103) = sub_1002450A8(&v97, v96);
    if (v7)
    {
      sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    }

    sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
    result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    v4 = v10 + 2;
    v84 = v10;
    v92 = 72 * v10;
    v13 = v12 + 72 * v10 + 144;
    while (v9 != v4)
    {
      sub_1001AC934(v13, &v97, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(v13 - 72, v96, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(&v97, v95, &qword_1003771E8, &qword_1002F2390);
      v6 = &type metadata for Any;
      v8 = v9;
      if (swift_dynamicCast())
      {
        v14 = v94;
      }

      else
      {
        v14 = 0;
      }

      sub_1002015DC(v95);
      sub_1001AC934(v96, v95, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v7 = v94;
      }

      else
      {
        v7 = 0;
      }

      sub_1002015DC(v95);
      sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
      result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
      ++v4;
      v13 += 72;
      if (((v103 ^ (v7 >= v14)) & 1) == 0)
      {
        v9 = v4 - 1;
        break;
      }
    }

    v10 = v84;
    if ((v103 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v9 < v84)
    {
      goto LABEL_143;
    }

    if (v84 < v9)
    {
      v4 = 72 * v9 - 72;
      v15 = v9;
      v16 = v92;
      do
      {
        if (v10 != --v15)
        {
          v17 = v16;
          v18 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v19 = v17;
          v6 = v18 + v4;
          v98 = *(v18 + v17 + 16);
          v99 = *(v18 + v17 + 32);
          v100 = *(v18 + v17 + 48);
          v101 = *(v18 + v17 + 64);
          v97 = *(v18 + v17);
          result = memmove((v18 + v17), (v18 + v4), 0x48uLL);
          *(v6 + 16) = v98;
          *(v6 + 32) = v99;
          *(v6 + 48) = v100;
          *(v6 + 64) = v101;
          v16 = v19;
          *v6 = v97;
        }

        ++v10;
        v4 -= 72;
        v16 += 72;
      }

      while (v10 < v15);
      v7 = 0;
      v10 = v84;
    }

    else
    {
LABEL_25:
      v7 = 0;
    }

    v8 = a3;
LABEL_28:
    v20 = *(v8 + 1);
    if (v9 >= v20)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v9, v10))
    {
      goto LABEL_140;
    }

    if (v9 - v10 >= a4)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_141;
    }

    if (v10 + a4 >= v20)
    {
      v4 = *(v8 + 1);
    }

    else
    {
      v4 = v10 + a4;
    }

    if (v4 < v10)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      result = sub_1001FA564(v4);
      goto LABEL_110;
    }

    if (v9 == v4)
    {
LABEL_37:
      v4 = v9;
      if (v9 < v10)
      {
        goto LABEL_139;
      }

      goto LABEL_38;
    }

    v83 = v7;
    v85 = v10;
    v66 = *v8;
    v6 = v66 + 72 * v9;
    v67 = v10 - v9;
    v90 = v4;
LABEL_90:
    v103 = v9;
    v91 = v67;
    v93 = v6;
LABEL_91:
    sub_1001AC934(v6, &v97, &qword_1003771E8, &qword_1002F2390);
    v68 = (v6 - 72);
    sub_1001AC934(v6 - 72, v96, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(&v97, v95, &qword_1003771E8, &qword_1002F2390);
    v69 = swift_dynamicCast() ? v94 : 0;
    sub_1002015DC(v95);
    sub_1001AC934(v96, v95, &qword_1003771E8, &qword_1002F2390);
    v70 = swift_dynamicCast() ? v94 : 0;
    sub_1002015DC(v95);
    sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
    result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    if (v70 < v69)
    {
      break;
    }

LABEL_89:
    v9 = (v103 + 1);
    v6 = v93 + 72;
    v67 = v91 - 1;
    v4 = v90;
    if (v103 + 1 != v90)
    {
      goto LABEL_90;
    }

    v7 = v83;
    v10 = v85;
    v8 = a3;
    if (v90 < v85)
    {
      goto LABEL_139;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v89 = v4;
    if (result)
    {
      v11 = v88;
    }

    else
    {
      result = sub_1001FA578(0, *(v88 + 2) + 1, 1, v88);
      v11 = result;
    }

    v4 = *(v11 + 2);
    v21 = *(v11 + 3);
    v6 = v4 + 1;
    if (v4 >= v21 >> 1)
    {
      result = sub_1001FA578((v21 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v6;
    v22 = &v11[16 * v4];
    *(v22 + 4) = v10;
    *(v22 + 5) = v89;
    v103 = *v86;
    if (!v103)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      while (1)
      {
        v23 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v24 = *(v11 + 4);
          v25 = *(v11 + 5);
          v34 = __OFSUB__(v25, v24);
          v26 = v25 - v24;
          v27 = v34;
LABEL_57:
          if (v27)
          {
            goto LABEL_128;
          }

          v40 = &v11[16 * v6];
          v42 = *v40;
          v41 = *(v40 + 1);
          v43 = __OFSUB__(v41, v42);
          v44 = v41 - v42;
          v45 = v43;
          if (v43)
          {
            goto LABEL_131;
          }

          v46 = &v11[16 * v23 + 32];
          v48 = *v46;
          v47 = *(v46 + 1);
          v34 = __OFSUB__(v47, v48);
          v49 = v47 - v48;
          if (v34)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v44, v49))
          {
            goto LABEL_135;
          }

          if (v44 + v49 >= v26)
          {
            if (v26 < v49)
            {
              v23 = v6 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v50 = &v11[16 * v6];
        v52 = *v50;
        v51 = *(v50 + 1);
        v34 = __OFSUB__(v51, v52);
        v44 = v51 - v52;
        v45 = v34;
LABEL_71:
        if (v45)
        {
          goto LABEL_130;
        }

        v53 = &v11[16 * v23];
        v55 = *(v53 + 4);
        v54 = *(v53 + 5);
        v34 = __OFSUB__(v54, v55);
        v56 = v54 - v55;
        if (v34)
        {
          goto LABEL_133;
        }

        if (v56 < v44)
        {
          goto LABEL_3;
        }

LABEL_78:
        v4 = v23 - 1;
        if (v23 - 1 >= v6)
        {
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
          goto LABEL_142;
        }

        v61 = *v8;
        if (!*v8)
        {
          goto LABEL_146;
        }

        v62 = v8;
        v8 = v11;
        v63 = *&v11[16 * v4 + 32];
        v6 = *&v11[16 * v23 + 40];
        sub_100248CD0((v61 + 72 * v63), (v61 + 72 * *&v11[16 * v23 + 32]), (v61 + 72 * v6), v103);
        if (v7)
        {
        }

        if (v6 < v63)
        {
          goto LABEL_124;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v64 = v8;
        }

        else
        {
          v64 = sub_1001FA564(v8);
        }

        if (v4 >= *(v64 + 2))
        {
          goto LABEL_125;
        }

        v8 = v62;
        v65 = &v64[16 * v4];
        *(v65 + 4) = v63;
        *(v65 + 5) = v6;
        v102 = v64;
        result = sub_1001FA4D8(v23);
        v11 = v102;
        v6 = *(v102 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v28 = &v11[16 * v6 + 32];
      v29 = *(v28 - 64);
      v30 = *(v28 - 56);
      v34 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      if (v34)
      {
        goto LABEL_126;
      }

      v33 = *(v28 - 48);
      v32 = *(v28 - 40);
      v34 = __OFSUB__(v32, v33);
      v26 = v32 - v33;
      v27 = v34;
      if (v34)
      {
        goto LABEL_127;
      }

      v35 = &v11[16 * v6];
      v37 = *v35;
      v36 = *(v35 + 1);
      v34 = __OFSUB__(v36, v37);
      v38 = v36 - v37;
      if (v34)
      {
        goto LABEL_129;
      }

      v34 = __OFADD__(v26, v38);
      v39 = v26 + v38;
      if (v34)
      {
        goto LABEL_132;
      }

      if (v39 >= v31)
      {
        v57 = &v11[16 * v23 + 32];
        v59 = *v57;
        v58 = *(v57 + 1);
        v34 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v34)
        {
          goto LABEL_136;
        }

        if (v26 < v60)
        {
          v23 = v6 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v89;
    if (v89 >= v9)
    {
      goto LABEL_107;
    }
  }

  if (v66)
  {
    v98 = *(v6 + 16);
    v99 = *(v6 + 32);
    v100 = *(v6 + 48);
    v101 = *(v6 + 64);
    v97 = *v6;
    v71 = *(v6 - 24);
    *(v6 + 32) = *(v6 - 40);
    *(v6 + 48) = v71;
    *(v6 + 64) = *(v6 - 8);
    v72 = *(v6 - 56);
    *v6 = *v68;
    *(v6 + 16) = v72;
    *v68 = v97;
    v73 = v98;
    v74 = v99;
    v75 = v100;
    *(v6 - 8) = v101;
    *(v6 - 40) = v74;
    *(v6 - 24) = v75;
    *(v6 - 56) = v73;
    v6 -= 72;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
  return result;
}

uint64_t sub_100248CD0(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 72;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 72;
  if (v8 >= v10)
  {
    if (__dst != a2 || &a2[72 * v10] <= __dst)
    {
      memmove(__dst, a2, 72 * v10);
    }

    v32 = &v4[72 * v10];
    if (v9 < 72 || a2 <= v6)
    {
      v17 = a2;
      goto LABEL_47;
    }

    v19 = a2;
    __dsta = v6;
    while (1)
    {
      v31 = v19;
      v20 = (v19 - 72);
      v21 = v32 - 72;
      v5 -= 72;
      while (1)
      {
        v24 = v5 + 72;
        sub_1001AC934(v21, v37, &qword_1003771E8, &qword_1002F2390);
        v25 = v20;
        sub_1001AC934(v20, v36, &qword_1003771E8, &qword_1002F2390);
        sub_1001AC934(v37, v35, &qword_1003771E8, &qword_1002F2390);
        v26 = swift_dynamicCast();
        v27 = v38;
        if (!v26)
        {
          v27 = 0;
        }

        v33 = v27;
        sub_1002015DC(v35);
        sub_1001AC934(v36, v35, &qword_1003771E8, &qword_1002F2390);
        v28 = swift_dynamicCast() ? v38 : 0;
        sub_1002015DC(v35);
        sub_1001AC99C(v36, &qword_1003771E8, &qword_1002F2390);
        sub_1001AC99C(v37, &qword_1003771E8, &qword_1002F2390);
        if (v28 < v33)
        {
          break;
        }

        if (v24 != v21 + 72)
        {
          memmove(v5, v21, 0x48uLL);
        }

        v22 = v21 - 72;
        v5 -= 72;
        v23 = v21 > v4;
        v21 -= 72;
        v20 = v25;
        if (!v23)
        {
          v32 = v22 + 72;
          v17 = v31;
          goto LABEL_47;
        }
      }

      v17 = v25;
      if (v24 != v31)
      {
        memmove(v5, v25, 0x48uLL);
      }

      v32 = v21 + 72;
      if (v21 + 72 > v4)
      {
        v19 = v25;
        if (v25 > __dsta)
        {
          continue;
        }
      }

      v32 = v21 + 72;
      goto LABEL_47;
    }
  }

  if (__dst != __src || &__src[72 * v8] <= __dst)
  {
    memmove(__dst, __src, 72 * v8);
  }

  v32 = &v4[72 * v8];
  if (v7 < 72 || a2 >= v5)
  {
    v17 = v6;
    goto LABEL_47;
  }

  v12 = a2;
  do
  {
    sub_1001AC934(v12, v37, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v4, v36, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v37, v35, &qword_1003771E8, &qword_1002F2390);
    if (swift_dynamicCast())
    {
      v13 = v38;
    }

    else
    {
      v13 = 0;
    }

    sub_1002015DC(v35);
    sub_1001AC934(v36, v35, &qword_1003771E8, &qword_1002F2390);
    if (swift_dynamicCast())
    {
      v14 = v38;
    }

    else
    {
      v14 = 0;
    }

    sub_1002015DC(v35);
    sub_1001AC99C(v36, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC99C(v37, &qword_1003771E8, &qword_1002F2390);
    if (v14 < v13)
    {
      v15 = v12;
      v16 = v6 == v12;
      v12 += 72;
      if (v16)
      {
        goto LABEL_20;
      }

LABEL_19:
      memmove(v6, v15, 0x48uLL);
      goto LABEL_20;
    }

    v15 = v4;
    v16 = v6 == v4;
    v4 += 72;
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_20:
    v6 += 72;
  }

  while (v4 < v32 && v12 < v5);
  v17 = v6;
LABEL_47:
  v29 = (v32 - v4) / 72;
  if (v17 != v4 || v17 >= &v4[72 * v29])
  {
    memmove(v17, v4, 72 * v29);
  }

  return 1;
}

uint64_t sub_1002491A4(uint64_t isUniquelyReferenced_nonNull_native, void *a2)
{
  if (qword_100374FC0 == -1)
  {
    goto LABEL_2;
  }

LABEL_80:
  swift_once();
LABEL_2:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v3 = isUniquelyReferenced_nonNull_native + 64;
  v4 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(isUniquelyReferenced_nonNull_native + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v76 = isUniquelyReferenced_nonNull_native + 64;
  v77 = isUniquelyReferenced_nonNull_native;
  v75 = v7;
  while (1)
  {
    if (!v6)
    {
      if (v7 <= v8 + 1)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v10 - 1;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v13 = 0;
          v93 = 0;
          v91 = 0u;
          v92 = 0u;
          v8 = v11;
          v89 = 0u;
          v90 = 0u;
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_18;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v9 = v8;
LABEL_18:
    v12 = __clz(__rbit64(v6));
    v13 = (v6 - 1) & v6;
    v14 = v12 | (v9 << 6);
    sub_100201580(*(isUniquelyReferenced_nonNull_native + 48) + 40 * v14, &v86);
    sub_1001A773C(*(isUniquelyReferenced_nonNull_native + 56) + 32 * v14, v82);
    v89 = v86;
    v90 = v87;
    *&v91 = v88;
    sub_100201570(v82, (&v91 + 8));
LABEL_19:
    v96[0] = v91;
    v96[1] = v92;
    v97 = v93;
    v94 = v89;
    v95 = v90;
    if (!*(&v90 + 1))
    {
    }

    v78 = v13;
    v86 = v94;
    v87 = v95;
    v88 = *&v96[0];
    sub_100201570((v96 + 8), v85);
    sub_1001A773C(v85, v84);
    sub_1001A551C(&unk_100378C80, &qword_1002F3FD8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v15 = v83;
    v16 = v83 + 64;
    v17 = 1 << *(v83 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    isUniquelyReferenced_nonNull_native = v18 & *(v83 + 64);
    v19 = (v17 + 63) >> 6;

    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v22 >= v19)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = *(v16 + 8 * v22);
      ++v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v22;
        do
        {
LABEL_29:
          v23 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) | (v20 << 6);
          v24 = (*(v15 + 48) + 16 * v23);
          v25 = v24[1];
          v26 = *(*(v15 + 56) + 8 * v23);
          *&v82[0] = *v24;
          *(&v82[0] + 1) = v25;
          swift_bridgeObjectRetain_n();
          AnyHashable.init<A>(_:)();
          v93 = &type metadata for Int;

          *(&v91 + 1) = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_100225320(0, v21[2] + 1, 1, v21);
          }

          v28 = v21[2];
          v27 = v21[3];
          if (v28 >= v27 >> 1)
          {
            v21 = sub_100225320((v27 > 1), v28 + 1, 1, v21);
          }

          isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
          v21[2] = v28 + 1;
          v29 = &v21[9 * v28];
          *(v29 + 2) = v89;
          v30 = v90;
          v31 = v91;
          v32 = v92;
          v29[12] = v93;
          *(v29 + 4) = v31;
          *(v29 + 5) = v32;
          *(v29 + 3) = v30;
        }

        while (isUniquelyReferenced_nonNull_native);
      }
    }

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v44 = *(qword_100382500 + 24);
    static os_log_type_t.default.getter();
    isUniquelyReferenced_nonNull_native = &qword_1003771E8;
    if (v44)
    {
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1002EED40;
      *(v45 + 56) = sub_1001A551C(&qword_100378C90, &qword_1002F3FE0);
      *(v45 + 64) = sub_100249B88();
      *(v45 + 32) = v21;

      os_log(_:dso:log:type:_:)();
    }

    else
    {
      os_log(_:dso:log:type:_:)();
    }

    v48 = v21[2];
    if (v48)
    {
      v49 = 0;
      v50 = (v21 + 4);
      v79 = v21[2];
      while (1)
      {
        if (v49 >= v21[2])
        {
          goto LABEL_74;
        }

        sub_1001AC934(v50, &v89, &qword_1003771E8, &qword_1002F2390);
        sub_100201580(&v86, v82);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_51:
        ++v49;
        sub_1001AC99C(&v89, &qword_1003771E8, &qword_1002F2390);
        v50 += 72;
        if (v48 == v49)
        {
          goto LABEL_6;
        }
      }

      v51 = v81[0];
      sub_100201580(&v89, v82);
      if (swift_dynamicCast())
      {
        v53 = *(&v81[0] + 1);
        v52 = *&v81[0];
        v82[0] = v51;

        v54._countAndFlagsBits = 95;
        v54._object = 0xE100000000000000;
        String.append(_:)(v54);

        v55._countAndFlagsBits = v52;
        v55._object = v53;
        String.append(_:)(v55);

        v81[0] = v82[0];
        AnyHashable.init<A>(_:)();
        sub_1001A773C(&v91 + 8, v81);
        v56 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = *a2;
        v59 = sub_1001F6774(v82);
        v60 = v57[2];
        v61 = (v58 & 1) == 0;
        v62 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          goto LABEL_76;
        }

        v63 = v58;
        if (v57[3] >= v62)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v58 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            sub_1001F9BB0();
            if ((v63 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          sub_1001F7428(v62, isUniquelyReferenced_nonNull_native);
          v64 = sub_1001F6774(v82);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_81;
          }

          v59 = v64;
          if ((v63 & 1) == 0)
          {
LABEL_64:
            v57[(v59 >> 6) + 8] |= 1 << v59;
            sub_100201580(v82, v57[6] + 40 * v59);
            sub_100201570(v81, (v57[7] + 32 * v59));
            v67 = v57[2];
            v40 = __OFADD__(v67, 1);
            v68 = v67 + 1;
            if (v40)
            {
              goto LABEL_77;
            }

            v57[2] = v68;
LABEL_66:
            sub_1002015DC(v82);
            *a2 = v57;
            isUniquelyReferenced_nonNull_native = &qword_1003771E8;
LABEL_50:
            v48 = v79;
            goto LABEL_51;
          }
        }

        v66 = (v57[7] + 32 * v59);
        sub_1001A5654(v66);
        sub_100201570(v81, v66);
        goto LABEL_66;
      }

      goto LABEL_50;
    }

LABEL_6:

    sub_1001A5654(v85);
    v3 = v76;
    isUniquelyReferenced_nonNull_native = v77;
    v7 = v75;
LABEL_7:
    sub_1001A5654(v84);
    sub_1002015DC(&v86);
    v6 = v78;
  }

  sub_100201580(&v86, &v89);
  sub_1001A773C(v85, v82);
  v33 = *a2;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[0] = *a2;
  v35 = *&v81[0];
  v36 = sub_1001F6774(&v89);
  v38 = *(v35 + 16);
  v39 = (v37 & 1) == 0;
  v40 = __OFADD__(v38, v39);
  v41 = v38 + v39;
  if (v40)
  {
    goto LABEL_78;
  }

  v42 = v37;
  if (*(v35 + 24) >= v41)
  {
    if ((v34 & 1) == 0)
    {
      v69 = v7;
      v70 = v36;
      sub_1001F9BB0();
      v36 = v70;
      v7 = v69;
      v46 = *&v81[0];
      if (v42)
      {
        goto LABEL_45;
      }

      goto LABEL_69;
    }

LABEL_44:
    v46 = *&v81[0];
    if (v42)
    {
LABEL_45:
      v47 = (v46[7] + 32 * v36);
      sub_1001A5654(v47);
      sub_100201570(v82, v47);
      sub_1002015DC(&v89);
      sub_1001A5654(v85);
LABEL_71:
      *a2 = v46;
      goto LABEL_7;
    }

LABEL_69:
    v46[(v36 >> 6) + 8] |= 1 << v36;
    v71 = v36;
    sub_100201580(&v89, v46[6] + 40 * v36);
    sub_100201570(v82, (v46[7] + 32 * v71));
    sub_1002015DC(&v89);
    sub_1001A5654(v85);
    v72 = v46[2];
    v40 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (v40)
    {
      goto LABEL_79;
    }

    v46[2] = v73;
    goto LABEL_71;
  }

  sub_1001F7428(v41, v34);
  v36 = sub_1001F6774(&v89);
  if ((v42 & 1) == (v43 & 1))
  {
    goto LABEL_44;
  }

LABEL_81:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100249AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metric(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100249B2C(uint64_t a1)
{
  v2 = type metadata accessor for Metric(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100249B88()
{
  result = qword_100378C98;
  if (!qword_100378C98)
  {
    sub_1001A55C8(&qword_100378C90, &qword_1002F3FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378C98);
  }

  return result;
}

void sub_100249BEC(__int128 *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002EED40;
  strcpy(&v11, "metricObject");
  BYTE13(v11) = 0;
  HIWORD(v11) = -5120;
  AnyHashable.init<A>(_:)();
  v5 = *a1;
  v10 = a1[1];
  v11 = v5;
  *(inited + 96) = &type metadata for MetricNotificationObject;
  v6 = swift_allocObject();
  *(inited + 72) = v6;
  *(v6 + 48) = *(a1 + 8);
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  sub_1001ACE9C(&v11, v9);
  sub_1001ACE9C(&v10, v9);
  sub_1001FD020(inited);
  swift_setDeallocating();
  sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

uint64_t sub_100249DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 == 0x3243303443 && a3 == 0xE500000000000000;
  if (v3 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    AnyHashable.init<A>(_:)();
    v5 = 0u;
    v6 = 0u;
    sub_1001E2D28(&v5, v7);
    *&v5 = 0x77625F6C75;
    *(&v5 + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    v5 = 0u;
    v6 = 0u;
    return sub_1001E2D28(&v5, v7);
  }

  return result;
}

unint64_t sub_100249EA4(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1001AC934(result + 32, &v40, &qword_100379B70, &qword_1002F2380);
  v8 = v40;
  v7 = v41;
  sub_100201570(v42, v39);
  v9 = *a3;
  result = sub_1001F66B8(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1001F76E0(v14, v5 & 1);
    v16 = *a3;
    result = sub_1001F66B8(v8, v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    result = sub_100201570(v39, (v18[7] + 32 * result));
    v23 = v18[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v24;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_1001F9D54();
  result = v21;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 32 * v19);
  sub_1001A5654(v20);
  result = sub_100201570(v39, v20);
  if (--v3)
  {
LABEL_14:
    v6 += 80;
    v7 = &qword_100379B70;
    v8 = &qword_1002F2380;
    while (1)
    {
      sub_1001AC934(v6, &v40, &qword_100379B70, &qword_1002F2380);
      v5 = v40;
      v15 = v41;
      sub_100201570(v42, v39);
      v27 = *a3;
      result = sub_1001F66B8(v5, v15);
      v29 = v27[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_23;
      }

      v32 = v28;
      if (v27[3] < v31)
      {
        sub_1001F76E0(v31, 1);
        v33 = *a3;
        result = sub_1001F66B8(v5, v15);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v32)
      {
        v25 = result;

        v26 = (v35[7] + 32 * v25);
        sub_1001A5654(v26);
        result = sub_100201570(v39, v26);
      }

      else
      {
        v35[(result >> 6) + 8] |= 1 << result;
        v36 = (v35[6] + 16 * result);
        *v36 = v5;
        v36[1] = v15;
        result = sub_100201570(v39, (v35[7] + 32 * result));
        v37 = v35[2];
        v13 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v35[2] = v38;
      }

      v6 += 48;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10024A234()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10024A290@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA744(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 40 * a1);
    v9 = v8[2];
    v8 += 2;
    v10 = v7 - 1;
    v11 = *(v8 + 8);
    v12 = v8[1];
    result = memmove(v8, v8 + 40, 40 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
    *a2 = v9;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t sub_10024A340(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA758(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_10024A3C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA780(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Metric(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10025323C(v11, a2, type metadata accessor for Metric);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10024A50C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.isAirPlaneModeEnabled object:0];

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_10024A620()
{
  sub_10024A50C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricDetailViewModel()
{
  result = qword_100378D18;
  if (!qword_100378D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024A6CC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Metric(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v102 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_100378F88, &qword_1002F4140);
  v92 = *(v8 - 8);
  v9 = *(v92 + 64);
  __chkstk_darwin(v8);
  v97 = (&v90 - v10);
  v11 = sub_1001A551C(&qword_100378F90, &qword_1002F4148);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v90 - v15;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v90 - v22;
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  __chkstk_darwin(v26);
  v96 = &v90 - v27;
  v28 = type metadata accessor for MetricDetailViewModel();
  v93 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
  v94 = v28;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v29 = *(v2 + 16);
  *(v2 + 16) = _swiftEmptyArrayStorage;

  v105 = a1;
  v30 = *(a1 + 16);
  v103 = v4;
  v99 = v5;
  if (v30)
  {
    v31 = *(v4 + 44);
    v32 = *(v17 + 16);
    v91 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v32(v25, v91 + v31, v16);
    (*(v17 + 32))(v96, v25, v16);

    v33 = v98;
    Date.init()();
    sub_1001E139C(v20);
    v34 = *(v17 + 8);
    v34(v33, v16);
    v35 = static Date.< infix(_:_:)();
    v34(v20, v16);
    v36 = v98;
    if (v35)
    {
      v37 = v96;
      v32(v98, v96, v16);
      v38 = v95;
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v39 = v37;
    }

    else
    {
      Date.init()();
      v38 = v95;
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v39 = v96;
    }

    v34(v39, v16);
    v42 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
    swift_beginAccess();
    (*(v17 + 40))(v38 + v42, v36, v16);
    swift_endAccess();
    v41 = v92;
    v43 = *(v91 + *(v103 + 24));
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10024B0AC(&v105, v44, v45);

    v40 = *(v105 + 16);
  }

  else
  {

    v40 = 0;
    v41 = v92;
  }

  v46 = (v41 + 56);
  v47 = (v41 + 48);
  v48 = 0;

  v96 = v98;
  while (1)
  {
    if (v48 == v40)
    {
      v49 = 1;
      v48 = v40;
      v50 = v101;
    }

    else
    {
      if ((v48 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      if (v48 >= *(v98 + 2))
      {
        goto LABEL_48;
      }

      v51 = &v98[((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v48];
      v52 = *(v8 + 48);
      v53 = v97;
      *v97 = v48;
      sub_1002531D4(v51, v53 + v52, type metadata accessor for Metric);
      v54 = v53;
      v50 = v101;
      sub_1001B603C(v54, v101, &qword_100378F88, &qword_1002F4140);
      v49 = 0;
      ++v48;
    }

    v55 = v100;
    (*v46)(v50, v49, 1, v8);
    sub_1001B603C(v50, v55, &qword_100378F90, &qword_1002F4148);
    if ((*v47)(v55, 1, v8) == 1)
    {
      break;
    }

    v56 = *v55;
    v57 = v55 + *(v8 + 48);
    sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
    v58 = v8;
    v59 = v40;
    v60 = *(v57 + *(v103 + 28));
    sub_1002532A4(v57, type metadata accessor for Metric);
    v61 = NSString.init(stringLiteral:)();
    v62 = static NSObject.== infix(_:_:)();

    v40 = v59;
    v8 = v58;

    if (v62)
    {
      v63 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1001FA780(v63);
      }

      v64 = *(v63 + 2);
      if (v56 >= v64)
      {
        goto LABEL_49;
      }

      v65 = v63;
      v66 = v64 - 1;
      v67 = *(v99 + 80);
      v96 = v65;
      v68 = *(v99 + 72);
      v69 = &v65[((v67 + 32) & ~v67) + v68 * v56];
      sub_1002532A4(v69, type metadata accessor for Metric);
      if (v68 > 0 || v69 >= v69 + v68 + v68 * (v66 - v56))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v68)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      *(v96 + 2) = v66;
    }
  }

  v70 = v95;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(v70 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  v71 = *(v96 + 2);
  v73 = v102;
  v72 = v103;
  if (v71)
  {
    v74 = &v96[(*(v99 + 80) + 32) & ~*(v99 + 80)];
    v75 = *(v99 + 72);
    do
    {
      sub_1002531D4(v74, v73, type metadata accessor for Metric);
      v77 = *(v73 + *(v72 + 20));
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 4543564 && v78 == 0xE300000000000000)
      {
      }

      else
      {
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v72 = v103;

        if ((v80 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v81 = *(v102 + *(v72 + 24));
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0x207942206C6C6543 && v82 == 0xEC000000646E6142)
      {

LABEL_27:
        if (qword_100375020 != -1)
        {
          swift_once();
        }

        v76 = qword_100382508;
        sub_100215264(v102);

        v72 = v103;
        goto LABEL_30;
      }

      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v72 = v103;

      if (v84)
      {
        goto LABEL_27;
      }

LABEL_30:
      v73 = v102;
      sub_1002532A4(v102, type metadata accessor for Metric);
      v74 += v75;
      --v71;
    }

    while (v71);
  }

  v85 = v95;
  if (*(*(v95 + 24) + 16))
  {

    sub_1002502B8(*(*(v85 + 24) + 16));
  }

  else
  {
    v86 = v96;
    v87 = *(v96 + 2);

    sub_1002502B8(v87);

    v104 = *(v85 + 16);

    sub_1001E30A0(v86);
    v88 = v104;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v89 = *(v85 + 16);
    *(v85 + 16) = v88;
  }
}

void sub_10024B0AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v311 = a3;
  v310 = a2;
  v315 = type metadata accessor for MetricSectional(0);
  v314 = *(v315 - 8);
  v4 = *(v314 + 64);
  __chkstk_darwin(v315);
  v317 = &v305 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v316 = &v305 - v7;
  __chkstk_darwin(v8);
  v313 = &v305 - v9;
  __chkstk_darwin(v10);
  v312 = &v305 - v11;
  v12 = type metadata accessor for Date();
  v308 = *(v12 - 8);
  v13 = *(v308 + 64);
  __chkstk_darwin(v12);
  v335 = &v305 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = type metadata accessor for Metric(0);
  v336 = *(v341 - 1);
  v15 = *(v336 + 64);
  __chkstk_darwin(v341);
  v338 = (&v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v329 = &v305 - v18;
  __chkstk_darwin(v19);
  v305 = &v305 - v20;
  __chkstk_darwin(v21);
  v334 = &v305 - v22;
  __chkstk_darwin(v23);
  v339 = (&v305 - v24);
  __chkstk_darwin(v25);
  v323 = &v305 - v26;
  __chkstk_darwin(v27);
  v307 = &v305 - v28;
  __chkstk_darwin(v29);
  v31 = &v305 - v30;
  __chkstk_darwin(v32);
  v34 = &v305 - v33;
  v35 = sub_1001A551C(&qword_100378F88, &qword_1002F4140);
  v309 = *(v35 - 1);
  v36 = v309[8];
  __chkstk_darwin(v35);
  v337 = (&v305 - v37);
  v38 = sub_1001A551C(&qword_100378F90, &qword_1002F4148);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v305 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v318 = (&v305 - v43);
  __chkstk_darwin(v44);
  __chkstk_darwin(v45);
  v319 = &v305 - v46;
  __chkstk_darwin(v47);
  v321 = &v305 - v48;
  __chkstk_darwin(v49);
  v320 = &v305 - v50;
  __chkstk_darwin(v51);
  v328 = &v305 - v52;
  __chkstk_darwin(v53);
  v55 = &v305 - v54;
  __chkstk_darwin(v56);
  v326 = (&v305 - v57);
  __chkstk_darwin(v58);
  v325 = (&v305 - v59);
  __chkstk_darwin(v60);
  v333 = &v305 - v61;
  __chkstk_darwin(v62);
  v332 = (&v305 - v63);
  __chkstk_darwin(v64);
  v66 = &v305 - v65;
  __chkstk_darwin(v67);
  v70 = &v305 - v69;
  v324 = a1;
  v330 = *a1;
  v71 = v330[2];
  if (!v71)
  {
    return;
  }

  v340 = v35;
  v327 = v12;
  v72 = v311;
  v331 = v71;
  if (v310 != 0xD000000000000011 || 0x80000001002B9FD0 != v311)
  {
    v306 = v68;
    v73 = v310;
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v71 = v331;
    if ((v74 & 1) == 0)
    {
      if (v73 == 0x7574617453204143 && v72 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v165 = type metadata accessor for MetricDetailViewModel();
        v331 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
        v332 = v165;
        v166 = v322;
        v34 = ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();

        v167 = *(v166 + 24);
        *(v166 + 24) = _swiftEmptyArrayStorage;

        v168 = v330;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v168;
        v170 = v168;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      }

      if ((v73 != 0x207942206C6C6543 || v311 != 0xEC000000646E6142) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return;
      }

      v333 = v41;
      v214 = type metadata accessor for MetricDetailViewModel();
      v215 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
      v331 = v214;
      v328 = v215;
      v216 = v322;
      v34 = ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v217 = *(v216 + 24);
      *(v216 + 24) = _swiftEmptyArrayStorage;

      v218 = v330;

      v219 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v218;
      v221 = v218;
      if ((v219 & 1) == 0)
      {
        v304 = sub_1001FA780(v218);
        v220 = v330;
        v221 = v304;
      }

      v75 = 0;
      v222 = v220[2];
      v334 = v221;
      *v324 = v221;
      v339 = v309 + 7;
      v41 = (v309 + 6);
      v76 = &type metadata for String;
      v55 = v305;
      while (1)
      {
        v31 = v321;
        if (v75 == v222)
        {
          v223 = 1;
          v75 = v222;
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_277;
          }

          if (v75 >= v220[2])
          {
            goto LABEL_278;
          }

          v224 = v337;
          v225 = v220 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v75;
          v226 = *(v35 + 12);
          *v337 = v75;
          sub_1002531D4(v225, v224 + v226, type metadata accessor for Metric);
          sub_1001B603C(v224, v31, &qword_100378F88, &qword_1002F4140);
          v223 = 0;
          ++v75;
        }

        v70 = *v339;
        (*v339)(v31, v223, 1, v35);
        v34 = v320;
        sub_1001B603C(v31, v320, &qword_100378F90, &qword_1002F4148);
        v227 = *v41;
        if ((*v41)(v34, 1, v35) == 1)
        {
          break;
        }

        v228 = *v34;
        v229 = v34 + *(v35 + 12);
        v230 = *(v229 + v341[7]);
        sub_1002532A4(v229, type metadata accessor for Metric);
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v232 = v231;

        v344 = v70;
        v345 = v232;
        v342 = 0x2D6E6F6974636573;
        v343 = 0xE800000000000000;
        sub_1001A56A0();
        v34 = &v344;
        if ((StringProtocol.contains<A>(_:)() & 1) != 0 && (v344 = v70, v345 = v232, v342 = 45, v343 = 0xE100000000000000, v31 = StringProtocol.components<A>(separatedBy:)(), , *(v31 + 16)))
        {
          v35 = *(v31 + 32);
          v34 = *(v31 + 40);

          if ((v228 & 0x8000000000000000) != 0)
          {
            goto LABEL_285;
          }

          v233 = v334;
          if (v228 >= *(v334 + 16))
          {
            goto LABEL_286;
          }

          v234 = (v334 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v228 + v341[16]);
          v235 = v234[1];
          *v234 = v35;
          v234[1] = v34;
          v34 = v233;

          *v324 = v34;
        }

        else
        {
        }

        v35 = v340;
        v220 = v330;
      }

      v76 = *(v334 + 16);
      v330 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
      v326 = (v308 + 16);
      v325 = (v308 + 40);

      v75 = 0;
      v332 = v236;
      if (!v76)
      {
        goto LABEL_183;
      }

LABEL_180:
      if ((v75 & 0x8000000000000000) != 0)
      {
        goto LABEL_279;
      }

      if (v75 >= *(v236 + 16))
      {
        goto LABEL_280;
      }

      v237 = v337;
      v238 = v236 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v75;
      v239 = *(v35 + 12);
      *v337 = v75;
      sub_1002531D4(v238, v237 + v239, type metadata accessor for Metric);
      v240 = v237;
      v241 = v306;
      sub_1001B603C(v240, v306, &qword_100378F88, &qword_1002F4140);
      v242 = 0;
      ++v75;
      while (1)
      {
        (v70)(v241, v242, 1, v35);
        v243 = v241;
        v34 = v319;
        sub_1001B603C(v243, v319, &qword_100378F90, &qword_1002F4148);
        if (v227(v34, 1, v35) == 1)
        {
          break;
        }

        v244 = *v34;
        sub_10025323C(v34 + *(v35 + 12), v55, type metadata accessor for Metric);
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v245 = *(v55 + v341[7]);
        v31 = NSString.init(stringLiteral:)();
        v34 = static NSObject.== infix(_:_:)();

        if (v34)
        {
          v246 = v55 + v341[11];
          v31 = v335;
          v247 = v327;
          (*v326)(v335, v246, v327);
          v248 = v322;
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          v249 = v330;
          swift_beginAccess();
          (*v325)(v249 + v248, v31, v247);
          swift_endAccess();
          v250 = v332;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v250 = sub_1001FA780(v250);
          }

          v251 = v250[2];
          if (v244 >= v251)
          {
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v252 = v251 - 1;
          v253 = *(v336 + 80);
          v332 = v250;
          v254 = *(v336 + 72);
          v34 = v250 + ((v253 + 32) & ~v253) + v254 * v244;
          sub_1002532A4(v34, type metadata accessor for Metric);
          if (v254 > 0 || v34 >= v34 + v254 + v254 * (v252 - v244))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v254)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v255 = v332;
          v332[2] = v252;
          *v324 = v255;
          v55 = v305;
        }

        sub_1002532A4(v55, type metadata accessor for Metric);
        v35 = v340;
        v236 = v334;
        if (v75 != v76)
        {
          goto LABEL_180;
        }

LABEL_183:
        v242 = 1;
        v75 = v76;
        v241 = v306;
      }

      v256 = v332;
      v35 = v332[2];

      v76 = 0;
      v334 = 0;
      while (1)
      {
        if (v76 == v35)
        {
          v257 = 1;
          v76 = v35;
          v258 = v340;
          v259 = v333;
        }

        else
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_281;
          }

          if (v76 >= v332[2])
          {
            goto LABEL_282;
          }

          v260 = v337;
          v261 = v332 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v76;
          v258 = v340;
          v262 = *(v340 + 48);
          *v337 = v76;
          sub_1002531D4(v261, v260 + v262, type metadata accessor for Metric);
          v263 = v260;
          v259 = v333;
          sub_1001B603C(v263, v333, &qword_100378F88, &qword_1002F4140);
          v257 = 0;
          ++v76;
        }

        v264 = v318;
        (v70)(v259, v257, 1, v258);
        sub_1001B603C(v259, v264, &qword_100378F90, &qword_1002F4148);
        if (v227(v264, 1, v258) == 1)
        {
          break;
        }

        v55 = *v264;
        v265 = v264 + *(v258 + 48);
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v75 = *(v265 + v341[7]);
        sub_1002532A4(v265, type metadata accessor for Metric);
        v31 = NSString.init(stringLiteral:)();
        v34 = static NSObject.== infix(_:_:)();

        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v256 = sub_1001FA780(v256);
          }

          v266 = v256[2];
          if (v55 >= v266)
          {
            goto LABEL_296;
          }

          v75 = v266 - 1;
          v31 = *(v336 + 72);
          v34 = v256 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + v31 * v55;
          sub_1002532A4(v34, type metadata accessor for Metric);
          if (v31 > 0 || v34 >= v34 + v31 + v31 * (v75 - v55))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v256[2] = v75;
          *v324 = v256;
        }
      }

      v75 = v256[2];
      v267 = _swiftEmptyArrayStorage;
      if (v75)
      {
        v344 = _swiftEmptyArrayStorage;
        sub_1001F55C4(0, v75, 0);
        v267 = v344;
        v268 = v256 + ((*(v336 + 80) + 32) & ~*(v336 + 80));
        v269 = *(v336 + 72);
        do
        {
          v270 = v323;
          sub_1002531D4(v268, v323, type metadata accessor for Metric);
          v271 = (v270 + v341[16]);
          v41 = *v271;
          v272 = v271[1];

          sub_1002532A4(v270, type metadata accessor for Metric);
          v344 = v267;
          v70 = v267[2];
          v273 = v267[3];
          if (v70 >= v273 >> 1)
          {
            sub_1001F55C4((v273 > 1), v70 + 1, 1);
            v267 = v344;
          }

          v267[2] = v70 + 1;
          v274 = &v267[2 * v70];
          v274[4] = v41;
          v274[5] = v272;
          v268 += v269;
          --v75;
        }

        while (v75);
      }

      v34 = sub_1001C7008(v267);

      v76 = v34 + 56;
      v275 = 1 << *(v34 + 32);
      v276 = -1;
      if (v275 < 64)
      {
        v276 = ~(-1 << v275);
      }

      v31 = v276 & *(v34 + 56);
      v277 = (v275 + 63) >> 6;

      v55 = 0;
      v35 = _swiftEmptyArrayStorage;
      if (!v31)
      {
        goto LABEL_224;
      }

      while (1)
      {
        while (1)
        {
          v278 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v279 = (*(v34 + 48) + ((v55 << 10) | (16 * v278)));
          v75 = v279[1];
          if (v75)
          {
            break;
          }

          if (!v31)
          {
            goto LABEL_224;
          }
        }

        v41 = *v279;
        v281 = v279[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100224D30(0, v35[2] + 1, 1, v35);
        }

        v70 = v35[2];
        v282 = v35[3];
        v283 = v35;
        if (v70 >= v282 >> 1)
        {
          v283 = sub_100224D30((v282 > 1), v70 + 1, 1, v35);
        }

        *(v283 + 2) = v70 + 1;
        v35 = v283;
        v284 = &v283[16 * v70];
        *(v284 + 4) = v41;
        *(v284 + 5) = v75;
        if (!v31)
        {
          do
          {
LABEL_224:
            v280 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_273;
            }

            if (v280 >= v277)
            {

              v75 = v35[2];
              sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_1002EED40;
              *(v34 + 56) = &type metadata for Int;
              *(v34 + 32) = v75;
              print(_:separator:terminator:)();

              v339 = v35[2];
              if (v339)
              {
                v55 = 0;
                v337 = v35 + 4;
                v76 = v329;
                v335 = v35;
                do
                {
                  if (v55 >= v35[2])
                  {
                    goto LABEL_284;
                  }

                  v340 = v55;
                  v285 = &v337[2 * v55];
                  v75 = *v285;
                  v35 = v285[1];
                  v70 = v256[2];

                  if (v70)
                  {
                    v286 = 0;
                    v34 = _swiftEmptyArrayStorage;
                    do
                    {
                      if (v286 >= v256[2])
                      {
                        __break(1u);
LABEL_261:
                        __break(1u);
LABEL_262:
                        __break(1u);
                        goto LABEL_263;
                      }

                      v41 = (*(v336 + 80) + 32) & ~*(v336 + 80);
                      v55 = *(v336 + 72);
                      sub_1002531D4(v256 + v41 + v55 * v286, v76, type metadata accessor for Metric);
                      v287 = (v76 + v341[16]);
                      v288 = v287[1];
                      if (v288 && (*v287 == v75 ? (v289 = v288 == v35) : (v289 = 0), v289 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                      {
                        sub_10025323C(v76, v338, type metadata accessor for Metric);
                        v290 = swift_isUniquelyReferenced_nonNull_native();
                        v344 = v34;
                        if ((v290 & 1) == 0)
                        {
                          sub_1001F54C0(0, *(v34 + 16) + 1, 1);
                          v34 = v344;
                        }

                        v31 = *(v34 + 16);
                        v291 = *(v34 + 24);
                        if (v31 >= v291 >> 1)
                        {
                          sub_1001F54C0(v291 > 1, v31 + 1, 1);
                          v34 = v344;
                        }

                        *(v34 + 16) = v31 + 1;
                        sub_10025323C(v338, v34 + v41 + v31 * v55, type metadata accessor for Metric);
                        v76 = v329;
                      }

                      else
                      {
                        sub_1002532A4(v76, type metadata accessor for Metric);
                      }

                      ++v286;
                    }

                    while (v70 != v286);
                  }

                  else
                  {
                    v34 = _swiftEmptyArrayStorage;
                  }

                  v292 = v316;
                  UUID.init()();
                  v293 = v315;
                  v294 = (v292 + *(v315 + 20));
                  *v294 = v75;
                  v294[1] = v35;
                  *(v292 + *(v293 + 24)) = v34;
                  sub_1002531D4(v292, v317, type metadata accessor for MetricSectional);
                  v75 = *(v322 + 24);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v75 = sub_1002256EC(0, *(v75 + 16) + 1, 1, v75);
                  }

                  v295 = v340;
                  v297 = *(v75 + 16);
                  v296 = *(v75 + 24);
                  if (v297 >= v296 >> 1)
                  {
                    v75 = sub_1002256EC(v296 > 1, v297 + 1, 1, v75);
                  }

                  v55 = v295 + 1;
                  *(v75 + 16) = v297 + 1;
                  sub_10025323C(v317, v75 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v297, type metadata accessor for MetricSectional);
                  v298 = v322;
                  v34 = ObservableObject<>.objectWillChange.getter();
                  ObservableObjectPublisher.send()();

                  sub_1002532A4(v316, type metadata accessor for MetricSectional);
                  v299 = *(v298 + 24);
                  *(v298 + 24) = v75;

                  v35 = v335;
                }

                while (v55 != v339);
              }

              v300 = v322;
              v344 = *(v322 + 24);

              sub_10024DB9C(&v344);
              v301 = v344;
              ObservableObject<>.objectWillChange.getter();
              ObservableObjectPublisher.send()();

              v302 = *(v300 + 24);
              *(v300 + 24) = v301;
              goto LABEL_105;
            }

            v31 = *(v76 + 8 * v280);
            ++v55;
          }

          while (!v31);
          v55 = v280;
        }
      }
    }
  }

  v322 = v31;
  v328 = 0;
  v334 = 0;
  v75 = 0;
  v338 = v309 + 6;
  v339 = v309 + 7;
  v76 = 0x80000001002B9780;
  v31 = 0x80000001002B9740;
  while (1)
  {
    if (v75 == v71)
    {
      v77 = 1;
      v75 = v71;
    }

    else
    {
      if ((v75 & 0x8000000000000000) != 0)
      {
        goto LABEL_261;
      }

      if (v75 >= v330[2])
      {
        goto LABEL_262;
      }

      v78 = v337;
      v79 = v330 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v75;
      v80 = *(v35 + 12);
      *v337 = v75;
      sub_1002531D4(v79, v78 + v80, type metadata accessor for Metric);
      sub_1001B603C(v78, v66, &qword_100378F88, &qword_1002F4140);
      v77 = 0;
      ++v75;
    }

    v41 = *v339;
    (*v339)(v66, v77, 1, v35);
    sub_1001B603C(v66, v70, &qword_100378F90, &qword_1002F4148);
    v55 = *v338;
    if ((*v338)(v70, 1, v35) == 1)
    {
      break;
    }

    v55 = *v70;
    sub_10025323C(v70 + *(v35 + 12), v34, type metadata accessor for Metric);
    v81 = *(v34 + v341[8]);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0xD000000000000027 && 0x80000001002B9780 == v82)
    {

LABEL_27:
      sub_1002532A4(v34, type metadata accessor for Metric);
      v328 = v55;
      goto LABEL_7;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_27;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0xD00000000000001CLL && 0x80000001002B9740 == v84)
    {

      sub_1002532A4(v34, type metadata accessor for Metric);
      v334 = v55;
    }

    else
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002532A4(v34, type metadata accessor for Metric);
      v87 = v334;
      if (v86)
      {
        v87 = v55;
      }

      v334 = v87;
    }

LABEL_7:
    v35 = v340;
    v71 = v331;
  }

  if ((v334 & 0x8000000000000000) != 0)
  {
    goto LABEL_275;
  }

  if (v334 >= v330[2])
  {
    goto LABEL_276;
  }

  v35 = ((*(v336 + 80) + 32) & ~*(v336 + 80));
  v34 = v35 + v330;
  v329 = *(v336 + 72);
  v75 = v329 * v334;
  v88 = v322;
  sub_1002531D4(v35 + v330 + v329 * v334, v322, type metadata accessor for Metric);
  v89 = *(v88 + v341[9]);
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = sub_1001E248C(v90, v91);
  v31 = v327;
  v70 = v333;
  if ((v93 & 1) != 0 || v92 < 0)
  {
    goto LABEL_40;
  }

  if ((v328 & 0x8000000000000000) != 0)
  {
    goto LABEL_289;
  }

  v76 = v307;
  if (v328 >= v330[2])
  {
    goto LABEL_290;
  }

  v94 = v92;
  sub_1002531D4(v34 + v329 * v328, v307, type metadata accessor for Metric);
  v34 = sub_100253304(v94);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_291;
  }

  for (i = v330; v334 >= i[2]; i = sub_1001FA780(v330))
  {
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    v303 = sub_1001FA780(v95);
    v95 = v330;
    v170 = v303;
LABEL_111:
    v75 = 0;
    v76 = v95[2];
    v338 = v170;
    *v324 = v170;
    v41 = (v309 + 7);
    v335 = (v309 + 6);
    v70 = &type metadata for String;
    v171 = v328;
    v333 = (v309 + 7);
    if (!v76)
    {
      while (1)
      {
        v185 = 1;
        v75 = v76;
LABEL_126:
        (*v41)(v171, v185, 1, v35);
        sub_1001B603C(v171, v55, &qword_100378F90, &qword_1002F4148);
        if ((*v335)(v55, 1, v35) == 1)
        {
          break;
        }

        v172 = *v55;
        v173 = v55 + *(v35 + 12);
        v174 = *(v173 + v341[7]);
        sub_1002532A4(v173, type metadata accessor for Metric);
        v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v176;

        v344 = v175;
        v345 = v31;
        v342 = 0x2D6E6F6974636573;
        v343 = 0xE800000000000000;
        sub_1001A56A0();
        v34 = &v344;
        if (StringProtocol.contains<A>(_:)())
        {
          v344 = v175;
          v345 = v31;
          v342 = 45;
          v343 = 0xE100000000000000;
          v41 = &type metadata for String;
          v177 = StringProtocol.components<A>(separatedBy:)();

          if (v177[2])
          {
            v35 = v177[4];
            v34 = v177[5];

            if ((v172 & 0x8000000000000000) != 0)
            {
              goto LABEL_271;
            }

            v178 = v338;
            if (v172 >= v338[2])
            {
              goto LABEL_272;
            }

            v179 = (v338 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v172 + v341[16]);
            v180 = v179[1];
            *v179 = v35;
            v179[1] = v34;
            v181 = v178;

            *v324 = v181;
          }

          else
          {
          }

          v35 = v340;
          v95 = v330;
          v171 = v328;
          v41 = v333;
          if (v75 != v76)
          {
            goto LABEL_122;
          }
        }

        else
        {

          v35 = v340;
          v95 = v330;
          v171 = v328;
          if (v75 != v76)
          {
            goto LABEL_122;
          }
        }
      }

      v186 = v338[2];
      if (!v186)
      {
        return;
      }

      v340 = (*(v336 + 80) + 32) & ~*(v336 + 80);
      v187 = *(v336 + 72);
      v335 = v338 + v340;
      v188 = (v338 + v340 + v187 * (v186 - 1) + v341[16]);
      v189 = v188[1];
      if (!v189)
      {
        return;
      }

      v190 = *v188;
      v191 = v188[1];

      v192 = sub_1001E248C(v190, v189);
      if (v193)
      {
        return;
      }

      if (v192 < 0)
      {
        goto LABEL_297;
      }

      if (!v192)
      {
        return;
      }

      v76 = 0;
      v55 = v338[2];
      v336 = v192;
      while (1)
      {
        v344 = v76;
        v34 = &v344;
        v194 = dispatch thunk of CustomStringConvertible.description.getter();
        v337 = v195;
        if (v55)
        {
          break;
        }

        v31 = _swiftEmptyArrayStorage;
LABEL_153:
        v204 = v312;
        UUID.init()();
        v205 = v315;
        v206 = (v204 + *(v315 + 20));
        v207 = v337;
        *v206 = v194;
        v206[1] = v207;
        *(v204 + *(v205 + 24)) = v31;
        sub_1002531D4(v204, v313, type metadata accessor for MetricSectional);
        v208 = *(v322 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v208 = sub_1002256EC(0, v208[2] + 1, 1, v208);
        }

        v210 = v208[2];
        v209 = v208[3];
        if (v210 >= v209 >> 1)
        {
          v208 = sub_1002256EC(v209 > 1, v210 + 1, 1, v208);
        }

        ++v76;
        v208[2] = v210 + 1;
        v211 = v208 + ((*(v314 + 80) + 32) & ~*(v314 + 80)) + *(v314 + 72) * v210;
        v75 = type metadata accessor for MetricSectional;
        sub_10025323C(v313, v211, type metadata accessor for MetricSectional);
        v212 = v322;
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();

        sub_1002532A4(v312, type metadata accessor for MetricSectional);
        v213 = *(v212 + 24);
        *(v212 + 24) = v208;

        if (v76 == v336)
        {
          return;
        }
      }

      v41 = 0;
      v35 = v335;
      v31 = _swiftEmptyArrayStorage;
      v196 = v338;
      while (2)
      {
        if (v41 >= v196[2])
        {
          goto LABEL_266;
        }

        v197 = v339;
        sub_1002531D4(v35, v339, type metadata accessor for Metric);
        v198 = (v197 + v341[16]);
        v70 = *v198;
        v75 = v198[1];
        v342 = v76;
        v34 = &v342;
        v199 = dispatch thunk of CustomStringConvertible.description.getter();
        if (v75)
        {
          if (v70 == v199 && v75 == v200)
          {

            goto LABEL_147;
          }

          v34 = v200;
          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v75)
          {
LABEL_147:
            sub_10025323C(v339, v334, type metadata accessor for Metric);
            v202 = swift_isUniquelyReferenced_nonNull_native();
            v344 = v31;
            if ((v202 & 1) == 0)
            {
              v34 = &v344;
              sub_1001F54C0(0, *(v31 + 16) + 1, 1);
              v31 = v344;
            }

            v70 = *(v31 + 16);
            v203 = *(v31 + 24);
            v75 = v70 + 1;
            if (v70 >= v203 >> 1)
            {
              v34 = &v344;
              sub_1001F54C0(v203 > 1, v70 + 1, 1);
              v31 = v344;
            }

            *(v31 + 16) = v75;
            sub_10025323C(v334, v31 + v340 + v70 * v187, type metadata accessor for Metric);
LABEL_137:
            ++v41;
            v35 = (v35 + v187);
            v196 = v338;
            if (v55 == v41)
            {
              goto LABEL_153;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      sub_1002532A4(v339, type metadata accessor for Metric);
      goto LABEL_137;
    }

LABEL_122:
    if ((v75 & 0x8000000000000000) == 0)
    {
      if (v75 < v95[2])
      {
        v182 = v337;
        v183 = v95 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v75;
        v184 = *(v35 + 12);
        *v337 = v75;
        sub_1002531D4(v183, v182 + v184, type metadata accessor for Metric);
        sub_1001B603C(v182, v171, &qword_100378F88, &qword_1002F4140);
        v185 = 0;
        ++v75;
        goto LABEL_126;
      }

      goto LABEL_270;
    }

LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    ;
  }

  v97 = v35 + i + v75;
  v98 = v341;
  v99 = v341[9];
  v100 = *&v97[v99];
  *&v97[v99] = v34;
  v101 = i;

  *v324 = v101;
  v102 = *(v76 + v98[9]);
  sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
  v103 = v102;
  v104 = NSString.init(stringLiteral:)();
  LOBYTE(v101) = static NSObject.== infix(_:_:)();

  if ((v101 & 1) == 0)
  {
    v105 = v323;
    sub_10024A3C8(v334, v323);
    sub_1002532A4(v105, type metadata accessor for Metric);
  }

  sub_1002532A4(v76, type metadata accessor for Metric);
LABEL_40:
  v336 = v41;
  v106 = v324;
  sub_10024DAB4(v324);
  v321 = 0;
  v34 = sub_1001FD574(_swiftEmptyArrayStorage);
  v41 = 0;
  v344 = v34;
  v107 = *v106;
  v328 = v35 + *v106;
  v334 = v308 + 16;
  v108 = (v308 + 8);
  v109 = v107[2];
  v75 = v340;
  v330 = v107;
  v331 = v109;
  if (v109)
  {
LABEL_72:
    if ((v41 & 0x8000000000000000) != 0)
    {
LABEL_263:
      __break(1u);
    }

    else if (v41 < v330[2])
    {
      v140 = v328 + v41 * v329;
      v141 = *(v75 + 48);
      v35 = v337;
      *v337 = v41;
      sub_1002531D4(v140, v35 + v141, type metadata accessor for Metric);
      sub_1001B603C(v35, v70, &qword_100378F88, &qword_1002F4140);
      v142 = 0;
      ++v41;
      goto LABEL_76;
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  while (1)
  {
    v142 = 1;
    v41 = v109;
LABEL_76:
    (v336)(v70, v142, 1, v75);
    v143 = v332;
    sub_1001B603C(v70, v332, &qword_100378F90, &qword_1002F4148);
    if ((v55)(v143, 1, v75) == 1)
    {
      break;
    }

    v110 = v143 + *(v75 + 48);
    v75 = v335;
    (*v334)(v335, v110 + v341[11], v31);
    sub_1002532A4(v110, type metadata accessor for Metric);
    v35 = sub_1001DFBE8();
    v70 = v111;
    (*v108)(v75, v31);
    if (!*(v34 + 16) || (sub_1001F66B8(v35, v70), (v112 & 1) == 0))
    {
      v34 = v344;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v342 = v34;
      v115 = sub_1001F66B8(v35, v70);
      v117 = *(v34 + 16);
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_274;
      }

      v31 = v116;
      if (*(v34 + 24) >= v120)
      {
        if (v75)
        {
          goto LABEL_54;
        }

        v132 = v115;
        sub_1001F9EF8();
        v115 = v132;
        if ((v31 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_55:
        v122 = v115;

        v34 = v342;
        *(*(v342 + 56) + 8 * v122) = 1;
      }

      else
      {
        sub_1001F7998(v120, v75);
        v115 = sub_1001F66B8(v35, v70);
        if ((v31 & 1) != (v121 & 1))
        {
          goto LABEL_298;
        }

LABEL_54:
        if (v31)
        {
          goto LABEL_55;
        }

LABEL_65:
        v34 = v342;
        *(v342 + 8 * (v115 >> 6) + 64) |= 1 << v115;
        v133 = (*(v34 + 48) + 16 * v115);
        *v133 = v35;
        v133[1] = v70;
        *(*(v34 + 56) + 8 * v115) = 1;
        v134 = *(v34 + 16);
        v119 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v119)
        {
          goto LABEL_283;
        }

        *(v34 + 16) = v135;
      }

      v344 = v34;
      v75 = v340;
      v31 = v327;
      goto LABEL_47;
    }

    if (*(v34 + 16) && (v113 = sub_1001F66B8(v35, v70), (v114 & 1) != 0))
    {
      v123 = *(*(v34 + 56) + 8 * v113);
      v124 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_287;
      }

      v34 = v344;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v342 = v34;
      v125 = sub_1001F66B8(v35, v70);
      v127 = *(v34 + 16);
      v128 = (v126 & 1) == 0;
      v119 = __OFADD__(v127, v128);
      v129 = v127 + v128;
      if (v119)
      {
        goto LABEL_288;
      }

      v31 = v126;
      if (*(v34 + 24) < v129)
      {
        sub_1001F7998(v129, v75);
        v125 = sub_1001F66B8(v35, v70);
        if ((v31 & 1) != (v130 & 1))
        {
          goto LABEL_298;
        }

LABEL_62:
        if ((v31 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_63;
      }

      if (v75)
      {
        goto LABEL_62;
      }

      v136 = v125;
      sub_1001F9EF8();
      v125 = v136;
      if ((v31 & 1) == 0)
      {
LABEL_69:
        v34 = v342;
        *(v342 + 8 * (v125 >> 6) + 64) |= 1 << v125;
        v137 = (*(v34 + 48) + 16 * v125);
        *v137 = v35;
        v137[1] = v70;
        *(*(v34 + 56) + 8 * v125) = v124;
        v138 = *(v34 + 16);
        v119 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v119)
        {
          goto LABEL_293;
        }

        *(v34 + 16) = v139;
        goto LABEL_71;
      }

LABEL_63:
      v131 = v125;

      v34 = v342;
      *(*(v342 + 56) + 8 * v131) = v124;
LABEL_71:
      v75 = v340;
      v31 = v327;
      v70 = v333;
      v109 = v331;
      v344 = v34;
      if (v41 != v331)
      {
        goto LABEL_72;
      }
    }

    else
    {

      v75 = v340;
LABEL_47:
      v70 = v333;
      v109 = v331;
      if (v41 != v331)
      {
        goto LABEL_72;
      }
    }
  }

  if (*(v34 + 16) >= 2uLL)
  {
    v31 = v34 + 64;
    v144 = 1 << *(v34 + 32);
    v145 = -1;
    if (v144 < 64)
    {
      v145 = ~(-1 << v144);
    }

    v75 = v145 & *(v34 + 64);
    v41 = (v144 + 63) >> 6;

    v146 = 0;
    v76 = 0;
    v70 = 0;
    v147 = 0xE000000000000000;
    if (!v75)
    {
      goto LABEL_83;
    }

    do
    {
LABEL_81:
      while (1)
      {
        v148 = __clz(__rbit64(v75));
        v75 &= v75 - 1;
        v149 = v148 | (v70 << 6);
        v35 = *(*(v34 + 56) + 8 * v149);
        if (v146 < v35)
        {
          break;
        }

        if (!v75)
        {
          goto LABEL_83;
        }
      }

      v151 = (*(v34 + 48) + 16 * v149);
      v76 = *v151;
      v333 = v151[1];

      v146 = v35;
      v147 = v333;
    }

    while (v75);
LABEL_83:
    while (1)
    {
      v150 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_265;
      }

      if (v150 >= v41)
      {

        v34 = &v344;
        sub_1001E2DE4(0, 1, v76, v147);
        v76 = v330[2];

        v70 = 0;
LABEL_91:
        v152 = v326;
        while (1)
        {
          v35 = v336;
          if (v70 == v76)
          {
            v153 = 1;
            v70 = v76;
            v154 = v340;
          }

          else
          {
            if ((v70 & 0x8000000000000000) != 0)
            {
              goto LABEL_267;
            }

            if (v70 >= v330[2])
            {
              goto LABEL_268;
            }

            v155 = v328 + v70 * v329;
            v154 = v340;
            v156 = *(v340 + 48);
            v157 = v337;
            *v337 = v70;
            sub_1002531D4(v155, v157 + v156, type metadata accessor for Metric);
            sub_1001B603C(v157, v152, &qword_100378F88, &qword_1002F4140);
            v153 = 0;
            ++v70;
          }

          (v35)(v152, v153, 1, v154);
          v158 = v152;
          v159 = v325;
          sub_1001B603C(v158, v325, &qword_100378F90, &qword_1002F4148);
          if ((v55)(v159, 1, v154) == 1)
          {
            break;
          }

          v31 = *v159;
          v160 = v159 + *(v154 + 48);
          v161 = v335;
          v162 = v327;
          (*v334)(v335, v160 + v341[11], v327);
          sub_1002532A4(v160, type metadata accessor for Metric);
          v41 = sub_1001DFBE8();
          v75 = v163;
          (*v108)(v161, v162);
          v34 = v344;
          if (!v344[2])
          {

            goto LABEL_91;
          }

          sub_1001F66B8(v41, v75);
          v34 = v164;

          v152 = v326;
          if ((v34 & 1) != 0 && (v31 & 0x8000000000000000) == 0 && v31 < *(*v324 + 16))
          {
            v75 = v323;
            v34 = v324;
            sub_10024A3C8(v31, v323);
            sub_1002532A4(v75, type metadata accessor for Metric);
          }
        }

        break;
      }

      v75 = *(v31 + 8 * v150);
      ++v70;
      if (v75)
      {
        v70 = v150;
        goto LABEL_81;
      }
    }
  }

  sub_1002532A4(v322, type metadata accessor for Metric);
LABEL_105:
}

Swift::Int sub_10024DAB4(void **a1)
{
  v2 = *(type metadata accessor for Metric(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FA780(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100250880(v6, type metadata accessor for Metric, sub_100251954, sub_100250C78);
  *a1 = v3;
  return result;
}

Swift::Int sub_10024DB9C(void **a1)
{
  v2 = *(type metadata accessor for MetricSectional(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FA76C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100250880(v6, type metadata accessor for MetricSectional, sub_100250EC0, sub_1002509D0);
  *a1 = v3;
  return result;
}

uint64_t sub_10024DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v78) = a5;
  v79 = a4;
  v81 = a3;
  v73 = a2;
  v80 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v7);
  v89 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v91 = *(v88 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v88);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v74 = swift_allocObject();
  *(v74 + 16) = _swiftEmptyArrayStorage;
  v19 = sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.background(_:), v13);
  v75 = v19;
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v98 = sub_100252F8C;
  v99 = v6;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v72 = &v96;
  v96 = sub_10020C96C;
  v97 = &unk_10031FE50;
  v21 = _Block_copy(&aBlock);

  v22 = v12;
  static DispatchQoS.unspecified.getter();
  v93 = _swiftEmptyArrayStorage;
  v87 = sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  v86 = sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  v84 = sub_1002302F0();
  v23 = v89;
  v71 = v7;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v76 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  v24 = *(v90 + 8);
  v90 += 8;
  v85 = v24;
  v24(v23, v7);
  v25 = *(v91 + 8);
  v91 += 8;
  v83 = v25;
  v25(v22, v88);

  v82 = v6[8];
  dispatch_group_enter(v82);
  v26 = swift_allocObject();
  v70 = v6;
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v18;
  v69 = v26;
  v28 = v6[5];
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10025300C;
  *(v29 + 24) = v27;

  v77 = v18;

  v68 = v28;

  v30 = sub_10025C024();
  v67[2] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10025304C;
  *(v31 + 24) = v29;
  v67[1] = *(v30 + 24);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v80;
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  v35 = v73;
  v36 = v81;
  *(v33 + 32) = v73;
  *(v33 + 40) = v36;
  *(v33 + 48) = v79;
  *(v33 + 56) = 0;
  *(v33 + 64) = 0xE000000000000000;
  *(v33 + 72) = v78;
  *(v33 + 80) = sub_1001AD9DC;
  *(v33 + 88) = v31;
  v98 = sub_1002530D4;
  v99 = v33;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_10020C96C;
  v97 = &unk_10031FF68;
  v37 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v93 = _swiftEmptyArrayStorage;
  v38 = v89;
  v39 = v71;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  v85(v38, v39);
  v40 = v35;
  v78 = v22;
  v41 = v70;
  v83(v22, v88);
  v42 = v74;

  v43 = v79;

  dispatch_group_enter(v82);
  v44 = v41[5];
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v47 = v80;
  v46[2] = v45;
  v46[3] = v47;
  v48 = v81;
  v46[4] = v40;
  v46[5] = v48;
  v46[6] = v43;
  v46[7] = v42;
  v49 = *&v44[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
  if ((*(v49 + 160) & 1) == 0)
  {
    v53 = *(v49 + 156);

    v54 = v44;

    sub_10025C024();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_100253160;
    *(v55 + 24) = v46;

    sub_10025FCC4(v53, sub_1001AD9DC, v55);

LABEL_8:

    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    v81 = type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);

    v52 = v44;

    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v51 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  else
  {

    v56 = v44;
  }

  v57 = swift_weakLoadStrong();
  if (!v57)
  {
    goto LABEL_8;
  }

  v58 = *(v57 + 64);

  dispatch_group_leave(v58);

LABEL_9:

  v59 = static OS_dispatch_queue.main.getter();
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  v62 = v77;
  v61[2] = v42;
  v61[3] = v62;
  v61[4] = v60;
  v98 = sub_1002531B8;
  v99 = v61;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_10020C96C;
  v97 = &unk_10031FFE0;
  v63 = _Block_copy(&aBlock);

  v64 = v78;
  static DispatchQoS.unspecified.getter();
  v92 = _swiftEmptyArrayStorage;
  v65 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v63);

  v85(v65, v39);
  v83(v64, v88);
}

uint64_t sub_10024E7CC(uint64_t a1)
{
  v23 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v22 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v10 + 8);
  v18(v13, v9);
  aBlock[4] = sub_1002531CC;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320058;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v4, v1);
  (*(v24 + 8))(v8, v25);
  return (v18)(v16, v22);
}

uint64_t sub_10024EB60(uint64_t a1)
{
  type metadata accessor for MetricDetailViewModel();
  sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(a1 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  return result;
}

void sub_10024EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v8 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  if (a1)
  {
    swift_beginAccess();
    v9 = *(a4 + 16);
    *(a4 + 16) = a1;
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1001A76E8();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:type:_:)();
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 64);

    dispatch_group_leave(v15);
  }
}

void sub_10024EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      type metadata accessor for MetricDetailViewModel();
      sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v36 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
    }

    goto LABEL_30;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v9 = a5;
  v10 = 0;
  v11 = a1 + 64;
  v12 = _swiftEmptyArrayStorage;
  v40 = a1 + 64;
  do
  {
    v42 = v12;
    v13 = (v11 + 40 * v10);
    v14 = v10;
    while (1)
    {
      if (v14 >= v8)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_34;
      }

      v17 = *(v13 - 4);
      v16 = *(v13 - 3);
      v19 = *(v13 - 2);
      v18 = *(v13 - 1);
      v44 = *v13;
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a4 && v20 == v9)
      {
        v27 = v17;
        v28 = v16;
        v29 = v19;
        v30 = v18;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = v17;
        v24 = v16;
        v25 = v19;
        v26 = v18;

        if ((v22 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a6 && v31 == a7)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_6:

      ++v14;
      v13 += 10;
      v9 = a5;
      if (v10 == v8)
      {
        v12 = v42;
        goto LABEL_29;
      }
    }

LABEL_19:
    v12 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001F55E4(0, v42[2] + 1, 1);
      v12 = v42;
    }

    v11 = v40;
    v33 = v12[2];
    v32 = v12[3];
    if (v33 >= v32 >> 1)
    {
      sub_1001F55E4((v32 > 1), v33 + 1, 1);
      v12 = v42;
    }

    v12[2] = v33 + 1;
    v34 = &v12[5 * v33];
    v34[4] = v17;
    v34[5] = v16;
    v34[6] = v19;
    v34[7] = v18;
    *(v34 + 16) = v44;
    v9 = a5;
  }

  while (v10 != v8);
LABEL_29:
  swift_beginAccess();
  v37 = *(a8 + 16);
  *(a8 + 16) = v12;

LABEL_30:
  swift_beginAccess();
  v38 = swift_weakLoadStrong();
  if (v38)
  {
    v39 = *(v38 + 64);

    dispatch_group_leave(v39);
  }
}

uint64_t sub_10024F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v79 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v79 - 8);
  v5 = *(v78 + 64);
  __chkstk_darwin(v79);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v75 = *(v77 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchTime();
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v73);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v70 - v12;
  swift_beginAccess();
  v13 = *(a1 + 16);

  v14 = sub_1001FCF0C(_swiftEmptyArrayStorage);
  v83 = *(v13 + 16);
  if (v83)
  {
    v15 = 0;
    v16 = (v13 + 56);
    v82 = a2;
    v81 = v13;
    while (v15 < *(v13 + 16))
    {
      v84 = v15;
      v19 = *(v16 - 3);
      v20 = *(v16 - 2);
      v21 = *(v16 - 1);
      v22 = *v16;
      v87 = v19;
      v86 = v20;
      v85 = v21;
      v23 = String.init(_:)(v22);
      v24 = objc_opt_self();
      v25 = [v24 mainBundle];
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v26, v25, v23, v23);

      v28 = v22;
      v29 = String.init(_:)(v28);
      v30 = [v24 mainBundle];
      v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v31.value._object = 0xEB00000000656C62;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v31, v30, v29, v29);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v14;
      v35 = sub_1001F66B8(v27._countAndFlagsBits, v27._object);
      v36 = v14[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_30;
      }

      v39 = v34;
      if (v14[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001FA060();
        }
      }

      else
      {
        sub_1001F7C38(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1001F66B8(v27._countAndFlagsBits, v27._object);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_34;
        }

        v35 = v40;
      }

      v42 = v87;
      if (v39)
      {

        v14 = aBlock[0];
        v17 = (*(aBlock[0] + 56) + 16 * v35);
        object = v17->_object;
        *v17 = v32;
      }

      else
      {
        v14 = aBlock[0];
        *(aBlock[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v14[6] + 16 * v35) = v27;
        *(v14[7] + 16 * v35) = v32;

        v43 = v14[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_32;
        }

        v14[2] = v45;
      }

      v15 = v84 + 1;
      v16 += 5;
      a2 = v82;
      v13 = v81;
      if (v83 == v84 + 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_15:

    swift_beginAccess();
    v46 = *(*(a2 + 16) + 16);
    if (!v46)
    {
LABEL_26:

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        v59 = *(a2 + 16);

        sub_10024A6CC(v60);
      }

      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v61 = static OS_dispatch_queue.main.getter();
      v62 = v70;
      static DispatchTime.now()();
      v63 = v71;
      + infix(_:_:)();
      v87 = *(v72 + 8);
      v64 = v73;
      (v87)(v62, v73);
      aBlock[4] = sub_1002531C4;
      aBlock[5] = v80;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100320030;
      v65 = _Block_copy(aBlock);

      v66 = v74;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_1002302F0();
      v67 = v76;
      v68 = v79;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v65);

      (*(v78 + 8))(v67, v68);
      (*(v75 + 8))(v66, v77);
      return (v87)(v63, v64);
    }

    swift_beginAccess();
    v47 = 0;
    while (1)
    {
      v48 = *(a2 + 16);
      if (v47 >= *(v48 + 16))
      {
        break;
      }

      v49 = type metadata accessor for Metric(0);
      v50 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
      v51 = *(*(v49 - 8) + 72) * v47;
      v52 = *(v48 + v50 + v51 + *(v49 + 28));
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v14[2])
      {
        sub_1001F66B8(v53, v54);
        v56 = v55;

        if (v56)
        {
          swift_beginAccess();
          v57 = *(a2 + 16);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v57;
          if ((v58 & 1) == 0)
          {
            v57 = sub_1001FA780(v57);
          }

          if (v47 >= v57[2])
          {
            goto LABEL_33;
          }

          *(v57 + v50 + v51 + *(v49 + 60)) = 1;
          *(a2 + 16) = v57;
          swift_endAccess();
        }
      }

      else
      {
      }

      if (v46 == ++v47)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10024FAEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v1 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 33) = 0;
  }

  return result;
}

uint64_t sub_10024FC44(unint64_t a1, int a2, unint64_t a3, char a4)
{
  v41 = a2;
  v7 = type metadata accessor for Metric(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v42 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  v19 = __chkstk_darwin(v18);
  v21 = &v40[-v20];
  v22 = *(v8 + 56);
  v22(&v40[-v20], 1, 1, v7, v19);
  if (a4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v23 = v43[2];
    if (*(v23 + 16) > a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v43[3];
  if (*(v24 + 16) <= a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = type metadata accessor for MetricSectional(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = *(v24 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80)) + *(*(result - 8) + 72) * a3 + *(result + 24));
  if (*(v23 + 16) > a1)
  {
LABEL_9:
    sub_1002531D4(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v17, type metadata accessor for Metric);
    sub_1001CD530(v21);
    (v22)(v17, 0, 1, v7);
    sub_1001B603C(v17, v21, &unk_100376370, qword_1002F1420);
    sub_1001CD4C0(v21, v14);
    if ((*(v8 + 48))(v14, 1, v7) != 1)
    {
      v26 = v14;
      v27 = v42;
      sub_10025323C(v26, v42, type metadata accessor for Metric);
      v28 = *&v27[v7[12]];
      v29 = *&v27[v7[6]];
      v30 = *&v27[v7[8]];
      v31 = *&v27[v7[13]];
      v44[0] = *&v27[v7[5]];
      v44[1] = v28;
      v44[2] = v29;
      v44[3] = v30;
      v45 = v31;
      v32 = v43[5];
      v33 = v44[0];
      v34 = v28;
      v35 = v29;
      v36 = v30;
      v37 = v32;
      sub_10025C024();
      if (v41)
      {
        v38 = sub_1002679BC(v33, v36);
        sub_100260300(v38, v39, sub_10025EEF4, 0);
      }

      else
      {
        sub_10025FFD0(v44, sub_10025EE8C, 0);
      }

      sub_1002532A4(v42, type metadata accessor for Metric);
      return sub_1001CD530(v21);
    }

    sub_1001CD530(v14);
    if (qword_100374FD0 == -1)
    {
LABEL_11:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      return sub_1001CD530(v21);
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002501CC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1002502B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_100250818;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031FDD8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100250590(uint64_t a1, uint64_t a2)
{
  if (qword_100375018 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  if (*(qword_100382500 + 155) == 1)
  {
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v4 = 1;
  }

  else if (*(qword_100382500 + 168) <= 0)
  {
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v4 = 2;
  }

  else
  {
    v5 = a2;
    type metadata accessor for MetricDetailViewModel();
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    if (v5 >= 1)
    {
      *(a1 + 32) = 0;
      return result;
    }

    v4 = 3;
  }

  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_10025075C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MetricDetailViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10025079C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MetricDetailViewModel();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002507E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100250820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100250838(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100250880(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1002509D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MetricSectional(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_1002531D4(v23, v17, type metadata accessor for MetricSectional);
      sub_1002531D4(v20, v13, type metadata accessor for MetricSectional);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (*v27 == v25 && *(v27 + 1) == v26)
      {
        sub_1002532A4(v13, type metadata accessor for MetricSectional);
        sub_1002532A4(v17, type metadata accessor for MetricSectional);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1002532A4(v13, type metadata accessor for MetricSectional);
      sub_1002532A4(v17, type metadata accessor for MetricSectional);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_10025323C(v23, v40, type metadata accessor for MetricSectional);
      swift_arrayInitWithTakeFrontToBack();
      sub_10025323C(v30, v20, type metadata accessor for MetricSectional);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100250C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for Metric(0);
  v8 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v36;
    while (1)
    {
      sub_1002531D4(v23, v17, type metadata accessor for Metric);
      sub_1002531D4(v20, v13, type metadata accessor for Metric);
      v25 = *(v24 + 44);
      v26 = static Date.> infix(_:_:)();
      sub_1002532A4(v13, type metadata accessor for Metric);
      sub_1002532A4(v17, type metadata accessor for Metric);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_10025323C(v23, v10, type metadata accessor for Metric);
      v24 = v36;
      swift_arrayInitWithTakeFrontToBack();
      sub_10025323C(v10, v20, type metadata accessor for Metric);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100250EC0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = type metadata accessor for MetricSectional(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v125 - v13;
  __chkstk_darwin(v14);
  v145 = &v125 - v15;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v143 = &v125 - v18;
  __chkstk_darwin(v19);
  v142 = (&v125 - v20);
  __chkstk_darwin(v21);
  v131 = &v125 - v22;
  __chkstk_darwin(v23);
  v130 = &v125 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_111:
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_143:
      v28 = sub_1001FA564(v28);
    }

    v148 = v28;
    v120 = *(v28 + 16);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *(v28 + 16 * v120);
        v122 = v28;
        v123 = *(v28 + 16 * (v120 - 1) + 32);
        v28 = *(v28 + 16 * (v120 - 1) + 40);
        sub_100252280(*a3 + *(v9 + 72) * v121, *a3 + *(v9 + 72) * v123, *a3 + *(v9 + 72) * v28, v29);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v28 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1001FA564(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_137;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v28;
        v148 = v122;
        sub_1001FA4D8(v120 - 1);
        v28 = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v146 = v24;
  v126 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v134 = a3;
  v127 = v9;
  v147 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v138 = v26;
    a3 = *a3;
    v30 = *(v9 + 72);
    v140 = v27 + 1;
    v31 = v130;
    sub_1002531D4(a3 + v30 * v29, v130, type metadata accessor for MetricSectional);
    v133 = v27;
    v141 = v30;
    v29 = v131;
    sub_1002531D4(a3 + v30 * v27, v131, type metadata accessor for MetricSectional);
    v32 = *(v8 + 20);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 8);
    v35 = (v29 + v32);
    v36 = *v35 == v33 && v35[1] == v34;
    v129 = v5;
    LODWORD(v139) = v36 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
    v128 = v28;
    sub_1002532A4(v131, type metadata accessor for MetricSectional);
    sub_1002532A4(v130, type metadata accessor for MetricSectional);
    v37 = v133 + 2;
    v38 = v140;
    v39 = v141 * (v133 + 2);
    v40 = a3 + v39;
    v41 = v141 * v140;
    v42 = a3 + v141 * v140;
    do
    {
      v9 = v37;
      v28 = v38;
      v44 = v41;
      v5 = v39;
      if (v37 >= v138)
      {
        break;
      }

      a3 = v142;
      sub_1002531D4(v40, v142, type metadata accessor for MetricSectional);
      v45 = v143;
      sub_1002531D4(v42, v143, type metadata accessor for MetricSectional);
      v46 = *(v147 + 20);
      v47 = *(a3 + v46);
      v48 = *(a3 + v46 + 8);
      v49 = (v45 + v46);
      v50 = *v49 == v47 && v49[1] == v48;
      v43 = v50 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
      v29 = type metadata accessor for MetricSectional;
      sub_1002532A4(v143, type metadata accessor for MetricSectional);
      sub_1002532A4(v142, type metadata accessor for MetricSectional);
      v37 = v9 + 1;
      v40 += v141;
      v42 += v141;
      v38 = v28 + 1;
      v41 = v44 + v141;
      v39 = v5 + v141;
    }

    while (((v139 ^ v43) & 1) == 0);
    if (v139)
    {
      v51 = v133;
      if (v9 < v133)
      {
        goto LABEL_140;
      }

      if (v133 >= v9)
      {
        v29 = v9;
        v28 = v128;
        v5 = v129;
        a3 = v134;
        v9 = v127;
        v8 = v147;
        v27 = v133;
        goto LABEL_37;
      }

      v52 = v133 * v141;
      v8 = v147;
      do
      {
        if (v51 != v28)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_146;
          }

          sub_10025323C(v54 + v52, v137, type metadata accessor for MetricSectional);
          if (v52 < v44 || v54 + v52 >= (v54 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_10025323C(v137, v54 + v44, type metadata accessor for MetricSectional);
          v8 = v147;
        }

        ++v51;
        v44 -= v141;
        v5 -= v141;
        v52 += v141;
      }

      while (v51 < v28--);
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
    }

    else
    {
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
      v8 = v147;
    }

    v27 = v133;
LABEL_37:
    v55 = a3[1];
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_139;
      }

      if (v29 - v27 < v126)
      {
        v56 = v27 + v126;
        if (__OFADD__(v27, v126))
        {
          goto LABEL_141;
        }

        if (v56 >= v55)
        {
          v56 = a3[1];
        }

        if (v56 < v27)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v29 != v56)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v29 < v27)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1001FA578(0, *(v28 + 16) + 1, 1, v28);
    }

    v75 = *(v28 + 16);
    v74 = *(v28 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v28 = sub_1001FA578((v74 > 1), v75 + 1, 1, v28);
    }

    *(v28 + 16) = v76;
    v77 = v28 + 16 * v75;
    *(v77 + 32) = v27;
    *(v77 + 40) = v29;
    v140 = v29;
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_148;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_80:
          if (v82)
          {
            goto LABEL_127;
          }

          v95 = (v28 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_130;
          }

          v101 = (v28 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_134;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v76 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v105 = (v28 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_94:
        if (v100)
        {
          goto LABEL_129;
        }

        v108 = v28 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_132;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_101:
        v116 = v78 - 1;
        if (v78 - 1 >= v76)
        {
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
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v117 = *(v28 + 32 + 16 * v116);
        v118 = *(v28 + 32 + 16 * v78 + 8);
        sub_100252280(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v78), *a3 + *(v9 + 72) * v118, v29);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v118 < v117)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1001FA564(v28);
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v119 = v28 + 16 * v116;
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        v148 = v28;
        sub_1001FA4D8(v78);
        v28 = v148;
        v76 = *(v148 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_125;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_126;
      }

      v90 = (v28 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_128;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_131;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v140;
    v8 = v147;
    if (v140 >= v26)
    {
      goto LABEL_111;
    }
  }

  v128 = v28;
  v129 = v5;
  v57 = *a3;
  v58 = *(v9 + 72);
  v59 = *a3 + v58 * (v29 - 1);
  v60 = -v58;
  v133 = v27;
  v61 = v27 - v29;
  v135 = v58;
  v136 = v56;
  v62 = v57 + v29 * v58;
  v63 = v145;
  while (2)
  {
    v139 = v61;
    v140 = v29;
    v138 = v62;
    v64 = v62;
    v141 = v59;
LABEL_49:
    v65 = v146;
    sub_1002531D4(v64, v146, type metadata accessor for MetricSectional);
    sub_1002531D4(v59, v63, type metadata accessor for MetricSectional);
    v66 = *(v8 + 20);
    v67 = *(v65 + v66);
    v68 = *(v65 + v66 + 8);
    v69 = (v63 + v66);
    if (*v69 == v67 && v69[1] == v68)
    {
      sub_1002532A4(v63, type metadata accessor for MetricSectional);
      sub_1002532A4(v65, type metadata accessor for MetricSectional);
LABEL_47:
      v29 = v140 + 1;
      v59 = v141 + v135;
      v61 = v139 - 1;
      v62 = v138 + v135;
      if (v140 + 1 != v136)
      {
        continue;
      }

      v29 = v136;
      v28 = v128;
      v5 = v129;
      v27 = v133;
      a3 = v134;
      v9 = v127;
      goto LABEL_60;
    }

    break;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_1002532A4(v63, type metadata accessor for MetricSectional);
  sub_1002532A4(v65, type metadata accessor for MetricSectional);
  if ((v71 & 1) == 0)
  {
    v8 = v147;
    goto LABEL_47;
  }

  v8 = v147;
  if (v57)
  {
    v72 = v144;
    sub_10025323C(v64, v144, type metadata accessor for MetricSectional);
    swift_arrayInitWithTakeFrontToBack();
    sub_10025323C(v72, v59, type metadata accessor for MetricSectional);
    v59 += v60;
    v64 += v60;
    v73 = __CFADD__(v61++, 1);
    v63 = v145;
    if (v73)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

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
}

void sub_100251954(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for Metric(0);
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  __chkstk_darwin(v9);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v104 - v13;
  __chkstk_darwin(v14);
  v120 = &v104 - v15;
  __chkstk_darwin(v16);
  v18 = &v104 - v17;
  v118 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
LABEL_99:
      v122 = v99;
      a4 = *(v99 + 2);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *&v99[16 * a4];
          v101 = v99;
          v102 = *&v99[16 * a4 + 24];
          sub_100252848(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *&v99[16 * a4 + 16], *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1001FA564(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1001FA4D8(a4 - 1);
          v99 = v122;
          a4 = *(v122 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v99 = sub_1001FA564(a4);
    goto LABEL_99;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v112 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v116 + 72);
      v5 = *v118 + v24 * v23;
      v114 = *v118;
      v25 = v114;
      sub_1002531D4(v114 + v24 * v23, v18, type metadata accessor for Metric);
      v26 = v25 + v24 * v20;
      v27 = v120;
      sub_1002531D4(v26, v120, type metadata accessor for Metric);
      v28 = *(v9 + 44);
      LODWORD(v115) = static Date.> infix(_:_:)();
      sub_1002532A4(v27, type metadata accessor for Metric);
      sub_1002532A4(v18, type metadata accessor for Metric);
      v106 = v20;
      v29 = v20 + 2;
      v117 = v24;
      v30 = v114 + v24 * (v20 + 2);
      while (v19 != v29)
      {
        sub_1002531D4(v30, v18, type metadata accessor for Metric);
        v31 = v120;
        sub_1002531D4(v5, v120, type metadata accessor for Metric);
        v32 = *(v121 + 44);
        v33 = static Date.> infix(_:_:)() & 1;
        sub_1002532A4(v31, type metadata accessor for Metric);
        sub_1002532A4(v18, type metadata accessor for Metric);
        ++v29;
        v30 += v117;
        v5 += v117;
        if ((v115 & 1) != v33)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v19 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v19)
        {
          v105 = v6;
          v34 = v117 * (v19 - 1);
          v35 = v19;
          v36 = v19 * v117;
          v115 = v19;
          v37 = v106;
          v38 = v106;
          v39 = v106 * v117;
          do
          {
            if (v37 != --v35)
            {
              v40 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v40 + v39;
              sub_10025323C(v40 + v39, v111, type metadata accessor for Metric);
              if (v39 < v34 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10025323C(v111, v40 + v34, type metadata accessor for Metric);
            }

            ++v37;
            v34 -= v117;
            v36 -= v117;
            v39 += v117;
          }

          while (v37 < v35);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v22 = v38;
          v19 = v115;
        }
      }
    }

    v41 = v118[1];
    if (v19 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_125;
    }

    if (v19 - v22 >= a4)
    {
LABEL_32:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v22, a4))
    {
      goto LABEL_127;
    }

    if ((v22 + a4) >= v41)
    {
      v42 = v118[1];
    }

    else
    {
      v42 = v22 + a4;
    }

    if (v42 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v19 == v42)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v87 = v19;
    v88 = v22;
    v89 = *v118;
    v90 = *(v116 + 72);
    v91 = *v118 + v90 * (v19 - 1);
    v92 = -v90;
    v106 = v88;
    v93 = v88 - v19;
    v115 = v87;
    v109 = v90;
    v110 = v42;
    v5 = v89 + v87 * v90;
LABEL_86:
    v113 = v5;
    v114 = v93;
    v117 = v91;
LABEL_87:
    a4 = type metadata accessor for Metric;
    sub_1002531D4(v5, v18, type metadata accessor for Metric);
    v94 = v120;
    sub_1002531D4(v91, v120, type metadata accessor for Metric);
    v95 = *(v9 + 44);
    v96 = static Date.> infix(_:_:)();
    sub_1002532A4(v94, type metadata accessor for Metric);
    sub_1002532A4(v18, type metadata accessor for Metric);
    if (v96)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v20 = v110;
    v91 = v117 + v109;
    v93 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v22 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v112;
    }

    else
    {
      v21 = sub_1001FA578(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v21 + 2);
    v43 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      v21 = sub_1001FA578((v43 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v44 = &v21[16 * a4];
    *(v44 + 4) = v22;
    *(v44 + 5) = v20;
    v45 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          v51 = &v21[16 * v5 + 32];
          v52 = *(v51 - 64);
          v53 = *(v51 - 56);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_111;
          }

          v56 = *(v51 - 48);
          v55 = *(v51 - 40);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_112;
          }

          v58 = &v21[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v57 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v57)
          {
            goto LABEL_114;
          }

          v57 = __OFADD__(v49, v61);
          v62 = v49 + v61;
          if (v57)
          {
            goto LABEL_117;
          }

          if (v62 >= v54)
          {
            v80 = &v21[16 * v46 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v57 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v57)
            {
              goto LABEL_121;
            }

            if (v49 < v83)
            {
              v46 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v50)
            {
              goto LABEL_113;
            }

            v63 = &v21[16 * v5];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_116;
            }

            v69 = &v21[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_120;
            }

            if (v67 + v72 < v49)
            {
              goto LABEL_66;
            }

            if (v49 < v72)
            {
              v46 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v47 = *(v21 + 4);
            v48 = *(v21 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_52;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_66:
          if (v68)
          {
            goto LABEL_115;
          }

          v76 = &v21[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v79 < v67)
          {
            break;
          }
        }

        a4 = v46 - 1;
        if (v46 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v84 = v21;
        v85 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v46 + 40];
        sub_100252848(*v118 + *(v116 + 72) * v85, *v118 + *(v116 + 72) * *&v21[16 * v46 + 32], *v118 + *(v116 + 72) * v5, v45);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v85)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1001FA564(v84);
        }

        if (a4 >= *(v84 + 2))
        {
          goto LABEL_110;
        }

        v86 = &v84[16 * a4];
        *(v86 + 4) = v85;
        *(v86 + 5) = v5;
        v122 = v84;
        sub_1001FA4D8(v46);
        v21 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  if (v89)
  {
    a4 = type metadata accessor for Metric;
    v97 = v119;
    sub_10025323C(v5, v119, type metadata accessor for Metric);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10025323C(v97, v91, type metadata accessor for Metric);
    v91 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}

void sub_100252280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = type metadata accessor for MetricSectional(0);
  v7 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v49 - v10;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = v57;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v57 < a2 || a2 + v22 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v57 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = v57 + v22;
      do
      {
        v50 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v52 = v35;
        v53 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v60 = v35;
            v58 = v50;
            goto LABEL_69;
          }

          v37 = a3;
          v51 = v32;
          v38 = v33;
          v39 = v34 + v33;
          v40 = v34 + v33;
          v41 = v54;
          sub_1002531D4(v40, v54, type metadata accessor for MetricSectional);
          v42 = v55;
          sub_1002531D4(v36, v55, type metadata accessor for MetricSectional);
          v43 = *(v56 + 20);
          v44 = *(v41 + v43);
          v45 = *(v41 + v43 + 8);
          v46 = (v42 + v43);
          v47 = *v46 == v44 && v46[1] == v45;
          v48 = v47 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          v33 = v38;
          a3 = v37 + v38;
          sub_1002532A4(v55, type metadata accessor for MetricSectional);
          sub_1002532A4(v54, type metadata accessor for MetricSectional);
          if (v48)
          {
            break;
          }

          v32 = v39;
          v36 = v53;
          if (v37 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v37 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v39;
          v35 = v52;
          if (v39 <= v57)
          {
            a2 = v52;
            goto LABEL_68;
          }
        }

        a2 = v53;
        if (v37 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
        }

        else
        {
          v32 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v57);
    }

LABEL_68:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (v57 < a1 || a1 + v21 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v57 + v21;
    v58 = v57 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1002531D4(a2, v16, type metadata accessor for MetricSectional);
        sub_1002531D4(v57, v13, type metadata accessor for MetricSectional);
        v25 = *(v56 + 20);
        v26 = *&v16[v25];
        v27 = *&v16[v25 + 8];
        v28 = &v13[v25];
        if (*v28 == v26 && *(v28 + 1) == v27)
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002532A4(v13, type metadata accessor for MetricSectional);
        sub_1002532A4(v16, type metadata accessor for MetricSectional);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
LABEL_38:
        a1 += v18;
        v60 = a1;
        if (v57 >= v23 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1002532A4(v13, type metadata accessor for MetricSectional);
      sub_1002532A4(v16, type metadata accessor for MetricSectional);
LABEL_30:
      v31 = v57 + v18;
      if (a1 < v57 || a1 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v57)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v31;
      v57 = v31;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_100252D7C(&v60, &v59, &v58, type metadata accessor for MetricSectional);
}

void sub_100252848(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = type metadata accessor for Metric(0);
  v8 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v41 = a1;
      v42 = a4;
      v40 = -v13;
      do
      {
        v38 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v43 = v27;
        v44 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v50 = v27;
            v48 = v38;
            goto LABEL_59;
          }

          v39 = v24;
          v30 = v47;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v45;
          sub_1002531D4(v32, v45, type metadata accessor for Metric);
          v34 = v46;
          sub_1002531D4(v28, v46, type metadata accessor for Metric);
          v35 = *(v30 + 44);
          LOBYTE(v30) = static Date.> infix(_:_:)();
          sub_1002532A4(v34, type metadata accessor for Metric);
          sub_1002532A4(v33, type metadata accessor for Metric);
          if (v30)
          {
            break;
          }

          v24 = v32;
          if (a3 < v26 || v31 >= v26)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v41;
          }

          else
          {
            v36 = a3 == v26;
            a3 = v31;
            a1 = v41;
            if (!v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v27 = v43;
          v29 = v32 > v42;
          v28 = v44;
          v25 = v40;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_58;
          }
        }

        if (a3 < v43 || v31 >= v43)
        {
          a3 = v31;
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v40;
          a1 = v41;
          v24 = v39;
        }

        else
        {
          v36 = a3 == v43;
          a3 = v31;
          a2 = v44;
          v25 = v40;
          a1 = v41;
          v24 = v39;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v42);
    }

LABEL_58:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v45;
        sub_1002531D4(a2, v45, type metadata accessor for Metric);
        v21 = v46;
        sub_1002531D4(a4, v46, type metadata accessor for Metric);
        v22 = *(v47 + 44);
        v23 = static Date.> infix(_:_:)();
        sub_1002532A4(v21, type metadata accessor for Metric);
        sub_1002532A4(v20, type metadata accessor for Metric);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v44 && a2 < a3);
    }
  }

LABEL_59:
  sub_100252D7C(&v50, &v49, &v48, type metadata accessor for Metric);
}

uint64_t sub_100252D7C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

uint64_t sub_100252E64(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100252F54()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100252F94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100252FCC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100253014()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10025304C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10025307C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100253110()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100253170()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002531D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025323C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002532A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NSString sub_100253304(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 >= 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    dispatch thunk of CustomStringConvertible.description.getter();
    goto LABEL_6;
  }

  if (a1 >= 8)
  {
    goto LABEL_7;
  }

LABEL_5:
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
LABEL_6:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

Swift::Int sub_100253530()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002535C4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100253644()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002536D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100254064(*a1);
  *a2 = result;
  return result;
}

void sub_100253704(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 80;
  v4 = 21328;
  if (*v1 != 2)
  {
    v4 = 21331;
  }

  if (*v1)
  {
    v3 = 83;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_100253754()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002537C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10025383C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal30FTMNetworkInfoDataStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11FTMInternal30FTMNetworkInfoDataStateChanged__networkInfoArray;
  v4 = sub_1001A551C(&qword_1003791C0, &qword_1002F4318);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100253958()
{
  sub_100253E80(319, &qword_100376DE0, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100253A48();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100253A48()
{
  if (!qword_100378FE0)
  {
    sub_1001A55C8(&qword_100377BE8, &qword_1002F4170);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100378FE0);
    }
  }
}

uint64_t sub_100253AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 84);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100253BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 84);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100253C7C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100253CB4()
{
  sub_100253E80(319, &qword_100379130, &type metadata for Int, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100253E80(319, &qword_100379138, &type metadata for DataTypeInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100253E80(319, &qword_100379140, &type metadata for FTMRATCategories, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100253E80(319, &qword_100375AF8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100253E80(319, &unk_100379148, &type metadata for Double, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001C1F1C();
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

void sub_100253E80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100253ED4()
{
  result = qword_1003791B8;
  if (!qword_1003791B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003791B8);
  }

  return result;
}

uint64_t sub_100253F28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMNetworkInfoDataStateChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100253F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100253FE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100254064(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031C7F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002541C8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100375000 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.numberOfSubsChanged object:0];

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_carrierCurrentSubsIdMap);

  v6 = *(v0 + OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_carriers);

  return v0;
}

uint64_t sub_1002542CC()
{
  sub_1002541C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarrierSegmentViewModel()
{
  result = qword_1003791F0;
  if (!qword_1003791F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254378()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10025443C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CarrierSegmentViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002544A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100254530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100254600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SURLSessionRunningView()
{
  result = qword_1003793B0;
  if (!qword_1003793B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002546FC()
{
  sub_1002547B0();
  if (v0 <= 0x3F)
  {
    sub_100254844();
    if (v1 <= 0x3F)
    {
      sub_100254894();
      if (v2 <= 0x3F)
      {
        sub_1001ADD10();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002547B0()
{
  if (!qword_1003793C0)
  {
    type metadata accessor for SURLSessionRunningViewModel();
    sub_10025BC68(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003793C0);
    }
  }
}

void sub_100254844()
{
  if (!qword_1003793C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003793C8);
    }
  }
}

void sub_100254894()
{
  if (!qword_1003793D0)
  {
    sub_1001A55C8(&qword_1003751D0, &qword_1002EEF50);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003793D0);
    }
  }
}

void sub_100254914(void **a1)
{
  v2 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC8B4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10025A7E8(v5);
  *a1 = v3;
}

uint64_t sub_1002549C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SURLSessionRunningView();
  sub_1001AC934(v1 + *(v12 + 28), v11, &qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DismissAction();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100254BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for SURLSessionRunningView();
  v33 = *(v3 - 8);
  v32 = *(v33 + 64);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100379408, &qword_1002F4490);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v35 = sub_1001A551C(&qword_100379410, &qword_1002F4498);
  v9 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v11 = &v30 - v10;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = sub_1001A551C(&qword_100379418, &qword_1002F44A0);
  sub_1002550F4(v2, &v8[*(v12 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  sub_1001AD0C8(&qword_100379420, &qword_100379408, &qword_1002F4490);
  View.navigationTitle(_:)();

  sub_1001AC99C(v8, &qword_100379408, &qword_1002F4490);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_1001A551C(&qword_100379428, &qword_1002F44A8);
  v15 = &v11[*(v14 + 52)];
  NSNotificationCenter.publisher(for:object:)();

  v16 = *(v2 + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10025A074;
  *(v18 + 24) = v17;
  v19 = &v11[*(v14 + 56)];
  *v19 = sub_10025A0B4;
  v19[1] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = &v11[*(sub_1001A551C(&qword_100379430, &qword_1002F44B0) + 36)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = sub_10025A0BC;
  *(v21 + 3) = v20;
  v22 = &v11[*(v35 + 36)];
  LODWORD(v20) = *(type metadata accessor for _TaskModifier() + 20);
  v23 = v16;
  static TaskPriority.userInitiated.getter();
  v24 = v31;
  sub_10025A0E0(v2, v31);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_10025A144(v24, v26 + v25);
  *v22 = &unk_1002F44C8;
  *(v22 + 1) = v26;
  v33 = LocalizedStringKey.init(stringLiteral:)();
  LODWORD(v32) = v27;
  v28 = *(v2 + 24);
  v37 = *(v2 + 16);
  v38 = v28;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v36 = v2;
  sub_1001A551C(&qword_100375260, &qword_1002EF058);
  sub_10025A27C();
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058);
  View.alert<A>(_:isPresented:actions:)();

  return sub_1001AC99C(v11, &qword_100379410, &qword_1002F4498);
}

uint64_t sub_1002550F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v39 = sub_1001A551C(&qword_100379458, &qword_1002F44D8);
  v3 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v5 = &v37 - v4;
  v38 = sub_1001A551C(&qword_100379460, &qword_1002F44E0);
  v6 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v8 = &v37 - v7;
  v45 = sub_1001A551C(&qword_100379468, &qword_1002F44E8);
  v9 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v40 = &v37 - v10;
  v41 = sub_1001A551C(&qword_100379470, &qword_1002F44F0);
  v11 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = &v37 - v12;
  v13 = sub_1001A551C(&qword_100379478, &qword_1002F44F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v43 = sub_1001A551C(&qword_100379480, &qword_1002F4500);
  v17 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v37 = &v37 - v18;
  v42 = sub_1001A551C(&qword_100379488, &qword_1002F4508);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v42);
  v22 = &v37 - v21;
  v23 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v47;
  v26 = v48;
  if (v48 <= 1)
  {
    if (v48)
    {
      if (v48 == 1)
      {
        ProgressView<>.init(label:)();
        v27 = v42;
        (*(v19 + 16))(v16, v22, v42);
        swift_storeEnumTagMultiPayload();
        sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
        v28 = v37;
        _ConditionalContent<>.init(storage:)();
        sub_1001AC934(v28, v44, &qword_100379480, &qword_1002F4500);
        swift_storeEnumTagMultiPayload();
        sub_10025A4D4();
        sub_10025A584();
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v28, &qword_100379480, &qword_1002F4500);
        return (*(v19 + 8))(v22, v27);
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v48 != 2)
  {
    if (v48 != 3)
    {
LABEL_8:
      __chkstk_darwin(v24);
      *(&v37 - 2) = v25;
      *(&v37 - 1) = v26;
      ProgressView<>.init(label:)();
      v32 = v42;
      (*(v19 + 16))(v16, v22, v42);
      swift_storeEnumTagMultiPayload();
      sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
      v33 = v37;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v33, v44, &qword_100379480, &qword_1002F4500);
      swift_storeEnumTagMultiPayload();
      sub_10025A4D4();
      sub_10025A584();
      _ConditionalContent<>.init(storage:)();
      sub_10025A4C0(v25, v26);
      sub_1001AC99C(v33, &qword_100379480, &qword_1002F4500);
      return (*(v19 + 8))(v22, v32);
    }

LABEL_7:
    sub_10025A4C0(v47, v48);
    *v5 = static HorizontalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v30 = sub_1001A551C(&qword_100379490, &qword_1002F4558);
    sub_10025677C(a1, &v5[*(v30 + 44)]);
    sub_1001AC934(v5, v8, &qword_100379458, &qword_1002F44D8);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
    sub_1001AD0C8(&qword_1003794A0, &qword_100379458, &qword_1002F44D8);
    v31 = v40;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v31, v44, &qword_100379468, &qword_1002F44E8);
    swift_storeEnumTagMultiPayload();
    sub_10025A4D4();
    sub_10025A584();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v31, &qword_100379468, &qword_1002F44E8);
    return sub_1001AC99C(v5, &qword_100379458, &qword_1002F44D8);
  }

  ProgressView<>.init(label:)();
  v34 = v19;
  v35 = v42;
  (*(v19 + 16))(v8, v22, v42);
  swift_storeEnumTagMultiPayload();
  sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508);
  sub_1001AD0C8(&qword_1003794A0, &qword_100379458, &qword_1002F44D8);
  v36 = v40;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC934(v36, v44, &qword_100379468, &qword_1002F44E8);
  swift_storeEnumTagMultiPayload();
  sub_10025A4D4();
  sub_10025A584();
  _ConditionalContent<>.init(storage:)();
  sub_1001AC99C(v36, &qword_100379468, &qword_1002F44E8);
  return (*(v34 + 8))(v22, v35);
}

uint64_t sub_100255A10@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_100255A70()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 isIdleTimerDisabled];

  if (v2)
  {
    v3 = [v0 sharedApplication];
    [v3 setIdleTimerDisabled:0];
  }
}

uint64_t sub_100255B2C(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for Notification();
  v7[3] = v4;
  v5 = sub_10025A454(v7);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  a2(v7);
  return sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
}

uint64_t sub_100255BD0(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_100255C68, v3, v2);
}

uint64_t sub_100255C68()
{
  v1 = *(v0[13] + 8);
  sub_100234060();
  if (*(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 81) == 1)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_100255D80;

    return sub_100236D94();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_100255F1C;

    return sub_100234504();
  }
}

uint64_t sub_100255D80()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_100256058;
  }

  else
  {
    v7 = sub_100255EBC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100255EBC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100255F1C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1002562A0;
  }

  else
  {
    v7 = sub_10025BE00;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100256058()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10021F6F4(v3, qword_100382528);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "There was an error running the tasks: %@", v6, 0xCu);
    sub_1001AC99C(v7, &unk_100379B60, &unk_1002F3B30);
  }

  v9 = *(v0 + 104);

  swift_getErrorValue();
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = Error.localizedDescription.getter();
  v14 = *(v9 + 48);
  *(v0 + 40) = *(v9 + 32);
  *(v0 + 56) = v14;
  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  v16 = *(v9 + 24);
  *(v0 + 80) = *(v9 + 16);
  *(v0 + 88) = v16;
  *(v0 + 168) = 1;

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002562A0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10021F6F4(v3, qword_100382528);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "There was an error running the tasks: %@", v6, 0xCu);
    sub_1001AC99C(v7, &unk_100379B60, &unk_1002F3B30);
  }

  v9 = *(v0 + 104);

  swift_getErrorValue();
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = Error.localizedDescription.getter();
  v14 = *(v9 + 48);
  *(v0 + 40) = *(v9 + 32);
  *(v0 + 56) = v14;
  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  v16 = *(v9 + 24);
  *(v0 + 80) = *(v9 + 16);
  *(v0 + 88) = v16;
  *(v0 + 168) = 1;

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002564E8(uint64_t a1)
{
  v2 = type metadata accessor for SURLSessionRunningView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10025A0E0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10025A144(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button<>.init(_:action:)();
}

uint64_t sub_100256634(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  LOBYTE(v11) = *(a1 + 16);
  *(&v11 + 1) = v7;
  LOBYTE(v10[0]) = 0;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();
  v8 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v8;
  v10[0] = 0;
  v10[1] = 0;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  sub_1002549C8(v6);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10025677C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for GroupedListStyle();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_1003794B8, &qword_1002F4560);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v43 = sub_1001A551C(&qword_1003794C0, &qword_1002F4568);
  v13 = *(v43 - 8);
  v14 = v13[8];
  __chkstk_darwin(v43);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v19 = sub_1001A551C(&qword_1003794C8, &qword_1002F4570);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v42 - v25;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0x4008000000000000;
  v26[16] = 0;
  v27 = sub_1001A551C(&qword_1003794D0, &qword_1002F4578);
  sub_100256C28(a1, &v26[*(v27 + 44)]);
  v28 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v30 = &v26[*(sub_1001A551C(&qword_1003794D8, &qword_1002F45B0) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = static Edge.Set.horizontal.getter();
  v32 = &v26[*(v20 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  v50 = a1;
  sub_1001A551C(&qword_1003794E0, &qword_1002F45B8);
  sub_10025A728();
  List<>.init(content:)();
  GroupedListStyle.init()();
  sub_1001AD0C8(&qword_100379500, &qword_1003794B8, &qword_1002F4560);
  v33 = v45;
  v34 = v47;
  View.listStyle<A>(_:)();
  (*(v48 + 8))(v7, v34);
  (*(v46 + 8))(v12, v33);
  v42 = v23;
  sub_1001AC934(v26, v23, &qword_1003794C8, &qword_1002F4570);
  v35 = v13[2];
  v36 = v43;
  v37 = v44;
  v35(v44, v18, v43);
  v38 = v49;
  sub_1001AC934(v23, v49, &qword_1003794C8, &qword_1002F4570);
  v39 = sub_1001A551C(&qword_100379508, &qword_1002F45C8);
  v35((v38 + *(v39 + 48)), v37, v36);
  v40 = v13[1];
  v40(v18, v36);
  sub_1001AC99C(v26, &qword_1003794C8, &qword_1002F4570);
  v40(v37, v36);
  return sub_1001AC99C(v42, &qword_1003794C8, &qword_1002F4570);
}