uint64_t CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_1883F8FA0();
  _StringGuts.grow(_:)(21);
  sub_1883F7DC8();
  MEMORY[0x18CFD5140](0x6F5A64656C696146, 0xEE0065766153656ELL);
  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  v4 = sub_1883F9454();
  MEMORY[0x18CFD5140](v4, 0xE700000000000000);
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v8;
}

uint64_t CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_1883F8FA0();
  _StringGuts.grow(_:)(23);
  sub_1883F7DC8();
  sub_188403810();
  MEMORY[0x18CFD5140](0xD000000000000010);
  MEMORY[0x18CFD5140](0x3D64726F63657220, 0xE800000000000000);
  v3 = [v2 conciseDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  v4 = sub_1883F9454();
  MEMORY[0x18CFD5140](v4, 0xE700000000000000);
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883FF260();

  sub_1883FE78C();

  sub_1883FA058();
  return v8;
}

id sub_188509AC0()
{
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C5E0, off_1E70BA878);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithModifications:isa deletions:v2];

  return v3;
}

id sub_188509B74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);

  v6 = [v3 initWithRecordID:a1 recordType:v5];

  return v6;
}

id sub_188509BE0()
{
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C5D0, off_1E70BA868);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v0 initWithModifications:isa deletions:v2 zoneAttributesModifications:v3];

  return v4;
}

id sub_188509CD8()
{
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &unk_1EA90C340, off_1E70BA830);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v0 initWithSavedZones:isa failedZoneSaves:v2 deletedZoneIDs:v3 failedZoneDeletes:v4];

  return v5;
}

id sub_188509E44(void *a1, void *a2, SEL *a3)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = [v3 *a3];

  return v8;
}

id sub_188509EB4()
{
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90C558, off_1E70BA828);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v3 = Array._bridgeToObjectiveC()().super.isa;

  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883F66E4(&qword_1EA90C7E0, &qword_1EA90CA70, off_1E70BA618);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v0 initWithSavedRecords:isa failedRecordSaves:v2 deletedRecordIDs:v3 failedRecordDeletes:v4];

  return v5;
}

id sub_18850A020(void *a1, void *a2, SEL *a3)
{
  v5 = v3;
  if (a2)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 *a3];

  return v9;
}

uint64_t sub_18850A0B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_18850A0FC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18850A164(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) & 1 | (a2 << 60);
  *(result + 48) &= 1uLL;
  *(result + 64) = v2;
  return result;
}

__n128 sub_18850A184(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18850A198(uint64_t a1, unsigned int a2)
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

uint64_t sub_18850A1D8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18850A254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return sub_1883F9AE0(result);
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A33C(uint64_t result, int a2, int a3)
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

      return sub_1883FDE34(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return sub_1883FDE34(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

uint64_t sub_18850A3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return sub_1883F9AE0(result);
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

      return sub_1883FDE34(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1883FDE34(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A434(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 8))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

void *sub_18850A470(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

uint64_t sub_18850A4B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return sub_1883F7A8C(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return sub_1883F7A8C(v2);
}

void *sub_18850A4F0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return sub_1883FEDE8(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_1883FEDE8(result, a2);
    }
  }

  return result;
}

id sub_18850A598@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recordsToSave];
  sub_1883F4C5C(0, &qword_1EA90C758, off_1E70BA5F8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v1 recordIDsToDelete];
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v1 atomicByZone];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.recordsToSave.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.recordIDsToDelete.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:recordProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18850A774, 0, 0);
}

uint64_t sub_18850A774()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  *(v0 + 64) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1;
    while (1)
    {
      *(v0 + 112) = v1;
      *(v0 + 120) = v7;
      *(v0 + 96) = v1;
      *(v0 + 104) = v7;
      *(v0 + 80) = v6;
      *(v0 + 88) = v7;
      *(v0 + 72) = v5;
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v8 = v3 + 16 * v6;
      v9 = *(v8 + 32);
      *(v0 + 128) = v9;
      v10 = *(v8 + 40);
      v11 = v9;
      v12 = v11;
      if (v10 != 1)
      {
        break;
      }

      v13 = [v11 size];
      if (__OFADD__(v5, v13))
      {
        goto LABEL_48;
      }

      if (v13 + v5 > 1572864)
      {
        v27 = *(v0 + 40);

        if (qword_1EA90C9F0 == -1)
        {
LABEL_26:
          v28 = type metadata accessor for Logger();
          sub_1883F85F4(v28, qword_1EA90C9F8);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();
          v31 = sub_1883FA260(v30);
          v32 = *(v0 + 128);
          if (v31)
          {
            v33 = sub_1883F9468();
            *v33 = 0;
            _os_log_impl(&dword_1883EA000, v29, v30, "Next record will exceed max bytes per batch", v33, 2u);
            sub_1883F7B60();
          }

          v7 = *(v0 + 88);
          goto LABEL_40;
        }

LABEL_51:
        sub_1883F74A0();
        swift_once();
        goto LABEL_26;
      }

      v14 = v12;
      MEMORY[0x18CFD52F0]();
      v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
      {
        sub_1883F8DD4(v15);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = *v2;
      v16 = [v14 size];
      v17 = __OFADD__(v5, v16);
      v5 += v16;
      if (v17)
      {
        goto LABEL_49;
      }

      if (v1 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v18, v19))
      {
        goto LABEL_50;
      }

      if (v18 + v19 >= 250)
      {
        v34 = *(v0 + 40);

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1883F85F4(v35, qword_1EA90C9F8);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        v38 = sub_1883FA260(v37);
        v39 = *(v0 + 128);
        if (v38)
        {
          *sub_1883F9468() = 0;
          v42 = "Reached max record count per batch";
          goto LABEL_37;
        }

LABEL_38:

        goto LABEL_40;
      }

      if (v5 >= 1572864)
      {
        v43 = *(v0 + 40);

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_1883F85F4(v44, qword_1EA90C9F8);
        v36 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        v46 = sub_1883FA260(v45);
        v39 = *(v0 + 128);
        if (v46)
        {
          *sub_1883F9468() = 0;
          v42 = "Current batch is over the max bytes per batch";
LABEL_37:
          sub_1883FE7A8(&dword_1883EA000, v40, v41, v42);
          sub_1883F7B60();
        }

        goto LABEL_38;
      }

      v20 = *(v0 + 64);
      v21 = *(v0 + 80) + 1;

      if (v21 == v20)
      {
        v47 = *(v0 + 40);

        goto LABEL_40;
      }

      v6 = *(v0 + 80) + 1;
      v3 = *(v0 + 40);
    }

    v22 = *(v0 + 48);
    v23 = v11;
    v52 = (v22 + *v22);
    v24 = v22[1];
    v25 = swift_task_alloc();
    *(v0 + 136) = v25;
    *v25 = v0;
    sub_1883F9F58(v25);

    return v52(v23);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v48 = MEMORY[0x1E69E7CC0];
    if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]) || sub_1883F4C9C(v7))
    {
      v49 = *(v0 + 32);
      *v49 = v48;
      *(v49 + 8) = v7;
      *(v49 + 16) = 0;
    }

    else
    {
      v51 = *(v0 + 32);

      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
    }

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_18850AC4C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18850AD4C, 0, 0);
}

uint64_t sub_18850AD4C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = [*(v0 + 144) size];
    v4 = v3 + v2;
    if (__OFADD__(v2, v3))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v4 <= 1572864)
    {
      v7 = (v0 + 104);
    }

    else
    {
      v5 = *(v0 + 112);
      if (v5 >> 62)
      {
        if (v5 < 0)
        {
          v70 = *(v0 + 112);
        }

        if (__CocoaSet.count.getter())
        {
          goto LABEL_8;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        v8 = *(v0 + 128);

        v2 = *(v0 + 96);
        goto LABEL_53;
      }

      v7 = (v0 + 120);
      v6 = *(v0 + 120);
      if (v6 >> 62)
      {
        if (v6 < 0)
        {
          v71 = *(v0 + 120);
        }

        if (__CocoaSet.count.getter())
        {
          goto LABEL_8;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

    v19 = *v7;
    v21 = v1;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC(*(v0 + 16));
    if (v23)
    {
      sub_1883F8DD4(v22);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v24 = *(v0 + 128);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = *(v0 + 16);
    if (v4 > 1572864)
    {
LABEL_53:
      v59 = *(v0 + 40);

      if (qword_1EA90C9F0 == -1)
      {
LABEL_54:
        v60 = type metadata accessor for Logger();
        sub_1883F85F4(v60, qword_1EA90C9F8);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        v63 = sub_1883FA260(v62);
        v64 = *(v0 + 128);
        if (v63)
        {
          *sub_1883F9468() = 0;
          sub_1883FE7A8(&dword_1883EA000, v65, v66, "Next record will exceed max bytes per batch");
          sub_1883F7B60();
        }

        v26 = *(v0 + 88);
        goto LABEL_57;
      }

LABEL_69:
      sub_1883F74A0();
      swift_once();
      goto LABEL_54;
    }

    v20 = *(v0 + 16);
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v9 = *(v0 + 128);
    v10 = type metadata accessor for Logger();
    sub_1883F85F4(v10, qword_1EA90C9F8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_1883EA000, v12, v13, "No record to save for record ID %@", v16, 0xCu);
      sub_188462FE0(v17);
      sub_1883F7B60();
      sub_1883F7B60();
      v15 = v12;
      v12 = *(v0 + 128);
    }

    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
  }

  v25 = *(v0 + 120);
  v26 = *(v0 + 88);
  while (1)
  {
    if (v20 >> 62)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v27, v28))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v27 + v28 >= 250)
    {
      v42 = *(v0 + 40);

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1883F85F4(v43, qword_1EA90C9F8);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = sub_1883FA260(v45);
      v47 = *(v0 + 128);
      if (!v46)
      {
        goto LABEL_48;
      }

      v48 = sub_1883F9468();
      *v48 = 0;
      v49 = "Reached max record count per batch";
      goto LABEL_47;
    }

    if (v4 >= 1572864)
    {
      v50 = *(v0 + 40);

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1883F85F4(v51, qword_1EA90C9F8);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v52 = sub_1883FA260(v45);
      v47 = *(v0 + 128);
      if (!v52)
      {
        goto LABEL_48;
      }

      v48 = sub_1883F9468();
      *v48 = 0;
      v49 = "Current batch is over the max bytes per batch";
LABEL_47:
      _os_log_impl(&dword_1883EA000, v44, v45, v49, v48, 2u);
      sub_1883F7B60();
LABEL_48:

      goto LABEL_57;
    }

    v29 = *(v0 + 64);
    v30 = *(v0 + 80) + 1;

    if (v30 == v29)
    {
      v53 = *(v0 + 40);

LABEL_57:
      if (sub_1883F4C9C(v2) || sub_1883F4C9C(v26))
      {
        v67 = *(v0 + 32);
        *v67 = v2;
        *(v67 + 8) = v26;
        *(v67 + 16) = 0;
      }

      else
      {
        v69 = *(v0 + 32);

        *v69 = 0;
        *(v69 + 8) = 0;
        *(v69 + 16) = 0;
      }

      v68 = *(v0 + 8);

      return v68();
    }

    v31 = *(v0 + 80) + 1;
    *(v0 + 112) = v20;
    *(v0 + 120) = v25;
    *(v0 + 96) = v2;
    *(v0 + 104) = v19;
    *(v0 + 80) = v31;
    *(v0 + 88) = v26;
    *(v0 + 72) = v4;
    v32 = *(v0 + 40);
    if (v31 >= *(v32 + 16))
    {
      goto LABEL_65;
    }

    v33 = v32 + 16 * v31;
    v34 = *(v33 + 32);
    *(v0 + 128) = v34;
    v35 = *(v33 + 40);
    v36 = v34;
    v37 = v36;
    if (v35 != 1)
    {
      break;
    }

    v38 = [v36 size];
    if (__OFADD__(v4, v38))
    {
      goto LABEL_66;
    }

    if (v38 + v4 > 1572864)
    {
      goto LABEL_53;
    }

    v39 = v37;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC(*(v0 + 24));
    if (v23)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = *(v0 + 24);
    v40 = [v39 size];
    v19 = v26;
    v25 = v26;
    v41 = __OFADD__(v4, v40);
    v4 += v40;
    if (v41)
    {
      goto LABEL_67;
    }
  }

  v54 = *(v0 + 48);
  v55 = v36;
  v72 = (v54 + *v54);
  v56 = v54[1];
  v57 = swift_task_alloc();
  *(v0 + 136) = v57;
  *v57 = v0;
  sub_1883F9F58();

  return v72(v55);
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(recordsToSave:recordIDsToDelete:atomicByZone:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 16);
  if (!v46)
  {

    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v6 = 0;
  v7 = 0;
  v8 = (a1 + 40);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
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

    v11 = *(v8 - 1);
    v12 = *v8;
    v13 = v11;
    v3 = v13;
    if (v12 != 1)
    {
      v45 = v10;
      v10 = v13;
      v20 = a2();
      if (!v20)
      {
        v43 = v3;
        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F74A0();
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_1883F85F4(v25, qword_1EA90C9F8);
        v26 = v10;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v42 = a3;
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v30 = v11;
          v31 = v26;
          _os_log_impl(&dword_1883EA000, v27, v28, "No record to save for record ID %@", v29, 0xCu);
          sub_188462FE0(v30);
          a3 = v42;
          sub_1883F7B60();
          sub_1883F7B60();
          v26 = v27;
          v27 = v31;
        }

        v10 = v45;
        v3 = v43;
        goto LABEL_27;
      }

      v21 = v20;
      v22 = [v20 size];
      v19 = __OFADD__(v6, v22);
      v6 += v22;
      if (v19)
      {
        goto LABEL_65;
      }

      if (v6 <= 1572864)
      {
        goto LABEL_18;
      }

      if (v45 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_41;
        }
      }

      else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      if (!(v9 >> 62))
      {
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

LABEL_18:
        v23 = v21;
        MEMORY[0x18CFD52F0]();
        v24 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
        {
          sub_1883F8DD4(v24);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v49;
        if (v6 > 1572864)
        {
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }

LABEL_41:

      v10 = v45;
LABEL_42:

      if (qword_1EA90C9F0 == -1)
      {
LABEL_43:
        v34 = type metadata accessor for Logger();
        sub_1883F85F4(v34, qword_1EA90C9F8);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (!sub_1883FA260(v36))
        {
          goto LABEL_55;
        }

        v37 = sub_1883F9468();
        *v37 = 0;
        v38 = "Next record will exceed max bytes per batch";
        goto LABEL_54;
      }

LABEL_66:
      sub_1883F74A0();
      swift_once();
      goto LABEL_43;
    }

    v14 = [v13 size];
    if (__OFADD__(v6, v14))
    {
      goto LABEL_63;
    }

    if (v14 + v6 > 1572864)
    {
      goto LABEL_42;
    }

    v15 = v3;
    v3 = v3;
    MEMORY[0x18CFD52F0]();
    sub_1883F7DEC(v48);
    if (v17)
    {
      sub_1883F8DD4(v16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v48;
    v18 = [v3 size];
    v19 = __OFADD__(v6, v18);
    v6 += v18;
    if (v19)
    {
      goto LABEL_64;
    }

    v3 = v15;
LABEL_27:
    if (v10 >> 62)
    {
      v32 = __CocoaSet.count.getter();
    }

    else
    {
      v32 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >> 62)
    {
      v33 = __CocoaSet.count.getter();
    }

    else
    {
      v33 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFADD__(v32, v33))
    {
      goto LABEL_62;
    }

    if (v32 + v33 >= 250)
    {
      break;
    }

    v4 = a1;
    if (v6 >= 1572864)
    {

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883F85F4(v40, qword_1EA90C9F8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (sub_1883FA260(v36))
      {
        v37 = sub_1883F9468();
        *v37 = 0;
        v38 = "Current batch is over the max bytes per batch";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    ++v7;

    v8 += 16;
    if (v46 == v7)
    {

      goto LABEL_56;
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1883F85F4(v39, qword_1EA90C9F8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (sub_1883FA260(v36))
  {
    v37 = sub_1883F9468();
    *v37 = 0;
    v38 = "Reached max record count per batch";
LABEL_54:
    _os_log_impl(&dword_1883EA000, v35, v36, v38, v37, 2u);
    sub_1883F7B60();
  }

LABEL_55:

LABEL_56:
  result = sub_1883F4C9C(v10);
  if (result || (result = sub_1883F4C9C(v9)) != 0)
  {
    *a3 = v10;
    *(a3 + 8) = v9;
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 0;
  return result;
}

char *CKSyncEngine.RecordZoneChangeBatch.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_1883F4C9C(*v0);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v27 = MEMORY[0x1E69E7CC0];
    result = sub_18840489C(0, v4 & ~(v4 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v26 = v3;
    v8 = 0;
    v5 = v27;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFD59D0](v8, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 conciseDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = sub_1883F8DD4(v15);
        sub_18840489C(v18, v16 + 1, 1);
      }

      ++v8;
      *(v27 + 16) = v16 + 1;
      v17 = v27 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    v3 = v26;
  }

  if (v3)
  {
    v19 = 0xEF313D656E6F5A79;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (v3)
  {
    v20 = 0x4263696D6F746120;
  }

  else
  {
    v20 = 0;
  }

  _StringGuts.grow(_:)(44);

  MEMORY[0x18CFD5140](v20, v19);

  MEMORY[0x18CFD5140](0x7364726F63657220, 0xEF3D657661536F54);
  v21 = MEMORY[0x18CFD5330](v5, MEMORY[0x1E69E6158]);
  v23 = v22;

  MEMORY[0x18CFD5140](v21, v23);

  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188703570);
  v24 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v25 = MEMORY[0x18CFD5330](v1, v24);
  MEMORY[0x18CFD5140](v25);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_18850BC60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18850BCA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_18850BCF0()
{
  v1 = [*(v0 + 16) lastAccount];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 accountInfo];
  v4 = [v2 userRecordID];
  sub_188505EAC(v3);
  v6 = v5;

  if (!v6)
  {

    return 0;
  }

  return v3;
}

void sub_18850BDBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(v4 + 16);
  if (a1)
  {
    type metadata accessor for CKSyncEngineAccount(0);
    v8 = sub_1883F7FB4();
    sub_1884D123C(v8, v9, v10, v11);
    v12 = a4;
    v13 = sub_188505194(a1, a4);
  }

  else
  {
    v13 = 0;
  }

  [v7 setLastAccount_];

  v14 = sub_1883F7FB4();

  sub_1884D11E8(v14, v15, v16, v17);
}

void sub_18850BE74(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = [objc_allocWithZone(CKSyncEnginePendingAssetSync) initWithAsset:*a1 type:0];
  [v4 markAssetSync:v5 inFlight:a2 & 1];
}

void sub_18850BEFC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(CKSyncEnginePendingAssetSync) initWithAsset:*a1 type:0];
  [v2 removeInFlightAssetSync_];
}

id CKSyncEngine.State.serverChangeTokenForDatabase.getter()
{
  v1 = [*(v0 + 16) serverChangeTokenForDatabase];

  return v1;
}

void CKSyncEngine.State.serverChangeTokenForDatabase.setter(void *a1)
{
  [*(v1 + 16) setServerChangeTokenForDatabase_];
}

void sub_18850BFF4(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = *(v2 + 16);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        sub_18840578C();
      }

      else
      {
        v8 = sub_188405008();
      }

      v9 = v8;
      ++v6;
      [v7 setNeedsToFetchChanges:a1 & 1 forRecordZoneID:v8];
    }

    while (v5 != v6);
  }
}

void sub_18850C0D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = MEMORY[0x18CFD5010]();
  }

  else
  {
    v4 = 0;
  }

  [v3 setExistingDatabaseSubscriptionID_];
}

uint64_t sub_18850C174()
{
  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v0 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v0 = MEMORY[0x1E69E7CD0];
  }

  v19 = v0;
  v1 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  result = sub_1883F4C9C(v1);
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18CFD59D0](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      sub_188406C1C(&v18, v5);
    }
  }

  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v10 = *(v8 - 1);
      v11 = v10;
      if (v9 == 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v10 zoneID];
      }

      sub_188406C1C(&v18, v12);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = v16;
      sub_188406C1C(&v18, [v17 zoneID]);

      --v14;
    }

    while (v14);
  }

  return v19;
}

uint64_t sub_18850C33C()
{
  v1 = [*(v0 + 16) pendingAutomaticSyncZoneIDs];
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_18850C5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 type];
  if (!v4)
  {
    v5 = 0;
LABEL_5:
    result = [v2 recordID];
    *a1 = result;
    *(a1 + 8) = v5;
    return result;
  }

  if (v4 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  sub_1883F75C8();
  _StringGuts.grow(_:)(42);

  sub_1883F9424();
  v7 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  sub_1883FDB78();

  sub_1883FDE40();
  result = sub_1883FEDF4();
  __break(1u);
  return result;
}

id sub_18850C6B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if ([v2 type])
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(34);

    sub_1883F9424();
    v5 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
    result = sub_1883FEDF4();
    __break(1u);
  }

  else
  {
    result = [v2 asset];
    *a1 = result;
  }

  return result;
}

uint64_t sub_18850C798(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_18850C7C4(v4);
}

uint64_t sub_18850C8AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_18850C8D8(v4);
}

id sub_18850C9F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 type];
  if (v4 == 1)
  {
    v5 = [v2 zoneID];
    v6 = 1;
LABEL_6:
    result = v5;
    *a1 = result;
    *(a1 + 8) = v6;
    return result;
  }

  if (v4)
  {
    sub_1883F75C8();
    _StringGuts.grow(_:)(39);

    sub_1883F9424();
    v9 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v5 = [v7 zone];
      v6 = 0;
      goto LABEL_6;
    }

    sub_1883F75C8();
    _StringGuts.grow(_:)(43);

    sub_1883F9424();
    v10 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1883F8544();
    sub_1883FDB78();

    sub_1883FDE40();
  }

  result = sub_1883FEDF4();
  __break(1u);
  return result;
}

id (*CKSyncEngine.State.hasPendingUntrackedChanges.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 hasPendingUntrackedChanges];
  return sub_18850CBD0;
}

void sub_18850CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1883F9160();
  a21 = v23;
  a22 = v24;
  v26 = [*(v22 + 16) *v25];
  sub_1883F4C5C(0, &qword_1EA90C730, off_1E70BA880);
  sub_1883F9598();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = sub_1883F4C9C(v27);
  if (!v28)
  {
LABEL_10:

    sub_1883F8750();
    return;
  }

  v29 = v28;
  a10 = MEMORY[0x1E69E7CC0];
  sub_18847798C();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a10;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        sub_18840578C();
      }

      else
      {
        v32 = sub_188405008();
      }

      v33 = v32;
      sub_18850C6B4(&a9);

      v34 = a9;
      a10 = v31;
      v35 = *(v31 + 16);
      if (v35 >= *(v31 + 24) >> 1)
      {
        sub_18847798C();
        v31 = a10;
      }

      ++v30;
      *(v31 + 16) = v35 + 1;
      *(v31 + 8 * v35 + 32) = v34;
    }

    while (v29 != v30);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_18850CFFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_18850D028(v4);
}

void sub_18850D128(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CKSyncEngine.State.serverChangeTokenForDatabase.setter(v2);
}

void (*CKSyncEngine.State.serverChangeTokenForDatabase.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 serverChangeTokenForDatabase];
  return sub_18850D1B4;
}

void sub_18850D1B4(id *a1)
{
  v1 = *a1;
  [a1[1] setServerChangeTokenForDatabase_];
}

CKServerChangeToken_optional __swiftcall CKSyncEngine.State.serverChangeToken(for:)(CKRecordZoneID *a1)
{
  v2 = [*(v1 + 16) serverChangeTokenForZoneID_];

  v3 = v2;
  result.value._data = v4;
  result.value.super.isa = v3;
  result.is_nil = v5;
  return result;
}

uint64_t CKSyncEngine.State.Serialization.init(deprecatedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_18850D240(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18850D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18850D240(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18850D2E4(uint64_t a1)
{
  v2 = sub_188423FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18850D320(uint64_t a1)
{
  v2 = sub_188423FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CKSyncEngine.State.Serialization.encode(to:)(void *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90E760, &qword_1886FD040);
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_188423C74(v11, v12);
  sub_188423FF4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v11;
  v16 = v12;
  sub_18845AE10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_188423CCC(v15, v16);
  return (*(v6 + 8))(v10, v3);
}

uint64_t CKSyncEngine.State.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static CKSyncEngine.PendingRecordZoneChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v5 = v3;
  v6 = v2;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t static CKSyncEngine.PendingDatabaseChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v4 == 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = [v3 zoneID];
  }

  v8 = v7;
  if (v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = [v5 zoneID];
  }

  v10 = v9;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v11 = static NSObject.== infix(_:_:)();

  return v11 & ~(v4 ^ v6) & 1;
}

uint64_t sub_18850D69C()
{
  if (*(v0 + 8))
  {
    v5 = 0x286574656C6564;
  }

  else
  {
    v5 = 0x2865766173;
  }

  v3 = [*v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  MEMORY[0x18CFD5140](v1, v2);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_18850D764()
{
  v1 = *v0;
  MEMORY[0x18CFD5EB0](*(v0 + 8));
  return NSObject.hash(into:)();
}

Swift::Int sub_18850D7AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v2);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850D824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 8);
  v9 = *v4;
  v10 = v6;
  Hasher.init(_seed:)();
  a4(v8);
  return Hasher._finalize()();
}

uint64_t CKSyncEngine.PendingAssetSync.description.getter()
{
  v3 = [*v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F8544();
  MEMORY[0x18CFD5140](v1, v2);

  MEMORY[0x18CFD5140](41, 0xE100000000000000);
  return 0x286863746566;
}

uint64_t static CKSyncEngine.PendingAssetSync.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v4 = v2;
  v5 = v3;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t CKSyncEngine.PendingAssetSync.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x18CFD5EB0](0);
  return NSObject.hash(into:)();
}

Swift::Int CKSyncEngine.PendingAssetSync.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850DA24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_18850DA80()
{
  result = qword_1EA90C670;
  if (!qword_1EA90C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C670);
  }

  return result;
}

unint64_t sub_18850DAD8()
{
  result = qword_1EA90E770;
  if (!qword_1EA90E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E770);
  }

  return result;
}

unint64_t sub_18850DB30()
{
  result = qword_1EA90C748;
  if (!qword_1EA90C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C748);
  }

  return result;
}

uint64_t sub_18850DBAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_18850DBEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_18850DC54()
{
  result = qword_1EA90E778;
  if (!qword_1EA90E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E778);
  }

  return result;
}

BOOL sub_18850DCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18840C67C(a1, a2, a3);
  v6 = (v5 + 56);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 - 1);
    v10 = *v6;
    v11 = *(v6 - 2);
    v14[0] = *(v6 - 3);
    v14[1] = v11;
    v14[2] = v9;
    v14[3] = v10;

    v12 = v4(v14);

    if (v3)
    {
      break;
    }

    v6 += 4;
  }

  while ((v12 & 1) == 0);
  return v8 != 0;
}

BOOL sub_18850DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18840C67C(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

uint64_t sub_18850DE28()
{
  sub_1883F8FB8();
  sub_18850DE48(v0, v1, v2, v3);
  return v4 & 1;
}

void sub_18850DE48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x18CFD59D0](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_18850DF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_18841BAFC();
  sub_1883F4C5C(v7, v8, v9);
  sub_18841BAFC();
  sub_1883F66E4(v10, v11, v12);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1883F7BC0();
  v14 = Dictionary.init(dictionaryLiteral:)();

  if (a2)
  {
    v15 = a2;
  }

  else
  {
    type metadata accessor for SyncEngine();
    v15 = sub_1883F57B8();
  }

  v28 = v5;
  v29 = v6;
  v30 = v15;
  v31 = v13;
  v32 = v14;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v36 = 3;
  sub_1883F697C(&v28, &v26);
  v16 = a2;
  sub_1883F69F4(v15);
  if (v17 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    v25 = v6;
    v18 = v28;
    v19 = v29;
    type metadata accessor for SyncEngine();
    v26 = v18;
    v27 = v19;
    v13 = MEMORY[0x1E69E7CC0];

    v20 = sub_1883F6734(&v26);
    v22 = v21;

    v23 = v22;
    v6 = v25;
    sub_1883F60E8(v20, v23, v15);
  }

  result = sub_1883F7768(&v28);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v15;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 3;
  return result;
}

Swift::Bool __swiftcall CKSyncEngine.FetchChangesOptions.Scope.contains(_:)(CKRecordZoneID *a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x1EEE9AC00](a1);
      sub_1884137CC();
      sub_1883F8FB8();
      sub_18850DE48(v3, v4, v5, v6);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1884137CC();
    sub_1883F8FB8();
    sub_18850DE48(v8, v9, v10, v11);
    v7 = v12 ^ 1;
  }

  return v7 & 1;
}

uint64_t CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void CKSyncEngine.FetchAssetOptions.init(asset:operationGroup:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 size];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() progressWithTotalUnitCount_];
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      type metadata accessor for SyncEngine();
      v8 = sub_1883F57B8();
    }

    v9 = v8;
    v10 = a1;
    v11 = v7;
    v12 = a2;
    sub_1883F69F4(v9);
    if (v13 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine();
      sub_188410234();
      v14 = sub_1884E02F8();
      v16 = v15;

      sub_1883F60E8(v14, v16, v9);
    }

    *a3 = v9;
    a3[1] = v10;
    a3[2] = v11;
  }
}

BOOL sub_18850E3B8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.init(fetchChangesPriority:sendChangesPriority:syncEnabled:assetContentsFetchType:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  v10 = a2[1];
  v11 = *a4;
  v12 = a4[1];

  *a5 = v7;
  *(a5 + 8) = v8;

  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = a3;

  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._AssetOptions.init(fetchPriority:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

Swift::Bool __swiftcall CKSyncEngine.SendChangesOptions.Scope.contains(_:)(CKRecordID a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = 1;
  switch(v3)
  {
    case 1:
      v11 = [(objc_class *)a1.super.isa zoneID];
      v12 = sub_188442F94(v11);
      MEMORY[0x1EEE9AC00](v12);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v13, v14, sub_1883F4C9C);
      v4 = v15;

      break;
    case 2:
      v16 = sub_188442F94(a1.super.isa);
      MEMORY[0x1EEE9AC00](v16);
      sub_1883F7E10();
      sub_1883F8FB8();
      sub_1883FF51C(v17, v18, v19, v20);
      v4 = v21;
      break;
    case 3:
      return v4 & 1;
    default:
      v5 = [(objc_class *)a1.super.isa zoneID];
      v6 = sub_188442F94(v5);
      MEMORY[0x1EEE9AC00](v6);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v7, v8, sub_1883F4C9C);
      v10 = v9;

      v4 = v10 ^ 1;
      break;
  }

  return v4 & 1;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._SyncPriority.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int CKSyncEngine._AutomaticSyncOptions._SyncPriority.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1883FDECC();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18850E81C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1883FDECC();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s8CloudKit12CKSyncEngineC21_AutomaticSyncOptionsV01_F8PriorityV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.fetchChangesPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.sendChangesPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._ZoneOptions.assetContentsFetchType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t static CKSyncEngine._AutomaticSyncOptions._ZoneOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 == v9)
    {
LABEL_14:
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      sub_18841BAFC();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }

    return 0;
  }

  sub_1884433A4();
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v14 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions._AssetOptions.fetchPriority.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t static CKSyncEngine._AutomaticSyncOptions._AssetOptions.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.defaultZoneOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[5];
  v8 = v1[6];
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
}

__n128 CKSyncEngine._AutomaticSyncOptions.defaultZoneOption.setter()
{
  sub_188404A04();
  v11 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 32);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  v9 = *(v0 + 48);

  *v0 = v11;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  sub_1883FE1B8();
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.defaultAssetOption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.zoneOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.assetOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t CKSyncEngine._AutomaticSyncOptions.init(zoneOptions:assetOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  *a3 = 0x6C616D726F6ELL;
  *(a3 + 8) = 0xE600000000000000;

  *(a3 + 16) = 0x6C616D726F6ELL;
  *(a3 + 24) = 0xE600000000000000;
  *(a3 + 32) = 1;

  *(a3 + 40) = 0xD000000000000012;
  *(a3 + 48) = 0x8000000188702670;

  *(a3 + 56) = 0x6C616D726F6ELL;
  *(a3 + 64) = 0xE600000000000000;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  Dictionary.init(dictionaryLiteral:)();
  sub_1884433A4();
  sub_1883F4C5C(v6, v7, v8);
  sub_1884433A4();
  sub_1883F66E4(v9, v10, v11);
  Dictionary.init(dictionaryLiteral:)();
  v12 = *MEMORY[0x1E696A3A8];

  *(a3 + 80) = a2;
  *(a3 + 88) = v12;
  *(a3 + 72) = a1;
  return result;
}

void sub_18850EF70(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_1883F8578();
    v10 = v9 & v8;
    v37 = (v11 + 63) >> 6;
    v38 = v7;
    v44 = a2;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_11:
      v16 = v12 | (v3 << 6);
      v17 = *(*(v7 + 48) + 8 * v16);
      v18 = *(v7 + 56) + 56 * v16;
      v20 = *v18;
      v19 = *(v18 + 8);
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      v43 = *(v18 + 32);
      v23 = *(v18 + 48);
      v41 = *(v18 + 40);
      v24 = v17;

      if (!v17)
      {
        return;
      }

      sub_188486310();
      v26 = v25;
      v28 = v27;

      if ((v28 & 1) == 0 || ((v29 = *(v44 + 56) + 56 * v26, v30 = *(v29 + 16), v31 = *(v29 + 24), v40 = *(v29 + 32), v32 = *(v29 + 40), v39 = *(v29 + 48), *v29 == v20) ? (v33 = v19 == *(v29 + 8)) : (v33 = 0), !v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_34:

        return;
      }

      if (v30 == v22 && v21 == v31)
      {
        if (v43 != v40)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_1883F7EE0();
        if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v43 ^ v40))
        {
          goto LABEL_34;
        }
      }

      if (v32 == v41 && v23 == v39)
      {

        v7 = v38;
        v10 = v42;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v38;
        v10 = v42;
        if ((v36 & 1) == 0)
        {
          return;
        }
      }
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v37)
      {
        return;
      }

      ++v13;
      if (*(v5 + 8 * v3))
      {
        sub_1883FA4B8();
        v42 = v15 & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18850F208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_18850F220(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return CKSyncEngine.FetchChangesOptions.scope.setter(&v3);
}

uint64_t CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t CKSyncEngine.FetchChangesOptions.zoneConfigurations.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_18850F5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1884DE34C();
  *a1 = result;
  return result;
}

uint64_t sub_18850F5EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F61C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18850F624@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18844C858(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_18850F654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F684(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_18850F694(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_18850F6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18850F6F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18850F6F4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_18850F718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18850F74C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18850F74C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_18850F79C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850F7CC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_18850F83C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18850F858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18850DF40(a1);
  *a2 = result;
  return result;
}

uint64_t CKSyncEngine.FetchChangesContext.options.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  memcpy(a1, (v1 + 8), 0x48uLL);
  return sub_1883F697C(__dst, &v4);
}

uint64_t sub_18850F8DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return CKSyncEngine.SendChangesOptions.scope.setter(&v3);
}

uint64_t CKSyncEngine.SendChangesOptions.scope.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *v1;

  *v1 = v2;
  *(v1 + 8) = v3;
  v5 = v1[2];

  v6 = v5;
  sub_1883F69F4(v6);
  sub_1883FE204();
  if (v7 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine();
    v8 = sub_1883FAF04();
    sub_188405EE0(v8, v9, v10, v11, v12, v13, v14, v15, v19);
    sub_1883FC71C();

    v16 = sub_1883F84DC();
    sub_1883F60E8(v16, v17, v6);
  }
}

void sub_18850FA18(uint64_t **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1883FF688(a1);
    v8 = v2;
    sub_1883F69F4(v8);
    if (v4 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine();
      sub_188512740();
      sub_18841BAFC();
      sub_188413094(v5);
      sub_1883FE204();

      v6 = sub_1883FF4BC();
      sub_1883F60E8(v6, v7, v8);
    }
  }
}

uint64_t CKSyncEngine.SendChangesOptions.operationGroup.setter(void *a1)
{
  v1[2] = a1;
  v3 = *v1;
  v4 = *(v1 + 8);

  v5 = a1;
  sub_1883F69F4(v5);
  sub_1883FE204();
  if (v6 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine();
    v7 = sub_1883FAF04();
    sub_188405EE0(v7, v8, v9, v10, v11, v12, v13, v14, v18);
    sub_1883FC71C();

    v15 = sub_1883F84DC();
    sub_1883F60E8(v15, v16, v5);
  }
}

uint64_t CKSyncEngine.SendChangesOptions.Scope.contains(_:)(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = 1;
  switch(v4)
  {
    case 1:
      v13 = v2;
      v14 = [v13 zoneID];
      v15 = sub_188442F94(v14);
      MEMORY[0x1EEE9AC00](v15);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v16, v17, sub_1883F4C9C);
      v5 = v18;

      break;
    case 2:
      v25 = *a1;
      MEMORY[0x1EEE9AC00](a1);
      v24[2] = &v25;
      v20 = v19;
      sub_1883FF51C(sub_1884F9D44, v24, v21, sub_1883F4C9C);
      v5 = v22;

      break;
    case 3:
      return v5 & 1;
    default:
      v6 = v2;
      v7 = [v6 zoneID];
      v8 = sub_188442F94(v7);
      MEMORY[0x1EEE9AC00](v8);
      sub_1883F7E10();
      sub_1883FF51C(sub_1884DFFF0, v9, v10, sub_1883F4C9C);
      v12 = v11;

      v5 = v12 ^ 1;
      break;
  }

  return v5 & 1;
}

id sub_18850FDD0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883FDE28();
  sub_1883F4C5C(v1, v2, v3);
  sub_1883FDE28();
  sub_1883F66E4(v4, v5, v6);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v8 = [v0 initWithExcludedZoneIDs_];

  return v8;
}

id CKSyncEngine.SendChangesContext.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;

  return v4;
}

Swift::Int CKSyncEngine.SyncReason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

void CKSyncEngine.FetchAssetOptions.operationGroup.setter(void *a1)
{
  *v1 = a1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v10 = a1;
  v5 = v4;
  v6 = v3;
  sub_1883F69F4(v10);
  sub_1883FE204();
  if (v7 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
  {
  }

  else
  {
    type metadata accessor for SyncEngine();
    sub_1883FF4BC();
    sub_1884E02F8();
    sub_1883FC71C();
    v8 = sub_1883F84DC();
    sub_1883F60E8(v8, v9, v10);
  }
}

void sub_1885100BC(id **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = (*a1)[1];
    v4 = (*a1)[2];
    v5 = **a1;
    v6 = v3;
    v10 = v4;
    sub_1883F69F4(v5);
    sub_1883FE204();
    if (v7 && (sub_1883F75D8(), (sub_1883F7624() & 1) == 0))
    {
    }

    else
    {
      type metadata accessor for SyncEngine();
      sub_1883FF4BC();
      sub_1884E02F8();
      sub_1883FC71C();
      v8 = sub_1883F84DC();
      sub_1883F60E8(v8, v9, v5);
    }
  }
}

id CKSyncEngine.FetchAssetContext.options.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v7 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v7;
  v4 = v2;
  v5 = v3;

  return v7;
}

uint64_t static CKSyncEngine.FetchChangesOptions.Scope.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v4 != 2 || v3 != 0)
      {
        goto LABEL_11;
      }

      v7 = 1;
LABEL_13:

      return v7 & 1;
    }

    if (v4 != 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *a2;

    v7 = sub_188472A78(v6, v3);

    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_6;
  }

LABEL_11:
  v7 = 0;
  return v7 & 1;
}

uint64_t CKSyncEngine.FetchChangesOptions.ZoneConfiguration.description.getter()
{
  *v0;
  sub_1883F9424();
  v3 = v1;
  MEMORY[0x18CFD5140]();

  sub_1883F8358();
  return v3;
}

uint64_t static CKSyncEngine.SendChangesOptions.Scope.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_16;
      }

      v5 = *a2;

      v7 = sub_188472A8C(v6, v3);
      goto LABEL_14;
    case 3:
      if (v4 != 3 || v3 != 0)
      {
        goto LABEL_16;
      }

      v9 = 1;
      goto LABEL_15;
    default:
      if (*(a2 + 8))
      {
LABEL_16:
        v9 = 0;
      }

      else
      {
LABEL_13:
        v10 = *a2;

        v7 = sub_188472A78(v11, v3);
LABEL_14:
        v9 = v7;

LABEL_15:
      }

      return v9 & 1;
  }
}

uint64_t CKSyncEngine.SyncReason.description.getter()
{
  if (*v0)
  {
    result = 0x6C61756E616DLL;
  }

  else
  {
    result = 0x656C756465686373;
  }

  *v0;
  return result;
}

unint64_t CKSyncEngine.FetchAssetOptions.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1883F69F4(*v0);
  if (v3)
  {
    sub_1884147E8();
    v12 = v4 & 0xFFFFFFFFFFFFLL | 0x3D000000000000;
    MEMORY[0x18CFD5140]();

    v15 = v12;
    v16 = 0xE700000000000000;
  }

  sub_1884147E8();
  sub_1883FF004();
  v13 = v5;
  v14 = v6;
  v7 = [v2 operationGroupID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1883F7BC0();
  MEMORY[0x18CFD5140](v8);

  MEMORY[0x18CFD5140](v13, v14);

  _StringGuts.grow(_:)(26);

  sub_1883F9424();
  v9 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1883F7BC0();
  MEMORY[0x18CFD5140](v10);

  MEMORY[0x18CFD5140](v15, v16);

  MEMORY[0x18CFD5140](0x736572676F727020, 0xEC0000003E293D73);
  return 0xD000000000000019;
}

unint64_t CKSyncEngine.FetchAssetContext.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  sub_188512720();

  sub_1883F9424();
  if (v1)
  {
    v3 = 0x6C61756E616DLL;
  }

  else
  {
    v3 = 0x656C756465686373;
  }

  if (v1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  MEMORY[0x18CFD5140](v3, v4);

  v5 = sub_188404394();
  MEMORY[0x18CFD5140](v5, 0xE90000000000003DLL);
  v8 = *(v0 + 8);
  Asset = CKSyncEngine.FetchAssetOptions.description.getter();
  MEMORY[0x18CFD5140](Asset);

  sub_1883F8358();
  return 0xD00000000000001ALL;
}

void *sub_1885106E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

size_t sub_188510764(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v4 = *(type metadata accessor for PropertyDescription() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_18851087C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_18840F728();
    if (v6 == v7)
    {
      sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
      v8 = sub_1883FF58C();
      v9 = j__malloc_size(v8);
      sub_188512708(v9);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_18851092C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    sub_18840F728();
    if (v7 == v8)
    {
      sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v9 = sub_1883FF58C();
      j__malloc_size(v9);
      sub_1883FE878();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != v4)
    {
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1885109F8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1883F62D4(v2, 0);

    MEMORY[0x18CFD59A0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_188510A94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_18840F728();
    if (v6 == v7)
    {
      sub_18844E6FC(&qword_1EA90D6E8, &qword_1886F86D0);
      v8 = sub_1883FF58C();
      v9 = j__malloc_size(v8);
      sub_188512708(v9);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_188510ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FDC24();
  if (v12)
  {
    sub_18844E6FC(&qword_1EA90E7D8, &unk_1886FE128);
    sub_1883F9AEC();
    sub_1883F86D0();
    while (1)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {

        goto LABEL_17;
      }

      sub_1883FDE4C();
      sub_1884433A4();
      sub_1883F4C5C(v13, v14, v15);
      swift_dynamicCast();
      type metadata accessor for CloudCoreContainer();
      swift_dynamicCast();
      sub_188410C8C();
      if (!(!v18 & v17))
      {
        sub_1883FB5EC(v16);
        sub_1885113E4();
      }

      v19 = NSObject._rawHashValue(seed:)(*(a12 + 40)) & ~(-1 << *(a12 + 32));
      if (((-1 << v19) & ~*(a12 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      sub_1883FEB1C();
LABEL_14:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(a12 + 48) + 8 * v21) = a11;
      *(*(a12 + 56) + 8 * v21) = a10;
      sub_1883F96B8();
    }

    sub_18840B08C();
    while (1)
    {
      sub_18840BE58();
      if (v18)
      {
        if (v23)
        {
          break;
        }
      }

      sub_1883F7FC8(v22);
      if (!v18)
      {
        sub_1883F7AA4();
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_17:
    sub_1883FDC98();
  }
}

Swift::Int sub_188511078(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_18844E6FC(&qword_1EA90E7B8, &qword_1886FE0F8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v14 = v3;
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      swift_dynamicCast();
      sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1885113E4();
      }

      v2 = v16;
      result = NSObject._rawHashValue(seed:)(*(v16 + 40));
      v5 = v16 + 64;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
      *(*(v16 + 56) + 8 * v9) = v14;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1885113E4()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4(v8);
  sub_18844E6FC(v9, v10);
  sub_188405660();
  v12 = v11;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_29:
    *v5 = v13;
    sub_1883F8750();
    return;
  }

  v35 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v15;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v17 & v16);
        goto LABEL_9;
      }
    }

    if (v7)
    {
      sub_1883FF398();
      if (v33 != v34)
      {
        sub_188410D18(v32);
      }

      else
      {
        sub_1885126E8(v32);
      }

      *(v1 + 16) = 0;
    }

    v5 = v35;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8(v14);
    v20 = *(v19 + 8 * v18);
    if ((v7 & 1) == 0)
    {
      v21 = v12;
      v22 = v20;
    }

    v23 = NSObject._rawHashValue(seed:)(*(v13 + 40));
    sub_1883FF288(v23);
    if (v24)
    {
      break;
    }

    sub_1883F9020();
LABEL_20:
    sub_1883FE7E8(v25);
    *(v31 + 8 * v30) = v20;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (1)
  {
    v29 = v26 + 1;
    if (v29 == v28 && (v27 & 1) != 0)
    {
      break;
    }

    if (v29 == v28)
    {
      v29 = 0;
    }

    sub_18840E830(v29);
    if (!v24)
    {
      sub_1883F7C04();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_18851152C()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4(v8);
  sub_18844E6FC(&qword_1EA90E5C8, &qword_1886FE120);
  sub_188405660();
  v36[0] = v7;
  v10 = v9;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_29:
    *v5 = v11;
    sub_1883F8750();
    return;
  }

  v35 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v13;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v15 & v14);
        goto LABEL_9;
      }
    }

    if (v36[0])
    {
      sub_1883FF398();
      if (v33 != v34)
      {
        sub_188410D18(v32);
      }

      else
      {
        sub_1885126E8(v32);
      }

      *(v1 + 16) = 0;
    }

    v5 = v35;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8(v12);
    v18 = (v17 + 16 * v16);
    v19 = *v18;
    v20 = *(v18 + 1);
    if ((v36[0] & 1) == 0)
    {
      v21 = v10;
    }

    v22 = NSObject._rawHashValue(seed:)(*(v11 + 40));
    sub_1883FF288(v22);
    if (v23)
    {
      break;
    }

    sub_1883F9020();
LABEL_20:
    sub_1883FE7E8(v24);
    v31 = v30 + 16 * v29;
    *v31 = v19;
    *(v31 + 8) = v20;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (1)
  {
    v28 = v25 + 1;
    if (v28 == v27 && (v26 & 1) != 0)
    {
      break;
    }

    if (v28 == v27)
    {
      v28 = 0;
    }

    sub_18840E830(v28);
    if (!v23)
    {
      sub_1883F7C04();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_188511694()
{
  sub_1883F9160();
  v5 = v0;
  v7 = v6;
  sub_188405DE4(v8);
  sub_18844E6FC(&qword_1EA90E5B8, &qword_1886FBA50);
  sub_188405660();
  v37[0] = v7;
  v10 = v9;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {

LABEL_29:
    *v5 = v11;
    sub_1883F8750();
    return;
  }

  v36 = v5;
  sub_1883FA278();
  if (!v5)
  {
LABEL_4:
    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v3 >= v4)
      {
        break;
      }

      ++v13;
      if (*(v2 + 8 * v3))
      {
        sub_1883FA4B8();
        v5 = (v15 & v14);
        goto LABEL_9;
      }
    }

    if (v37[0])
    {
      sub_1883FF398();
      if (v34 != v35)
      {
        sub_188410D18(v33);
      }

      else
      {
        sub_1885126E8(v33);
      }

      *(v1 + 16) = 0;
    }

    v5 = v36;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1883FE0AC();
LABEL_9:
    sub_1883FEEB8(v12);
    v18 = v17 + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    if ((v37[0] & 1) == 0)
    {
      v21 = v19;
      v22 = v10;
    }

    v23 = NSObject._rawHashValue(seed:)(*(v11 + 40));
    sub_1883FF288(v23);
    if (v24)
    {
      break;
    }

    sub_1883F9020();
LABEL_20:
    sub_1883FE7E8(v25);
    v32 = v31 + 16 * v30;
    *v32 = v19;
    *(v32 + 8) = v20;
    sub_1883F96B8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1883F7AC4();
  while (1)
  {
    v29 = v26 + 1;
    if (v29 == v28 && (v27 & 1) != 0)
    {
      break;
    }

    if (v29 == v28)
    {
      v29 = 0;
    }

    sub_18840E830(v29);
    if (!v24)
    {
      sub_1883F7C04();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_188511800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v14 = *(a4 + v8 + 40);
      v13 = *(a4 + v8 + 48);
      v15 = *(a4 + v8 + 56);
      v16 = *(a4 + v8 + 64);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 8) = v14;
      *(v12 + 16) = v13;
      *(v12 + 24) = v15;
      *(v12 + 32) = v16;
      if (v11 == v9)
      {

        goto LABEL_12;
      }

      v8 += 40;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1885118E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CKRecordValueStore.makeIterator()(&v34);

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v21 = a1;
      v7 = 0;
      v8 = v35;
      v9 = v34;
      v23 = v34;
      v24 = v35;
      v25 = *(&v34 + 1);
      v10 = (*(&v34 + 1) + 16 * v35 + 40);
      v22 = v34;
      while (1)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= *(v25 + 16))
        {
          goto LABEL_12;
        }

        if (v24 < 0)
        {
          goto LABEL_15;
        }

        v12 = a3;
        v13 = *(v10 - 1);
        v14 = *v10;

        v15 = MEMORY[0x18CFD5010](v13, v14);
        v16 = [v23 objectForKey_];

        if (!v16)
        {
          goto LABEL_17;
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        CKRecordValue.CKToSwiftNativeValue()();
        swift_unknownObjectRelease_n();
        ++v8;
        *&v27 = v13;
        *(&v27 + 1) = v14;
        sub_18843E080(&v26, v28);
        v17 = v29;
        v33 = v29;
        v18 = v28[1];
        v19 = v28[0];
        v20 = v27;
        *a2 = v27;
        *(a2 + 16) = v19;
        *(a2 + 32) = v18;
        *(a2 + 48) = v17;
        a2 += 56;
        v10 += 2;
        ++v7;
        v31 = v19;
        v32 = v18;
        v30 = v20;
        a3 = v12;
        v9 = v22;
        if (v11 == v12)
        {
LABEL_12:
          a1 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v9 = v34;
    v8 = v35;
LABEL_13:
    *a1 = v9;
    *(a1 + 16) = v8;
  }
}

void sub_188511AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CKRecord.makeIterator()(&v29);

  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v20 = a3;
      v21 = a1;
      v7 = 0;
      v8 = v30;
      v9 = v29;
      v10 = v29;
      v11 = v29 + 40;
      v24 = v29;
      v19 = v29 + 40;
LABEL_5:
      if (!__OFADD__(v7, 1))
      {
        v23 = a2;
        v22 = v7 + 1;
        v12 = *(v10 + 16);
        v13 = (v11 + 16 * v8);
        for (i = v8; ; ++i)
        {
          if (i >= v12)
          {
            goto LABEL_15;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= *(v10 + 16))
          {
            goto LABEL_18;
          }

          v16 = *(v13 - 1);
          v15 = *v13;
          swift_bridgeObjectRetain_n();
          v17 = MEMORY[0x18CFD5010](v16, v15);

          v18 = [*(&v10 + 1) objectForKey_];

          if (v18)
          {
            swift_getObjectType();
            CKRecordValue.CKToSwiftNativeValue()();
            swift_unknownObjectRelease();
            *&v25 = v16;
            *(&v25 + 1) = v15;
            *v23 = v25;
            *(v23 + 16) = v26;
            *(v23 + 32) = v27;
            *(v23 + 48) = v28;
            a2 = v23 + 56;
            v8 = i + 1;
            v7 = v22;
            v9 = v24;
            v11 = v19;
            if (v22 != v20)
            {
              goto LABEL_5;
            }

            ++i;
LABEL_15:
            a1 = v21;
            goto LABEL_16;
          }

          v13 += 2;
          v9 = v24;
        }

        __break(1u);
LABEL_18:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v9 = v29;
    i = v30;
LABEL_16:
    *a1 = v9;
    *(a1 + 16) = i;
  }
}

uint64_t sub_188511C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t sub_188511D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_188511E20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_188511D58() & 1;
}

uint64_t sub_188511E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_188511DBC() & 1;
}

unint64_t sub_188511E6C()
{
  result = qword_1EA90C738;
  if (!qword_1EA90C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C738);
  }

  return result;
}

unint64_t sub_188511EC4()
{
  result = qword_1EA90E780;
  if (!qword_1EA90E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E780);
  }

  return result;
}

uint64_t sub_188511F18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_188511FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_188511FF8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t _s19FetchChangesOptionsV17ZoneConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t _s19FetchChangesOptionsV17ZoneConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1885120F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_188512134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_188512178(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1885121A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1885121E0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_188512244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_188512284(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1885122D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_188512314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_188512358(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_188512380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1885123C0(uint64_t result, int a2, int a3)
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

_BYTE *_s10SyncReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_188512534()
{
  result = qword_1EA90E788;
  if (!qword_1EA90E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E788);
  }

  return result;
}

unint64_t sub_18851258C()
{
  result = qword_1EA90E790;
  if (!qword_1EA90E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E790);
  }

  return result;
}

unint64_t sub_1885125E4()
{
  result = qword_1EA90E798;
  if (!qword_1EA90E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E798);
  }

  return result;
}

unint64_t sub_18851263C()
{
  result = qword_1EA90E7A0;
  if (!qword_1EA90E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E7A0);
  }

  return result;
}

uint64_t sub_1885126E8@<X0>(uint64_t a1@<X8>)
{

  return sub_188501174(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_188512708(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void sub_188512720()
{

  _StringGuts.grow(_:)(25);
}

uint64_t sub_188512740()
{
}

uint64_t sub_188512760()
{
  sub_1883F7120();
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

void sub_1885127C0(uint64_t *a1)
{
  v3 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_188514848();
  }

  v9 = *a1;
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  sub_1885151D4((*a1 + 16), *a1 + v11);
  if (!v1 && (v12 & 1) != 0)
  {
    v13 = *(v9 + 24);
    if ((v13 & 0x8000000000000000) == 0)
    {

      if (v13)
      {
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v13;
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = (v10 + 32) & ~v10;
      v28[1] = v13;
      v29 = 0;
      v28[0] = v14 + v15;
      sub_188515294((v9 + 16), v9 + v11, v28, &v29);
      if (v13 < v29)
      {
        goto LABEL_30;
      }

      *(v14 + 16) = v29;

      v30 = v14;
      sub_188512A30(&v30);
      v16 = v30;
      v27 = *(v9 + 24);
      if (v27 < 0)
      {
        goto LABEL_31;
      }

      v17 = v15;
      v18 = 0;
      v19 = *(v30 + 16);
      v25 = v30 + v17;
      v26 = v19;
      while (1)
      {
        if (v27 == v18 || v26 == v18)
        {

          return;
        }

        if (v18 >= *(v16 + 16))
        {
          break;
        }

        v21 = *(v4 + 72);
        sub_18840BC64(v25 + v21 * v18, v7);
        if (v18 >= *(v9 + 24))
        {
          goto LABEL_28;
        }

        v22 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188514848();
        }

        v9 = *a1;
        v23 = *(*a1 + 32);
        if ((v18 + v23) >= *(*a1 + 16))
        {
          v24 = *(*a1 + 16);
        }

        else
        {
          v24 = 0;
        }

        sub_1885153D4(v7, v9 + v11 + (v18 + v23 - v24) * v21);
        sub_18840BD84(v7);
        ++v18;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void sub_188512A30(uint64_t *a1)
{
  v2 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1885143E0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_188513178(v6);
  *a1 = v3;
}

uint64_t sub_188512AD8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v13 - v9;
  if (a1)
  {
    v11 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a3;

    sub_188453610();
  }

  return result;
}

uint64_t sub_188512BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_188512BEC, a4, 0);
}

uint64_t sub_188512BEC()
{
  sub_1883F7120();
  v1 = v0[2];
  sub_188512C48(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_188512C48(uint64_t a1)
{
  v2 = v1;
  v26 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v25 - v9);
  swift_beginAccess();
  v11 = *(v2 + 136);

  for (i = 0; ; ++i)
  {
    v14 = v11[3];
    if (i == v14)
    {
    }

    if (i >= v14)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v15 = v11[4];
    v16 = i + v15 >= v11[2] ? v11[2] : 0;
    v17 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v18 = *(v4 + 72);
    sub_18840BC64(v11 + v17 + (i + v15 - v16) * v18, v10);
    v19 = *v10;
    result = sub_18840BD84(v10);
    if (v19 == a1)
    {
      break;
    }
  }

  swift_beginAccess();
  result = *(v2 + 136);
  if (i >= *(result + 24))
  {
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_188514848();
  }

  v20 = *(v2 + 136);
  if (i >= v20[3])
  {
    goto LABEL_21;
  }

  v21 = v20[4];
  if (v21 + i >= v20[2])
  {
    v22 = v20[2];
  }

  else
  {
    v22 = 0;
  }

  sub_18840BC64(v20 + v17 + (v21 - v22 + i) * v18, v7);

  sub_188514940(i, i + 1, v20 + 2, v20 + v17);
  swift_endAccess();

  v23 = *(v26 + 24);
  type metadata accessor for CancellationError();
  sub_18840BA1C(&qword_1EA90C1E0, 255, MEMORY[0x1E69E8550]);
  v24 = swift_allocError();
  CancellationError.init()();
  v27 = v24;
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  CheckedContinuation.resume(throwing:)();
  return sub_18840BD84(v7);
}

uint64_t sub_188512F14()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

_BYTE *storeEnumTagSinglePayload for CKAsyncSerialQueue.OrderingPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18851302C()
{
  result = qword_1EA90E7F0;
  if (!qword_1EA90E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E7F0);
  }

  return result;
}

uint64_t sub_18851308C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1885130B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18840F9FC;

  return sub_188512BCC(a1, v4, v5, v7, v6);
}

void sub_188513178(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CKAsyncSerialQueue.WaitContext();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1885134A0(v8, v9, a1, v4);
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
    sub_1885132A8(0, v2, 1, a1);
  }
}

void sub_1885132A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v33 = v21;
      v34 = a3;
      v31 = v24;
      v32 = v23;
      do
      {
        sub_18840BC64(v24, v18);
        sub_18840BC64(v21, v14);
        v25 = *(v8 + 20);
        v26 = static TaskPriority.> infix(_:_:)();
        sub_18840BD84(v14);
        sub_18840BD84(v18);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        sub_18840C23C(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        sub_18840C23C(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v34 + 1;
      v21 = v33 + v29;
      v23 = v32 - 1;
      v24 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1885134A0(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a1;
  v118 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v112 = *(v118 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v108 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  v114 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    a3 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v96 = (v20 + 16);
      v97 = *(v20 + 16);
      for (i = v20; v97 >= 2; v20 = i)
      {
        if (!*v114)
        {
          goto LABEL_140;
        }

        v98 = (v20 + 16 * v97);
        v20 = *v98;
        v99 = &v96[2 * v97];
        v100 = v99[1];
        sub_188513D00(*v114 + *(v112 + 72) * *v98, *v114 + *(v112 + 72) * *v99, *v114 + *(v112 + 72) * v100, a3);
        if (v5)
        {
          break;
        }

        if (v100 < v20)
        {
          goto LABEL_128;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_129;
        }

        *v98 = v20;
        v98[1] = v100;
        v101 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_130;
        }

        v97 = *v96 - 1;
        memmove(v99, v99 + 2, 16 * v101);
        *v96 = v97;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v20 = sub_188514144(v20);
    goto LABEL_104;
  }

  v103 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = v118;
  v109 = &v102 - v16;
  while (1)
  {
    v22 = v19;
    v23 = v19 + 1;
    v105 = v19;
    if (v19 + 1 < v18)
    {
      v24 = *v114;
      v25 = *(v112 + 72);
      i = v18;
      v116 = v19 + 1;
      a3 = v19;
      v26 = v24 + v25 * v23;
      v27 = v24;
      v111 = v24;
      sub_18840BC64(v26, v17);
      sub_18840BC64(v27 + v25 * a3, v14);
      v28 = *(v21 + 20);
      v29 = static TaskPriority.> infix(_:_:)();
      sub_18840BD84(v14);
      sub_18840BD84(v17);
      v30 = i;
      v31 = a3 + 2;
      v113 = v25;
      v32 = v111 + v25 * (a3 + 2);
      while (1)
      {
        v33 = v31;
        if (++v116 >= v30)
        {
          break;
        }

        sub_18840BC64(v32, v17);
        sub_18840BC64(v26, v14);
        v34 = *(v118 + 20);
        a3 = static TaskPriority.> infix(_:_:)() & 1;
        sub_18840BD84(v14);
        sub_18840BD84(v17);
        v32 += v113;
        v26 += v113;
        v31 = v33 + 1;
        v30 = i;
        if ((v29 & 1) != a3)
        {
          if (v29)
          {
            goto LABEL_8;
          }

LABEL_28:
          v21 = v118;
LABEL_29:
          v23 = v116;
          v22 = v105;
          goto LABEL_31;
        }
      }

      v116 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v23 = v116;
      v22 = v105;
      if (v116 < v105)
      {
        goto LABEL_134;
      }

      if (v105 < v116)
      {
        i = v20;
        v102 = v5;
        if (v30 >= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v30;
        }

        v36 = v105;
        v37 = v113 * (v35 - 1);
        v38 = v113 * v35;
        v39 = v105 * v113;
        v21 = v118;
        do
        {
          if (v36 != --v23)
          {
            a3 = *v114;
            if (!*v114)
            {
              goto LABEL_141;
            }

            sub_18840C23C(a3 + v39, v108);
            v40 = v39 < v37 || a3 + v39 >= a3 + v38;
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_18840C23C(v108, a3 + v37);
            v21 = v118;
          }

          ++v36;
          v37 -= v113;
          v38 -= v113;
          v39 += v113;
        }

        while (v36 < v23);
        v5 = v102;
        v20 = i;
        goto LABEL_29;
      }

      v21 = v118;
    }

LABEL_31:
    v41 = v114[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_133;
      }

      if (v23 - v22 < v103)
      {
        break;
      }
    }

LABEL_49:
    if (v23 < v22)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v93 = *(v20 + 16);
      sub_188476DA8();
      v20 = v94;
    }

    a3 = *(v20 + 16);
    v53 = a3 + 1;
    if (a3 >= *(v20 + 24) >> 1)
    {
      sub_188476DA8();
      v20 = v95;
    }

    *(v20 + 16) = v53;
    v54 = v20 + 32;
    v55 = (v20 + 32 + 16 * a3);
    v56 = v116;
    *v55 = v105;
    v55[1] = v56;
    v113 = *v104;
    if (!v113)
    {
      goto LABEL_142;
    }

    if (a3)
    {
      i = v20;
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v54 + 16 * (v53 - 1));
        v59 = (v20 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v20 + 32);
          v61 = *(v20 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_70:
          if (v63)
          {
            goto LABEL_119;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_122;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_127;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v53 < 2)
        {
          goto LABEL_121;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_85:
        if (v78)
        {
          goto LABEL_124;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (v85 < v77)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v57 - 1 >= v53)
        {
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

        if (!*v114)
        {
          goto LABEL_139;
        }

        v89 = (v54 + 16 * (v57 - 1));
        v90 = *v89;
        a3 = v57;
        v91 = (v54 + 16 * v57);
        v20 = v91[1];
        sub_188513D00(*v114 + *(v112 + 72) * *v89, *v114 + *(v112 + 72) * *v91, *v114 + *(v112 + 72) * v20, v113);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v20 < v90)
        {
          goto LABEL_114;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v20;
        if (a3 >= v5)
        {
          goto LABEL_116;
        }

        v53 = v5 - 1;
        memmove(v91, v91 + 2, 16 * (v5 - 1 - a3));
        v20 = i;
        *(i + 16) = v5 - 1;
        v92 = v5 > 2;
        v5 = 0;
        v21 = v118;
        v17 = v109;
        if (!v92)
        {
          goto LABEL_99;
        }
      }

      v64 = v54 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_117;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_118;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_120;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_123;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_131;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v18 = v114[1];
    v19 = v116;
    if (v116 >= v18)
    {
      goto LABEL_102;
    }
  }

  v42 = v22 + v103;
  if (__OFADD__(v22, v103))
  {
    goto LABEL_135;
  }

  if (v42 >= v41)
  {
    v42 = v114[1];
  }

  if (v42 < v22)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v23 == v42)
  {
    goto LABEL_49;
  }

  i = v20;
  v102 = v5;
  a3 = *v114;
  v43 = *(v112 + 72);
  v44 = *v114 + v43 * (v23 - 1);
  v45 = -v43;
  v46 = v22 - v23;
  v106 = v43;
  v107 = v42;
  v47 = a3 + v23 * v43;
LABEL_40:
  v116 = v23;
  v110 = v47;
  v111 = v46;
  v113 = v44;
  v48 = v44;
  while (1)
  {
    sub_18840BC64(v47, v17);
    sub_18840BC64(v48, v14);
    v49 = *(v21 + 20);
    v50 = static TaskPriority.> infix(_:_:)();
    sub_18840BD84(v14);
    sub_18840BD84(v17);
    if ((v50 & 1) == 0)
    {
      v21 = v118;
LABEL_47:
      v23 = v116 + 1;
      v44 = v113 + v106;
      v46 = v111 - 1;
      v47 = v110 + v106;
      if (v116 + 1 == v107)
      {
        v23 = v107;
        v5 = v102;
        v20 = i;
        v22 = v105;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!a3)
    {
      break;
    }

    v51 = v117;
    sub_18840C23C(v47, v117);
    v21 = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_18840C23C(v51, v48);
    v48 += v45;
    v47 += v45;
    v40 = __CFADD__(v46++, 1);
    if (v40)
    {
      goto LABEL_47;
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

void sub_188513D00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v9 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v55 = a1;
  v54 = a4;
  v20 = v18 / v16;
  v46[1] = v4;
  if ((a2 - a1) / v16 >= v18 / v16)
  {
    sub_1884776C4(a2, v18 / v16, a4);
    v27 = a4 + v20 * v16;
    v28 = -v16;
    v29 = v27;
    v30 = a3;
    v49 = v28;
    v50 = a4;
    v48 = a1;
LABEL_37:
    v31 = a2 + v28;
    v32 = v30;
    v46[0] = v29;
    v33 = v28;
    v51 = a2 + v28;
    while (1)
    {
      if (v27 <= a4)
      {
        v55 = a2;
        v53 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v29;
      v34 = v32 + v33;
      v35 = v27 + v33;
      v36 = v31;
      v37 = v27;
      sub_18840BC64(v27 + v33, v14);
      sub_18840BC64(v36, v11);
      v38 = *(v52 + 20);
      v39 = static TaskPriority.> infix(_:_:)();
      v40 = v11;
      v41 = v39;
      v42 = v40;
      sub_18840BD84(v40);
      sub_18840BD84(v14);
      if (v41)
      {
        v46[0] = v37;
        v44 = v32 < a2 || v34 >= a2;
        v30 = v32 + v33;
        if (v44)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v47;
          a1 = v48;
          v11 = v42;
          v28 = v49;
          a4 = v50;
          v27 = v46[0];
        }

        else
        {
          a1 = v48;
          v29 = v47;
          v17 = v32 == a2;
          a2 = v51;
          v11 = v42;
          v28 = v49;
          a4 = v50;
          v27 = v46[0];
          if (!v17)
          {
            a2 = v51;
            v45 = v47;
            swift_arrayInitWithTakeBackToFront();
            v27 = v46[0];
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      if (v32 < v37 || v34 >= v37)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 += v33;
        v27 = v35;
        v29 = v35;
        v11 = v42;
        v33 = v49;
        a4 = v50;
        v31 = v51;
        a1 = v48;
      }

      else
      {
        v29 = v35;
        v17 = v37 == v32;
        v32 += v33;
        v27 = v35;
        v11 = v42;
        v33 = v49;
        a4 = v50;
        v31 = v51;
        a1 = v48;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v51;
          v32 = v34;
          v27 = v35;
          v29 = v35;
        }
      }
    }

    v55 = a2;
    v53 = v46[0];
  }

  else
  {
    sub_1884776C4(a1, (a2 - a1) / v16, a4);
    v21 = a4 + (a2 - a1) / v16 * v16;
    v53 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_18840BC64(a2, v14);
      sub_18840BC64(a4, v11);
      v23 = *(v52 + 20);
      v24 = static TaskPriority.> infix(_:_:)();
      sub_18840BD84(v11);
      sub_18840BD84(v14);
      if (v24)
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v16;
        a4 += v16;
      }

      a1 += v16;
      v55 = a1;
    }
  }

LABEL_59:
  sub_18851415C(&v55, &v54, &v53);
}

uint64_t sub_18851415C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_18851423C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_188514268(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D690, &qword_1886F8660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1885143F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_7:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result, *a3);
    result += *a3;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result, *a3);
  if (result >= *a3)
  {
    result -= *a3;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

void sub_188514434(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_1884776C4(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_1884776C4(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void *sub_188514554@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_188514614(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_188514738(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v8 + 72) * v4;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_188514848()
{
  v1 = *v0;
  v2 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_18844E6FC(&qword_1EA90E7F8, &qword_1886FE298);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_188514738(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

uint64_t sub_188514940(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_188514A24(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    type metadata accessor for CKAsyncSerialQueue.WaitContext();
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    type metadata accessor for CKAsyncSerialQueue.WaitContext();
    swift_arrayDestroy();
  }

  return sub_188514B04(a1, a2, a3, a4);
}

uint64_t sub_188514A24@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188514B04(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = result;
  v8 = a3[1];
  v7 = a3[2];
  v9 = *a3;
  if (v7 + result >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  if (v7 + a2 >= v9)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_85;
  }

  v14 = v7 + result - v10;
  v15 = v7 + a2 - v11;
  result = a3[2];
  if (v12 > v6)
  {
    result = sub_1885143F4(result, v4, a3);
    v12 = result;
    if (!v6)
    {
      goto LABEL_69;
    }

    if (v15 <= 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = v14;
    }

    if (v7 >= v17)
    {
      if (v16 < result)
      {
        if (v14 > 0)
        {
          v32 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
          sub_1884776C4(a4, v14, a4 + *(*(v32 - 8) + 72) * v4);
          sub_1885143F4(0, v14, a3);
          sub_1885143F4(v4, v14, a3);
        }

        v14 = *a3 - v4;
        v33 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8) + 72);
        sub_1884776C4(a4 + v33 * v14, v4, a4);
        sub_1885143F4(v14, v4, a3);
        result = sub_1885143F4(0, v4, a3);
        v19 = __OFSUB__(v6, v15);
        v6 -= v15;
        if (v19)
        {
          goto LABEL_88;
        }

        if (v6 < 1)
        {
          goto LABEL_69;
        }

        v14 = a3[2];
        v34 = a4 + v33 * v12;
        v35 = a4 + v14 * v33;
        goto LABEL_67;
      }

      if (__OFSUB__(0, v14))
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v14 > 0)
      {
        v15 -= v14;
        v44 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        sub_1884776C4(a4, v14, a4 + *(*(v44 - 8) + 72) * v15);
        sub_1885143F4(0, v14, a3);
        result = sub_1885143F4(v15, v14, a3);
      }

      v19 = __OFSUB__(v6, v14);
      v6 -= v14;
      if (v19)
      {
        goto LABEL_92;
      }

      goto LABEL_65;
    }

    if (v16 >= result)
    {
      if (v6 > 0)
      {
        v42 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        sub_1884776C4(a4 + *(*(v42 - 8) + 72) * v7, v6, a4 + *(*(v42 - 8) + 72) * v12);
        v43 = v7;
LABEL_68:
        sub_1885143F4(v43, v6, a3);
        result = sub_1885143F4(v12, v6, a3);
        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (v15 > 0)
    {
      v14 = v9 - v4;
      v18 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
      sub_1884776C4(a4 + *(*(v18 - 8) + 72) * (v9 - v4), v15, a4);
      sub_1885143F4(v9 - v4, v15, a3);
      result = sub_1885143F4(0, v15, a3);
    }

    v19 = __OFSUB__(v6, v15);
    v6 -= v15;
    if (!v19)
    {
LABEL_65:
      if (v6 >= 1)
      {
        v14 = a3[2];
        v45 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8) + 72);
        v34 = a4 + v45 * v12;
        v35 = a4 + v45 * v14;
LABEL_67:
        sub_1884776C4(v35, v6, v34);
        v43 = v14;
        goto LABEL_68;
      }

LABEL_69:
      a3[2] = v12;
      v46 = a3[1];
      v19 = __OFSUB__(v46, v4);
      v47 = v46 - v4;
      if (!v19)
      {
        goto LABEL_82;
      }

      __break(1u);
      goto LABEL_72;
    }

    __break(1u);
  }

  v52 = a4;
  result = sub_1885143F4(result, v8, a3);
  if (__OFSUB__(v8, v4))
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v20 = v8 - v4 + v7;
  if (v20 >= v9)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  if (v12)
  {
    v22 = result;
    v23 = v20 - v21;
    if (v20 - v21 <= 0)
    {
      v24 = v9;
    }

    else
    {
      v24 = v20 - v21;
    }

    if (result <= 0)
    {
      v25 = v9;
    }

    else
    {
      v25 = result;
    }

    if (v15 >= v25)
    {
      v36 = v9 - v15;
      v37 = __OFSUB__(v9, v15);
      if (v24 >= v14)
      {
        if (v37)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          return result;
        }

        if (v36 > 0)
        {
          v49 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
          sub_1884776C4(v52 + *(*(v49 - 8) + 72) * v15, v36, v52 + *(*(v49 - 8) + 72) * v14);
          sub_1885143F4(v15, v36, a3);
          result = sub_1885143F4(v14, v36, a3);
          v14 = result;
        }

        if (v22 >= 1)
        {
          v50 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
          sub_1884776C4(v52, v22, v52 + *(*(v50 - 8) + 72) * v14);
          sub_1885143F4(0, v22, a3);
          v30 = v14;
          v31 = v22;
          goto LABEL_79;
        }
      }

      else
      {
        if (v37)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v36 > 0)
        {
          v38 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
          sub_1884776C4(v52 + *(*(v38 - 8) + 72) * v15, v9 - v15, v52 + *(*(v38 - 8) + 72) * v14);
          sub_1885143F4(v15, v9 - v15, a3);
          v14 = sub_1885143F4(v14, v9 - v15, a3);
        }

        v39 = *(*(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8) + 72);
        sub_1884776C4(v52, v4, v52 + v39 * v14);
        v40 = sub_1885143F4(0, v4, a3);
        result = sub_1885143F4(v14, v4, a3);
        if (v23 >= 1)
        {
          sub_1884776C4(v52 + v40 * v39, v23, v52);
          sub_1885143F4(v40, v23, a3);
          v30 = 0;
          v31 = v23;
          v41 = a3;
LABEL_80:
          result = sub_1885143F4(v30, v31, v41);
        }
      }
    }

    else
    {
      if (v24 >= v14)
      {
LABEL_72:
        if (v12 <= 0)
        {
          goto LABEL_81;
        }

        v48 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        sub_1884776C4(v52 + *(*(v48 - 8) + 72) * v15, v12, v52 + *(*(v48 - 8) + 72) * v14);
        sub_1885143F4(v15, v12, a3);
        v30 = v14;
        v31 = v12;
        goto LABEL_79;
      }

      v26 = v9 - v14;
      if (__OFSUB__(v9, v14))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v26 > 0)
      {
        v27 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        sub_1884776C4(v52 + *(*(v27 - 8) + 72) * v15, v26, v52 + *(*(v27 - 8) + 72) * v14);
        v15 = sub_1885143F4(v15, v26, a3);
        result = sub_1885143F4(v14, v26, a3);
      }

      v19 = __OFSUB__(v12, v26);
      v28 = v12 - v26;
      if (v19)
      {
        goto LABEL_94;
      }

      if (v28 >= 1)
      {
        v29 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
        sub_1884776C4(v52 + *(*(v29 - 8) + 72) * v15, v28, v52);
        sub_1885143F4(v15, v28, a3);
        v30 = 0;
        v31 = v28;
LABEL_79:
        v41 = a3;
        goto LABEL_80;
      }
    }
  }

LABEL_81:
  v51 = a3[1];
  v19 = __OFSUB__(v51, v4);
  v47 = v51 - v4;
  if (v19)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_82:
  a3[1] = v47;
  return result;
}

void sub_1885151D4(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[1] + v2;
  if (*a1 >= v3)
  {
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v5 = *(type metadata accessor for CKAsyncSerialQueue.WaitContext() - 8);
      if (!__OFSUB__(v3, v2))
      {
        v6[0] = a2 + *(v5 + 72) * v2;
        v6[1] = v3 - v2;
        sub_188513178(v6);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_188515294(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_188514554(a1, a2, &v17);
  v7 = v18;
  if (v18 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17)
  {
    if (v18)
    {
      v8 = *a3;
      type metadata accessor for CKAsyncSerialQueue.WaitContext();
      result = swift_arrayInitWithCopy();
    }
  }

  v9 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v9;
  if (v21)
  {
    return result;
  }

  v10 = v20;
  if (__OFADD__(v7, v20))
  {
    goto LABEL_21;
  }

  v11 = v20;
  if (v7 + v20 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v19;
  v13 = *a3;
  if (v13)
  {
    v14 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
    v15 = *(v14 - 8);
    result = v14 - 8;
    v16 = v13 + *(v15 + 72) * v7;
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else if (!v19)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    if (v11 < v10)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for CKAsyncSerialQueue.WaitContext();
    result = swift_arrayInitWithCopy();
    v9 = *a4;
  }

LABEL_16:
  if (__OFADD__(v9, v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v9 + v10;
  return result;
}

uint64_t sub_1885153D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKAsyncSerialQueue.WaitContext();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static __CKLogSubsystem.name.getter()
{
  if (qword_1ED4B5CE0 != -1)
  {
    sub_1883F7604();
  }

  v0 = qword_1ED4B5CE8;

  return v0;
}

uint64_t sub_188515698()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90C238);
  sub_1883FDE5C(v0, qword_1EA90C238);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1885157E0()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90E8E8);
  sub_1883FDE5C(v0, qword_1EA90E8E8);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_18851597C()
{
  v0 = type metadata accessor for Logger();
  sub_188420F44(v0, qword_1EA90E930);
  sub_1883FDE5C(v0, qword_1EA90E930);
  if (qword_1ED4B5CE0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

_BYTE *storeEnumTagSinglePayload for __CKLogSubsystem(_BYTE *result, int a2, int a3)
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

uint64_t CKPersonaType.description.getter(uint64_t a1)
{
  v1 = CKPersonaTypeDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CKPersona.isDataSeparated.getter()
{
  v1 = [v0 isDataSeparated];
  if (v1 + 1 < 3)
  {
    return 0x10002u >> (8 * (v1 + 1));
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_188515C48()
{
  result = qword_1EA90E960;
  if (!qword_1EA90E960)
  {
    sub_18844E798(&qword_1EA90E968, &qword_1886FE2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E960);
  }

  return result;
}

uint64_t sub_188515CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_188515D70;

  return (sub_188515E6C)(a1, a2, a3);
}

uint64_t sub_188515D70(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_188515EB4(uint64_t a1, uint64_t a2)
{
  v10 = sub_18844E6FC(&qword_1EA90E970, &unk_1886FE3F0);
  v11 = sub_188479FD0(&qword_1EA90E978, &qword_1EA90E970, &unk_1886FE3F0);
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_188400B68(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_18851749C(*v4, v5, &v8);
  v6 = v8;
  sub_1883FE944(v9);
  return v6;
}

uint64_t sub_188515F84(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_188518620(&qword_1EA90E980, MEMORY[0x1E69663E0]);
  v3 = sub_188403664(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_188400B68(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_1883FE944(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

id sub_1885160C4()
{
  v7 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v7);
  v1 = v0;
  v6 = 0;
  v2 = [v0 CKMarkFilePurgeable_];

  if (v2)
  {
    result = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_188516178()
{
  v25 = *MEMORY[0x1E69E9840];
  if (String.count.getter())
  {
    type metadata accessor for CKError(0);
    *&v24 = 1;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_1883F9FD4();
    sub_188518620(v17, v18);
    _BridgedStoredNSError.init(_:userInfo:)();
    result = swift_willThrow();
  }

  else
  {
    v0 = String.count.getter();
    v24 = xmmword_1886F7310;
    if (v0 < -1)
    {
      __break(1u);
    }

    v1 = 0;
    v2 = v0 / 2;
    if (v0 / 2)
    {
      while (1)
      {
        v3 = String.index(_:offsetBy:)();
        if (String.index(_:offsetBy:)() >> 14 < v3 >> 14)
        {
          break;
        }

        v4 = String.subscript.getter();
        v8 = v7;
        if (!((v4 ^ v5) >> 14))
        {
          goto LABEL_15;
        }

        v9 = v4;
        v10 = v5;
        v11 = v6;
        v12 = sub_1885180E4(v4, v5, v6, v7, 16);
        if ((v12 & 0x10000) != 0)
        {
          LOWORD(v12) = sub_18851769C(v9, v10, v11, v8, 16);
        }

        v13 = v12;

        if ((v13 & 0x100) != 0)
        {
          goto LABEL_16;
        }

        switch(*(&v24 + 1) >> 62)
        {
          case 2:
            v14 = *(v24 + 24);
            break;
          default:
            break;
        }

        v15 = sub_18844E6FC(&qword_1EA90D2C0, &qword_1886F73F8);
        v23[3] = v15;
        v23[4] = sub_188479FD0(&qword_1EA90D2C8, &qword_1EA90D2C0, &qword_1886F73F8);
        LOBYTE(v23[0]) = v13;
        v22 = *sub_188400B68(v23, v15);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_1883FE944(v23);
        v1 += 2;
        if (!--v2)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:

LABEL_16:
      type metadata accessor for CKError(0);
      sub_188498E9C(MEMORY[0x1E69E7CC0]);
      sub_1883F9FD4();
      sub_188518620(v19, v20);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      result = sub_188423CCC(v24, *(&v24 + 1));
    }

    else
    {
LABEL_12:
      result = v24;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1885164AC(uint64_t a1)
{
  v1 = sub_1883F70DC(a1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  (*(v6 + 16))(v5 - v4);
  type metadata accessor for CKError(0);
  result = 0;
  if (swift_dynamicCast())
  {
    sub_1883F9FD4();
    sub_188518620(v7, v8);
    _BridgedStoredNSError.code.getter();

    if (v10 == 2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t CKCheckedUnsafeObjectTransfer.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CKCheckedUnsafeObjectTransfer.init(_:)(a1);
  return v5;
}

uint64_t CKCheckedUnsafeObjectTransfer.extractValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8844();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  v17 = *(v3 + 88);
  sub_1883F8FD0();
  (*(v8 + 16))(v16, v1 + v17, v5);
  if (sub_1883F971C(v16, 1, v4) == 1)
  {
    result = (*(v8 + 8))(v16, v5);
    __break(1u);
  }

  else
  {
    sub_1883F7930(v4);
    (*(v18 + 32))(a1, v16, v4);
    sub_1883F90F4(v13, 1, 1, v4);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v17, v13, v5);
    return swift_endAccess();
  }

  return result;
}

Swift::String __swiftcall Data.ckLowercaseHexStringWithoutSpaces()()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa CKLowercaseHexStringWithoutSpaces];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.ckLowercaseHexStringWithoutSpaces()()
{
  v0 = type metadata accessor for SHA256();
  v1 = sub_1883F70DC(v0);
  v52 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1883F7100();
  v7 = v6 - v5;
  v8 = type metadata accessor for SHA256Digest();
  v9 = sub_1883F70DC(v8);
  v54 = v10;
  v55 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F8844();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v51 - v17;
  v18 = type metadata accessor for String.Encoding();
  v19 = sub_1883F70DC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F7100();
  v26 = v25 - v24;
  String.lowercased()();
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v28 = v27;

  v29 = (*(v21 + 8))(v26, v18);
  if (v28 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620]);
    dispatch thunk of HashFunction.init()();
    v31 = sub_1884055F0();
    sub_188423C74(v31, v32);
    v33 = sub_1884055F0();
    sub_188517514(v33, v34);
    v35 = sub_1884055F0();
    sub_18841BA74(v35, v36);
    v37 = v53;
    dispatch thunk of HashFunction.finalize()();
    (*(v52 + 8))(v7, v0);
    v39 = v54;
    v38 = v55;
    (*(v54 + 16))(v15, v37, v55);
    v40 = sub_188515F84(v15);
    v42 = v41;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_188423CCC(v40, v42);
    v44 = [(objc_class *)isa CKLowercaseHexStringWithoutSpaces];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_1884055F0();
    sub_18841BA74(v48, v49);
    (*(v39 + 8))(v37, v38);
    v29 = v45;
    v30 = v47;
  }

  result._object = v30;
  result._countAndFlagsBits = v29;
  return result;
}

os_activity_t CKActivityCreate(_:dso:)@<X0>(unint64_t a1@<X0>, char a2@<W2>, void *a3@<X3>, unint64_t a4@<X8>)
{
  if (a2)
  {
    a4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_24;
      }

      a4 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v8 = a1 + 1;
          goto LABEL_12;
        }

LABEL_17:
        v10 = (a1 & 0x3F) << 8;
        v11 = (a1 >> 6) + v10 + 33217;
        v12 = (v10 | (a1 >> 6) & 0x3F) << 8;
        v13 = (a1 >> 18) + ((v12 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v14 = (a1 >> 12) + v12 + 8487393;
        if (a4)
        {
          v8 = v13;
        }

        else
        {
          v8 = v14;
        }

        if (a1 < 0x800)
        {
          v8 = v11;
        }

LABEL_12:
        *description = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
        if (a3)
        {
          v9 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
          return _os_activity_create(a3, description, v9, OS_ACTIVITY_FLAG_DEFAULT);
        }

        goto LABEL_24;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return _os_activity_create(a3, a1, v6, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t CKCheckedUnsafeObjectTransfer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CKCheckedUnsafeObjectTransfer.init()();
  return v3;
}

uint64_t *CKCheckedUnsafeObjectTransfer.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v16 - v11;
  v13 = *(v3 + 88);
  sub_1883F90F4(v1 + v13, 1, 1, v4);
  sub_1883F7930(v4);
  (*(v14 + 32))(v12, a1, v4);
  sub_1883F90F4(v12, 0, 1, v4);
  swift_beginAccess();
  (*(v8 + 40))(v1 + v13, v12, v5);
  swift_endAccess();
  return v1;
}

uint64_t CKCheckedUnsafeObjectTransfer.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = sub_1883F70DC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = *(v1 + 88);
  sub_1883F8FD0();
  (*(v6 + 16))(v10, &v0[v11], v3);
  LODWORD(v1) = sub_1883F971C(v10, 1, v2);
  v12 = *(v6 + 8);
  result = v12(v10, v3);
  if (v1 == 1)
  {
    v12(&v0[v11], v3);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKCheckedUnsafeObjectTransfer.setValue(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Optional();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8844();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20[-v15];
  v17 = *(v3 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v16, v1 + v17, v5);
  LODWORD(v3) = sub_1883F971C(v16, 1, v4);
  result = (*(v8 + 8))(v16, v5);
  if (v3 == 1)
  {
    sub_1883F7930(v4);
    (*(v19 + 16))(v13, a1, v4);
    sub_1883F90F4(v13, 0, 1, v4);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v17, v13, v5);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_188517278(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90E358, qword_1886FE400);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1885172E8()
{
  v2 = *MEMORY[0x1E69E9840];
  type metadata accessor for SHA256();
  sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620]);
  result = dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1885173BC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x18CFD43A0]();
      type metadata accessor for SHA256();
      sub_188518620(&qword_1EA90D2B8, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18851749C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x18CFD4550]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x18CFD4560]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_188517514(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1885173BC(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1885172E8();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1885175B0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_18851769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_18841E33C();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_188517C78();
    v39 = v38;

    v9 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v23 = v10 - 1;
        if (v10 != 1)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            LOBYTE(v16) = 0;
            v27 = result + 1;
            v18 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v21 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v16 * a5;
              if ((v30 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v16 = v30 + (v28 + v29);
              if ((v16 >> 8))
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v18 = 0;
            v21 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v21 = 0;
        v18 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v31 = a5 + 48;
        v32 = a5 + 55;
        v33 = a5 + 87;
        if (a5 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          LOBYTE(v34) = 0;
          v18 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v21 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a5;
            if ((v37 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v34 = v37 + (v35 + v36);
            if ((v34 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v18 = 0;
          v21 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          LOBYTE(v16) = 0;
          v17 = result + 1;
          v18 = 1;
          while (1)
          {
            v19 = *v17;
            if (v19 < 0x30 || v19 >= v13)
            {
              if (v19 < 0x41 || v19 >= v14)
              {
                v21 = 0;
                if (v19 < 0x61 || v19 >= v15)
                {
                  goto LABEL_127;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v22 = v16 * a5;
            if ((v22 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v16 = v22 - (v19 + v20);
            if ((v16 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v21 = 0;
        v18 = 0;
LABEL_127:

        return (v21 | (v18 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v40 = HIBYTE(v9) & 0xF;
  v65 = v8;
  v66 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v40)
      {
        LOBYTE(v42) = 0;
        v58 = a5 + 48;
        v59 = a5 + 55;
        v60 = a5 + 87;
        if (a5 > 10)
        {
          v58 = 58;
        }

        else
        {
          v60 = 97;
          v59 = 65;
        }

        v61 = &v65;
        v18 = 1;
        while (1)
        {
          v62 = *v61;
          if (v62 < 0x30 || v62 >= v58)
          {
            if (v62 < 0x41 || v62 >= v59)
            {
              v21 = 0;
              if (v62 < 0x61 || v62 >= v60)
              {
                goto LABEL_127;
              }

              v63 = -87;
            }

            else
            {
              v63 = -55;
            }
          }

          else
          {
            v63 = -48;
          }

          v64 = v42 * a5;
          if ((v64 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v42 = v64 + (v62 + v63);
          if ((v42 >> 8))
          {
            goto LABEL_126;
          }

          v61 = (v61 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        LOBYTE(v42) = 0;
        v43 = a5 + 48;
        v44 = a5 + 55;
        v45 = a5 + 87;
        if (a5 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v65 + 1;
        v18 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v21 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_127;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v42 * a5;
          if ((v49 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v42 = v49 - (v47 + v48);
          if ((v42 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v46;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      LOBYTE(v42) = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v65 + 1;
      v18 = 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v21 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v42 * a5;
        if ((v57 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v42 = v57 + (v55 + v56);
        if ((v42 >> 8))
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v18 = 0;
      v21 = v42;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_188517C78()
{
  v0 = sub_188517CE4();
  v4 = sub_188517D18(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_188517D18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_188517278(v9, 0);
  v12 = sub_188517E78(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_188517E78(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_188518088(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_188518088(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_188518088(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1883FA2B4(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x18CFD5190](15, a1 >> 16);
    sub_1883FA2B4(v3);
    return v4 | 8;
  }
}

uint64_t sub_1885180E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v14 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1885181C4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v16 = BYTE1(result) & 1;
    v14 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v15[0]) = (a4 & 0x1000000000000000) != 0;
    return v14 | (LOBYTE(v15[0]) << 16);
  }

  return result;
}

uint64_t sub_1885181C4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_188518088(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_105;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_188518088(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_188518088(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_101;
  }

  if (v23 < a4 >> 16)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v24 < v18)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 87;
        if (a7 > 10)
        {
          v38 = a7 + 55;
        }

        else
        {
          v37 = 97;
          v38 = 65;
        }

        if (a7 <= 10)
        {
          v39 = a7 + 48;
        }

        else
        {
          v39 = 58;
        }

        if (v25)
        {
          LOBYTE(v30) = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v39)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                v36 = 1;
                if (v42 < 0x61 || v42 >= v37)
                {
                  return v35 | (v36 << 8);
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            if (((v30 * a7) & 0xFF00) != 0)
            {
              goto LABEL_97;
            }

            v30 = (v30 * a7) + (v42 + v43);
            if ((v30 >> 8))
            {
              goto LABEL_97;
            }

            ++v40;
            --v41;
          }

          while (v41);
LABEL_95:
          v36 = 0;
          v35 = v30;
          return v35 | (v36 << 8);
        }

        goto LABEL_96;
      }

      goto LABEL_97;
    }

    goto LABEL_104;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v44 = a7 + 87;
      if (a7 > 10)
      {
        v45 = a7 + 55;
      }

      else
      {
        v44 = 97;
        v45 = 65;
      }

      if (a7 <= 10)
      {
        v46 = a7 + 48;
      }

      else
      {
        v46 = 58;
      }

      if (v25)
      {
        LOBYTE(v30) = 0;
        while (1)
        {
          v47 = *v25;
          if (v47 < 0x30 || v47 >= v46)
          {
            if (v47 < 0x41 || v47 >= v45)
            {
              v35 = 0;
              v36 = 1;
              if (v47 < 0x61 || v47 >= v44)
              {
                return v35 | (v36 << 8);
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          if (((v30 * a7) & 0xFF00) != 0)
          {
            goto LABEL_97;
          }

          v30 = (v30 * a7) + (v47 + v48);
          if ((v30 >> 8))
          {
            goto LABEL_97;
          }

          ++v25;
          if (!--result)
          {
            goto LABEL_95;
          }
        }
      }

      goto LABEL_96;
    }

LABEL_97:
    v35 = 0;
    v36 = 1;
    return v35 | (v36 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 87;
      if (a7 > 10)
      {
        v28 = a7 + 55;
      }

      else
      {
        v27 = 97;
        v28 = 65;
      }

      if (a7 <= 10)
      {
        v29 = a7 + 48;
      }

      else
      {
        v29 = 58;
      }

      if (v25)
      {
        LOBYTE(v30) = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v29)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              v36 = 1;
              if (v33 < 0x61 || v33 >= v27)
              {
                return v35 | (v36 << 8);
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (((v30 * a7) & 0xFF00) != 0)
          {
            goto LABEL_97;
          }

          v30 = (v30 * a7) - (v33 + v34);
          if ((v30 & 0xFFFFFF00) != 0)
          {
            goto LABEL_97;
          }

          ++v31;
          if (!--v32)
          {
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      v35 = 0;
      v36 = 0;
      return v35 | (v36 << 8);
    }

    goto LABEL_97;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}