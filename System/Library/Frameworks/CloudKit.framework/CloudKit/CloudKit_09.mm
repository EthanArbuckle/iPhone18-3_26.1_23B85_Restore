void sub_1884BB398(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BC198;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(v6, v5);
}

void sub_1884BB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x18CFD5010]();
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1884BB4AC(uint64_t a1, uint64_t a2, id a3, void (*a4)(uint64_t, uint64_t, id, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    a4(a1, a2, a3, 1);
  }

  else
  {
    a4(a1, a2, 0, 0);
  }
}

void sub_1884BB554(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BB668(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

void (*CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BC0DC;
  }

  return result;
}

uint64_t sub_1884BB76C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BC194;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BB7DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BC1B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.setter(v6, v5);
}

void sub_1884BB878(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1884BAA64();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884BB938(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1884BAA64();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.modifySubscriptionsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter())(objc_class *, objc_class *, uint64_t)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BC19C;
  }

  return result;
}

uint64_t sub_1884BBAE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BC0F0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BBB54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B7080;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.setter(v6, v5);
}

void sub_1884BBBF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F9DE4();
    v8[2] = v7;
    v8[3] = v6;
    _Block_copy(v8);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifySubscriptionsCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1);
  sub_1883FE68C();
}

uint64_t CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifySubscriptionsCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BC19C;
    *(v4 + 24) = v3;
    return sub_1884BC0E4;
  }

  return result;
}

uint64_t sub_1884BBDA4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BBE14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(v6, v5);
}

uint64_t sub_1884BBEA4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

uint64_t CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BC04C(void *a1)
{
  v1 = [a1 subscriptionIDsToDelete];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884BC0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if ((a4 & 1) == 0)
  {
    a3 = 0;
  }

  return v5(a1, a2, a3);
}

uint64_t sub_1884BC0F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v10[0] = a1;
  v10[1] = a2;
  v8 = a3;
  v9 = a4 & 1;
  return v5(v10, &v8);
}

uint64_t sub_1884BC144(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, *(a2 + 8));
}

void (*CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter())(uint64_t a1, char a2, uint64_t a3)
{
  result = [v0 fetchDatabaseChangesCompletionBlock];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1884BC92C;
  }

  return result;
}

uint64_t sub_1884BC228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BCAB8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1884BC298(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BCAB0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter(v6, v5);
}

uint64_t sub_1884BC328(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *, uint64_t *))
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return a4(&v7, &v6, &v5);
}

uint64_t CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F7450();
    v8[2] = v5;
    v8[3] = &unk_1EFA2AD40;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  [v3 setFetchDatabaseChangesCompletionBlock_];
  _Block_release(v6);
  return sub_1883F5BA0(a1);
}

void sub_1884BC424(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

void sub_1884BC4A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t (*CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.modify(void (**a1)(uint64_t a1, char a2, uint64_t a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.getter();
  a1[1] = v3;
  return sub_1884BC580;
}

uint64_t (*CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter())(uint64_t a1, __int16 a2)
{
  result = [v0 fetchDatabaseChangesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BCAF0;
    *(v4 + 24) = v3;
    return sub_1884BC934;
  }

  return result;
}

uint64_t sub_1884BC660@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BCAA8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BC718(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BCA64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter(v6, v5);
}

uint64_t sub_1884BC7A8(uint64_t a1, __int16 a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  if ((a2 & 0x100) != 0)
  {
    a1 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a2 & 1;
    v4 = 0;
  }

  return a3(a1, v5, v4);
}

void sub_1884BC7F4(void *a1, char a2, void *a3, void (*a4)(void *, uint64_t))
{
  if (a3)
  {
    swift_getErrorValue();
    v8 = a3;
    if (!sub_1885164AC(v13))
    {
      v12 = a3;
      a4(a3, 256);

      return;
    }
  }

  if (a1)
  {
    v9 = a1;
    v10 = a2 & 1;
    v11 = a1;
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v14;
    v11 = v14;
    v10 = 256;
  }

  a4(v11, v10);
}

uint64_t (*CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.modify(uint64_t (**a1)(uint64_t a1, __int16 a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BC990;
}

uint64_t sub_1884BC9D0(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_1884BCA64(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 0x1FF;
  return v3(&v6);
}

uint64_t sub_1884BCAB8(void *a1, unsigned __int8 *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

id CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_18849539C;
    v9[5] = v7;
    sub_1883F7188();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA2AE80;
    _Block_copy(v9);
    sub_1883F899C();

    [v4 setPerRecordZoneCompletionBlock_];
    _Block_release(v3);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerRecordZoneCompletionBlock_];
  }
}

id CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_188479A50;
    v9[5] = v6;
    sub_1883F7188();
    sub_1883F9DFC();
    v9[2] = v7;
    v9[3] = &unk_1EFA2AED0;
    _Block_copy(v9);
    sub_1883F899C();

    [v2 setFetchRecordZonesCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchRecordZonesCompletionBlock_];
  }
}

uint64_t (*CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884BCDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2D14;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BCE18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2D08;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRecordZonesOperation.perRecordZoneResultBlock.setter(v6, v5);
}

uint64_t (*CKFetchRecordZonesOperation.perRecordZoneResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.perRecordZoneResultBlock.getter();
  a1[1] = v3;
  return sub_1884BCEF0;
}

void (*CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter())(objc_class *a1, uint64_t a2)
{
  result = [v0 fetchRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BD6BC;
  }

  return result;
}

uint64_t sub_1884BCFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BAA20;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1884BD010(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BA9E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.setter(v6, v5);
}

uint64_t CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v8[4] = a1;
    v8[5] = a2;
    sub_1883F7188();
    sub_1883F9DFC();
    v8[2] = v6;
    v8[3] = &unk_1EFA2AF70;
    _Block_copy(v8);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setFetchRecordZonesCompletionBlock_];
  _Block_release(v3);
  return sub_1883F5BA0(a1);
}

void sub_1884BD148(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_18841A9C8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1884BD228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_18841A9C8();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t (*CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.modify(void (**a1)(objc_class *a1, uint64_t a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.undeprecated_fetchRecordZonesCompletionBlock.getter();
  a1[1] = v3;
  return sub_1884BD340;
}

uint64_t (*CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BD7F4;
    *(v4 + 24) = v3;
    return sub_1884BD6C4;
  }

  return result;
}

uint64_t sub_1884BD418@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BD488(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.setter(v6, v5);
}

uint64_t sub_1884BD518(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    return a3(0, a1);
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
  sub_18841A9C8();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

uint64_t (*CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRecordZonesOperation.fetchRecordZonesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BD718;
}

uint64_t sub_1884BD758(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

void CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_18849539C;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884953A4;
    v11[3] = &unk_1EFA2B100;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordZoneSaveBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    sub_1883F8708();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v11[4] = sub_1884958AC;
    v11[5] = v7;
    sub_1883F7188();
    v11[1] = 1107296256;
    v11[2] = sub_1884958B4;
    v11[3] = &unk_1EFA2B150;
    _Block_copy(v11);
    sub_1883F899C();

    [v4 setPerRecordZoneDeleteBlock_];
    _Block_release(v3);
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

void CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1884B6F50;
    v11[5] = v6;
    sub_1883F7188();
    sub_1883F9E14();
    v11[2] = v7;
    v11[3] = &unk_1EFA2B1A0;
    _Block_copy(v11);
    sub_1883F899C();

    [v2 setModifyRecordZonesCompletionBlock_];
    _Block_release(v3);
    [v2 setCanDropItemResultsEarly_];
    sub_1883F5BA0(a1);
    sub_1883FE68C();
  }

  else
  {
    sub_1883FE68C();

    [v8 v9];
  }
}

uint64_t (*CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneSaveBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884BDCA8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AA8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BDD18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(v6, v5);
}

uint64_t CKModifyRecordZonesOperation.perRecordZoneSaveBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.perRecordZoneSaveBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perRecordZoneDeleteBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t sub_1884BDEC0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AEC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BDF30(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495AE8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(v6, v5);
}

uint64_t CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

void (*CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter())(objc_class *a1, objc_class *a2, uint64_t a3)
{
  result = [v0 modifyRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    *(swift_allocObject() + 16) = v2;
    return sub_1884BE758;
  }

  return result;
}

uint64_t sub_1884BE0B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B7088;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BE120(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B7080;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter(v6, v5);
}

void CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    sub_1883F7188();
    sub_1883F9E14();
    v7[2] = v6;
    v7[3] = &unk_1EFA2B290;
    _Block_copy(v7);
    sub_1883F899C();
  }

  else
  {
    v3 = 0;
  }

  [v4 setModifyRecordZonesCompletionBlock_];
  _Block_release(v3);
  sub_1883F5BA0(a1);
  sub_1883FE68C();
}

void sub_1884BE254(objc_class *a1, Class a2, uint64_t a3, uint64_t a4)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    a2 = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a3)
  {
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1884BE338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t (*CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 modifyRecordZonesCompletionBlock];
  if (result)
  {
    v2 = result;
    sub_1883F7B88();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BE88C;
    *(v4 + 24) = v3;
    return sub_1884BE760;
  }

  return result;
}

uint64_t sub_1884BE530@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

void sub_1884BE5A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(v6, v5);
}

uint64_t sub_1884BE630(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1ED4B5C70);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a1;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = 0;
  }

  return a3(v10, v11, v12);
}

uint64_t CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.modify(uint64_t a1)
{
  sub_1883F8E98(a1);
  *v1 = CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.getter();
  v1[1] = v2;
  return sub_1883F7BCC();
}

uint64_t sub_1884BE7EC(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

id CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884BEED0;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884BEFEC;
    v9[3] = &unk_1EFA2B470;
    v7 = _Block_copy(v9);

    [v3 setFetchRegisteredBundleIDsCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchRegisteredBundleIDsCompletionBlock_];
  }
}

uint64_t (*CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchRegisteredBundleIDsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BF088;
    *(v4 + 24) = v3;
    return sub_1884BF090;
  }

  return result;
}

uint64_t sub_1884BEA70@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2CD4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BEAE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2C94;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v6, v5);
}

void sub_1884BEB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1884BEC0C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    return a3(0, a1);
  }

  v5 = sub_1884BEC8C(a1);
  a3(v5, 0);
}

uint64_t sub_1884BEC8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1884778FC(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1884778FC((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_188419138(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1884BED8C(uint64_t a1, void *a2, void (*a3)(void))
{
  if (a2)
  {
    swift_getErrorValue();
    v6 = a2;
    if (!sub_1885164AC(v8))
    {
      v7 = a2;
      (a3)(a2, 1);

      return;
    }
  }

  if (a1 && sub_1884BEED8(a1))
  {
    a3();
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    (a3)(v9, 1);
  }
}

uint64_t sub_1884BEED8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_18840489C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_188405DF8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18840489C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1884BEFEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

id (*CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.getter();
  a1[1] = v3;
  return sub_1884BF0E4;
}

id sub_1884BF0E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v6, v7);
    v8 = sub_1883F7228();

    return sub_1883F5BA0(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return CKFetchRegisteredBundleIDsOperation.fetchRegisteredBundleIDsResultBlock.setter(v10, v11);
  }
}

id CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B2AD4;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884BF424;
    v9[3] = &unk_1EFA2B560;
    v7 = _Block_copy(v9);

    [v3 setFetchUserQuotaCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchUserQuotaCompletionBlock_];
  }
}

uint64_t (*CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchUserQuotaCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884BF49C;
  }

  return result;
}

uint64_t sub_1884BF324@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2CD4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BF394(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2C94;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v6, v5);
}

void sub_1884BF424(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1884BF49C(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (a2)
  {
    a1 = 0;
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v4(a1, v6);
}

id (*CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.getter();
  a1[1] = v3;
  return sub_1884BF528;
}

id sub_1884BF528(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v6, v7);
    v8 = sub_1883F7228();

    return sub_1883F5BA0(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return CKFetchUserQuotaOperation.fetchUserQuotaResultBlock.setter(v10, v11);
  }
}

uint64_t (*CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 fetchWebAuthTokenCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884BF8F8;
    *(v4 + 24) = v3;
    return sub_1884BF900;
  }

  return result;
}

uint64_t sub_1884BF634@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884BFB84;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BF6A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884BFB44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v6, v5);
}

id CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884BFA88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884641A8;
    v9[3] = &unk_1EFA2B6A0;
    v7 = _Block_copy(v9);

    [v3 setFetchWebAuthTokenCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchWebAuthTokenCompletionBlock_];
  }
}

void sub_1884BF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = MEMORY[0x18CFD5010]();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1884BF900(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a3)
  {
    a1 = 0;
    a2 = 0;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, v7);
}

void sub_1884BF948(void *a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a3)
  {
    swift_getErrorValue();
    v8 = a3;
    if (!sub_1885164AC(v10))
    {
      v9 = a3;
      a4(a3, 0, 1);

      return;
    }
  }

  if (a2)
  {
    a4(a1, a2, 0);
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    a4(v11, 0, 1);
  }
}

id (*CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.getter();
  a1[1] = v3;
  return sub_1884BFAD8;
}

id sub_1884BFAD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v6, v7);
    v8 = sub_1883F7228();

    return sub_1883F5BA0(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return CKFetchWebAuthTokenOperation.fetchWebAuthTokenResultBlock.setter(v10, v11);
  }
}

uint64_t sub_1884BFB44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_1884BFB84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t (*CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 discoverAllUserIdentitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884BFC58@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884BFCC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v6, v5);
}

id CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B5B88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884C0074;
    v9[3] = &unk_1EFA2B790;
    v7 = _Block_copy(v9);

    [v3 setDiscoverAllUserIdentitiesCompletionBlock_];
    _Block_release(v7);
    return sub_18847A594(a1);
  }

  else
  {

    return [v2 setDiscoverAllUserIdentitiesCompletionBlock_];
  }
}

id (*CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1884BFED4;
}

id sub_1884BFED4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v6, v7);
    v8 = sub_1883F7228();

    return sub_18847A594(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return CKDiscoverAllUserIdentitiesOperation.discoverAllUserIdentitiesResultBlock.setter(v10, v11);
  }
}

id CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = sub_1884B5B88;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1884C0074;
    v9[3] = &unk_1EFA2B830;
    v7 = _Block_copy(v9);

    [v3 setDiscoverUserIdentitiesCompletionBlock_];
    _Block_release(v7);
    return sub_18847A594(a1);
  }

  else
  {

    return [v2 setDiscoverUserIdentitiesCompletionBlock_];
  }
}

void sub_1884C0074(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t (*CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 discoverUserIdentitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884C0180@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A480;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884C01F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A474;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v6, v5);
}

id (*CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1884C02C8;
}

id sub_1884C02C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1883F7228();
    sub_1883F5CC0(v5);
    v6 = sub_1883F7228();
    CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v6, v7);
    v8 = sub_1883F7228();

    return sub_18847A594(v8);
  }

  else
  {
    v10 = sub_1883F7228();
    return CKDiscoverUserIdentitiesOperation.discoverUserIdentitiesResultBlock.setter(v10, v11);
  }
}

id CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884953A4;
    v9[3] = &unk_1EFA2B920;
    v7 = _Block_copy(v9);

    [v3 setPerShareParticipantCompletionBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setPerShareParticipantCompletionBlock_];
  }
}

id CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1883F8708();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_1883F71C0();
    v8[1] = 1107296256;
    v8[2] = sub_1884C0074;
    v8[3] = &unk_1EFA2B970;
    v6 = _Block_copy(v8);

    [v2 setFetchShareParticipantsCompletionBlock_];
    _Block_release(v6);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setFetchShareParticipantsCompletionBlock_];
  }
}

uint64_t sub_1884C05A4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t (*CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 perShareParticipantCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_1884C0680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AAC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884C06F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A60;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchShareParticipantsOperation.perShareParticipantResultBlock.setter(v6, v5);
}

uint64_t (*CKFetchShareParticipantsOperation.perShareParticipantResultBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareParticipantsOperation.perShareParticipantResultBlock.getter();
  a1[1] = v3;
  return sub_1884C07C8;
}

uint64_t (*CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 fetchShareParticipantsCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188412818;
    *(v4 + 24) = v3;
    return sub_1884B5BC8;
  }

  return result;
}

uint64_t sub_1884C08A4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1884B2CD4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884C0914(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1884B2C94;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.setter(v6, v5);
}

uint64_t (*CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKFetchShareParticipantsOperation.fetchShareParticipantsResultBlock.getter();
  a1[1] = v3;
  return sub_1884C09EC;
}

uint64_t sub_1884C0A2C(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t CKOperation.operationID.getter()
{
  v1 = [v0 operationID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1884C0B74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignpostIntervalStateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1884C0BBC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  sub_188420F44(v5, qword_1EA90C620);
  sub_1883FDE5C(v5, qword_1EA90C620);
  if (qword_1EA90C5F0 != -1)
  {
    swift_once();
  }

  v6 = sub_1883FDE5C(v0, qword_1EA90C5F8);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

void CKOperationSignpostBegin(_:_:)(void *a1, const char *a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = sub_1883F70DC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8844();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  if (qword_1EA90C618 != -1)
  {
    sub_1883F9E2C();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_1883FDE5C(v19, qword_1EA90C620);
  v20 = a1;
  static OSSignpostID.exclusive.getter();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_20:
    (*(v10 + 16))(v15, v18, v7);
    v49 = type metadata accessor for OSSignpostIntervalState();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v10 + 8))(v18, v7);
    v53 = type metadata accessor for SignpostIntervalStateWrapper();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8CloudKitP33_D874BC29987C0F9F89EC9BDAEEBD096F28SignpostIntervalStateWrapper_wrapped] = v52;
    v62.receiver = v54;
    v62.super_class = v53;

    v55 = objc_msgSendSuper2(&v62, sel_init);
    sub_188615CFC(v20, v55);

    return;
  }

  v60 = v7;
  v59 = v22;
  if ((a4 & 1) == 0)
  {

    if (a2)
    {
      v58 = a2;
LABEL_12:
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v61 = v57;
      *v23 = 136316418;
      v25 = [v20 operationID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = sub_1883F7CE8();

      *(v23 + 4) = v26;
      *(v23 + 12) = 2112;
      v27 = [v20 containerID];
      *(v23 + 14) = v27;
      v56 = v24;
      *v24 = v27;
      *(v23 + 22) = 2080;
      v28 = [v20 group];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 operationGroupID];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
      }

      else
      {
        v33 = 0xE400000000000000;
        v31 = 1701736270;
      }

      v34 = sub_1883FE340(v31, v33, &v61);

      *(v23 + 24) = v34;
      *(v23 + 32) = 2082;
      v35 = [v20 group];
      if (v35 && (v36 = sub_1883F6078(v35), v37))
      {
        v38 = v37;
      }

      else
      {

        v38 = 0xE400000000000000;
        v36 = 1701736270;
      }

      v39 = sub_1883FE340(v36, v38, &v61);

      *(v23 + 34) = v39;
      *(v23 + 42) = 2082;
      v40 = [v20 operationInfo];
      v41 = [v40 discretionaryNetworkBehavior];

      v42 = CKStringForDiscretionaryNetworkBehavior(v41);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = sub_1883F7CE8();

      *(v23 + 44) = v43;
      *(v23 + 52) = 2082;
      v44 = [v20 qualityOfService];
      v46 = CKStringForQOS(v44, v45);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = sub_1883F7CE8();

      *(v23 + 54) = v47;
      v48 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v21, v59, v48, v58, "ID: %{name=ID}s, Container: %{name=Container}@, GroupID: %{name=GroupID}s, GroupName: %{name=GroupName,public}s, Behavior: %{name=Behavior,public}s, QoS: %{name=QoS,public}s", v23, 0x3Eu);
      sub_188442B84(v56, &qword_1EA90DC70, &unk_1886FA190);
      sub_1883F7B60();
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883F7B60();

      v7 = v60;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (a2 >> 32)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 <= 0x10)
    {

      v58 = &v61;
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

void CKOperationSignpostEnd(_:_:error:)(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 a4, NSObject *a5)
{
  v9 = type metadata accessor for OSSignpostError();
  v10 = sub_1883F70DC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F8844();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  v57 = type metadata accessor for OSSignpostID();
  v21 = sub_1883F70DC(v57);
  v59 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F8844();
  v27 = (v25 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54[-v29];
  v58 = a1;
  if (sub_188615CE8(a1))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64[0] = v62;
  v64[1] = v63;
  if (!*(&v63 + 1))
  {
    goto LABEL_13;
  }

  type metadata accessor for SignpostIntervalStateWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_1ED4B5C68 != -1)
    {
      sub_1883F7264();
    }

    v36 = type metadata accessor for Logger();
    sub_1883FDE5C(v36, qword_1ED4B5C70);
    v31 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1883EA000, v31, v37, "Tried to end a signpost, but none was in effect", v38, 2u);
      sub_1883F7B60();
    }

    goto LABEL_45;
  }

  LODWORD(v56) = a4;
  v31 = v61;
  if (a5)
  {
    v32 = a5;
    if (qword_1EA90C618 != -1)
    {
      sub_1883F9E2C();
    }

    v33 = type metadata accessor for OSSignposter();
    sub_1883FDE5C(v33, qword_1EA90C620);
    v34 = *(&v31->isa + OBJC_IVAR____TtC8CloudKitP33_D874BC29987C0F9F89EC9BDAEEBD096F28SignpostIntervalStateWrapper_wrapped);
    v35 = a5;
    v17 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v55 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      if ((v56 & 1) == 0)
      {

        if (!a2)
        {
          __break(1u);
LABEL_13:
          sub_188442B84(v64, &qword_1EA90DD10, &qword_1886F8770);
          goto LABEL_14;
        }

        goto LABEL_31;
      }

      if (a2 >> 32)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0xFFFFF800) == 0xD800)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (a2 >> 16 <= 0x10)
        {

          a2 = v64;
LABEL_31:

          checkForErrorAndConsumeState(state:)();

          if ((*(v12 + 88))(v20, v9) == *MEMORY[0x1E69E93E8])
          {
            v44 = 0;
            v45 = 0;
            v56 = "[Error] Interval already ended";
          }

          else
          {
            (*(v12 + 8))(v20, v9);
            v56 = "Error: %{name=Error}@";
            v45 = 2;
            v44 = 1;
          }

          v43 = v57;
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = v45;
          *(v46 + 1) = v44;
          *(v46 + 2) = 2112;
          v48 = a5;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          v50 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1883EA000, v17, v55, v50, a2, v56, v46, 0xCu);
          sub_188442B84(v47, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();

          v42 = v59;
LABEL_43:
          v41 = v58;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  if (qword_1EA90C618 != -1)
  {
    sub_1883F9E2C();
  }

  v39 = type metadata accessor for OSSignposter();
  sub_1883FDE5C(v39, qword_1EA90C620);
  v40 = *(&v31->isa + OBJC_IVAR____TtC8CloudKitP33_D874BC29987C0F9F89EC9BDAEEBD096F28SignpostIntervalStateWrapper_wrapped);
  a5 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v30 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v30 = v27;
    goto LABEL_26;
  }

  if ((v56 & 1) == 0)
  {
    if (!a2)
    {
      __break(1u);
LABEL_24:

LABEL_26:
      v41 = v58;
      v42 = v59;
      v43 = v57;
LABEL_44:
      (*(v42 + 8))(v30, v43);
      sub_188615CFC(v41, 0);
LABEL_45:

      return;
    }

LABEL_39:

    checkForErrorAndConsumeState(state:)();

    if ((*(v12 + 88))(v17, v9) == *MEMORY[0x1E69E93E8])
    {
      v51 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v17, v9);
      v51 = "";
    }

    v42 = v59;
    v43 = v57;
    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1883EA000, a5, v30, v53, a2, v51, v52, 2u);
    sub_1883F7B60();

    v30 = v27;
    goto LABEL_43;
  }

  if (a2 >> 32)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    if (a2 >> 16 > 0x10)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    a2 = &v60;
    goto LABEL_39;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_1884C1928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;

  v16 = a1;

  sub_1884C1CB0(0, 0, v13, &unk_1886FAB48, v15);

  return sub_1884C20C0(v13);
}

uint64_t sub_1884C1A54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1884C1B50;

  return v13(a6);
}

uint64_t sub_1884C1B50()
{
  sub_1883F7120();
  v1 = *(*v0 + 32);
  v4 = *v0;
  *(*v0 + 40) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1884C1C4C, 0, 0);
}

uint64_t sub_1884C1C4C()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1884C1CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1884C2128(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1883F971C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1884C20C0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1884C1F34(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_1884C1FEC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_1883F7E38(v10);
  *v11 = v12;
  v11[1] = sub_18840F9FC;

  return sub_1884C1A54(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1884C20C0(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1884C2128(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1884C2198(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1886FABE0;
  v10[5] = v9;
  sub_1884C4478(0, 0, v7, &unk_1886FABF0, v10);
}

uint64_t CKSymptomDiagnosticsReporter.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  sub_1883F7D04();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CKSymptomDiagnosticsReporter.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t CKSymptomDiagnosticsReporter.__allocating_init()()
{
  sub_1883F7D04();
  v0 = swift_allocObject();
  return sub_1883F9324(v0);
}

uint64_t CKSymptomDiagnosticsReporter.init()()
{
  result = v0;
  *(v0 + 16) = sub_1884C2328;
  *(v0 + 24) = 0;
  return result;
}

id sub_1884C2328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D4F80]);

  return [v0 init];
}

uint64_t CKSymptomDiagnosticsReporter.report(type:subType:reason:context:processName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883F7120();
  v11[76] = v10;
  v11[75] = a10;
  v11[74] = a9;
  v11[73] = v12;
  v11[72] = v13;
  v11[71] = v14;
  v11[70] = v15;
  v11[69] = v16;
  v11[68] = v17;
  v11[67] = v18;
  v11[66] = v19;
  v20 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v11[77] = v20;
  v21 = *(v20 - 8);
  v11[78] = v21;
  v22 = *(v21 + 64) + 15;
  v11[79] = swift_task_alloc();
  v23 = sub_18844E6FC(&qword_1EA90E368, &qword_1886FAB68);
  v11[80] = v23;
  v24 = *(v23 - 8);
  v11[81] = v24;
  v25 = *(v24 + 64) + 15;
  v11[82] = swift_task_alloc();
  sub_1883F7FD8();
  return sub_1883FDB04(v26, v27, v28);
}

uint64_t sub_1884C24AC()
{
  if (v0[75])
  {
    v1 = v0[74];
    v2 = v0[75];
  }

  else
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 processName];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v5;
  }

  v0[84] = v2;
  v0[83] = v1;

  if ((CKRunningInClientProcess() & 1) == 0)
  {
    v13 = v0[76];
    v14 = v0[69];
    v15 = v0[68];
    v16 = v0[67];
    v17 = v0[66];
    v18 = *(v13 + 24);
    v19 = (*(v13 + 16))();
    v0[85] = v19;
    v20 = sub_1884C483C(0x74694B64756F6C43, 0xE800000000000000, v17, v16, v15, v14, v1, v2, 0, 0xE000000000000000, v19);

    if (v20)
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1883FDE5C(v21, qword_1ED4B5C70);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1883EA000, v22, v23, "Failed to generate diagnostic signature", v24, 2u);
      MEMORY[0x18CFD7E80](v24, -1, -1);
    }

    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000027, 0x80000001887015C0);
    swift_willThrow();

    sub_1883F7A18();

    sub_1883F816C();
    sub_1883F85A4();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = [objc_opt_self() sharedXPCConnection];
  v0[89] = v9;
  v0[2] = v0;
  v0[7] = v0 + 65;
  v0[3] = sub_1884C2C38;
  swift_continuation_init();
  v0[25] = v8;
  v10 = sub_188403664(v0 + 22);
  sub_18844E6FC(&qword_1EA90E370, &unk_1886FAB70);
  v0[90] = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v10, v6, v8);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1884C32EC;
  v0[21] = &unk_1EFA2BBC8;
  [v9 getAdopterProcessScopedDaemonProxyCreatorSynchronous:0 completionHandler:?];
  (*(v7 + 8))(v10, v8);
  sub_1883F85A4();

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1884C2ABC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v6 = *(v5 + 696);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 704) = v0;

  if (!v0)
  {
    v9 = *(v3 + 688);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884C2BC0()
{
  sub_1883F7120();

  v1 = *(v0 + 512);

  v2 = *(v0 + 656);
  v3 = *(v0 + 632);

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C2C38()
{
  sub_1883F7120();
  v1 = *v0;
  sub_1883F78D4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 728) = v5;
  if (v5)
  {
    v6 = *(v2 + 672);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884C2D44()
{
  v1 = v0[89];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v22 = v0[65];
  v0[92] = v22;

  v21 = MEMORY[0x18CFD5010](v6, v5);
  v0[93] = v21;
  v20 = MEMORY[0x18CFD5010](v4, v3);
  v0[94] = v20;
  if (v2)
  {
    v7 = MEMORY[0x18CFD5010](v0[70], v0[71]);
  }

  else
  {
    v7 = 0;
  }

  v19 = v7;
  v0[95] = v7;
  if (v0[73])
  {
    v8 = MEMORY[0x18CFD5010](v0[72]);
  }

  else
  {
    v8 = 0;
  }

  v0[96] = v8;
  v17 = v0[90];
  v18 = v8;
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = MEMORY[0x18CFD5010](v0[83], v0[84]);
  v0[97] = v12;

  v0[10] = v0;
  v0[11] = sub_1884C2F90;
  swift_continuation_init();
  v0[33] = v11;
  v13 = sub_188403664(v0 + 30);
  CheckedContinuation.init(continuation:function:)();
  (*(v10 + 32))(v13, v9, v11);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1884C339C;
  v0[29] = &unk_1EFA2BBF0;
  [v22 reportSymptomDiagnosticsWithType:v21 subType:v20 reason:v19 context:v18 processName:v12 completionHandler:v0 + 26];
  (*(v10 + 8))(v13, v11);
  sub_1883F85A4();

  return MEMORY[0x1EEE6DEC8](v14);
}

uint64_t sub_1884C2F90()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 784) = *(v3 + 112);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884C3090()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];
  swift_unknownObjectRelease();

  v7 = v0[82];
  v8 = v0[79];

  sub_1883F816C();

  return v9();
}

uint64_t sub_1884C313C()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  swift_willThrow();

  v3 = *(v0 + 728);
  sub_1883F7A18();

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C31B8()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[92];
  swift_willThrow();
  swift_unknownObjectRelease();

  v8 = v0[98];
  sub_1883F7A18();

  sub_1883F816C();

  return v9();
}

uint64_t sub_1884C3270()
{
  sub_1883F7120();
  v1 = *(v0 + 688);

  v2 = *(v0 + 512);

  v3 = *(v0 + 704);
  sub_1883F7A18();

  sub_1883F816C();

  return v4();
}

void sub_1884C32EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1884E0AAC();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    sub_1884E0C2C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1884C339C(uint64_t a1, void *a2)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1884E0AD4();
  }

  else
  {

    sub_1884E0C70();
  }
}

void sub_1884C3428(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = a2;
  v5 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *a3;

  v11 = MEMORY[0x1E69E7CC0];
  v16 = Dictionary.init(dictionaryLiteral:)();
  v12 = Dictionary.init(dictionaryLiteral:)();
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  aBlock[4] = sub_1884C4DB8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884C3A64;
  aBlock[3] = &unk_1EFA2BD30;
  v15 = _Block_copy(aBlock);

  sub_1884C4E4C(0.0, v10, v11, v16, v12, v15, v17);
  _Block_release(v15);
}

uint64_t sub_1884C3648(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1ED4B5C70);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1883EA000, v5, v6, "Failed to report diagnostics, invalid reply", v7, 2u);
      MEMORY[0x18CFD7E80](v7, -1, -1);
    }

    v8 = 0xD00000000000002BLL;
    v9 = 0x80000001887017A0;
    goto LABEL_22;
  }

  v2 = *MEMORY[0x1E69D50D0];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(a1, &v24);
  sub_1884889C4(&v22);
  if (v25)
  {
    if ((swift_dynamicCast() & 1) != 0 && v19 == 1)
    {
      sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    sub_18845B1B0(&v24, &qword_1EA90DD10, &qword_1886F8770);
  }

  v10 = *MEMORY[0x1E69D50B0];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v11;
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(a1, &v24);
  sub_1884889C4(&v22);
  if (!v25)
  {
    sub_18845B1B0(&v24, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v12 = 0xED0000726F727245;
    v13 = 0x206E776F6E6B6E55;
    goto LABEL_17;
  }

  v13 = v20;
  v12 = v21;
LABEL_17:
  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1883FDE5C(v14, qword_1ED4B5C70);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v22 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1883FE340(v13, v12, &v22);
    _os_log_impl(&dword_1883EA000, v15, v16, "Failed to report diagnostics: %s", v17, 0xCu);
    sub_1883FE944(v18);
    MEMORY[0x18CFD7E80](v18, -1, -1);
    MEMORY[0x18CFD7E80](v17, -1, -1);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v22 = 0xD00000000000001ELL;
  v23 = 0x80000001887017D0;
  MEMORY[0x18CFD5140](v13, v12);

  v8 = v22;
  v9 = v23;
LABEL_22:
  v22 = related decl 'e' for CKErrorCode.init(_:description:)(1, v8, v9);
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1884C3A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t CKSymptomDiagnosticsReporter.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CKSymptomDiagnosticsReporter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = sub_1883F7D04();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

id sub_1884C3B6C()
{
  v0 = objc_allocWithZone(CKSymptomDiagnosticsReporter);

  return [v0 init];
}

id sub_1884C3BA4()
{
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v1 = swift_allocObject();
  *&v0[OBJC_IVAR___CKSymptomDiagnosticsReporter_wrapped] = sub_1883F9324(v1);
  v3.receiver = v0;
  v3.super_class = CKSymptomDiagnosticsReporter;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1884C3C20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CKSymptomDiagnosticsReporter();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *&v2[OBJC_IVAR___CKSymptomDiagnosticsReporter_wrapped] = v5;
  v7.receiver = v2;
  v7.super_class = CKSymptomDiagnosticsReporter;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1884C3CF0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

uint64_t sub_1884C3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = a8;
  v11[10] = a9;
  v11[7] = a6;
  v11[8] = a7;
  v11[5] = a4;
  v11[6] = a5;
  v11[3] = a2;
  v11[4] = a3;
  v11[2] = a1;
  sub_1883F7FD8();
  return sub_1883FDB04(v12, v13, v14);
}

uint64_t sub_1884C3D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883F7120();
  v11 = *(v10[12] + OBJC_IVAR___CKSymptomDiagnosticsReporter_wrapped);
  v12 = swift_task_alloc();
  v10[13] = v12;
  *v12 = v10;
  v12[1] = sub_1884C3E20;
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[6];
  v16 = v10[7];
  v17 = v10[4];
  v18 = v10[5];
  v20 = v10[2];
  v19 = v10[3];
  v23 = v10[10];
  v24 = v10[11];

  return CKSymptomDiagnosticsReporter.report(type:subType:reason:context:processName:)(v20, v19, v17, v18, v15, v16, v13, v14, a9, a10);
}

uint64_t sub_1884C3E20()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 104);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F816C();

  return v5();
}

uint64_t sub_1884C3FC0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a7;
  v10[3] = _Block_copy(aBlock);
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v10[4] = v15;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v10[5] = v17;
  if (a3)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v27 = 0;
    v20 = 0;
  }

  v10[6] = v20;
  if (a4)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v22;
  }

  else
  {
    v21 = 0;
  }

  v10[7] = a4;
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v10[8] = v24;
  a7;
  v25 = swift_task_alloc();
  v10[9] = v25;
  *v25 = v10;
  v25[1] = sub_1884C4154;

  return sub_1884C3D24(v29, v16, v28, v18, v27, v20, v21, a4, a9, a10);
}

uint64_t sub_1884C4154()
{
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[5];
  v11 = v5[4];
  v12 = v5[3];
  v13 = v5[2];
  v14 = *v1;
  sub_1883F7110();
  *v15 = v14;

  if (v0)
  {
    if (v12)
    {
      v16 = *(v3 + 24);
      v17 = _convertErrorToNSError(_:)();

      (v16)[2](v16, v17);
      _Block_release(v16);
    }

    else
    {
    }
  }

  else if (v12)
  {
    v18 = *(v3 + 24);
    v18[2](v18, 0);
    _Block_release(v18);
  }

  sub_1883F816C();

  return v19();
}

uint64_t sub_1884C4390(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_188442BE4;

  return v7();
}

uint64_t sub_1884C4478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1884C2128(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_1883F971C(v12, 1, v13) == 1)
  {
    sub_18845B1B0(v12, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_18845B1B0(a3, &qword_1EA90E6A0, &qword_1886F7030);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18845B1B0(a3, &qword_1EA90E6A0, &qword_1886F7030);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1884C4744(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18840FF64;

  return v7(a1);
}

id sub_1884C483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v17 = MEMORY[0x18CFD5010]();

  v18 = MEMORY[0x18CFD5010](a3, a4);
  v19 = MEMORY[0x18CFD5010](a5, a6);
  v20 = MEMORY[0x18CFD5010](a7, a8);
  v21 = MEMORY[0x18CFD5010](a9, a10);

  v22 = [a11 signatureWithDomain:v17 type:v18 subType:v19 detectedProcess:v20 triggerThresholdValues:v21];

  return v22;
}

unint64_t type metadata accessor for CKSymptomDiagnosticsReporter()
{
  result = qword_1EA90E380;
  if (!qword_1EA90E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90E380);
  }

  return result;
}

uint64_t sub_1884C49F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_188442BE4;
  v10 = sub_1883FF1A0();

  return v11(v10);
}

uint64_t sub_1884C4AC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_188442BE4;
  v7 = sub_1883FF1A0();

  return v8(v7);
}

uint64_t sub_1884C4B7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1884C4BBC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_1883F7E38(v7);
  *v8 = v9;
  v8[1] = sub_1884061E0;

  return sub_1883FADD0(a1, v3, v4, v6);
}

uint64_t sub_1884C4C80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v6 = sub_1883F78B4(v4);

  return v7(v6);
}

uint64_t sub_1884C4D18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v6 = sub_1883F78B4(v4);

  return v7(v6);
}

uint64_t sub_1884C4DB8(uint64_t a1)
{
  v2 = *(*(sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90) - 8) + 80);

  return sub_1884C3648(a1);
}

uint64_t sub_1884C4E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1884C4E4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [a7 snapshotWithSignature:isa delay:v11 events:v12 payload:v13 actions:a6 reply:a1];

  return v14;
}

uint64_t sub_1884C4F80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1884C4FC4()
{
  sub_1883F7120();
  v1 = *(v0 + 48);
  sub_1884CDDA8();
  v2 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1884C5020()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884C5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_188404C04();
  a17 = v19;
  a18 = v20;
  sub_1883F653C();
  a16 = v18;
  v21 = v18[5];
  sub_188402EBC();
  Strong = swift_weakLoadStrong();
  v18[6] = Strong;
  if (Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v23 = type metadata accessor for Logger();
    sub_1883FDE5C(v23, qword_1EA90C9F8);
    sub_1883FEFE0();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1883F9984();
      v27 = sub_1883FE540();
      a9 = v27;
      *v26 = 136315138;

      v28 = sub_1883FE43C();
      v30 = v29;

      v31 = sub_1883FE340(v28, v30, &a9);

      *(v26 + 4) = v31;
      sub_1883FDDA4();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      sub_1883FE944(v27);
      sub_1883F7B60();
      sub_1883FD784();
    }

    v37 = swift_task_alloc();
    v18[7] = v37;
    *v37 = v18;
    v37[1] = sub_1884C5274;
    sub_1883F6548();

    return sub_188435D04();
  }

  else
  {
    sub_1883F816C();
    sub_1883F6548();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_1884C5274()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C5358(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884C5378, 0, 0);
}

uint64_t sub_1884C5378()
{
  sub_1883FC738();
  v35 = v0;
  v1 = *(v0 + 184);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
LABEL_22:
    sub_1883F816C();
    sub_1883F9968();

    __asm { BRAA            X1, X16 }
  }

  v3 = Strong;
  v4 = *(v0 + 176);
  Notification.object.getter();
  if (!*(v0 + 80))
  {

    v31 = v0 + 56;
LABEL_18:
    sub_1883F9FEC(v31, &qword_1EA90DD10, &qword_1886F8770);
    goto LABEL_22;
  }

  sub_1883F4C5C(0, &unk_1EA90E450, off_1E70BA4C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v5 = *(v0 + 160);
  *(v0 + 200) = v5;
  v6 = [v5 resolvedConfiguration];
  v7 = [v6 container];

  if (!v7 || (v8 = [v7 containerID], *(v0 + 208) = v8, v7, !v8))
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v9 = [*(v3 + 144) containerID];
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {

    goto LABEL_20;
  }

  v11 = *(v0 + 176);
  v12 = Notification.userInfo.getter();
  if (!v12)
  {

    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
LABEL_27:
    v31 = v0 + 88;
    goto LABEL_18;
  }

  v13 = v12;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v14;
  AnyHashable.init<A>(_:)();
  sub_18847E6E4(v13, (v0 + 88));

  sub_1884889C4(v0 + 16);
  if (!*(v0 + 112))
  {

    goto LABEL_27;
  }

  sub_1883F4C5C(0, &unk_1EA90E460, off_1E70BA758);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v15 = *(v0 + 168);
  *(v0 + 216) = v15;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v16 = type metadata accessor for Logger();
  sub_1883FDE5C(v16, qword_1EA90C9F8);
  sub_1883FEFE0();

  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = sub_1883FE540();
    v34 = v22;
    *v20 = 136315394;

    v23 = sub_1883FE43C();
    v25 = v24;

    v26 = sub_1883FE340(v23, v25, &v34);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v27 = v17;
    _os_log_impl(&dword_1883EA000, v18, v19, "%s share accepted: %@", v20, 0x16u);
    sub_1883F9FEC(v21, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v22);
    sub_1883F7B60();
    sub_1883FD784();
  }

  v28 = swift_task_alloc();
  *(v0 + 224) = v28;
  *v28 = v0;
  v28[1] = sub_1884C5804;
  sub_1883F9968();

  return sub_1884E523C();
}

uint64_t sub_1884C5804()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 224);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C58E8()
{
  sub_1883F78E0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C595C(uint64_t a1, void *a2, char a3)
{
  v5 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((a3 & 1) == 0)
    {
      v11 = a2;
      v12 = sub_1884C5C7C();
      if (v12 == [*(v10 + 136) scope])
      {
        if (qword_1EA90C9F0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1883FDE5C(v13, qword_1EA90C9F8);
        sub_18844264C(a2);

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        sub_18844CAFC(a2);
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = v27;
          *v16 = 136315394;

          v18 = sub_1883FE43C();
          v20 = v19;

          v21 = sub_1883FE340(v18, v20, &v28);

          *(v16 + 4) = v21;
          *(v16 + 12) = 2112;
          *(v16 + 14) = v11;
          *v17 = a2;
          v22 = v11;
          _os_log_impl(&dword_1883EA000, v14, v15, "%s share did save: %@", v16, 0x16u);
          sub_1883F9FEC(v17, &qword_1EA90DC70, &unk_1886FA190);
          MEMORY[0x18CFD7E80](v17, -1, -1);
          v23 = v27;
          sub_1883FE944(v27);
          MEMORY[0x18CFD7E80](v23, -1, -1);
          MEMORY[0x18CFD7E80](v16, -1, -1);
        }

        v24 = type metadata accessor for TaskPriority();
        sub_1883F90F4(v8, 1, 1, v24);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v10;
        v25[5] = v11;

        sub_188453610();
      }

      else
      {
        sub_18844CAFC(a2);
      }
    }
  }

  return result;
}

uint64_t sub_1884C5C7C()
{
  v1 = [v0 recordID];
  v2 = [v1 zoneID];

  v3 = [v2 databaseScope];
  if (qword_1EA90CB18 != -1)
  {
    swift_once();
  }

  if (v3 == qword_1EA90D4A0)
  {
    v4 = [v0 owner];
    v5 = [v4 isCurrentUser];

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v7 = [v2 databaseScope];

    return v7;
  }
}

uint64_t sub_1884C5D88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;

  return sub_1884E523C();
}

uint64_t sub_1884C5E24(char a1, char a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v7, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = a1 & 1;
    *(v11 + 41) = a2 & 1;
    sub_188453610();
  }

  return result;
}

uint64_t sub_1884C5F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1884061E0;

  return sub_188410048(a5, a6);
}

uint64_t sub_1884C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884C608C, a4, 0);
}

uint64_t sub_1884C608C()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  sub_18841FD50();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1884C6120;
  v3 = *(v0 + 16);

  return sub_1884204A8(v2);
}

uint64_t sub_1884C6120()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C6204()
{
  sub_1883F653C();
  v27 = v0;
  v2 = v0[2];
  if ((sub_188403050() & 1) == 0)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480();
    }

    v15 = v0[2];
    v16 = type metadata accessor for Logger();
    sub_1883FDE5C(v16, qword_1EA90C9F8);

    v17 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v18 = v0[2];
      sub_1883F9984();
      v26 = sub_1883F8C00();
      *v15 = 136315138;
      v19 = sub_1883FE43C();
      sub_1883FE340(v19, v20, &v26);
      sub_1883FE2FC();
      *(v15 + 4) = v1;
      sub_1883F7A44(&dword_1883EA000, v21, v22, "%s automatic syncing is disabled.");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    v23 = v0[3];

    sub_1883F816C();
    sub_1883F614C();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);

  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v6 = v0[2];
    sub_1883F9984();
    v26 = sub_1883F8C00();
    *v3 = 136315138;
    v7 = sub_1883FE43C();
    sub_1883FE340(v7, v8, &v26);
    sub_1883FE2FC();
    *(v3 + 4) = v1;
    sub_1883F7A44(&dword_1883EA000, v9, v10, "%s automatic syncing is enabled. Preparing and scheduling initial sync.");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1884C6440;
  v12 = v0[2];
  sub_1883F614C();

  return sub_18840307C();
}

uint64_t sub_1884C6440()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C6524()
{
  sub_1883F7120();
  v1 = v0[3];
  type metadata accessor for Date();
  sub_18844334C();
  sub_1883F90F4(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1884C65D0;
  v8 = v0[2];
  v7 = v0[3];

  return sub_18840EDE4();
}

uint64_t sub_1884C65D0()
{
  sub_1883F78E0();
  v1 = *v0;
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[3];
  v6 = *v0;
  *v3 = *v0;

  sub_1883F9FEC(v5, &unk_1EA90D7B0, &dword_1886F8780);
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v6;
  v7[1] = sub_1884C6730;
  v8 = v1[2];

  return sub_1884E5908();
}

uint64_t sub_1884C6730()
{
  sub_1883F7120();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = *(v1 + 24);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1884C6834()
{
  sub_18841AE3C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1884C6868()
{
  os_unfair_lock_lock((v0 + 224));
  v1 = *(v0 + 232);
  os_unfair_lock_unlock((v0 + 224));
  return v1;
}

uint64_t sub_1884C689C()
{
  sub_1883F78E0();
  v3 = v2;
  *(v1 + 152) = v4;
  *(v1 + 160) = v0;
  *(v1 + 144) = v5;
  v6 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v1 + 176) = v9;
  v10 = *(v9 - 8);
  *(v1 + 184) = v10;
  *(v1 + 192) = *(v10 + 64);
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 264) = *v3;
  *(v1 + 216) = *(v3 + 8);
  *(v1 + 232) = *(v3 + 24);
  v11 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884C69C0()
{
  v1 = v0[29];
  v37 = *(v0 + 264);
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v35 = v0[19];
  v36 = v0[27];
  v33 = v0[21];
  v34 = v0[18];
  v38 = v0[28];
  v39 = v2;
  UUID.init()();
  sub_1883F7B88();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v2, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v4, v6);
  v0[6] = sub_1884CD334;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1884C4F80;
  v0[5] = &unk_1EFA2BE20;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v1 setCancellationHandler_];
  _Block_release(v11);
  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v13, v14, v15, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v34;
  *(v17 + 40) = v35;
  *(v17 + 48) = v37;
  *(v17 + 56) = v36;
  *(v17 + 64) = v38;
  *(v17 + 72) = v1;

  v18 = v36;
  v19 = v38;
  v20 = v1;
  v21 = sub_1884101D8();
  v24 = sub_1884E0724(v21, v22, v33, v23, v17);
  v0[30] = v24;
  sub_18840C690();

  v25 = *(v7 + 256);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v7 + 256);
  sub_1884AF4E0(v24, v39, isUniquelyReferenced_nonNull_native);
  *(v7 + 256) = v40;
  swift_endAccess();
  v27 = *(MEMORY[0x1E69E86A8] + 4);
  v28 = swift_task_alloc();
  v0[31] = v28;
  v29 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
  v30 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v28 = v0;
  v28[1] = sub_1884C6CDC;
  v31 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 17, v24, v29, v30, v31);
}

uint64_t sub_1884C6CDC()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 248);
  *v4 = *v2;
  *(v3 + 256) = v0;

  sub_18840FB28();
  v7 = *(v6 + 160);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884C6DF0()
{
  sub_1883F653C();
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[17];
  sub_18840C690();
  sub_1884DE234(v2);
  swift_endAccess();

  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1884C6EDC()
{
  sub_1883FC738();
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];
  sub_18840C690();
  sub_1884DE234(v3);
  swift_endAccess();

  swift_willThrow();

  (*(v6 + 8))(v3, v5);

  sub_1883F816C();
  v10 = v0[32];

  return v9();
}

uint64_t sub_1884C6FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1884538D0();
}

uint64_t sub_1884C7188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884C71AC, 0, 0);
}

uint64_t sub_1884C71AC()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  sub_188402EBC();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884C725C, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    sub_1883F816C();

    return v3();
  }
}

uint64_t sub_1884C725C()
{
  sub_1883F7120();
  v1 = *(v0 + 88);
  swift_beginAccess();
  *(v0 + 96) = *(v1 + 256);

  v2 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1884C72DC()
{
  sub_1883F7120();
  sub_18847E748(*(v1 + 80), *(v1 + 96));
  sub_1883FEFE0();

  if (v0)
  {
    v2 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
    v3 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    MEMORY[0x18CFD54D0](v0, v2, v3, MEMORY[0x1E69E7288]);
  }

  **(v1 + 64) = v0 == 0;
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884C73A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = v14;
  *(v8 + 48) = a1;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v8 + 56) = v10;
  *v10 = v8;
  v10[1] = sub_1884C74B0;

  return v12(v8 + 16);
}

uint64_t sub_1884C74B0()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884C75CC()
{
  sub_1883F816C();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t sub_1884C760C()
{
  sub_1883FC738();
  v1 = *(v0 + 64);
  sub_188402EBC();
  v2 = *(v1 + 248);
  v3 = *(v2 + 64);
  sub_188405F14();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CA8];
  v12 = MEMORY[0x1E69E7288];
  if (v6)
  {
    while (1)
    {
      v13 = v10;
LABEL_7:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = *(*(v2 + 56) + ((v13 << 9) | (8 * v14)));

      v16 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      MEMORY[0x18CFD54D0](v15, v11 + 8, v16, v12);

      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v13 >= v8)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v13);
    ++v10;
    if (v6)
    {
      v10 = v13;
      goto LABEL_7;
    }
  }

  v17 = *(v0 + 64);

  swift_beginAccess();
  v18 = *(v17 + 256);
  v19 = *(v18 + 64);
  sub_188405F14();
  v22 = v21 & v20;
  v24 = (63 - v23) >> 6;

  v25 = 0;
  v26 = MEMORY[0x1E69E7288];
  if (!v22)
  {
    goto LABEL_11;
  }

  do
  {
    v27 = v25;
LABEL_15:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = *(*(v18 + 56) + ((v27 << 9) | (8 * v28)));
    v30 = sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);

    v31 = sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    MEMORY[0x18CFD54D0](v29, v30, v31, v26);
  }

  while (v22);
LABEL_11:
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      sub_1883F816C();
      sub_1883F9968();

      __asm { BRAA            X1, X16 }
    }

    v22 = *(v18 + 64 + 8 * v27);
    ++v25;
    if (v22)
    {
      v25 = v27;
      goto LABEL_15;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1884C7858(char a1)
{
  v3 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v4 = sub_1883F8AE4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_isAutomaticSyncEnabledMutex;
  os_unfair_lock_lock(v7);
  *(v7 + 4) = a1;
  os_unfair_lock_unlock(v7);
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v8 = type metadata accessor for Logger();
  sub_1883FDE5C(v8, qword_1EA90C9F8);
  sub_1883FEFE0();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = sub_1883FE540();
    v22 = v12;
    *v11 = 136315394;
    v13 = sub_1883FE43C();
    v15 = sub_1883FE340(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_1883EA000, v9, v10, "%s setting automaticallySync=%{BOOL}d", v11, 0x12u);
    sub_1883FE944(v12);
    sub_1883F7B60();
    sub_1883F7B60();
  }

  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v16, v17, v18, v19);
  v20 = swift_allocObject();
  sub_188402E3C(v20);
  sub_1884101D8();
  sub_188453610();
}

uint64_t sub_1884C7A80()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  sub_18841FD50();
  sub_1883F816C();

  return v2();
}

void sub_1884C7AD8(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex);
  os_unfair_lock_lock(v3);
  memcpy(__dst, &v3[2], sizeof(__dst));
  memcpy(a1, &v3[2], 0x60uLL);
  sub_18845457C(__dst, &v4, &unk_1EA90E4D0, &unk_1886FB460);
  os_unfair_lock_unlock(v3);
}

void sub_1884C7B58(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480();
  }

  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);
  sub_1883FEFE0();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_1883F9984();
    v12[0] = sub_1883F8C00();
    *v2 = 136315138;
    v7 = sub_1883FE43C();
    sub_1883FE340(v7, v8, v12);
    sub_1883FE2FC();
    *(v2 + 4) = v3;
    sub_1884CDD88(&dword_1883EA000, v9, v10, "%s setting automaticSyncOptions");
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  v11 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_automaticSyncOptionsMutex));
  memcpy(v12, &v11[2], sizeof(v12));
  sub_1883F9FEC(v12, &unk_1EA90E4D0, &unk_1886FB460);
  memcpy(&v11[2], __dst, 0x60uLL);
  os_unfair_lock_unlock(v11);
}

void sub_1884C7CB8(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_accountProviderMutex);
  os_unfair_lock_lock(v3);
  sub_18845457C(&v3[2], a1, &qword_1EA90E3D8, &qword_1886FAF80);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1884C7D3C()
{
  sub_1883F7120();
  *(v0 + 40) = *(v0 + 144);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1884C7DC4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C7EA8()
{
  sub_1883F7120();
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_188405614();
  sub_1884CCC70(v1, v2);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[17] = v4;
  *v4 = v5;
  v6 = sub_1884CDC6C();

  return MEMORY[0x1EEE6D8C8](v6);
}

void sub_1884C7F58()
{
  v1 = (v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_notificationObserverTasksMutex));
  sub_1884C7FB8(&v1[2]);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1884C7FB8(uint64_t result)
{
  v1 = 0;
  v2 = *result;
  v3 = *(*result + 16);
  v4 = *result + 32;
  v5 = MEMORY[0x1E69E7CA8];
  v6 = MEMORY[0x1E69E73E0];
  v7 = MEMORY[0x1E69E7410];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v1 + 1;
    v9 = *(v4 + 8 * v1);

    MEMORY[0x18CFD54D0](v10, v5 + 8, v6, v7);

    v1 = v8;
  }

  return result;
}

uint64_t sub_1884C8090()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000021);
  qword_1EA919C80 = result;
  return result;
}

uint64_t sub_1884C80C4()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000020);
  qword_1EA919C88 = result;
  return result;
}

uint64_t sub_1884C80F8()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD000000000000026);
  qword_1EA919C90 = result;
  return result;
}

uint64_t sub_1884C812C()
{
  sub_1883FEB90();
  result = MEMORY[0x18CFD5010](0xD00000000000001CLL);
  qword_1EA919C98 = result;
  return result;
}

BOOL sub_1884C8160(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v6 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = static NSObject.== infix(_:_:)();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

uint64_t sub_1884C8278@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v6 = result;
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return sub_18843E080(v4, a1);
    }

    else
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      sub_1883F9FEC(v4, &qword_1EA90E740, &qword_1886FB170);
      *&v4[0] = 0;
      *(&v4[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x18CFD5140](0xD00000000000003CLL, 0x8000000188701DD0);
      swift_getObjectType();
      v6 = v3;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1884C83D0(uint64_t *a1)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  type metadata accessor for CKAsyncSerialQueue();
  swift_allocObject();
  *(v1 + 120) = sub_18841CFB4(0);
  sub_18848CE70(a1, v4);
  sub_18844E6FC(&qword_1EA90E730, &qword_1886FB1D8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  sub_1883FE944(a1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1884C848C()
{
  sub_1883FB4AC();
  v2 = *(v1 + 80);
  v8 = *(v1 + 64);
  v3 = sub_1884021B4();
  *(v1 + 88) = v3;
  v5 = sub_1884038A4(v3, v4);
  *(v1 + 96) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v0;
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  *v6 = v1;
  v6[1] = sub_1884C856C;

  return sub_1884C994C(0, &unk_1886FAFD0, v5);
}

uint64_t sub_1884C856C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v4 = v3;
  sub_18840F6A8();
  v5 = v1;
  sub_1883F7110();
  *v6 = v1;
  v7 = v1[13];
  *v6 = *v2;
  v1[14] = v0;

  sub_18840FB28();
  v9 = *(v8 + 96);
  v10 = v1[10];
  if (!v0)
  {
    v5[15] = v4;
  }

  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884C86AC()
{
  sub_1883F7120();
  v1 = v0[11];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_1884C870C()
{
  sub_1883FB4AC();
  v1 = v0[14];
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C();
}

uint64_t sub_1884C8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_188405594(sub_1884C87B4);
}

uint64_t sub_1884C87B4()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4();
  v0[12] = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  swift_task_alloc();
  sub_1883FF2B8();
  v0[14] = v12;
  *v12 = v13;
  v12[1] = sub_1884C8874;
  v14 = v0[8];
  sub_1884110E4();

  return sub_1884CA9B0(v15, v16, v17, v18);
}

uint64_t sub_1884C8874()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 112);
  v6 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 120) = v0;

  sub_18840FB28();
  v8 = *(v7 + 88);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884C89A4()
{
  sub_1883FB4AC();
  v1 = v0[15];
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  v2 = v0[2];
  v3 = v0[3];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C();
}

uint64_t sub_1884C8A30(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_188405594(sub_1884C8A4C);
}

uint64_t sub_1884C8A4C()
{
  sub_1883FB4AC();
  v1 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_1884C8278(v0 + 16);
  v2 = *(v1 + 120);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1884C8B30;

  return sub_1884CB1A4(0, &unk_1886FB200, v3);
}

uint64_t sub_1884C8B30()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v4 = v3;
  sub_18840F6A8();
  v5 = v1;
  sub_1883F7110();
  *v6 = v1;
  v7 = v1[15];
  *v6 = *v2;
  v1[16] = v0;

  sub_18840FB28();
  v9 = *(v8 + 112);
  v10 = v1[13];
  if (!v0)
  {
    *(v5 + 136) = v4;
  }

  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1884C8C70()
{
  sub_1883F7120();
  v1 = *(v0 + 136);
  sub_1883F9FEC(v0 + 16, &qword_1EA90E740, &qword_1886FB170);
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_1884C8CE4()
{
  sub_1883FB4AC();
  v1 = v0[16];
  sub_1883FE89C();
  sub_188404BE0();
  swift_getErrorValue();
  v2 = v0[7];
  v3 = v0[8];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_1883FF65C();
  return sub_188410C3C();
}

uint64_t sub_1884C8D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884C8D94, 0, 0);
}

uint64_t sub_1884C8D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4();
  }

  v13 = sub_18841BAD0();
  sub_1884052D8(v13);
  v14 = *(MEMORY[0x1E69E8950] + 4);
  v15 = swift_task_alloc();
  *(v12 + 64) = v15;
  sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
  *v15 = v12;
  v15[1] = sub_1884C8EB0;
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

void sub_1884C8EB0()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 56);

    v10 = *(v3 + 32);
    v11 = *(v7 + 8);

    v11(v10);
  }
}

uint64_t sub_1884C8FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a2;
  v5[6] = a3;
  v5[3] = a5;
  v5[4] = a1;
  v5[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884C8FF8, 0, 0);
}

uint64_t sub_1884C8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F78E0();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4();
  }

  v13 = sub_18841BAD0();
  sub_1884052D8(v13);
  v14 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v12 + 64) = v15;
  *v15 = v16;
  v15[1] = sub_1884073F0;
  v17 = *(v12 + 32);
  sub_188414794();

  return MEMORY[0x1EEE6DE98](v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1884C9100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884C9124, 0, 0);
}

uint64_t sub_1884C9124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FB4AC();
  if (qword_1EA90C838 != -1)
  {
    sub_1883FEAB4();
  }

  v13 = *(v12 + 32);
  *(v12 + 57) = 1;
  v14 = swift_task_alloc();
  *(v12 + 40) = v14;
  *(v14 + 16) = *(v12 + 16);
  *(v14 + 32) = v13;
  v15 = *(MEMORY[0x1E69E8950] + 4);
  v16 = swift_task_alloc();
  *(v12 + 48) = v16;
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v16 = v12;
  v16[1] = sub_1884C9260;
  sub_188414794();
  sub_188404D5C();

  return MEMORY[0x1EEE6DE98](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

void sub_1884C9260()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 40);

    v10 = *(v3 + 56);
    v11 = *(v7 + 8);

    v11(v10);
  }
}

uint64_t sub_1884C9380(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1884C9484;

  return (v8)(v4 + 4, v4 + 2);
}

uint64_t sub_1884C9484()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C9570(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1884C967C;

  return (v10)(a1, v5 + 2);
}

uint64_t sub_1884C967C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C9760(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1884C9860;

  return v8(v3 + 24, a3);
}

uint64_t sub_1884C9860()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884C994C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a2;
  *(v4 + 184) = a1;
  *(v4 + 88) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1884C999C, v3, 0);
}

uint64_t sub_1884C999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18840618C();
  a19 = v22;
  a20 = v23;
  sub_1883FC738();
  a18 = v20;
  v24 = *(v20 + 80);
  v25 = *(v20 + 88);
  v26 = sub_188405E54();
  sub_1883F7468();
  v29 = sub_1884CCC70(v27, v28);
  v30 = sub_188410EC8(v29);
  sub_188404C5C(v30, v26);
  sub_1883FF014();
  if (v25)
  {
    sub_1883F9E4C(*(v20 + 64));
    v83 = v31;
    v33 = *(v32 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v20 + 104) = v34;
    *v34 = v35;
    v34[1] = sub_1884C9D50;
    v36 = *(v20 + 72);
    sub_18840DEA4();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, v83, a10, a11, a12);
  }

  sub_1883FDBD0();
  if (!v46)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v64)
    {
      *(v25 + 128) = 1;
      if (*(v20 + 184) == 1)
      {
        static Task<>.checkCancellation()();
      }

      *(v20 + 48) = sub_18840F8F4();
      v65 = Identifiable<>.id.getter();
      sub_188404AE8(&a10, v65);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    sub_1883F89B8();
LABEL_15:
    v66 = *(v20 + 80);
    v67 = sub_1884062D8();
    sub_188443300(v67);
    sub_1883F7468();
    sub_1884CCC70(v68, v69);
    v70 = *(MEMORY[0x1E69E8950] + 4);
    v71 = swift_task_alloc();
    *(v20 + 168) = v71;
    sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
    sub_1883FA6DC();
    *v71 = v72;
    sub_188404A28(v73);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12);
  }

  sub_1883FAAC8();
  if (v48)
  {
    __break(1u);
    goto LABEL_19;
  }

  v49 = *(v20 + 184);
  *(v25 + 120) = v47;
  v50 = swift_task_alloc();
  *(v20 + 120) = v50;
  *(v50 + 16) = v49;
  *(v50 + 24) = v21;
  *(v50 + 32) = v25;
  v51 = swift_task_alloc();
  *(v20 + 128) = v51;
  *(v51 + 16) = v49;
  *(v51 + 24) = v25;
  *(v51 + 32) = v21;
  sub_1883F7468();
  sub_1884CCC70(v52, v53);
  v54 = *(MEMORY[0x1E69E88F0] + 4);
  v55 = swift_task_alloc();
  *(v20 + 136) = v55;
  *v55 = v20;
  v55[1] = sub_1884C9E90;
  sub_1883F960C();
  sub_18840DEA4();

  return MEMORY[0x1EEE6DE18](v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t sub_1884C9D50()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 104);
  *v4 = *v2;
  *(v3 + 112) = v0;

  sub_18840FB28();
  v7 = *(v6 + 80);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884C9E6C()
{
  v1 = *(v0 + 112);
  sub_1883F816C();
  return v2();
}

uint64_t sub_1884C9E90()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_1884C9FA8;
  }

  else
  {
    v12 = v3[15];
    v11 = v3[16];
    v13 = v3[10];

    v10 = sub_1884CA00C;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884C9FA8()
{
  sub_1883F7120();
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[18];
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884CA00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18840618C();
  a19 = v21;
  a20 = v22;
  sub_1883FC738();
  a18 = v20;
  sub_1883FF2C4();
  if (!v23)
  {
    __break(1u);
  }

  if (*(v20 + 184) == 1 && (v24 = *(v20 + 144), static Task<>.checkCancellation()(), v25 = *(v20 + 80), v24))
  {
    v26 = *(v20 + 80);
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v36 = *(v20 + 88);
    v37 = *(v20 + 96);
    *(v20 + 48) = sub_188405E54();
    v38 = Identifiable<>.id.getter();
    sub_188404AE8(&a10, v38);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v39 = *(v20 + 80);
    v40 = sub_1884062D8();
    sub_188443300(v40);
    sub_1883F7468();
    sub_1884CCC70(v41, v42);
    v43 = *(MEMORY[0x1E69E8950] + 4);
    v44 = swift_task_alloc();
    *(v20 + 168) = v44;
    sub_18844E6FC(&unk_1EA90E3E0, &qword_1886FAFF0);
    sub_1883FA6DC();
    *v44 = v45;
    sub_188404A28(v46);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CA1C8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[22] = v0;

  v9 = v3[19];
  v10 = v3[20];
  v11 = v3[10];

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1884CA2E8()
{
  sub_1883F7120();
  v1 = v0[10];
  sub_18840506C();
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1884CA34C()
{
  sub_1883F7120();
  v1 = *(v0 + 80);
  sub_18840506C();
  v2 = *(v0 + 176);
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884CA3A8()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_18840FB28();
  v7 = *(v6 + 72);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884CA4D4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = sub_1884CA5EC;
  }

  else
  {
    v12 = v3[14];
    v11 = v3[15];
    v13 = v3[9];

    v10 = sub_1884CA650;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CA5EC()
{
  sub_1883F7120();
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[17];
  v4 = sub_1883F8C1C();

  return v5(v4);
}

uint64_t sub_1884CA650()
{
  sub_1883F653C();
  if (*(*(v0 + 72) + 128) != 1)
  {
    __break(1u);
  }

  if (*(v0 + 177) == 1 && (v1 = *(v0 + 136), static Task<>.checkCancellation()(), v1))
  {
    v2 = *(v0 + 72);
    sub_18840506C();
    v3 = sub_1883F8C1C();

    return v4(v3);
  }

  else
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = sub_188405E54();
    v9 = sub_1883FC768(v8);
    sub_1884CDCF4(v9, v10, v11, v12, v13, v14, v15, v16, v25);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v17 = *(v0 + 72);
    v18 = sub_188400870();
    sub_1884022A8(v18);
    sub_1883F7468();
    sub_1884CCC70(v19, v20);
    v21 = *(MEMORY[0x1E69E8950] + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v0 + 160) = v22;
    *v22 = v23;
    sub_18840E7E4(v22);
    sub_1883FAECC();
    sub_1884CDD5C();
    sub_1883FA170();
    sub_1883F614C();

    return MEMORY[0x1EEE6DE98]();
  }
}

uint64_t sub_1884CA7EC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 168) = v0;

  sub_1883F950C();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CA8FC()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  sub_18840506C();
  v2 = sub_1883FB354();

  return v3(v2);
}

uint64_t sub_1884CA954()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  sub_18840506C();
  v2 = *(v0 + 168);
  v3 = sub_1883F8C1C();

  return v4(v3);
}

uint64_t sub_1884CA9B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1884CAA00, v4, 0);
}

uint64_t sub_1884CAA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883FC738();
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  v15 = sub_188405E54();
  sub_1883F7468();
  v18 = sub_1884CCC70(v16, v17);
  v19 = sub_188410EC8(v18);
  sub_188404C5C(v19, v15);
  sub_1883FF014();
  if (v14)
  {
    sub_1883F9E4C(*(v12 + 64));
    v21 = *(v20 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 104) = v22;
    *v22 = v23;
    sub_188404FA4(v22);
    sub_1884CDCCC();

    __asm { BRAA            X1, X16 }
  }

  sub_1883FDBD0();
  if (!v26)
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v45)
    {
      sub_18840AE7C();
      if (v26)
      {
        static Task<>.checkCancellation()();
      }

      v46 = sub_18840F8F4();
      v47 = sub_188404238(v46);
      sub_1883F813C(v47, v48, v49);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    sub_1883F89B8();
LABEL_16:
    v50 = *(v12 + 80);
    v51 = sub_188400870();
    sub_1883F984C(v51);
    sub_1883F7468();
    sub_1884CCC70(v52, v53);
    v54 = *(MEMORY[0x1E69E8950] + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 160) = v55;
    *v55 = v56;
    sub_1883FC650(v55);
    sub_1883FAECC();
    sub_1883FA170();
    sub_188410CA4();

    return MEMORY[0x1EEE6DE98](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
  }

  sub_1883FAAC8();
  if (v28)
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = sub_1884CDCB0(v27);
  v30 = sub_1883F9A44(v29);
  sub_1883FF604(v30);
  sub_1883F7468();
  sub_1884CCC70(v31, v32);
  v33 = *(MEMORY[0x1E69E88F0] + 4);
  v34 = swift_task_alloc();
  v35 = sub_188404A84(v34);
  *v35 = v36;
  v35[1] = sub_1884CAD38;
  sub_1883F960C();
  sub_1884CDCCC();

  return MEMORY[0x1EEE6DE18](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1884CAD38()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
    v10 = sub_1884CAE48;
  }

  else
  {
    sub_188442BE8();

    v10 = sub_1884CAEAC;
    v9 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CAE48()
{
  sub_1883F7120();
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[17];
  sub_1883F816C();

  return v4();
}

uint64_t sub_1884CAEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F653C();
  sub_1883FF2C4();
  if (!v13)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v13 && (v14 = v12[17], static Task<>.checkCancellation()(), v14))
  {
    v15 = v12[10];
    sub_18840506C();
    sub_1883FA18C();

    return v16();
  }

  else
  {
    v18 = v12[11];
    v19 = v12[12];
    v20 = sub_188405E54();
    v21 = sub_1883FC768(v20);
    sub_1884CDCF4(v21, v22, v23, v24, v25, v26, v27, v28, v45);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v29 = v12[10];
    v30 = sub_188400870();
    sub_1883F984C(v30);
    sub_1883F7468();
    sub_1884CCC70(v31, v32);
    v33 = *(MEMORY[0x1E69E8950] + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    v12[20] = v34;
    *v34 = v35;
    sub_1883FC650(v34);
    sub_1883FAECC();
    sub_1883FA170();
    sub_1883F614C();

    return MEMORY[0x1EEE6DE98](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CB038()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 168) = v0;

  sub_1883F5A54();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CB148()
{
  sub_1883F7120();
  v1 = *(v0 + 80);
  sub_18840506C();
  v2 = *(v0 + 168);
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884CB1A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 177) = a1;
  *(v4 + 80) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1884CB1F4, v3, 0);
}

uint64_t sub_1884CB1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  v14 = *(v12 + 72);
  v15 = *(v12 + 80);
  v16 = sub_188405E54();
  sub_1883F7468();
  v19 = sub_1884CCC70(v17, v18);
  v20 = sub_1884CDD68(v19);
  sub_188404C5C(v20, v16);
  sub_1883FF014();
  if (v15)
  {
    sub_1883F9E4C(*(v12 + 56));
    v80 = v21;
    v23 = *(v22 + 4);
    swift_task_alloc();
    sub_1883FF2B8();
    *(v12 + 96) = v24;
    *v24 = v25;
    sub_1883FF534(v24);
    sub_18840DEA4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v80, a10, a11, a12);
  }

  v35 = *(v12 + 72);
  if (*(v35 + 128) == 1)
  {
    sub_1883FAAC8();
    if (!v37)
    {
      v38 = *(v12 + 177);
      *(v35 + 120) = v36;
      v39 = swift_task_alloc();
      v40 = sub_1883F9A44(v39);
      sub_1883FF604(v40);
      sub_1883F7468();
      sub_1884CCC70(v41, v42);
      v43 = *(MEMORY[0x1E69E88F0] + 4);
      v44 = swift_task_alloc();
      v45 = sub_188404A84(v44);
      *v45 = v46;
      v45[1] = sub_1884CB690;
      sub_1883F960C();
      sub_18840DEA4();

      return MEMORY[0x1EEE6DE18](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    }

    __break(1u);
  }

  else
  {
    sub_1883F9064();
    sub_1883FDCD4();
    if (!v55)
    {
      sub_1884CDD48();
      if (v56)
      {
        static Task<>.checkCancellation()();
      }

      v58 = *(v12 + 80);
      v57 = *(v12 + 88);
      v59 = *(v12 + 72);
      v60 = sub_188405E54();
      v61 = sub_188404238(v60);
      sub_1883FDEB0(v61, v62);
      if (qword_1EA90C828 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  sub_1883F89B8();
LABEL_15:
  v63 = *(v12 + 72);
  v64 = sub_188400870();
  sub_1884022A8(v64);
  sub_1883F7468();
  sub_1884CCC70(v65, v66);
  v67 = *(MEMORY[0x1E69E8950] + 4);
  v68 = swift_task_alloc();
  sub_1883FF4C8(v68);
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  sub_1883FA6DC();
  *v13 = v69;
  sub_188404A28(v70);
  sub_1884CDD5C();
  sub_1883FA170();
  sub_1883FE22C();

  return MEMORY[0x1EEE6DE98](v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_1884CB558()
{
  sub_1883F78E0();
  sub_18840F6A8();
  sub_1883F7B78();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_18840FB28();
  v7 = *(v6 + 72);
  sub_1883F8004();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884CB66C()
{
  v1 = *(v0 + 104);
  sub_1883F816C();
  return v2();
}

uint64_t sub_1884CB690()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = sub_1884CAE48;
  }

  else
  {
    v12 = v3[14];
    v11 = v3[15];
    v13 = v3[9];

    v10 = sub_1884CB7A8;
    v9 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  if (*(*(v12 + 72) + 128) != 1)
  {
    __break(1u);
  }

  if (*(v12 + 177) == 1 && (v14 = *(v12 + 136), static Task<>.checkCancellation()(), v15 = *(v12 + 72), v14))
  {
    v16 = *(v12 + 72);
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v26 = *(v12 + 80);
    v27 = *(v12 + 88);
    v28 = sub_188405E54();
    v29 = sub_1883FC768(v28);
    sub_1883FDEB0(v29, v30);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v31 = *(v12 + 72);
    v32 = sub_188400870();
    sub_1884022A8(v32);
    sub_1883F7468();
    sub_1884CCC70(v33, v34);
    v35 = *(MEMORY[0x1E69E8950] + 4);
    v36 = swift_task_alloc();
    sub_1883FF4C8(v36);
    sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
    sub_1883FA6DC();
    *v13 = v37;
    sub_188404A28(v38);
    sub_1884CDD5C();
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CB948()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 168) = v0;

  sub_1883F950C();

  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CBA58()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  sub_18840506C();
  v2 = *(v0 + 168);
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884CBAB4()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
    v10 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v10 = sub_1884CBBC4;
    v9 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CBBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = v12[17], static Task<>.checkCancellation()(), v16 = v12[10], v15))
  {
    v17 = v12[10];
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = v12[11];
    v28 = v12[12];
    v29 = sub_188405E54();
    v30 = sub_1883FC768(v29);
    sub_1883FDEB0(v30, v31);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v32 = v12[10];
    v33 = sub_188400870();
    sub_1883F984C(v33);
    sub_1883F7468();
    sub_1884CCC70(v34, v35);
    v36 = *(MEMORY[0x1E69E8950] + 4);
    v37 = swift_task_alloc();
    sub_1883FF4C8(v37);
    sub_18844E6FC(&qword_1EA90E3F8, &qword_1886FB0D0);
    sub_1883FA6DC();
    *v13 = v38;
    sub_1883FDD90(v39);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CBD5C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
    v10 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v10 = sub_1884CBE6C;
    v9 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = v12[17], static Task<>.checkCancellation()(), v16 = v12[10], v15))
  {
    v17 = v12[10];
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = v12[11];
    v28 = v12[12];
    v29 = sub_188405E54();
    v30 = sub_1883FC768(v29);
    sub_1883FDEB0(v30, v31);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v32 = v12[10];
    v33 = sub_188400870();
    sub_1883F984C(v33);
    sub_1883F7468();
    sub_1884CCC70(v34, v35);
    v36 = *(MEMORY[0x1E69E8950] + 4);
    v37 = swift_task_alloc();
    sub_1883FF4C8(v37);
    sub_18844E6FC(&qword_1EA90E408, &qword_1886FB158);
    sub_1883FA6DC();
    *v13 = v38;
    sub_1883FDD90(v39);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CC004()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
    v10 = sub_1884CDC5C;
  }

  else
  {
    sub_188442BE8();

    v10 = sub_1884CC114;
    v9 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1884CC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_18840618C();
  sub_1883FC738();
  sub_1883FF2C4();
  if (!v14)
  {
    __break(1u);
  }

  sub_1884137AC();
  if (v14 && (v15 = v12[17], static Task<>.checkCancellation()(), v16 = v12[10], v15))
  {
    v17 = v12[10];
    sub_18840506C();
    sub_1883FA18C();
    sub_18840DEA4();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = v12[11];
    v28 = v12[12];
    v29 = sub_188405E54();
    v30 = sub_1883FC768(v29);
    sub_1883FDEB0(v30, v31);
    if (qword_1EA90C828 != -1)
    {
      sub_1883F89B8();
    }

    v32 = v12[10];
    v33 = sub_188400870();
    sub_1883F984C(v33);
    sub_1883F7468();
    sub_1884CCC70(v34, v35);
    v36 = *(MEMORY[0x1E69E8950] + 4);
    v37 = swift_task_alloc();
    sub_1883FF4C8(v37);
    sub_18844E6FC(&qword_1EA90E400, &qword_1886FB110);
    sub_1883FA6DC();
    *v13 = v38;
    sub_1883FDD90(v39);
    sub_1883FA170();
    sub_1883FE22C();

    return MEMORY[0x1EEE6DE98](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }
}

uint64_t sub_1884CC2AC(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1884CC39C;

  return v5(v1 + 16);
}

uint64_t sub_1884CC39C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CC4A0()
{
  sub_1883F816C();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_1884CC4C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188442BE4;

  return v7(a1);
}

uint64_t sub_1884CC5BC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 24) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CC6D0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1884CC7C0;

  return v5(v1 + 32);
}

uint64_t sub_1884CC7C0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *(v8 + 24) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CC8BC()
{
  sub_1883F816C();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t sub_1884CC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1884CC994;

  return sub_1884C8D70(a2, a3, v7, v8);
}

uint64_t sub_1884CC994()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  sub_188428FD0();

  return v11();
}

uint64_t sub_1884CCA84(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884CDC50;

  return sub_1884CC2AC(a2);
}

uint64_t sub_1884CCB24(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1884CDC50;

  return sub_1884C9380(a2, a3, v7, v8);
}

uint64_t sub_1884CCBD8()
{
  sub_1883F78E0();
  sub_1884056DC();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883FF1B4(v1);

  return sub_18840B9F8(v3, v4, v5, v6);
}

uint64_t sub_1884CCC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1884CCCB8()
{
  sub_1883F78E0();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_1884061E0;
  v3 = sub_1883FE6A0();

  return sub_1884C7A60(v3, v4, v5, v6);
}

uint64_t sub_1884CCD48()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  sub_188428FD0();

  return v11();
}

uint64_t sub_1884CCE3C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CCECC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884CCF6C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CCFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_1884C8FD0(a1, a2, a3, v8, v9);
}

uint64_t sub_1884CD0C0()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CD150()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_1884CD1E0(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_188442BE4;

  return sub_1884C9570(a1, a2, a3, v8, v9);
}

uint64_t sub_1884CD2A4()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CD334()
{
  v1 = type metadata accessor for UUID();
  sub_1883F8AE4(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1884C6FCC(v3, v4);
}

uint64_t sub_1884CD394()
{
  sub_1883FC738();
  sub_1883F8674();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = swift_task_alloc();
  v8 = sub_1883F7E38(v7);
  *v8 = v9;
  v8[1] = sub_188442BE4;
  sub_1883F97D4();
  sub_1883F9968();

  return sub_1884C73A8(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1884CD45C()
{
  sub_1883FB4AC();
  v1 = type metadata accessor for UUID();
  sub_1883F8AE4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_1883F7E38(v7);
  *v8 = v9;
  v8[1] = sub_188442BE4;
  v10 = sub_1883F97D4();

  return sub_1884C7188(v10, v11, v12, v6, v13);
}

uint64_t sub_1884CD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1884CCD48;

  return sub_1884C9100(a2, a3, a4);
}

uint64_t sub_1884CD5E8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1884CDC44;

  return sub_1884CC6D0(a2);
}

uint64_t sub_1884CD688(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1884CDC44;

  return sub_1884C9760(a2, a3, a4);
}

uint64_t sub_1884CD740()
{
  sub_1883F78E0();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883FE6A0();

  return sub_1884C5FEC(v3, v4, v5, v6);
}

uint64_t sub_1884CD7DC()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_1884C5358(v2, v3);
}

uint64_t sub_1884CD864()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1884CDC9C(v1);

  return sub_1884C5078(v2, v3);
}

uint64_t sub_1884CD8EC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F8674();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v4[1] = sub_188442BE4;
  sub_1883F97D4();
  sub_188404D5C();

  return sub_1884C5D88();
}

uint64_t sub_1884CD988()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CDA18()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  v3 = sub_1883F8BF0();

  return v4(v3);
}

uint64_t sub_1884CDAB8()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883FB548();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_1883F933C(v1);
  sub_188404D5C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1884CDB48(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1884CDB94()
{
  sub_1883FB4AC();
  sub_1883F8674();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 41);
  v4 = swift_task_alloc();
  v5 = sub_1883F7E38(v4);
  *v5 = v6;
  v5[1] = sub_188442BE4;
  v7 = sub_1883F97D4();

  return sub_1884C5F40(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1884CDC6C(uint64_t a1)
{
  *(a1 + 8) = sub_1884197E4;
  v2 = v1[16];
  result = v1[13];
  v4 = v1[14];
  return result;
}

uint64_t sub_1884CDCB0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 176);
  *(v1 + 120) = a1;

  return swift_task_alloc();
}

BOOL sub_1884CDCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_188404AE8(&a9, a1);
}

uint64_t sub_1884CDD10()
{

  return swift_allocObject();
}

uint64_t sub_1884CDD2C()
{

  return swift_weakInit();
}

uint64_t sub_1884CDD68(uint64_t a1)
{
  *(v1 + 88) = a1;

  return Identifiable<>.id.getter();
}

void sub_1884CDD88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1884CDDA8()
{
  v1 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v11 - v4;
  if (!*(v0 + 272))
  {
    v6 = type metadata accessor for TaskPriority();
    sub_1883F90F4(v5, 1, 1, v6);
    v7 = sub_18840F920();
    v8 = swift_allocObject();
    v8[2] = v0;
    v8[3] = v7;
    v8[4] = v0;
    swift_retain_n();
    sub_188453610();
    v9 = *(v0 + 272);
    *(v0 + 272) = v10;
  }

  return result;
}

uint64_t sub_1884CDEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884CDF70, a4, 0);
}

uint64_t sub_1884CDF70()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1884CE048;
  v3 = *(v0 + 40);

  return sub_18840F5B8();
}

uint64_t sub_1884CE048()
{
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  v9 = v2[2];
  if (v0)
  {
  }

  (*(v7 + 8))(v6, v8);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884CE1E4()
{
  sub_1883F7120();
  v1 = *(v0 + 16);
  v2 = *(v1 + 272);
  *(v1 + 272) = 0;

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1884CE280;
  v4 = *(v0 + 16);

  return sub_18840307C();
}

uint64_t sub_1884CE280()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 56);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  sub_1883F816C();

  return v6();
}

uint64_t sub_1884CE37C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 424);
  v3 = *(v1 + 280);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884CE474()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 280);
  v7 = *v0;
  sub_1883F7110();
  *v8 = v7;

  memcpy((v2 + 16), (v2 + 96), 0x50uLL);
  sub_1883FBF6C(v2 + 16);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1884CE584()
{
  sub_1883F7120();
  sub_1884D1648(*(v0 + 400), *(v0 + 408), *(v0 + 273));
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  sub_1883F89D8(v1);

  return sub_18840E178();
}

uint64_t sub_1884CE5FC()
{
  sub_1883F78E0();
  v1 = *v0;
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;
  v4 = *(v1 + 440);
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  *(v2 + 448) = v6;
  *v6 = v5;
  v6[1] = sub_1884CE734;
  v7 = *(v1 + 280);

  return sub_1884D1284(v7);
}

uint64_t sub_1884CE734()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 448);
  v5 = *(v3 + 280);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;
  *(v9 + 274) = v8;

  v10 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884CE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v17 = *(v14 + 274);
  v18 = *(v14 + 304);
  v19 = *(v14 + 273) != 255;
  v20 = sub_18850BCF0();
  *(v14 + 456) = v20;
  *(v14 + 464) = v21;
  if (!v20)
  {
    goto LABEL_12;
  }

  sub_188404FB8();
  *(v14 + 472) = v22;
  if ([v23 accountStatus] == 1)
  {
    if (!v18)
    {

      goto LABEL_12;
    }

    if ((v17 | v19))
    {
      v24 = *(v14 + 296);
      v25 = *(v14 + 280);

      v26 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1883FF744();
      if (sub_1883F9084())
      {
        sub_1883FF1D0();
        v27 = swift_slowAlloc();
        sub_1883F9860();
        swift_slowAlloc();
        sub_1883FF2D4();
        *v27 = 136315138;
        v28 = sub_1883FE43C();
        sub_1883FC788(v28, v29, v30);
        sub_1883FE2FC();
        *(v27 + 4) = v15;
        sub_1883F7A44(&dword_1883EA000, v31, v32, "%s scheduling sync after account change or update");
        sub_1883F8EAC();
        v33 = sub_1884055A0();
        MEMORY[0x18CFD7E80](v33);
      }

      v34 = *(v14 + 288);
      v35 = type metadata accessor for Date();
      sub_1883F90F4(v34, 1, 1, v35);
      v36 = swift_task_alloc();
      *(v14 + 480) = v36;
      *v36 = v14;
      v36[1] = sub_1884CEAB0;
      v38 = *(v14 + 280);
      v37 = *(v14 + 288);
      sub_1883F7E58();

      return sub_18840EDE4();
    }
  }

LABEL_12:
  sub_1883FC7A0(__sTestOverridesAvailable);
  if (v41)
  {
    v42 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC0 != -1)
    {
      sub_1883F7D14();
    }

    sub_1883FDC6C();
    v43 = *(v14 + 273);
    [v42 postNotificationName:qword_1EA919C88 object:?];

    sub_1884D1780();
    v44 = sub_1883F7E8C();
    sub_1884D1648(v44, v45, v43);
    sub_1883FE944((v14 + 176));
  }

  else
  {
    sub_1883F9A68();
    sub_1884D1648(v12, v18, v16);
  }

  v46 = *(v14 + 288);

  sub_1883F816C();
  sub_1883F7E58();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1884CEAB0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1[60];
  v3 = v1[36];
  v4 = v1[35];
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;

  sub_188442B84(v3, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1884022BC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884CEBD8()
{
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);

  sub_1883FC7A0(__sTestOverridesAvailable);
  if (v5)
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC0 != -1)
    {
      sub_1883F7D14();
    }

    sub_1883FDC6C();
    v7 = *(v0 + 273);
    [v6 postNotificationName:qword_1EA919C88 object:?];

    sub_1884D1780();
    v8 = sub_1883F7E8C();
    sub_1884D1648(v8, v9, v7);
    sub_1883FE944((v0 + 176));
  }

  else
  {
    sub_1883F9A68();
    sub_1884D1648(v4, v3, v1);
  }

  v10 = *(v0 + 288);

  sub_1883F816C();

  return v11();
}

uint64_t sub_1884CED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v13 = *(v12 + 392);
  v14 = *(v12 + 336);
  v16 = *(v12 + 320);
  v15 = *(v12 + 328);
  v17 = *(v12 + 312);
  v18 = *(v12 + 296);
  v19 = *(v12 + 280);

  sub_1884D11E8(v17, v16, v15, v14);

  v20 = v13;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v12 + 392);
  if (v23)
  {
    v25 = *(v12 + 280);
    v26 = swift_slowAlloc();
    sub_1884038C8();
    v27 = swift_slowAlloc();
    sub_1883F9860();
    a10 = swift_slowAlloc();
    *v26 = 136315394;
    v28 = sub_1883FE43C();
    v31 = sub_1883FC788(v28, v29, v30);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2112;
    v32 = v24;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v33;
    *v27 = v33;
    _os_log_impl(&dword_1883EA000, v21, v22, "%s error updating account info: %@", v26, 0x16u);
    sub_188442B84(v27, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    v34 = sub_1884055A0();
    MEMORY[0x18CFD7E80](v34);
  }

  else
  {
  }

  sub_1883FE944((v12 + 176));
  v35 = *(v12 + 288);

  sub_1883F816C();
  sub_1883F7E58();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_1884CEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  return sub_1883F8EA4(sub_1884CEEF8, 0);
}

uint64_t sub_1884CEEF8()
{
  sub_1883F7120();
  v1 = *sub_188400B68(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  sub_188410EE8(v2);

  return sub_1884D0AC0();
}

uint64_t sub_1884CEF8C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;

  if (v0)
  {
    sub_1883F816C();

    return v7();
  }

  else
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1884CF0AC()
{
  sub_1883F7120();
  v1 = *sub_188400B68(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  sub_188410EE8(v2);

  return sub_1884D0E58();
}

uint64_t sub_1884CF140()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F78D4();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1884CF250()
{
  v1 = *(v0 + 120);
  v52 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = sub_188505EAC(v2);
  v6 = v5;
  v7 = *(v0 + 96);
  v51 = v3;
  if (v5)
  {
    v8 = v4;
  }

  else
  {

    v7 = 0;
    v8 = 0;
    v1 = 0;
  }

  v9 = *(v0 + 72);
  v50 = *(v0 + 64);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  type metadata accessor for SyncEngine();
  v13 = sub_1883F9360();
  sub_1884D123C(v13, v14, v15, v16);
  v17 = sub_1884CF8E8(v12, v11, v10, v50, v7, v8, v6, v1, v9);
  v20 = *(v0 + 96);
  if (v52)
  {
    v21 = sub_1883F9360();
    sub_1884D11E8(v21, v22, v23, v24);

    v25 = sub_1883F9360();
    sub_1884D11E8(v25, v26, v27, v28);
    sub_1883F816C();
    sub_1883FF618();

    __asm { BRAA            X1, X16 }
  }

  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = sub_1883F9360();
  sub_1884D11E8(v34, v35, v36, v37);

  v38 = v33;
  switch(v33)
  {
    case 1u:
      v39 = sub_1883F9360();
      sub_1884D11E8(v39, v40, v41, v42);
      v38 = 0;
      v33 = 1;
      break;
    case 2u:
      v43 = v31;
      v44 = v32;
      v33 = 2;
      sub_18844CAB0(v31, v32, 2u);
      v38 = v32;
      break;
    case 3u:
      v31 = 0;
      v33 = -1;
      if (!v7 || v1)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(v0 + 40);
        if (v38)
        {
          v45 = *(v0 + 64);
          v31 = 0;
          v38 = 0;
        }

        else
        {
          v31 = 0;
        }

        v33 = -1;
      }

      break;
    default:
      break;
  }

  v46 = *(v0 + 24);
  *v46 = v31;
  *(v46 + 8) = v38;
  *(v46 + 16) = v33;
  v47 = *(v0 + 8);
  sub_1883F9360();
  sub_1883FF618();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1884CF490()
{
  v56 = v0;
  if (__sTestOverridesAvailable[0])
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBC8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EA919C90;
    *(v0 + 16) = *(v0 + 80);
    sub_18844E6FC(&qword_1EA90E478, &qword_1886FB308);
    [v1 postNotificationName:v2 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v3 = *(v0 + 112);
  v4 = type metadata accessor for Logger();
  sub_1883FDE5C(v4, qword_1EA90C9F8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  if (v8)
  {
    v10 = *(v0 + 80);
    v11 = swift_slowAlloc();
    sub_1884038C8();
    v12 = swift_slowAlloc();
    sub_1883F9860();
    swift_slowAlloc();
    sub_1883FF2D4();
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_1883FE340(v13, v14, &v55);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&dword_1883EA000, v6, v7, "%s error updating userRecordID: %@", v11, 0x16u);
    sub_188442B84(v12, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883F8EAC();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  else
  {
  }

  v18 = sub_188505EAC(*(v0 + 96));
  v20 = v19;
  v21 = *(v0 + 96);
  if (v19)
  {
    v22 = v18;
  }

  else
  {

    v21 = 0;
    v22 = 0;
  }

  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);
  v27 = *(v0 + 40);
  type metadata accessor for SyncEngine();
  v28 = sub_1883FA19C();
  sub_1884D123C(v28, v29, v30, v31);
  v32 = sub_1884CF8E8(v27, v26, v25, v23, v21, v22, v20, 0, v24);
  v33 = *(v0 + 96);
  v34 = v32;
  v36 = v35;
  v38 = v37;
  v39 = sub_1883FA19C();
  sub_1884D11E8(v39, v40, v41, v42);

  v43 = v38;
  v44 = v38;
  switch(v38)
  {
    case 1u:
      v45 = sub_1883FA19C();
      sub_1884D11E8(v45, v46, v47, v48);
      v20 = 0;
      v22 = 0;
      v21 = 0;
      v43 = 0;
      v44 = 0;
      v38 = 1;
      goto LABEL_23;
    case 2u:
      v49 = v34;
      v50 = v36;
      v38 = 2;
      sub_18844CAB0(v34, v36, 2u);
      v43 = 0;
      v44 = v36;
      goto LABEL_23;
    case 3u:
      if (!v21)
      {
        v43 = 0;
        goto LABEL_20;
      }

      v44 = *(v0 + 40);
      if (v44)
      {
        v43 = *(v0 + 64);
        v51 = v43;
LABEL_20:
        v34 = 0;
        v44 = 0;
        goto LABEL_22;
      }

      v43 = 0;
      v34 = 0;
LABEL_22:
      v38 = -1;
LABEL_23:
      v52 = *(v0 + 24);
      *v52 = v34;
      *(v52 + 8) = v44;
      *(v52 + 16) = v38;
      v53 = *(v0 + 8);

      return v53(v21, v22, v20, v43);
    default:
      goto LABEL_23;
  }
}

void *sub_1884CF8E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  if (!a1)
  {
    if (a5)
    {
      if (!a8)
      {
        v16 = a5;

        v37 = 0xD000000000000050;
        v38 = 0x80000001887020A0;
        goto LABEL_19;
      }

      if (a9)
      {
        sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
        sub_1883FE060();
        v19 = a8;
        v20 = a8;
        v21 = a9;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

          return 0;
        }
      }

      else
      {
        sub_1883FE060();
        v19 = a8;
        v39 = a8;
      }

      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1883FDE5C(v40, qword_1EA90C9F8);
      v9 = v19;
      v41 = v19;
      v42 = a5;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        sub_1883F9860();
        v45 = swift_slowAlloc();
        sub_1884038C8();
        v58 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v45 = 136315650;
        v46 = _typeName(_:qualified:)();
        v47 = v9;
        v48 = v42;
        v50 = sub_1883FE340(v46, v49, &v63);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = CKStringFromAccountStatus([v42 accountStatus]);
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = sub_1883FE340(v52, v54, &v63);

        *(v45 + 14) = v55;
        *(v45 + 22) = 2112;
        *(v45 + 24) = v41;
        v9 = v47;
        *v58 = v47;
        v56 = v41;
        _os_log_impl(&dword_1883EA000, v43, v44, "%s Account signed in with status: %s, and userRecordID: %@", v45, 0x20u);
        sub_188442B84(v58, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        swift_arrayDestroy();
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
      }

      else
      {
      }

      return v9;
    }

    return 0;
  }

  v9 = a4;
  if (!a5)
  {
    if (a4)
    {
      sub_1884D123C(a1, a2, a3, a4);
      v23 = qword_1EA90C9F0;
      v24 = v9;
      if (v23 != -1)
      {
        sub_1883F74A0();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1883FDE5C(v25, qword_1EA90C9F8);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        sub_1884038C8();
        v30 = swift_slowAlloc();
        sub_1883F9860();
        v59 = swift_slowAlloc();
        v63 = v59;
        *v29 = 136315394;
        v31 = _typeName(_:qualified:)();
        v32 = v27;
        v34 = sub_1883FE340(v31, v33, &v63);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v26;
        *v30 = v9;
        v35 = v26;
        _os_log_impl(&dword_1883EA000, v32, v28, "%s Account signed out, with previous userRecordID: %@", v29, 0x16u);
        sub_188442B84(v30, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        sub_1883FE944(v59);
        sub_1883FECE8();
        MEMORY[0x18CFD7E80]();
        v36 = sub_1884055A0();
        MEMORY[0x18CFD7E80](v36);
      }

      else
      {
      }

      return v9;
    }

    v16 = a1;

    v38 = 0x8000000188702100;
    v37 = 0xD00000000000004ELL;
LABEL_19:
    related decl 'e' for CKErrorCode.init(_:description:)(1, v37, v38);
    swift_willThrow();

    goto LABEL_20;
  }

  type metadata accessor for SyncEngine();
  sub_1884D123C(a1, a2, a3, v9);
  sub_1884D123C(a5, a6, a7, a8);
  v16 = v9;
  v17 = v9;
  v9 = a8;
  v18 = v61;
  v62 = sub_1884CFEFC(a1, a2, a3, v17, a5, a6, a7, a8);

  if (v18)
  {

LABEL_20:
    return v9;
  }

  return v62;
}

void *sub_1884CFEFC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_188505EAC(a1);
  v15 = v14;
  v16 = sub_188505EAC(a5);
  if (!v15)
  {
    if (!v17)
    {
      return 0;
    }

LABEL_13:

    if (a4)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  if (v13 == v16 && v15 == v17)
  {

    return 0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    return 0;
  }

  if (a4)
  {
LABEL_9:
    if (a8)
    {
      sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
      v20 = a8;
      v21 = a4;
      if (static NSObject.== infix(_:_:)())
      {

        return 0;
      }

      v69[3] = v8;
      _StringGuts.grow(_:)(28);

      v43 = CKStringFromAccountStatus([a1 accountStatus]);
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      MEMORY[0x18CFD5140](v44, v46);

      MEMORY[0x18CFD5140](0xD000000000000010, 0x8000000188702150);
      v47 = [v21 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      MEMORY[0x18CFD5140](v48, v50);

      _StringGuts.grow(_:)(28);

      v69[0] = 0x203A737574617473;
      v69[1] = 0xE800000000000000;
      v51 = CKStringFromAccountStatus([a5 accountStatus]);
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      MEMORY[0x18CFD5140](v52, v54);

      MEMORY[0x18CFD5140](0xD000000000000010, 0x8000000188702150);
      v55 = [v20 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      MEMORY[0x18CFD5140](v56, v58);

      if (qword_1EA90C9F0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1883FDE5C(v59, qword_1EA90C9F8);

      v36 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v60))
      {
        v61 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v69[0] = v67;
        *v61 = 136315650;
        v62 = _typeName(_:qualified:)();
        v68 = v60;
        v64 = sub_1883FE340(v62, v63, v69);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2080;
        v65 = sub_1883FE340(0x203A737574617473, 0xE800000000000000, v69);

        *(v61 + 14) = v65;
        *(v61 + 22) = 2080;
        v66 = sub_1883FE340(0x203A737574617473, 0xE800000000000000, v69);

        *(v61 + 24) = v66;
        _os_log_impl(&dword_1883EA000, v36, v68, "%s Account switched from previous: %s to current: %s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x18CFD7E80](v67, -1, -1);
        MEMORY[0x18CFD7E80](v61, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v33 = qword_1EA90C9F0;
      v34 = a4;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1883FDE5C(v35, qword_1EA90C9F8);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v69[0] = v39;
        *v38 = 136315138;
        v40 = _typeName(_:qualified:)();
        v42 = sub_1883FE340(v40, v41, v69);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_1883EA000, v36, v37, "%s Insufficient info to determine account switch. Posting a SignOut event as a fallback", v38, 0xCu);
        sub_1883FE944(v39);
        MEMORY[0x18CFD7E80](v39, -1, -1);
        MEMORY[0x18CFD7E80](v38, -1, -1);
      }
    }

    return a4;
  }

LABEL_14:
  if (a8)
  {
    v22 = qword_1EA90C9F0;
    v23 = a8;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1883FDE5C(v24, qword_1EA90C9F8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69[0] = v28;
      *v27 = 136315138;
      v29 = _typeName(_:qualified:)();
      v31 = sub_1883FE340(v29, v30, v69);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1883EA000, v25, v26, "%s Insufficient info to determine account switch. Posting a SignIn event as a fallback", v27, 0xCu);
      sub_1883FE944(v28);
      MEMORY[0x18CFD7E80](v28, -1, -1);
      MEMORY[0x18CFD7E80](v27, -1, -1);
    }

    return a8;
  }

  else
  {
    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000039, 0x8000000188702170);
    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1884D0684()
{
  v3 = *(v1[2] + 128);
  v1[3] = v3;
  if (sub_18850BCF0())
  {
    sub_188404FB8();
    v5 = [v4 accountStatus];

    if (v5 == 1)
    {
      if (v3)
      {

        sub_1883F816C();

        return v6();
      }
    }

    else
    {
    }
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v8 = v1[2];
  v9 = type metadata accessor for Logger();
  sub_1883FDE5C(v9, qword_1EA90C9F8);

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    v11 = v1[2];
    sub_1884147B0();
    v12 = swift_slowAlloc();
    sub_1883F9860();
    swift_slowAlloc();
    sub_1883FF2D4();
    *v12 = 136315138;
    v13 = sub_1883FE43C();
    sub_1883FC788(v13, v14, v15);
    sub_1883FE2FC();
    *(v12 + 4) = v2;
    sub_1883F7A44(&dword_1883EA000, v16, v17, "%s will fetch the latest account status because our cached account is not ready to sync");
    sub_1883F8EAC();
    v18 = sub_1884055A0();
    MEMORY[0x18CFD7E80](v18);
  }

  v19 = swift_task_alloc();
  v1[4] = v19;
  *v19 = v1;
  v19[1] = sub_1884D086C;
  v20 = v1[2];

  return sub_18840307C();
}

uint64_t sub_1884D086C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D0964()
{
  v2 = *(v1 + 24);
  if (sub_18850BCF0())
  {
    sub_188404FB8();
    v4 = [v3 accountStatus];

    if (v4 == 1)
    {
      if (v2)
      {

        sub_1883F816C();
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v6 = *(v1 + 24);
  v7 = sub_18850BCF0();
  v11 = v7;
  if (v7)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v7;
    sub_1884D11E8(v11, v12, v13, v14);
    v11 = [v15 accountStatus];
  }

  if (![objc_opt_self() errorForAccountStatus_])
  {
    related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000044, 0x8000000188702050);
  }

  swift_willThrow();
  sub_1883F816C();
LABEL_11:

  return v5();
}

uint64_t sub_1884D0AC0()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90E488, &unk_1886FB320);
  sub_1883FDBE0(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D0B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v21 = v20;
  v22 = v20;
  v23 = v20 + 10;
  v24 = v20 + 18;
  v26 = v20[21];
  v25 = v20[22];
  v27 = v20[20];
  v34 = *(v21[19] + 16);
  v21[2] = v22;
  v21[7] = v24;
  v21[3] = sub_1884D0CF4;
  swift_continuation_init();
  v21[17] = v27;
  v28 = sub_188403664(v21 + 14);
  sub_1883F4C5C(0, &unk_1EA90C790, off_1E70B9FA0);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1884056EC();
  v29 = sub_18840AE90();
  v30(v29);
  sub_1883F83B4();
  v21[11] = 1107296256;
  v21[12] = sub_18840EED8;
  v21[13] = &unk_1EFA2BFA0;
  [v34 accountInfoWithCompletionHandler_];
  (*(v26 + 8))(v28, v27);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_1884D0CF4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D0DF4()
{
  sub_1883F7120();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  sub_1883F7910();

  return v3(v2);
}

uint64_t sub_1884D0E58()
{
  sub_1883F7120();
  v1[19] = v0;
  v2 = sub_18844E6FC(&qword_1EA90E480, &unk_1886FB310);
  sub_1883FDBE0(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884D0F10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v21 = v20;
  v22 = v20;
  v23 = v20 + 10;
  v24 = v20 + 18;
  v26 = v20[21];
  v25 = v20[22];
  v27 = v20[20];
  v34 = *(v21[19] + 16);
  v21[2] = v22;
  v21[7] = v24;
  v21[3] = sub_1884D108C;
  swift_continuation_init();
  v21[17] = v27;
  v28 = sub_188403664(v21 + 14);
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1884056EC();
  v29 = sub_18840AE90();
  v30(v29);
  sub_1883F83B4();
  v21[11] = 1107296256;
  v21[12] = sub_18840ABB0;
  v21[13] = &unk_1EFA2BF78;
  [v34 fetchUserRecordIDWithCompletionHandler_];
  (*(v26 + 8))(v28, v27);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v31);
}

uint64_t sub_1884D108C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884D118C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1884D11E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1884D123C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;
  }

  return result;
}

uint64_t sub_1884D12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883FD7A0();
  a19 = v22;
  a20 = v23;
  sub_1883FC738();
  a18 = v20;
  v24 = *(*(v20 + 16) + 128);
  v25 = sub_18850BCF0();
  if (!v25)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v35 = *(v20 + 16);
    v36 = type metadata accessor for Logger();
    sub_1883FDE5C(v36, qword_1EA90C9F8);

    v34 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      v37 = *(v20 + 16);
      sub_1884147B0();
      v38 = swift_slowAlloc();
      sub_1883F9860();
      a9 = swift_slowAlloc();
      *v38 = 136315138;
      v39 = sub_1883FE43C();
      sub_1883FE340(v39, v40, &a9);
      sub_1883FE2FC();
      *(v38 + 4) = v21;
      sub_1883F7A44(&dword_1883EA000, v41, v42, "%s Unable to fetch latest accountInfo to check readiness.");
      sub_1883F8EAC();
      v43 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v43);
    }

    goto LABEL_9;
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = *(v20 + 16);
  v34 = v25;
  sub_1884D11E8(v29, v30, v31, v32);
  if ((*(v33 + 280) & 1) != 0 && ([v34 deviceToDeviceEncryptionAvailability] & 2) != 0)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F74A0();
      swift_once();
    }

    v44 = *(v20 + 16);
    v45 = type metadata accessor for Logger();
    sub_1883FDE5C(v45, qword_1EA90C9F8);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v20 + 16);
      sub_1884147B0();
      v49 = swift_slowAlloc();
      sub_1883F9860();
      a9 = swift_slowAlloc();
      *v49 = 136315138;
      v50 = sub_1883FE43C();
      v52 = sub_1883FE340(v50, v51, &a9);

      *(v49 + 4) = v52;
      sub_1883F8468(&dword_1883EA000, v53, v54, "%s we were waiting for device to device encryption, and our patience was rewarded. Now we have it! Let's schedule a sync.");
      sub_1884101E8();
      sub_1883FECE8();
      MEMORY[0x18CFD7E80]();
      sub_1883FECE8();
      MEMORY[0x18CFD7E80]();
    }

    *(v33 + 280) = 0;
  }

  v55 = *(v20 + 16);
  if (*(v55 + 281) != 1 || ([v34 needsToVerifyTerms] & 1) != 0)
  {
LABEL_9:

    goto LABEL_23;
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v56 = *(v20 + 16);
  v57 = type metadata accessor for Logger();
  sub_1883FDE5C(v57, qword_1EA90C9F8);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v20 + 16);
    sub_1884147B0();
    v61 = swift_slowAlloc();
    sub_1883F9860();
    a9 = swift_slowAlloc();
    *v61 = 136315138;
    v62 = sub_1883FE43C();
    v64 = sub_1883FE340(v62, v63, &a9);

    *(v61 + 4) = v64;
    sub_1883F8468(&dword_1883EA000, v65, v66, "%s terms have been verified. Scheduling sync.");
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  *(v55 + 281) = 0;
LABEL_23:
  sub_1883F7910();
  sub_1883F9968();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
}

void sub_1884D1648(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_18844CAB0(a1, a2, a3);
  }
}

id sub_1884D165C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1884D1670(result, a2, a3);
  }

  return result;
}

id sub_1884D1670(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_1884D16BC()
{
  sub_1883F78E0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1883FDA74(v6);
  *v7 = v8;
  v7[1] = sub_1884061E0;

  return sub_1884CDEAC(v2, v3, v4, v5);
}

void sub_1884D1780()
{

  sub_1884D11E8(v3, v2, v1, v0);
}

uint64_t sub_1884D17A0()
{
  sub_1883F7120();
  v5 = *MEMORY[0x1E69E9840];
  *(v1 + 64) = v0;
  *(v1 + 72) = *v2;
  *(v1 + 88) = *(v2 + 16);
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884D183C, 0, 0);
}

uint64_t sub_1884D183C()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 56) = 0;
  *(v0 + 48) = 0;
  v4 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v5 = _os_activity_create(&dword_1883EA000, "engine/fetch-asset", v4, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 96) = v5;
  os_activity_scope_enter(v5, (v0 + 48));
  *(v0 + 16) = 1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1884D197C;
  v10 = *(v0 + 64);
  v11 = *MEMORY[0x1E69E9840];

  return sub_1884D1C14(v0 + 16);
}

uint64_t sub_1884D197C()
{
  sub_1883F78E0();
  v3 = v2;
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  sub_1883F7B78();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v1;
  sub_1883F7110();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (v0)
  {
    v10 = sub_1884D1B68;
  }

  else
  {
    *(v4 + 120) = v3;
    v10 = sub_1884D1AB8;
  }

  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1884D1AB8()
{
  sub_1883F78E0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  os_activity_scope_leave((v0 + 48));
  swift_unknownObjectRelease();
  sub_1883F7910();
  v5 = *(v0 + 120);
  v6 = *MEMORY[0x1E69E9840];

  return v4(v5);
}

uint64_t sub_1884D1B68()
{
  sub_1883F78E0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  os_activity_scope_leave((v0 + 48));
  swift_unknownObjectRelease();
  sub_1883F816C();
  v5 = *(v0 + 112);
  v6 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1884D1C14(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 56) = *(a1 + 8);
  *(v2 + 72) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1884D1C4C, v1, 0);
}

uint64_t sub_1884D1C4C()
{
  sub_1883F7120();
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 96);
  v2 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 56);
  *(v0 + 40) = v1;

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1884D1D1C;
  v4 = *(v0 + 48);

  return sub_1884C689C();
}

uint64_t sub_1884D1D1C()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (v0)
  {
    v11 = *(v5 + 48);

    return MEMORY[0x1EEE6DFA0](sub_1884D1E5C, v11, 0);
  }

  else
  {
    v12 = *(v5 + 48);

    v13 = *(v9 + 8);

    return v13(v3);
  }
}

uint64_t sub_1884D1E5C()
{
  sub_1883F7120();
  v1 = *(v0 + 48);

  sub_1883F816C();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1884D1EB8(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = v2;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_1884D1F68;

  return sub_1884D2090();
}