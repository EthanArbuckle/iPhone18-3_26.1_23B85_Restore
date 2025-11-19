uint64_t CKDatabase.recordZones(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884673CC()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1884674C4;
  v5 = v0[3];
  v6 = sub_1883FF484(v0[2]);

  return sub_1884675F4(v6, v7, v3);
}

uint64_t sub_1884674C4()
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
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_1884675F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846760C()
{
  sub_1883F78E0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v4 = sub_1884041F4(v3);
  sub_18846D2FC(v4);
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_18844E6FC(&qword_1EA90D550, &qword_1886F7F70);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_1884676F8;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1884676F8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void CKDatabase.modifyRecordZones(saving:deleting:completionHandler:)()
{
  sub_188404A04();
  sub_1883FDE94();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FDD44();
  sub_1884678B4();

  sub_1883FE1B8();
}

uint64_t sub_1884678B4()
{
  sub_1883F8AF0();
  sub_1884055FC();
  v1 = v0;
  v3 = v2;
  sub_1883F4C5C(0, &qword_1EA90C5E8, off_1E70BA418);

  v18.is_nil = v3;
  CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v4, v18, v19);
  v6 = v5;
  [v5 setMarkZonesAsUserPurged_];
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v7 = swift_allocObject();
  sub_1883FA6A8(v7);
  v8 = sub_1883F8FF0();
  CKModifyRecordZonesOperation.perRecordZoneSaveBlock.setter(v8, v9);

  v10 = sub_188405278();
  CKModifyRecordZonesOperation.perRecordZoneDeleteBlock.setter(v10, v11);
  sub_188405D30();
  v12 = swift_allocObject();
  sub_1883FB4C4(v12);

  v13 = sub_1883F7AB8();
  CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter(v13, v14);
  sub_1883FEC38(v15, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifyRecordZones(saving:deleting:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188467A28()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467B14;
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = sub_1884007BC();

  return sub_188467C40(v8, v9, 0, v10, v0);
}

uint64_t sub_188467B14()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = sub_1883F917C();

    return v14(v13);
  }
}

uint64_t sub_188467C40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 96) = a3;
  *(v6 + 32) = a1;
  return sub_1883F7178();
}

uint64_t sub_188467C60()
{
  sub_1883FB4AC();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 96);
  v5 = swift_task_alloc();
  v6 = sub_188404A1C(v5);
  sub_18846D2E0(v6);
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  sub_18844E6FC(&qword_1EA90D540, &qword_1886F7F60);
  sub_1883FE558();
  *v9 = v10;
  v9[1] = sub_188467D60;
  sub_1883F9BB4();
  sub_1883F7E74();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188467D60()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_188467E60()
{
  sub_1883F7120();
  v1 = *(v0 + 72);

  sub_1883F816C();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t CKDatabase.modifyRecordZones(saving:deleting:markZonesAsUserPurged:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_188467ED8()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467FC4;
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 72);
  v9 = sub_1884007BC();

  return sub_188467C40(v9, v10, v11, v12, v0);
}

uint64_t sub_188467FC4()
{
  sub_1883F78E0();
  sub_1883F8D90();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = sub_1883F917C();

    return v14(v13);
  }
}

void sub_188468108()
{
  sub_188404A04();
  sub_1883FDE94();
  v4 = v3;
  v6 = v5;
  v7 = [v1 implementation];
  v8 = [v1 container];
  v11 = [v8 convenienceConfiguration];

  v0(v6, v1, v11, v4, v2);
  sub_1883FE1B8();
}

uint64_t sub_1884681CC()
{
  sub_1884057B8();
  sub_1883F4C5C(0, &qword_1EA90D538, off_1E70BA340);

  CKFetchSubscriptionsOperation.init(subscriptionIDs:)(v1, v0);
  v3 = v2;
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];

  v4 = sub_1883F8FF0();
  CKFetchSubscriptionsOperation.perSubscriptionResultBlock.setter(v4, v5);
  sub_1883F7E80();
  v6 = swift_allocObject();
  sub_1883F8B14(v6);

  v7 = sub_188405278();
  v9 = CKFetchSubscriptionsOperation.fetchSubscriptionsResultBlock.setter(v7, v8);
  sub_1883FEC38(v9, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);
}

uint64_t CKDatabase.subscriptions(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884682DC()
{
  sub_1883F78E0();
  v1 = v0[3];
  v0[4] = [v1 implementation];
  v2 = [v1 container];
  v3 = [v2 convenienceConfiguration];
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1884683D4;
  v5 = v0[3];
  v6 = sub_1883FF484(v0[2]);

  return sub_188468504(v6, v7, v3);
}

uint64_t sub_1884683D4()
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
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = sub_1883FA044();

    return v14(v13);
  }
}

uint64_t sub_188468504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846851C()
{
  sub_1883F78E0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v4 = sub_1884041F4(v3);
  sub_18846D2FC(v4);
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  sub_18844E6FC(&qword_1EA90D528, &qword_1886F7F50);
  sub_1883FE558();
  *v6 = v7;
  v6[1] = sub_18845D7E4;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

void sub_188468620()
{
  sub_188404A04();
  sub_1883FDEF0();
  v2 = [v1 implementation];
  v3 = [v1 container];
  [v3 convenienceConfiguration];

  v4 = sub_1883FD9C4();
  v0(v4);

  sub_1883FE1B8();
}

uint64_t sub_1884686DC()
{
  sub_1883F8AF0();
  sub_1883FEFBC();
  v1 = v0;
  sub_1883F4C5C(0, &qword_1EA90C338, off_1E70BA438);

  v16.is_nil = v1;
  CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v2, v16, v17);
  v4 = v3;
  sub_1883F7B88();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v5 = swift_allocObject();
  sub_1883FA6A8(v5);
  v6 = sub_1883F8FF0();
  CKModifySubscriptionsOperation.perSubscriptionSaveBlock.setter(v6, v7);

  v8 = sub_188405278();
  CKModifySubscriptionsOperation.perSubscriptionDeleteBlock.setter(v8, v9);
  sub_188405D30();
  v10 = swift_allocObject();
  sub_1883FB4C4(v10);

  v11 = sub_1883F7AB8();
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter(v11, v12);
  sub_1883FEC38(v13, sel__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_);

  sub_1883F8178();
}

uint64_t CKDatabase.modifySubscriptions(saving:deleting:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_18846883C()
{
  sub_1883F78E0();
  v2 = *(v1 + 32);
  sub_1883F856C([v2 implementation]);
  sub_18840C12C([objc_msgSend(v2 container)]);
  v3 = swift_task_alloc();
  v4 = sub_1884101CC(v3);
  *v4 = v5;
  v4[1] = sub_188467B14;
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = sub_1884007BC();

  return sub_188468924(v8, v9, v10, v0);
}

uint64_t sub_188468924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return sub_1883F7178();
}

uint64_t sub_188468940()
{
  sub_1883FB4AC();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_188404A1C(v4);
  sub_18846D2E0(v5);
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  sub_18844E6FC(&qword_1EA90D518, &qword_1886F7F40);
  sub_1883FE558();
  *v8 = v9;
  v8[1] = sub_188468A3C;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188468A3C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void CKDatabase.DatabaseChange.Modification.zoneID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.DatabaseChange.Modification.zoneID.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

uint64_t sub_188468BBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  result = CKDatabase.DatabaseChange.Deletion.zoneID.getter(a1, a2);
  *a3 = result;
  return result;
}

void CKDatabase.DatabaseChange.Deletion.zoneID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.DatabaseChange.Deletion.zoneID.modify()
{
  sub_1883FE298();
  v1[1] = v0;
  v1[2] = v2;
  *v1 = v2;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_188468CAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  CKDatabase.DatabaseChange.Deletion.reason.getter(&v4);
  *a2 = v4;
}

_BYTE *(*CKDatabase.DatabaseChange.Deletion.reason.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_188468D68;
}

Swift::Int CKDatabase.DatabaseChange.Deletion.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  MEMORY[0x18CFD5EB0](v1);
  return Hasher._finalize()();
}

uint64_t CKDatabase.DatabaseChange.Deletion.init(zoneID:reason:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

void CKDatabase.fetchDatabaseChanges(since:resultsLimit:completionHandler:)()
{
  sub_188404A04();
  sub_1883F999C();
  v1 = [v0 implementation];
  v2 = [v0 container];
  [v2 convenienceConfiguration];

  sub_1883FD9C4();
  sub_1883FDD44();
  sub_1884284C0(v3, v4, v5, v6, v7);

  sub_1883FE1B8();
}

uint64_t sub_188468ED8()
{
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v13 = *(v3 + 40);

    sub_1883FDC40();
    sub_1883FB5FC();

    __asm { BRAA            X5, X16 }
  }

  sub_1883F7FD8();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188469018()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  sub_1883F816C();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_18846907C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1884691A0()
{
  sub_1883F7120();
  v1 = *(v0 + 88);

  sub_1883F816C();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t CKDatabase.RecordZoneChange.Modification.record.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

uint64_t sub_188469248@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  result = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
  *a2 = result;
  return result;
}

void CKDatabase.RecordZoneChange.Deletion.recordID.setter()
{
  sub_1883FE298();

  *v1 = v0;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordID.modify()
{
  sub_1883FE298();
  v1[1] = v0;
  v1[2] = v2;
  *v1 = v2;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_188469328(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1884693D0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  result = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_188469414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CKDatabase.RecordZoneChange.Deletion.recordType.setter(v1, v2);
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.recordType.modify(void *a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_1883FF2AC();
}

uint64_t sub_1884694D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 8) = v3;
    *(v5 + 16) = v2;
  }

  return result;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.init(recordID:recordType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CKDatabase.RecordZoneChange.ZoneAttributesModification.zone.modify()
{
  sub_1883FE298();
  *v1 = v2;
  v1[1] = v0;
  v3 = v2;
  return sub_1883FF2AC();
}

void sub_18846959C(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v2;
  if (a2)
  {
    v5 = v3;

    *v2 = v5;
  }

  else
  {

    *v2 = v3;
  }
}

uint64_t sub_1884696F4(void *a1, void *a2, Swift::Int a3, NSData *a4, char a5, void (*a6)(uint64_t a1, void *a2, void *a3, void *a4), void *a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  sub_1883F4C5C(0, &qword_1EA90CA88, off_1E70BA2D8);
  v13 = a2;

  v124.value.super.isa = a2;
  v124.value._data = v12;
  v124.is_nil = 0;
  v122.value = a3;
  CKFetchRecordZoneChangesConfiguration.init(previousServerChangeToken:resultsLimit:desiredKeys:)(v14, v124, v122, v123);
  v16 = v15;
  sub_1883F4C5C(0, &qword_1EA90C760, off_1E70BA2E0);
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  sub_1883F7E80();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1886F79A0;
  *(v17 + 32) = a1;
  sub_18844E6FC(&qword_1EA90D500, &qword_1886F7F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886F7400;
  *(inited + 32) = a1;
  *(inited + 40) = v16;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_18841A9C8();
  v19 = a1;
  v20 = v16;
  v120.is_nil = Dictionary.init(dictionaryLiteral:)();
  v120.value._rawValue = v17;
  CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v21, v120, v121);
  v23 = v22;
  [v22 setFetchAllChanges_];
  sub_1883F7B88();
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_1883F7B88();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;

  v29 = sub_188405278();
  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(v29, v30, v31, v32, v33, v34, v35, v36, a8, v65, a6, a7, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116);

  v37 = sub_1883F7AB8();
  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(v37, v38, v39, v40, v41, v42, v43, v44, v62, v66, v71, v76, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117);
  sub_188405D30();
  v45 = swift_allocObject();
  v45[2] = v19;
  v45[3] = v26;
  v45[4] = v27;
  v45[5] = v28;
  v46 = v19;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(sub_18846CA00, v45, v47, v48, v49, v50, v51, v52, v63, v67, v72, v77, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118);
  v53 = swift_allocObject();
  v53[2] = v64;
  v53[3] = a9;
  v53[4] = v28;
  v53[5] = v26;
  v53[6] = v24;
  v53[7] = v25;
  v53[8] = v27;

  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(sub_18846CA30, v53, v54, v55, v56, v57, v58, v59, v64, v68, v73, v78, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119);
  [v69 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t CKDatabase.recordZoneChanges(inZoneWith:since:desiredKeys:resultsLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 88) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_188469A84()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 88);
  sub_1884041F4([v1 implementation]);
  v3 = [v1 container];
  v4 = [v3 convenienceConfiguration];
  *(v0 + 64) = v4;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_188469B88;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_1883FF484(*(v0 + 16));

  return sub_188469D2C(v10, v11, v12, v13, v14, v15, v4);
}

uint64_t sub_188469B88()
{
  sub_1883FB4AC();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v13 = *(v3 + 56);

    sub_1883FDC40();
    sub_1883FB5FC();

    __asm { BRAA            X5, X16 }
  }

  sub_1883F7FD8();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_188469CC8()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  sub_1883F816C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_188469D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a6;
  *(v8 + 41) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  return sub_1883F7178();
}

uint64_t sub_188469D50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 41);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v12 = *(v0 + 56);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v12;
  *(v7 + 48) = v5;
  *(v7 + 56) = v3 & 1;
  *(v7 + 64) = v4;
  *(v7 + 72) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  sub_18844E6FC(&qword_1EA90D4E8, &qword_1886F7F10);
  sub_1883FE558();
  *v9 = v10;
  v9[1] = sub_188469E88;
  sub_1883F9BB4();
  sub_1883F7E74();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_188469E88()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_188469F88()
{
  sub_1883F7120();
  v1 = *(v0 + 104);

  sub_1883F816C();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t static CKDatabase.DatabaseChange.Modification.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  return sub_1883FAA9C() & 1;
}

uint64_t static CKDatabase.DatabaseChange.Deletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  return sub_1883FAA9C() & (v3 == v5);
}

uint64_t CKDatabase.DatabaseChange.Deletion.hash(into:)()
{
  sub_1883FE298();
  v1 = *(v0 + 8);
  NSObject.hash(into:)();
  return MEMORY[0x18CFD5EB0](v1);
}

Swift::Int CKDatabase.DatabaseChange.Deletion.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1883FEB6C();
  NSObject.hash(into:)();
  MEMORY[0x18CFD5EB0](v2);
  return Hasher._finalize()();
}

Swift::Int sub_18846A158()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x18CFD5EB0](v2);
  return Hasher._finalize()();
}

Swift::Int _sSo10CKDatabaseC8CloudKitE14DatabaseChangeO12ModificationV9hashValueSivg_0()
{
  v1 = *v0;
  sub_1883FEB6C();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18846A1F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static CKDatabase.RecordZoneChange.Deletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t CKDatabase.RecordZoneChange.Deletion.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int CKDatabase.RecordZoneChange.Deletion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1883FEB6C();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18846A3A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKDatabase.DatabaseChange.Modification.description.getter()
{
  v1 = *v0;
  sub_188403858();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v3 = v1;
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x18CFD5140](v5, v7);

  sub_1883FA058();
  return v9;
}

void CKDatabase.DatabaseChange.Deletion.description.getter()
{
  sub_188404A64();
  v1 = *v0;
  v2 = *(v0 + 8);
  _StringGuts.grow(_:)(22);
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v3);

  MEMORY[0x18CFD5140](0x3D656E6F7A20, 0xE600000000000000);
  v4 = v1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x18CFD5140](v6, v8);

  MEMORY[0x18CFD5140](0x3D6E6F7361657220, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  sub_188410B70();
}

uint64_t CKDatabase.RecordZoneChange.Modification.description.getter()
{
  v1 = *v0;
  sub_188403858();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v2);

  v3 = sub_188402E68();
  MEMORY[0x18CFD5140](v3 & 0xFFFFFFFFFFFFLL | 0x3D64000000000000, 0xE800000000000000);
  v4 = [v1 conciseDescription];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x18CFD5140](v5, v7);

  sub_1883FA058();
  return v9;
}

uint64_t CKDatabase.RecordZoneChange.Deletion.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  _StringGuts.grow(_:)(30);

  sub_188403858();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  v5 = sub_188402E68();
  MEMORY[0x18CFD5140](v5 & 0xFFFFFFFFFFFFLL | 0x4964000000000000, 0xEA00000000003D44);
  v6 = v2;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x18CFD5140](v8, v10);

  v11 = sub_188402E68();
  MEMORY[0x18CFD5140](v11 & 0xFFFFFFFFFFFFLL | 0x5464000000000000, 0xEC0000003D657079);

  v12 = sub_1883F7E8C();
  MEMORY[0x18CFD5140](v12);

  sub_1883FA058();
  return 0;
}

uint64_t sub_18846A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v7 = sub_18844E6FC(&qword_1EA90D588, &unk_1886F7FA8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  sub_18846586C();
}

uint64_t sub_18846A96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[2] = a7;
  v18[3] = a8;
  v18[1] = a2;
  v9 = sub_18844E6FC(&qword_1EA90D578, &qword_1886F7F98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  sub_188465E84();
}

void sub_18846AAEC()
{
  sub_188404A64();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_188410E90();
  v8 = v7;
  sub_188449260(v5);
  sub_188476860();
  v9 = *(*(v1 + 16) + 16);
  sub_188476AAC();
  v10 = *(v1 + 16);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 24 * v9;
  *(v11 + 32) = v8;
  *(v11 + 40) = v5;
  *(v11 + 48) = v3 & 1;
  *(v1 + 16) = v10;
  swift_endAccess();
  sub_188410B70();
}

void sub_18846AB8C()
{
  sub_188404A64();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  if (v4)
  {
    v7 = 0;
    v8 = v1;
  }

  else
  {
    sub_18840FAEC();
    v8 = *(v0 + 16);

    v7 = v6;
  }

  sub_188449260(v6);
  v3(v8, v7, v5 & 1);
  sub_18846CFC0(v8, v7, v5 & 1);
  sub_188410B70();
}

uint64_t sub_18846AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[2] = a7;
  v18[3] = a8;
  v18[1] = a2;
  v9 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  sub_18846660C();
}

uint64_t sub_18846AD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a2;
  v17[1] = a7;
  v8 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  sub_1884667E0();
}

uint64_t sub_18846AF14(id a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
    sub_188402290(v4, v5, v6, v7, v8, v9, v10, v11, a1);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v13 = a2;

    v14 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
    sub_188402290(v14, v15, v16, v17, v18, v19, v20, v21, a1);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_18846AF9C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithRecordZoneIDs_];

  return v2;
}

void sub_18846B024()
{
  sub_188404A64();
  v3 = v2;
  v5 = v4;
  if (v4)
  {
    v6 = v1;
    v7 = v1;
  }

  else
  {
    sub_18840FAEC();
    v6 = *(v0 + 16);
  }

  v3(v6, v5 & 1);
  sub_1884631E0(v6, v5 & 1);
  sub_188410B70();
}

uint64_t sub_18846B098(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D558, &qword_1886F7F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_1884672BC();
}

void sub_18846B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_188404A64();
  v13 = v12;
  v15 = v14;
  sub_1883F999C();
  sub_188410E90();
  v15(v11, v10 & 1);
  v16 = *(v9 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_1883FEE3C();
  v13(v17);
  *(v9 + 16) = a9;
  swift_endAccess();
  sub_188410B70();
}

void sub_18846B27C(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void))
{
  if (a2)
  {
    v7 = a1;
    v8 = a1;
    v9 = 0;
  }

  else
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    swift_beginAccess();
    v9 = *(a4 + 16);
  }

  a5(v7, v9, a2 & 1);
  sub_18846D11C(v7, v9, a2 & 1);
}

uint64_t sub_18846B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a2;
  v17[1] = a7;
  v8 = sub_18844E6FC(&qword_1EA90D548, &qword_1886F7F68);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  sub_1884678B4();
}

uint64_t sub_18846B4B4(uint64_t a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D530, &qword_1886F7F58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  sub_1884681CC();
}

uint64_t sub_18846B61C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = sub_1883F7E8C();
    sub_18844E6FC(v3, v4);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    v6 = sub_1883F7E8C();
    sub_18844E6FC(v6, v7);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_18846B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), void (*a7)(uint64_t))
{
  sub_188414720();
  sub_188410E90();
  a6(v9, v8 & 1);
  v12 = *(v7 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v13 = sub_1883FEE3C();
  a7(v13);
  *(v7 + 16) = v15;
  return swift_endAccess();
}

uint64_t sub_18846B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v7 = sub_18844E6FC(&qword_1EA90D520, &qword_1886F7F48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  sub_1884686DC();
}

uint64_t sub_18846B898(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = sub_1883F7E8C();
    v6 = sub_18844E6FC(v4, v5);
    sub_188402290(v6, v7, v8, v9, v10, v11, v12, v13, a1);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    v15 = sub_1883F7E8C();
    v17 = sub_18844E6FC(v15, v16);
    sub_188402290(v17, v18, v19, v20, v21, v22, v23, v24, a1);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_18846B914(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_188476878();
  v5 = *(*(a2 + 16) + 16);
  sub_188476AC4();
  v6 = *(a2 + 16);
  *(v6 + 16) = v5 + 1;
  *(v6 + 8 * v5 + 32) = v4;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

void sub_18846B9A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_18846BA08()
{
  sub_188404A64();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_188410E90();
  v6 = v5;
  sub_188476918();
  v7 = *(*(v3 + 16) + 16);
  sub_188476B3C();
  v8 = *(v3 + 16);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v1;
  *(v3 + 16) = v8;
  swift_endAccess();

  sub_188410B70();
}

void sub_18846BA98(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void *, uint64_t))
{
  if ((a2 & 0x100) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = a1;
  }

  else
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    swift_beginAccess();
    v8 = *(a4 + 16);
    v10 = a2 & 1;

    v9 = a1;
  }

  sub_18846CBC4(a1);
  a5(v11, v8, v9, v10 & 0xFFFFFEFF | (((a2 >> 8) & 1) << 8));
  sub_18846CBD0(v11, v8, v9, v10, BYTE1(a2) & 1);
}

uint64_t sub_18846BBA0(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  sub_188449260(a2);
  v8 = a1;
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a4 + 16);
  sub_1884AECA0(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v12;

  return swift_endAccess();
}

void sub_18846BC40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  swift_bridgeObjectRetain_n();
  v9 = v8;
  sub_188476948();
  v10 = *(*(a4 + 16) + 16);
  sub_188476B6C();
  v11 = *(a4 + 16);
  *(v11 + 16) = v10 + 1;
  v12 = (v11 + 24 * v10);
  v12[4] = v9;
  v12[5] = a2;
  v12[6] = a3;
  *(a4 + 16) = v11;
  swift_endAccess();
}

void sub_18846BD04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  if (static NSObject.== infix(_:_:)())
  {
    v13 = a5;
    swift_beginAccess();
    if ((a5 & 0x100) != 0)
    {
      v16 = *(a9 + 16);
      *(a9 + 16) = a2;
      v17 = a2;
    }

    else
    {
      v14 = *(a7 + 16);
      *(a7 + 16) = a2;
      v15 = a2;

      swift_beginAccess();
      *(a8 + 16) = v13 & 1;
    }
  }
}

void sub_18846BDFC(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    a3(a1, 0, 0, 256);
  }

  else
  {
    swift_beginAccess();
    v14 = *(a5 + 16);
    if (v14)
    {
      v15 = v14;
      a3(v14, 0, 0, 256);
    }

    else
    {
      swift_beginAccess();
      v16 = *(a6 + 16);
      if (v16)
      {
        swift_beginAccess();
        v17 = *(a7 + 16);
        swift_beginAccess();
        v18 = *(a8 + 16);
        swift_beginAccess();
        v19 = *(a9 + 16);
        v20 = v16;

        a3(v17, v18, v16, v19);
      }

      else
      {
        type metadata accessor for CKError(0);
        sub_188498E9C(MEMORY[0x1E69E7CC0]);
        sub_18846CA68(&qword_1EA90CAE0, type metadata accessor for CKError);
        _BridgedStoredNSError.init(_:userInfo:)();
        a3(v21, 0, 0, 256);
      }
    }
  }
}

uint64_t sub_18846C004(uint64_t a1, uint64_t a2, void *a3, void *a4, Swift::Int a5, NSData *a6, char a7, void (*a8)(uint64_t a1, void *a2, void *a3, void *a4), void *a9)
{
  v25 = a2;
  v26 = a8;
  v24 = a6;
  v14 = sub_18844E6FC(&qword_1EA90D4F0, &qword_1886F7F18);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v23 - v18;
  (*(v15 + 16))(&v23 - v18, a1, v14, v17);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v20, v19, v14);
  sub_1884696F4(a3, a4, a5, v24, a7 & 1, v26, a9, sub_18846C9D8, v21);
}

uint64_t sub_18846C224()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_1883F7E8C();
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_18846C2A4(unsigned __int8 a1, char a2)
{
  v2 = 0x656D614E656E6F7ALL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656D614E656E6F7ALL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D614E72656E776FLL;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v3 = 0x80000001886FED70;
      break;
    case 3:
      v5 = 0x6573616261746164;
      v3 = 0xED000065706F6353;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D614E72656E776FLL;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v6 = 0x80000001886FED70;
      break;
    case 3:
      v2 = 0x6573616261746164;
      v6 = 0xED000065706F6353;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_18846C410(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x4449656E6F7ALL;
  }

  else
  {
    v3 = 0x614E64726F636572;
  }

  if (v2)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x4449656E6F7ALL;
  }

  else
  {
    v5 = 0x614E64726F636572;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_18846C4B0(Swift::Int a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  _StringGuts.grow(_:)(a1);
  return 0;
}

unint64_t sub_18846C514()
{
  result = qword_1EA90D4C8;
  if (!qword_1EA90D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4C8);
  }

  return result;
}

unint64_t sub_18846C56C()
{
  result = qword_1EA90C398;
  if (!qword_1EA90C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C398);
  }

  return result;
}

unint64_t sub_18846C5C4()
{
  result = qword_1EA90D4D0;
  if (!qword_1EA90D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4D0);
  }

  return result;
}

unint64_t sub_18846C61C()
{
  result = qword_1EA90D4D8;
  if (!qword_1EA90D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4D8);
  }

  return result;
}

unint64_t sub_18846C674()
{
  result = qword_1EA90D4E0;
  if (!qword_1EA90D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D4E0);
  }

  return result;
}

uint64_t sub_18846C6D8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18846C6EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_18846C72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s14DatabaseChangeO8DeletionV6ReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18846C848(_BYTE *result, int a2, int a3)
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

uint64_t sub_18846C914(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18846C954(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18846CA68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18846CAC4()
{
  sub_188404A04();
  sub_188414720();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883F8AE4(v2);
  v4 = *(v3 + 80);
  sub_188442F30();
  v5 = sub_1883F8630();
  sub_18846C190(v5);
  sub_1883FE1B8();
}

void sub_18846CBD0(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    a1 = a3;
  }
}

uint64_t sub_18846CCEC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_18846B4B4(a1);
}

uint64_t sub_18846CD34()
{
  sub_1883F999C();
  v2 = sub_18844E6FC(v0, v1);
  sub_1883F8AE4(v2);
  v4 = *(v3 + 80);
  sub_188442F30();
  v5 = sub_1883FD9C4();
  return sub_18846B898(v5, v6, v7);
}

uint64_t sub_18846CE30(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_18846B098(a1);
}

uint64_t sub_18846CE50()
{
  sub_1883FDE94();
  v1 = v0;
  v3 = v2;
  v6 = sub_18844E6FC(v4, v5);
  sub_1883F8AE4(v6);
  v8 = *(v7 + 80);
  sub_188442F30();
  return sub_18846B61C(v3, v1 & 1);
}

uint64_t sub_18846CEE8(void *a1, void *a2, char a3)
{
  v6 = sub_18844E6FC(&qword_1EA90D568, &qword_1886F7F88);
  sub_1883F8AE4(v6);
  v8 = *(v7 + 80);
  sub_188442F30();
  return sub_18846AF14(a1, a2, a3 & 1);
}

void sub_18846CF9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_18846AB8C();
}

void sub_18846CFC0(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_18846D0B0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_18846D11C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_18846D1AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_18846D1E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_18846B024();
}

__n128 sub_18846D2E0(uint64_t a1)
{
  result = v2[2];
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

void sub_18846D2F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
}

__n128 sub_18846D2FC(uint64_t a1)
{
  result = *(v3 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

id sub_18846D310()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithRecordIDs_];

  return v2;
}

uint64_t sub_18846D398(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_1883F7178();
}

uint64_t sub_18846D3B4()
{
  sub_1883F78E0();
  v1 = *(v0 + 32);
  *(v0 + 40) = [v1 implementation];
  v2 = [v1 container];
  *(v0 + 48) = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_18846D4AC;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 72);
  v7 = sub_1883FD9D0();

  return sub_18846D5E4(v7, v8, v9, v10, v11);
}

uint64_t sub_18846D4AC()
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

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 40);

    sub_1883F7910();

    return v15(v3);
  }
}

uint64_t sub_18846D5E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 152) = a3;
  *(v6 + 24) = a1;
  return sub_1883F7178();
}

uint64_t sub_18846D604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v64 = *(v12 + 56);
  v69 = *(v12 + 48);
  v13 = *(v12 + 32);
  v59 = *(v12 + 40);
  v14 = *(v12 + 152);
  v15 = *(v12 + 24);
  sub_1883F4C5C(0, &qword_1EA90C760, off_1E70BA2E0);

  v118.is_nil = v13;
  CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v16, v118, v119);
  v18 = v17;
  *(v12 + 64) = v17;
  [v17 setFetchAllChanges_];
  [v18 setShouldFetchAssetContents_];
  sub_1883F7B88();
  v19 = swift_allocObject();
  *(v12 + 72) = v19;
  v20 = MEMORY[0x1E69E7CC8];
  *(v19 + 16) = MEMORY[0x1E69E7CC8];
  sub_1883F7B88();
  v21 = swift_allocObject();
  *(v12 + 80) = v21;
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  sub_1883F7B88();
  v23 = swift_allocObject();
  *(v12 + 88) = v23;
  *(v23 + 16) = v22;
  sub_1883F7B88();
  v24 = swift_allocObject();
  *(v12 + 96) = v24;
  *(v24 + 16) = v20;
  sub_1883F7B88();
  v25 = swift_allocObject();
  *(v12 + 104) = v25;
  *(v25 + 16) = v20;
  sub_1883F7B88();
  v26 = swift_allocObject();
  *(v12 + 112) = v26;
  *(v26 + 16) = v20;

  CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter(sub_18846C9EC, v19, v27, v28, v29, v30, v31, v32, v59, v64, v69, v74, v78, v82, v86, v90, v94, v98, v102, v12, v109, v113);

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter(sub_18846C9F8, v21, v33, v34, v35, v36, v37, v38, v60, v65, v70, v75, v79, v83, v87, v91, v95, v99, v103, v106, v110, v114);

  CKFetchRecordZoneChangesOperation.zoneAttributesChangedBlock.setter(sub_18846DC50, v23, v39, v40, v41, v42, v43, v44, v61, v66, v71, v76, v80, v84, v88, v92, v96, v100, v104, v107, v111, v115);
  v45 = swift_allocObject();
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;

  CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter(sub_18846DDB0, v45, v46, v47, v48, v49, v50, v51, v62, v67, v72, v77, v81, v85, v89, v93, v97, v101, v105, v108, v112, v116);
  v52 = swift_task_alloc();
  *(v12 + 120) = v52;
  v52[2] = v18;
  v52[3] = v15;
  v52[4] = v26;
  v52[5] = v24;
  v52[6] = v19;
  v52[7] = v21;
  v52[8] = v23;
  v52[9] = v25;
  v52[10] = v68;
  v52[11] = v63;
  v52[12] = v73;
  v53 = swift_task_alloc();
  *(v12 + 128) = v53;
  *(v53 + 16) = v18;
  v54 = *(MEMORY[0x1E69E88F0] + 4);
  v55 = swift_task_alloc();
  *(v12 + 136) = v55;
  sub_18844E6FC(&qword_1EA90D590, &qword_1886F7FE0);
  sub_1883F81C8();
  *v55 = v57;
  v55[1] = sub_18846D940;

  return MEMORY[0x1EEE6DE18](v12 + 16, &unk_1886F7FD8, v52, sub_188470888, v53, 0, 0, v56, a9, a10, a11, a12);
}

uint64_t sub_18846D940()
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

  if (!v0)
  {
    v10 = v3[15];
    v9 = v3[16];
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18846DA48()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  v7 = *(v0 + 16);

  sub_1883F7910();

  return v8(v7);
}

uint64_t sub_18846DAFC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  sub_1883F816C();
  v10 = *(v0 + 144);

  return v9();
}

uint64_t sub_18846DBC4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_1884769BC();
  v5 = *(*(a2 + 16) + 16);
  sub_188476BC0();
  v6 = *(a2 + 16);
  *(v6 + 16) = v5 + 1;
  *(v6 + 8 * v5 + 32) = v4;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_18846DC58(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x100) != 0)
  {
    swift_beginAccess();
    sub_188470650(a2, a3, a4, a5, 1);
    v17 = *(a8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a8 + 16);
    sub_1884AED80(a2, a1, isUniquelyReferenced_nonNull_native);
    *(a8 + 16) = v21;
  }

  else
  {
    swift_beginAccess();
    sub_18846FE8C(a2, a1, sub_1884AEF54, sub_188510DA4);
    swift_endAccess();
    swift_beginAccess();
    v12 = *(a7 + 16);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a7 + 16);
    sub_1884AEE60(a5 & 1, a1, v13);
    *(a7 + 16) = v20;
  }

  return swift_endAccess();
}

uint64_t sub_18846DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18846DE08, 0, 0);
}

uint64_t sub_18846DE08()
{
  sub_1883F78E0();
  v1 = *(v0 + 104);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v6;
  *(v2 + 96) = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  sub_18844E6FC(&qword_1EA90D590, &qword_1886F7FE0);
  sub_1883F81C8();
  *v8 = v9;
  v8[1] = sub_18846DF18;
  v10 = *(v0 + 16);
  sub_1883F955C();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18846DF18()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    sub_1883F816C();

    return v13();
  }
}

uint64_t sub_18846E034()
{
  sub_1883F7120();
  v1 = *(v0 + 112);

  sub_1883F816C();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_18846E090()
{
  v2 = *(v0 + 24);
  v21 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v20 = *(v0 + 72);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_188442BE4;
  sub_1883FF0A8();

  return sub_18846DDC8(v11, v12, v13, v14, v15, v16, v17, v18);
}

id sub_18846E180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *a1), void *a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v39 = a3;
  v48 = a12;
  v49 = a11;
  v46 = a2;
  v47 = a10;
  v40 = a9;
  v41 = a4;
  v38 = sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v38);
  v17 = &v36 - v16;
  (*(v13 + 16))(&v36 - v16, a1, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v13 + 32))(v24 + v18, v17, v38);
  *(v24 + v19) = v39;
  v25 = v42;
  *(v24 + v37) = v41;
  *(v24 + v20) = v25;
  v26 = v44;
  *(v24 + v21) = v43;
  *(v24 + v22) = v26;
  *(v24 + v23) = v45;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  v27 = v24;
  v28 = v46;
  CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter(sub_18846EA90, v27, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  return [v47 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

uint64_t sub_18846E3AC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v22 = a1;
    v10 = a1;
    sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC8];
    v14 = sub_1883F4C9C(a4);
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {
        sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
        return CheckedContinuation.resume(returning:)();
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x18CFD59D0](i, a4);
      }

      else
      {
        if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(a4 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = v16;
      sub_18846E524(&v22, &v21, (a5 + 16), (a6 + 16), (a7 + 16), (a8 + 16), (a9 + 16), (a10 + 16));
    }

    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_18846E524(uint64_t *a1, void **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v15 = *a2;
  swift_beginAccess();
  v16 = sub_18847E300(v15, *a3);
  if (v16)
  {
    v17 = v16;
    swift_endAccess();
    v72 = v17;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 256;
    v18 = v17;
    v19 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *a1;
    sub_1884AF034(&v72, v15, isUniquelyReferenced_nonNull_native);

LABEL_3:
    *a1 = v71;
    return;
  }

  v66 = a8;
  swift_endAccess();
  swift_beginAccess();
  v21 = sub_18847E34C(v15, *a4);
  if (!v21)
  {
    swift_endAccess();
    v72 = related decl 'e' for CKErrorCode.init(_:description:)(1, 0xD000000000000021, 0x80000001886FFA70);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 256;
    v57 = *a1;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *a1;
    sub_1884AF034(&v72, v15, v58);
    goto LABEL_3;
  }

  v64 = v21;
  v65 = a1;
  swift_endAccess();
  swift_beginAccess();
  v22 = *a5;
  v23 = v15;

  v70 = v23;
  v63 = sub_18846FF3C(v24, v23);

  swift_beginAccess();
  v25 = *a6;
  v26 = *a6 + 48;
  v68 = *(*a6 + 16);

  v27 = 0;
  v67 = MEMORY[0x1E69E7CC0];
  v62 = v26;
LABEL_6:
  v28 = (v26 + 24 * v27);
  while (v68 != v27)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v29 = a7;
    v31 = *(v28 - 2);
    v30 = *(v28 - 1);
    v32 = *v28;
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v33 = v31;

    v34 = [v33 zoneID];
    v35 = static NSObject.== infix(_:_:)();

    if (v35)
    {
      v36 = v67;
      v72 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477804(0, *(v67 + 16) + 1, 1);
        v36 = v72;
      }

      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_188477804((v37 > 1), v38 + 1, 1);
        v36 = v72;
      }

      ++v27;
      *(v36 + 16) = v38 + 1;
      v67 = v36;
      v39 = (v36 + 24 * v38);
      v39[4] = v33;
      v39[5] = v30;
      v39[6] = v32;
      a7 = v29;
      v26 = v62;
      goto LABEL_6;
    }

    v28 += 3;
    ++v27;
    a7 = v29;
  }

  swift_beginAccess();
  v40 = *a7;
  v41 = *(*a7 + 16);

  v42 = 0;
  v69 = MEMORY[0x1E69E7CC0];
  while (v41 != v42)
  {
    if (v42 >= *(v40 + 16))
    {
      goto LABEL_34;
    }

    v43 = *(v40 + 8 * v42 + 32);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v44 = v43;
    v45 = [v44 zoneID];
    v46 = static NSObject.== infix(_:_:)();

    if (v46)
    {
      v47 = v69;
      v72 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = *(v69 + 16);
        sub_1884777CC();
        v47 = v72;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_1884777CC();
        v47 = v72;
      }

      ++v42;
      *(v47 + 16) = v49 + 1;
      v69 = v47;
      *(v47 + 8 * v49 + 32) = v44;
    }

    else
    {

      ++v42;
    }
  }

  swift_beginAccess();
  v50 = *v66;
  if (*(*v66 + 16))
  {
    sub_188486310();
    v52 = v65;
    v54 = v63;
    v53 = v64;
    if (v55)
    {
      v56 = *(*(v50 + 56) + v51);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
    v52 = v65;
    v54 = v63;
    v53 = v64;
  }

  swift_endAccess();
  v72 = v54;
  v73 = v67;
  v74 = v69;
  v75 = v53;
  v76 = v56;
  v59 = v53;
  v60 = *v52;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v52;
  sub_1884AF034(&v72, v70, v61);

  *v52 = v77;
}

uint64_t sub_18846EA90(void *a1, char a2)
{
  v5 = *(sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1883FE568();
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_18846E3AC(a1, a2 & 1, v2 + v12, *(v2 + v10), *(v2 + v11), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_18846EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_18846EB90()
{
  sub_1883F78E0();
  v1 = v0[5];
  v0[6] = [v1 implementation];
  v2 = [v1 container];
  v0[7] = [v2 convenienceConfiguration];

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_18846EC84;
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_1883FD9D0();

  return sub_18846EDBC(v6, v7, v8, v9, v10);
}

uint64_t sub_18846EC84()
{
  sub_1883F78E0();
  v3 = v2;
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 48);

    sub_1883F7910();

    return v15(v3);
  }
}

uint64_t sub_18846EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a1;
  return sub_1883F7178();
}

uint64_t sub_18846EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_188470588(v12[9]);
  v12[14] = v14;
  v15 = v12[9];
  if (v14)
  {
    v16 = v13;
    v17 = v14;
    v18 = [v12[9] recordID];
    v12[15] = v18;
    if (v18)
    {
      v19 = v18;
      v50 = v12[13];
      v51 = v12[12];
      v20 = v12[11];
      v49 = v12[10];
      v21 = v12[9];
      sub_1883F4C5C(0, &unk_1EA90C110, off_1E70BA308);
      sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1886F79A0;
      *(v22 + 32) = v19;
      v23 = v19;
      v24 = sub_18846D310();
      v12[16] = v24;
      sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1886F7400;
      *(v25 + 32) = v16;
      *(v25 + 40) = v17;

      CKFetchRecordsOperation.desiredKeys.setter(v25);
      v26 = swift_allocObject();
      *(v26 + 16) = v20;
      *(v26 + 24) = v21;
      v12[6] = sub_1884706A4;
      v12[7] = v26;
      v12[2] = MEMORY[0x1E69E9820];
      v12[3] = 1107296256;
      v12[4] = sub_18846F490;
      v12[5] = &unk_1EFA27628;
      v27 = _Block_copy(v12 + 2);
      v28 = v12[7];
      v29 = v20;
      v30 = v21;

      [v24 setPerRecordProgressBlock_];
      _Block_release(v27);
      v31 = swift_task_alloc();
      v12[17] = v31;
      v31[2] = v24;
      v31[3] = v23;
      v31[4] = v30;
      v31[5] = v16;
      v31[6] = v17;
      v31[7] = v50;
      v31[8] = v49;
      v31[9] = v51;
      v32 = swift_task_alloc();
      v12[18] = v32;
      *(v32 + 16) = v24;
      v33 = *(MEMORY[0x1E69E88F0] + 4);
      v34 = swift_task_alloc();
      v12[19] = v34;
      sub_18844E6FC(&qword_1EA90D5B0, &qword_1886F8018);
      sub_1883F81C8();
      *v34 = v36;
      v34[1] = sub_18846F1E4;

      return MEMORY[0x1EEE6DE18](v12 + 8, &unk_1886F8010, v31, sub_188470784, v32, 0, 0, v35, a9, a10, a11, a12);
    }

    v40 = v12[9];

    _StringGuts.grow(_:)(25);

    sub_1883FE9CC();
    v52 = v42;
    v53 = v41;
    v39 = [v40 description];
  }

  else
  {
    _StringGuts.grow(_:)(26);

    sub_1883FE9CC();
    v52 = v38 + 1;
    v53 = v37;
    v39 = [v15 description];
  }

  v43 = v39;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  MEMORY[0x18CFD5140](v44, v46);

  related decl 'e' for CKErrorCode.init(_:description:)(14, v52, v53);
  swift_willThrow();
  sub_1883F816C();

  return v47();
}

uint64_t sub_18846F1E4()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  v3[20] = v0;

  if (!v0)
  {
    v10 = v3[17];
    v9 = v3[18];
    v11 = v3[14];
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18846F300()
{
  sub_1883F7120();
  v1 = *(v0 + 128);

  v2 = *(v0 + 64);
  sub_1883F7910();

  return v3();
}

uint64_t sub_18846F364()
{
  sub_1883F78E0();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 112);

  v5 = *(v0 + 160);
  sub_1883F816C();

  return v6();
}

id sub_18846F3EC(int a1, void *a2, id a3, double a4)
{
  result = [a3 size];
  v7 = result * a4;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [a2 setCompletedUnitCount_];
}

void sub_18846F490(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a3);
}

uint64_t sub_18846F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18846F540, 0, 0);
}

uint64_t sub_18846F540()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  sub_18844E6FC(&qword_1EA90D5B0, &qword_1886F8018);
  sub_1883F81C8();
  *v8 = v9;
  v8[1] = sub_18846F654;
  v10 = *(v0 + 16);
  sub_1883F955C();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18846F654()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 88);

    sub_1883F816C();

    return v13();
  }
}

id sub_18846F770(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v29 = a5;
  v30 = a6;
  v31 = a2;
  v32 = a9;
  v12 = sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  (*(v13 + 16))(&v29 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v18, v17, v12);
  *(v21 + v19) = a3;
  *(v21 + v20) = a4;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  aBlock[4] = sub_1884707C8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1884B2FD4;
  aBlock[3] = &unk_1EFA27678;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  v26 = a4;

  v27 = v31;
  [v31 setFetchRecordsCompletionBlock_];
  _Block_release(v24);
  return [v33 _scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_];
}

void sub_18846F99C(uint64_t a1, id a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
LABEL_11:
    sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1 || (v11 = sub_18847E374(a4, a1)) == 0)
  {
    _StringGuts.grow(_:)(36);

    v23 = [a5 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    MEMORY[0x18CFD5140](v24, v26);

    related decl 'e' for CKErrorCode.init(_:description:)(14, 0xD000000000000022, 0x80000001886FFB90);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = MEMORY[0x18CFD5010](a6, a7);
  v14 = [v12 objectForKey_];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1884705EC(a5);
      v19 = v18;
      v21 = sub_1884705EC(v16);
      v22 = v20;
      if (v19 >> 60 == 15)
      {
        if (v20 >> 60 == 15)
        {
          sub_18841BA74(v17, v19);
LABEL_20:
          swift_unknownObjectRetain_n();
          sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
          CheckedContinuation.resume(returning:)();
          swift_unknownObjectRelease_n();
          goto LABEL_18;
        }
      }

      else if (v20 >> 60 != 15)
      {
        sub_188424184(v17, v19);
        sub_188424184(v21, v22);
        v38 = MEMORY[0x18CFD45C0](v17, v19, v21, v22);
        sub_18841BA74(v21, v22);
        sub_18841BA74(v17, v19);
        sub_18841BA74(v21, v22);
        sub_18841BA74(v17, v19);
        if (v38)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      sub_18841BA74(v17, v19);
      sub_18841BA74(v21, v22);
LABEL_16:
      _StringGuts.grow(_:)(107);
      MEMORY[0x18CFD5140](0xD000000000000019, 0x80000001886FFBE0);
      v39 = sub_1884705EC(a5);
      v40 = v32;
      sub_18844E6FC(&qword_1EA90D5C0, &qword_1886F8028);
      v33 = String.init<A>(describing:)();
      MEMORY[0x18CFD5140](v33);

      MEMORY[0x18CFD5140](0xD00000000000004ELL, 0x80000001886FFC00);
      v34 = [a5 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      MEMORY[0x18CFD5140](v35, v37);

      v31 = related decl 'e' for CKErrorCode.init(_:description:)(14, 0, 0xE000000000000000);
      sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
      CheckedContinuation.resume(throwing:)();
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  _StringGuts.grow(_:)(25);

  v27 = [a5 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  MEMORY[0x18CFD5140](v28, v30);

  v31 = related decl 'e' for CKErrorCode.init(_:description:)(14, 0xD000000000000017, 0x80000001886FFBC0);
  sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  CheckedContinuation.resume(throwing:)();
LABEL_17:

LABEL_18:
}

uint64_t sub_18846FE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v11 = *v4;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    *v6 = a4(v11, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_18846FF3C(uint64_t a1, void *a2)
{
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v8 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v8;
      v3 = sub_1884702B4(v14, v6, v3, v15);
      MEMORY[0x18CFD7E80](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = (v16 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_188501174(0, v6, v9);
  v10 = v8;
  sub_1884700F0(v9, v6, v3, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v11;
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1884700F0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a2;
  v25 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v28 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = v13;
    v16 = *(a3 + 56) + 16 * v13;
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v19 = v14;
    sub_188449260(v17);
    v20 = [v19 zoneID];
    v21 = static NSObject.== infix(_:_:)();

    sub_18844CAFC(v17);
    v8 = v28;
    if (v21)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_188470350(a1, v23, v25, a3);

        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1884702B4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1884700F0(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_188470350(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_18844E6FC(&qword_1EA90D5A0, &qword_1886F7FF0);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v9 + 40);
    v22 = v17;
    sub_188449260(v19);
    result = NSObject._rawHashValue(seed:)(v21);
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v9 + 48) + 8 * v26) = v22;
    v31 = *(v9 + 56) + 16 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_188470588(void *a1)
{
  v1 = [a1 recordKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1884705EC(void *a1)
{
  v1 = [a1 signature];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_188470650(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return a1;
  }

  else
  {
    v9 = a1;

    return sub_188424184(a2, a3);
  }
}

uint64_t sub_1884706AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1884061E0;
  sub_1883FF0A8();

  return sub_18846F508(v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_1884707C8(uint64_t a1, void *a2)
{
  v5 = *(sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1883FE568();
  v10 = *(v2 + v9);
  v12 = *(v2 + v11);
  v14 = *(v2 + v13);
  v15 = *(v2 + v13 + 8);

  sub_18846F99C(a1, a2, v2 + v8, v10, v12, v14, v15);
}

void __swiftcall CKDatabaseSubscription.init(subscriptionID:)(CKDatabaseSubscription *__return_ptr retstr, Swift::String subscriptionID)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v4 initWithSubscriptionID_];
}

void sub_18847090C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  CKDatabaseSubscription.recordType.setter(v2, v3);
}

void CKDatabaseSubscription.recordType.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x18CFD5010]();
  }

  else
  {
    v3 = 0;
  }

  [v2 setRecordType_];
}

void (*CKDatabaseSubscription.recordType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_188470A78(v1);
  a1[1] = v3;
  return sub_188470A04;
}

void sub_188470A04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    CKDatabaseSubscription.recordType.setter(v3, v2);
  }

  else
  {
    CKDatabaseSubscription.recordType.setter(*a1, v2);
  }
}

uint64_t sub_188470A78(void *a1)
{
  v1 = [a1 recordType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CloudKit::CKDeviceCapability::Level_optional __swiftcall CKDeviceCapability.Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_188470B58()
{
  String.hash(into:)();
}

uint64_t sub_188470C24()
{
  String.hash(into:)();
}

uint64_t sub_188470CCC@<X0>(uint64_t *a1@<X8>)
{
  result = CKDeviceCapability.Level.rawValue.getter();
  *a1 = result;
  return result;
}

void *sub_188470D2C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CKDeviceCapability.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

{
  result = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 8);
    v3 = *(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16);

    return String.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188470D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_188470D9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CKDeviceCapability.name.setter();
}

uint64_t CKDeviceCapability.name.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  sub_188440388();
  v5 = v4;
  v7 = v6;

  *(v1 + 8) = v5;
  *(v1 + 16) = v7;
  return result;
}

uint64_t sub_188470E58(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    v4 = *(*result + 8);
    v5 = *(*result + 16);
    sub_188440388();
    v6 = *(v3 + 16);
    *(v3 + 8) = v7;
    *(v3 + 16) = v8;
  }

  return result;
}

uint64_t CKDeviceCapability.value.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

{
  v1 = v0 + OBJC_IVAR___CKDeviceCapability__wrapped;
  if (*(v0 + OBJC_IVAR___CKDeviceCapability__wrapped + 16))
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);

    return String.init<A>(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188470ED8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_188470EE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CKDeviceCapability.value.setter();
}

uint64_t CKDeviceCapability.value.setter()
{
  sub_1883F877C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  sub_188440388();
  v5 = v4;
  v7 = v6;

  *(v1 + 24) = v5;
  *(v1 + 32) = v7;
  return result;
}

uint64_t sub_188470FA0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *result;
    v4 = *(*result + 24);
    v5 = *(*result + 32);
    sub_188440388();
    v6 = *(v3 + 32);
    *(v3 + 24) = v7;
    *(v3 + 32) = v8;
  }

  return result;
}

BOOL CKDeviceCapability.isEmpty.getter()
{
  v1 = v0[2];
  v2 = v0[1] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = v0[4];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

uint64_t static CKDeviceCapability.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t CKDeviceCapability.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x18CFD5EB0](*v0 + 1);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int CKDeviceCapability.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1883FEB6C();
  MEMORY[0x18CFD5EB0](v1 + 1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_18847125C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v1 + 1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1884712E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = CKDeviceCapabilitySet.capabilities.getter();
  *a2 = result;
  return result;
}

uint64_t sub_188471320(uint64_t *a1)
{
  v1 = *a1;

  return CKDeviceCapabilitySet.capabilities.setter(v2);
}

uint64_t CKDeviceCapabilitySet.capabilities.setter(uint64_t a1)
{
  v2 = sub_188471390(a1);

  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_188471390(uint64_t a1)
{
  v95 = sub_1884770C8(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);

  v2 = 0;
  sub_1884767DC(sub_188471C88, 0);
  v3 = 0;
  v4 = a1;
  v93 = a1;
  v94 = *(a1 + 16);
LABEL_2:
  v92 = (v95 - 8);
  v5 = 40 * v3;
  while (1)
  {
    if (v94 == v3)
    {

      return v95;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v96 = v5;
    v97 = *(v4 + v5 + 32);
    v6 = *(v4 + v5 + 40);
    v2 = *(v4 + v5 + 48);
    v8 = *(v4 + v5 + 56);
    v7 = *(v4 + v5 + 64);
    v9 = *(v95 + 2);
    if (!v9)
    {
      v13 = 0;
      v11 = 0;
LABEL_21:
      if (!v2)
      {

        sub_1884406C8(v11, v13, 0);
        goto LABEL_37;
      }

      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
LABEL_26:
      v55 = sub_1883F71A8();
      v58 = sub_1884406C8(v55, v56, v57);
      v49 = sub_1883FE9E0(v58, v59, v60, v61, v62, v63, v64, v65, v90, v91, v92, v93, v94, v95, v96, v97);
LABEL_27:
      sub_1884406C8(v49, v50, v51);
      goto LABEL_28;
    }

    v10 = (v92 + 40 * v9);
    v11 = *v10;
    v13 = v10[1];
    v12 = v10[2];
    v14 = v10[3];
    v15 = v10[4];

    if (!v12)
    {
      goto LABEL_21;
    }

    if (!v2)
    {
      sub_188404200();
      v52 = sub_1883F71A8();
      sub_18847A544(v52, v53, v54);

      goto LABEL_26;
    }

    if (v11 != v97 || (v13 == v6 ? (v16 = v12 == v2) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
      v35 = sub_1883F71A8();
      v38 = sub_18847A544(v35, v36, v37);
      v46 = sub_1883FE9E0(v38, v39, v40, v41, v42, v43, v44, v45, v90, v91, v92, v93, v94, v95, v96, v97);
      sub_1884406C8(v46, v47, v48);

      v49 = sub_1883F71A8();
      goto LABEL_27;
    }

    if (v14 == v8 && v15 == v7)
    {
      sub_188402E78();
      swift_bridgeObjectRetain_n();
      sub_188404200();
      v68 = sub_1883F71A8();
      v71 = sub_18847A544(v68, v69, v70);
      v79 = sub_1883FE9E0(v71, v72, v73, v74, v75, v76, v77, v78, v90, v91, v92, v93, v94, v95, v96, v97);
      sub_1884406C8(v79, v80, v81);

      v82 = sub_1883F71A8();
      sub_1884406C8(v82, v83, v84);
LABEL_36:

LABEL_37:
      v4 = v93;
      goto LABEL_38;
    }

    HIDWORD(v91) = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_188402E78();
    swift_bridgeObjectRetain_n();
    sub_188404200();
    v18 = sub_1883F71A8();
    v21 = sub_18847A544(v18, v19, v20);
    v29 = sub_1883FE9E0(v21, v22, v23, v24, v25, v26, v27, v28, v8, v91, v92, v93, v94, v95, v96, v97);
    sub_1884406C8(v29, v30, v31);

    v32 = sub_1883F71A8();
    sub_1884406C8(v32, v33, v34);
    if ((v91 & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

LABEL_28:
    v4 = v93;
    v66 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v66 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v66)
    {
      v67 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v67 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        v86 = *(v95 + 2);
        v85 = *(v95 + 3);
        if (v86 >= v85 >> 1)
        {
          v88 = sub_1883F8DD4(v85);
          v95 = sub_1884770C8(v88, v86 + 1, 1, v95);
        }

        *(v95 + 2) = v86 + 1;
        v87 = &v95[40 * v86];
        v87[32] = v98;
        ++v3;
        *(v87 + 5) = v6;
        *(v87 + 6) = v2;
        *(v87 + 7) = v8;
        *(v87 + 8) = v7;
        goto LABEL_2;
      }
    }

LABEL_38:
    v5 = v96 + 40;
    ++v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18847173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of Collection.count.getter();
  v5 = sub_1884770C8(0, v4 & ~(v4 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v6 = *(a3 + 8);
  result = Sequence.sorted(by:)();
  v8 = result;
  v9 = 0;
  v36 = *(result + 16);
  v34 = result;
LABEL_2:
  v33 = v5 - 8;
  v10 = 40 * v9;
  v35 = v5;
  while (1)
  {
    if (v36 == v9)
    {

      return v5;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v37 = v10;
    v38 = *(v8 + v10 + 32);
    v12 = *(v8 + v10 + 40);
    v11 = *(v8 + v10 + 48);
    v14 = *(v8 + v10 + 56);
    v13 = *(v8 + v10 + 64);
    v15 = *(v5 + 2);
    if (!v15)
    {
      v19 = 0;
      v17 = 0;
LABEL_21:
      if (!v11)
      {

        result = sub_1884406C8(v17, v19, 0);
        goto LABEL_37;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v18 = 0;
LABEL_26:
      sub_1884406C8(v17, v19, v18);
      v24 = v38;
      v25 = v12;
      v26 = v11;
LABEL_27:
      result = sub_1884406C8(v24, v25, v26);
      goto LABEL_28;
    }

    v16 = &v33[40 * v15];
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    v20 = *(v16 + 3);
    v21 = *(v16 + 4);

    if (!v18)
    {
      goto LABEL_21;
    }

    if (!v11)
    {
      swift_bridgeObjectRetain_n();
      sub_18847A544(v17, v19, v18);

      goto LABEL_26;
    }

    if (v17 != v38 || (v19 == v12 ? (v22 = v18 == v11) : (v22 = 0), !v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_18847A544(v17, v19, v18);
      sub_1884406C8(v38, v12, v11);

      v24 = v17;
      v25 = v19;
      v26 = v18;
      goto LABEL_27;
    }

    if (v20 == v14 && v21 == v13)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_18847A544(v17, v19, v18);
      sub_1884406C8(v38, v12, v11);

      sub_1884406C8(v17, v19, v18);
LABEL_36:

LABEL_37:
      v8 = v34;
      v5 = v35;
      goto LABEL_38;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_18847A544(v17, v19, v18);
    sub_1884406C8(v38, v12, v11);

    result = sub_1884406C8(v17, v19, v18);
    if (v32)
    {
      goto LABEL_36;
    }

LABEL_28:
    v8 = v34;
    v5 = v35;
    v27 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v27 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v28 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v30 = *(v35 + 2);
        v29 = *(v35 + 3);
        if (v30 >= v29 >> 1)
        {
          result = sub_1884770C8((v29 > 1), v30 + 1, 1, v35);
          v5 = result;
        }

        *(v5 + 2) = v30 + 1;
        v31 = &v5[40 * v30];
        v31[32] = v38;
        ++v9;
        *(v31 + 5) = v12;
        *(v31 + 6) = v11;
        *(v31 + 7) = v14;
        *(v31 + 8) = v13;
        goto LABEL_2;
      }
    }

LABEL_38:
    v10 = v37 + 40;
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t (*CKDeviceCapabilitySet.capabilities.modify())(uint64_t *a1, char a2)
{
  *v0 = sub_188405684();
  v0[1] = v1;

  return sub_188471BF8;
}

uint64_t sub_188471BF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_188471390(v4);

    v6 = *v2;

    *v2 = v5;
  }

  else
  {
    v8 = sub_188471390(v3);

    v9 = *v2;

    *v2 = v8;
  }

  return result;
}

BOOL sub_188471C88(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a1[1] == a2[1] && a1[2] == a2[2];
  if (v8 || (v9 = a1[1], (_stringCompareWithSmolCheck(_:_:expecting:)())) && (v4 == v6 ? (v10 = v5 == v7) : (v10 = 0), v10))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t CKDeviceCapabilitySet.init<A>(_:)()
{
  sub_1883FC744();
  v3 = v2;
  v7 = sub_18847173C(v4, v5, v6);
  sub_1883F7930(v0);
  result = (*(v8 + 8))(v1, v0);
  *v3 = v7;
  return result;
}

void CKDeviceCapabilitySet.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = 40 * v5;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    ++v5;
    v8 = v7 + 40;
    v9 = *(v3 + v7 + 32);
    v7 += 40;
    if (v9 == v2)
    {
      v11 = *(v3 + v8);
      v10 = *(v3 + v8 + 8);
      v13 = *(v3 + v8 + 16);
      v12 = *(v3 + v8 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v6 + 16);
        sub_188477824();
      }

      v15 = *(v6 + 16);
      if (v15 >= *(v6 + 24) >> 1)
      {
        sub_188477824();
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 40 * v15;
      *(v16 + 32) = v2;
      *(v16 + 40) = v11;
      *(v16 + 48) = v10;
      *(v16 + 56) = v13;
      *(v16 + 64) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
}

void sub_188471F18(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7 = *a1;
  v6 = v4;
  CKDeviceCapabilitySet.subscript.getter(&v6);
  *a3 = v5;
}

void sub_188471F60(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v4 = *a3;

  CKDeviceCapabilitySet.subscript.setter();
}

void CKDeviceCapabilitySet.subscript.setter()
{
  sub_188403868();
  v2 = v1;
  v4 = *v3;
  v5 = *(v1 + 16);
  v6 = v5 + 1;
  v7 = 32;
  while (--v6)
  {
    v8 = *(v1 + v7);
    v7 += 40;
    if (v8 != v4)
    {
      sub_1883FDD58();

      return;
    }
  }

  v10 = 0;
  v41 = v0;
  v11 = *v0;
  v12 = *(*v0 + 16);
  v13 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v14 = v11 + 40 * v10;
  while (v12 != v10)
  {
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    ++v10;
    v15 = (v14 + 40);
    v16 = *(v14 + 32);
    v14 += 40;
    if (v16 != v4)
    {
      v17 = v15[3];
      v35 = v15[2];
      v36 = *v15;
      v39 = v15[1];

      v37 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v13 + 16);
        sub_188477824();
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1883F8DD4(v19);
        sub_188477824();
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 40 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v36;
      *(v21 + 48) = v39;
      *(v21 + 56) = v35;
      *(v21 + 64) = v37;
      goto LABEL_8;
    }
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v24 = 40 * v22;
  while (v5 != v22)
  {
    if (v22 >= *(v2 + 16))
    {
      goto LABEL_29;
    }

    ++v22;
    v25 = v24 + 40;
    v26 = *(v2 + v24 + 32);
    v24 += 40;
    if (v26 == v4)
    {
      v27 = *(v2 + v25 + 8);
      v28 = *(v2 + v25 + 24);
      v38 = *(v2 + v25 + 16);
      v40 = *(v2 + v25);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v23 + 16);
        sub_188477824();
      }

      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1883F8DD4(v30);
        sub_188477824();
      }

      *(v23 + 16) = v31 + 1;
      v32 = v23 + 40 * v31;
      *(v32 + 32) = v4;
      *(v32 + 40) = v40;
      *(v32 + 48) = v27;
      *(v32 + 56) = v38;
      *(v32 + 64) = v28;
      goto LABEL_18;
    }
  }

  v33 = *v41;

  sub_188472240(v23);
  v34 = sub_188471390(v13);

  *v41 = v34;
  sub_1883FDD58();
}

uint64_t sub_188472240(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_188478880(result, 1, sub_1884770C8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_188472318(unint64_t a1)
{
  sub_188442654(a1);
  v4 = sub_188405684();
  v5 = sub_188442654(v4);
  v6 = __OFADD__(v5, v1);
  result = v5 + v1;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_188478754(result);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_188426A14(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v2 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1884723C0(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_188478880(v4, 1, sub_188476FB0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v6 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_188472474(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1884787F4(v4, 1, &unk_1EA90D6B0, &unk_1886F8680, &type metadata for CKDatabase.RecordZoneChange.ZoneAttributesModification, sub_1884773F0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v6 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_18847253C(uint64_t a1)
{
  v4 = sub_1883F7BA8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_188478880(v4, 1, MEMORY[0x1E69E6AB8]);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1883F81D4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for CKError(0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_188472638(uint64_t a1)
{
  result = sub_1883F7BA8(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1884787F4(result, 1, v5, v6, v7, sub_1884775F4);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  if ((*(v9 + 24) >> 1) - v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1883F7E98(v9 + 16 * v10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v8 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v8)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t CKDeviceCapabilitySet.subscript.modify(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 8) = v2;
  v4 = *a2;
  *(a1 + 16) = *a2;
  v8 = *v2;
  v7 = v4;
  CKDeviceCapabilitySet.subscript.getter(&v7);
  *a1 = v5;
  return sub_1883F7BCC();
}

void sub_188472770(uint64_t *a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v5 = *(a1 + 16);

    CKDeviceCapabilitySet.subscript.setter();
  }

  else
  {
    v6 = *(a1 + 16);
    CKDeviceCapabilitySet.subscript.setter();
  }
}

Swift::Void __swiftcall CKDeviceCapabilitySet.insert(_:)(CloudKit::CKDeviceCapability *a1)
{
  level = a1->level;
  countAndFlagsBits = a1->name._countAndFlagsBits;
  object = a1->name._object;
  v6 = a1->value._countAndFlagsBits;
  v5 = a1->value._object;

  sub_188476960(sub_1884770C8);
  v7 = *(*v1 + 16);
  sub_188476B84();
  v8 = *v1;
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 40 * v7;
  *(v9 + 32) = level;
  *(v9 + 40) = countAndFlagsBits;
  *(v9 + 48) = object;
  *(v9 + 56) = v6;
  *(v9 + 64) = v5;
  *v1 = v8;
  sub_188471390(v8);
  sub_188405684();

  *v1 = object;
}

uint64_t CKDeviceCapabilitySet.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_18844E6FC(&qword_1EA90D5C8, &unk_1886F8040);
  v9 = *(a3 + 8);
  Array.append<A>(contentsOf:)();
  sub_188471390(*v3);
  sub_188405684();

  *v3 = a3;
  return result;
}

void sub_18847299C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (v4)
    {
      sub_1883FC744();
      if (v5 != v6)
      {
        v7 = 0;
        do
        {
          v8 = (v3 + v7);
          v9 = (v2 + v7);
          if (*(v3 + v7 + 32) != *(v2 + v7 + 32))
          {
            break;
          }

          v10 = v8[7];
          v11 = v8[8];
          v12 = v9[7];
          v13 = v9[8];
          v14 = v8[5] == v9[5] && v8[6] == v9[6];
          if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          if (v10 != v12 || v11 != v13)
          {
            sub_1883F7BC0();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }
          }

          v7 += 40;
          --v4;
        }

        while (v4);
      }
    }
  }
}

uint64_t sub_188472AA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_1883F877C();
  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (v4 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v23 = 0;
      return v23 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v12 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v12 = v5;
    }

    if (v9)
    {
      v13 = v12;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v15 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 < 0)
    {
      v14 = v4;
    }

    if (v4 >> 62)
    {
      v15 = v14;
    }

    if (v13 == v15)
    {
LABEL_31:
      v23 = 1;
      return v23 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_1883F4C5C(0, a3, a4);
    v26 = v5;
    v16 = v5 & 0xC000000000000001;
    v5 = v4;
    v17 = v4 & 0xC000000000000001;
    v18 = 4;
    v4 = i;
    while (1)
    {
      v19 = v18 - 4;
      v9 = v18 - 3;
      if (__OFADD__(v18 - 4, 1))
      {
        break;
      }

      if (v16)
      {
        v20 = MEMORY[0x18CFD59D0](v18 - 4, v26);
      }

      else
      {
        if (v19 >= *(v25 + 16))
        {
          goto LABEL_34;
        }

        v20 = *(v26 + 8 * v18);
      }

      a3 = v20;
      if (v17)
      {
        v21 = MEMORY[0x18CFD59D0](v18 - 4, v5);
      }

      else
      {
        if (v19 >= *(v24 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v5 + 8 * v18);
      }

      v22 = v21;
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        ++v18;
        if (v9 != v4)
        {
          continue;
        }
      }

      return v23 & 1;
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

uint64_t CKDeviceCapabilitySet.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x18CFD5EB0](v2);
  if (v2)
  {
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      MEMORY[0x18CFD5EB0](*(v4 - 32) + 1);

      sub_1883F7BC0();
      String.hash(into:)();
      String.hash(into:)();

      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int CKDeviceCapabilitySet.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  sub_1884798FC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_188472D68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1884798FC(v3, v1);
  return Hasher._finalize()();
}

unint64_t CKDeviceCapabilitySet.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 40 * result;
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

Swift::Bool __swiftcall CKDeviceCapabilitySet.contains(_:)(CloudKit::CKDeviceCapabilitySet a1)
{
  v24 = *(*a1._sortedCapabilities._rawValue + 16);
  if (v24)
  {
    v2 = 0;
    v3 = 0;
    v4 = *v1;
    v5 = *a1._sortedCapabilities._rawValue + 32;
    v6 = *v1 + 64;
    v7 = 0;
    v22 = v6;
    v23 = v5;
    while (2)
    {
      result = 0;
      v9 = (v5 + 40 * v3);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[4];
      v25 = v3 + 1;
      v26 = v13;
      v15 = (v6 + 40 * v2);
      v16 = v14;
      do
      {
        if (v7 >= *(v4 + 16))
        {
          return 0;
        }

        if (v2 < 0)
        {
          __break(1u);
          return result;
        }

        if (*(v15 - 32) == v10 && ((v17 = *(v15 - 1), v18 = *v15, *(v15 - 3) == v11) ? (v19 = *(v15 - 2) == v12) : (v19 = 0), v19 || (v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v14 = v16, v13 = v26, (v20 & 1) != 0)))
        {
          if (v17 == v13 && v18 == v14)
          {
            result = 1;
          }

          else
          {
            sub_1883FF6E8();
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            v14 = v16;
            v13 = v26;
          }
        }

        else
        {
          result = 0;
        }

        ++v7;
        v15 += 5;
      }

      while (!result);
      v2 = v7;
      v3 = v25;
      v6 = v22;
      v5 = v23;
      if (v25 != v24)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

unint64_t sub_188472FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(a3 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_188472FC0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = a3 - result;
  if (a2 < 1)
  {
    if (v6 <= 0)
    {
      v9 = __OFSUB__(v6, a2);
      v7 = v6 == a2;
      v8 = v6 - a2 < 0;
    }

    else
    {
      v9 = 0;
      v7 = 1;
      v8 = 0;
    }

    if (!(v8 ^ v9 | v7))
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_18;
  }

  if (result > v4)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_188473024(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

unint64_t sub_188473040@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_188473070(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_188473070(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(a2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t *sub_188473090(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_1884499EC(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884730EC@<X0>(uint64_t *a1@<X8>)
{
  result = CKDeviceCapabilitySet.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_188473114())(uint64_t a1)
{
  sub_1883F877C();
  v2 = sub_188470D2C(0x28uLL);
  *v1 = v2;
  CKDeviceCapabilitySet.subscript.getter(*v0, v2);
  return sub_188473178;
}

void sub_188473178(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = v1[4];

  free(v1);
}

uint64_t sub_1884731D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
  }

  return result;
}

uint64_t sub_1884731F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188473220(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_188473230@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_188472FC0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_188473280(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884732A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884732D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1884732E8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_188473318(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_188473318(unint64_t result, uint64_t a2)
{
  if (*(a2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    ++result;
  }

  return result;
}

uint64_t sub_188473330()
{
  v1 = sub_188405684();
  v2 = *v0;
  result = sub_1884499EC(v1);
  if (v2 < 0 || v2 >= result)
  {
    __break(1u);
  }

  else
  {
    *v0 = v2 + 1;
  }

  return result;
}

uint64_t sub_188473384(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1885106E0(*(a1 + 16), 0);
  v4 = sub_188511800(&v6, (v3 + 4), v2, a1);

  if (v4 == v2)
  {

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t CKDeviceCapabilitySet.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  result = sub_1884770C8(0, *(a1 + 16), 0, MEMORY[0x1E69E7CC0]);
  v4 = result;
  v45 = *(v2 + 16);
  if (!v45)
  {
LABEL_35:

    v41 = sub_188471390(v4);

    *a2 = v41;
    return result;
  }

  v5 = 0;
  v43 = v2;
  v44 = v2 + 32;
  while (2)
  {
    if (v5 < *(v2 + 16))
    {
      v6 = (v44 + 16 * v5);
      v52 = *v6;
      v7 = *(v6 + 1);
      v46 = v5 + 1;
      v8 = v7 + 64;
      v9 = 1 << *(v7 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v7 + 64);
      v47 = (v9 + 63) >> 6;

      v12 = 0;
      v48 = v7 + 64;
      v49 = v7;
      while (v11)
      {
LABEL_13:
        v14 = __clz(__rbit64(v11)) | (v12 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        v16 = *(v15 + 16);
        if (v16)
        {
          v50 = v11;
          v51 = v4;
          v17 = (*(v7 + 48) + 16 * v14);
          v53 = *v17;
          v54 = v17[1];
          v55 = MEMORY[0x1E69E7CC0];

          sub_188477824();
          v18 = v55;
          v19 = (v15 + 40);
          do
          {
            v20 = *(v19 - 1);
            v21 = *v19;

            sub_188440388();
            v23 = v22;
            v25 = v24;
            sub_188440388();
            v27 = v26;
            v29 = v28;

            v31 = *(v55 + 16);
            v30 = *(v55 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1883F8DD4(v30);
              sub_188477824();
            }

            *(v55 + 16) = v31 + 1;
            v32 = v55 + 40 * v31;
            *(v32 + 32) = v52;
            *(v32 + 40) = v23;
            *(v32 + 48) = v25;
            *(v32 + 56) = v27;
            *(v32 + 64) = v29;
            v19 += 2;
            --v16;
          }

          while (v16);

          v11 = v50;
          v4 = v51;
          v8 = v48;
          v7 = v49;
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC0];
        }

        v33 = *(v18 + 16);
        v34 = *(v4 + 16);
        v35 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v35 > *(v4 + 24) >> 1)
        {
          if (v34 <= v35)
          {
            v40 = v34 + v33;
          }

          else
          {
            v40 = *(v4 + 16);
          }

          result = sub_1884770C8(1, v40, 1, v4);
          v4 = result;
          v34 = *(result + 16);
          v36 = *(v18 + 16);
        }

        else
        {
          v36 = *(v18 + 16);
        }

        v11 &= v11 - 1;
        if (v36)
        {
          if (((*(v4 + 24) >> 1) - v34) < v33)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v33)
          {
            v37 = *(v4 + 16);
            v38 = __OFADD__(v37, v33);
            v39 = v37 + v33;
            if (v38)
            {
              goto LABEL_40;
            }

            *(v4 + 16) = v39;
          }
        }

        else
        {

          if (v33)
          {
            goto LABEL_38;
          }
        }
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v13 >= v47)
        {
          break;
        }

        v11 = *(v8 + 8 * v13);
        ++v12;
        if (v11)
        {
          v12 = v13;
          goto LABEL_13;
        }
      }

      v5 = v46;
      v2 = v43;
      if (v46 != v45)
      {
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t CKDeviceCapabilitySet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_188471390(a1);

  *a2 = v3;
  return result;
}

uint64_t CKDeviceCapabilityCheckOptions.excludeDevicesWithoutCapabilityCheckingSupport.getter()
{
  return *v0;
}

{
  v1 = OBJC_IVAR___CKDeviceCapabilityCheckOptions__wrapped;
  sub_1883FE5A0();
  return *(v0 + v1);
}

uint64_t CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for Date();

  return sub_1883F90F4(a1, v3, 1, v4);
}

uint64_t sub_188473880@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  return CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.getter(a2);
}

void sub_1884738BC(uint64_t a1)
{
  v2 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v6 - v4;
  sub_1884799AC(a1, &v6 - v4);
  CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(v5);
}

void CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v5 = sub_1883F8AE4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = sub_18840AD28();
  sub_1884799AC(v10, v11);
  v12 = type metadata accessor for Date();
  v13 = sub_1883F9014();
  if (sub_1883F971C(v13, v14, v12) == 1)
  {
    sub_18841A6BC(a1);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(a1);
    sub_1883F7930(v12);
    (*(v16 + 8))(v9, v12);
  }

  *(v2 + 8) = isa;
}

void (*CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v4);
  v6 = *(v5 + 64);
  v3[1] = sub_1883F8640();
  v3[2] = sub_1883F8640();
  v7 = sub_1883F8640();
  v3[3] = v7;
  v8 = sub_1883F8640();
  v3[4] = v8;
  v9 = *(v1 + 8);
  v3[5] = v9;
  if (v9)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for Date();
  sub_1883F90F4(v7, v10, 1, v11);
  sub_188412494(v7, v8);
  return sub_188473B44;
}

void sub_188473B44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v6 = v2[1];
    sub_1884799AC((*a1)[4], v6);
    CKDeviceCapabilityCheckOptions.excludeZoneAccessBefore.setter(v6);
    sub_18841A6BC(v3);
  }

  else
  {
    v7 = v2[2];
    v8 = sub_18840AD28();
    sub_1884799AC(v8, v9);
    v10 = type metadata accessor for Date();
    v11 = sub_1883F9014();
    v13 = sub_1883F971C(v11, v12, v10);
    v14 = v2[4];
    if (v13 == 1)
    {
      sub_18841A6BC(v2[4]);
      isa = 0;
    }

    else
    {
      v16 = v2[2];
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_18841A6BC(v14);
      sub_1883F7930(v10);
      (*(v17 + 8))(v16, v10);
    }

    v3 = v2[4];
    v5 = v2[2];
    v4 = v2[3];
    v18 = *v2;
    v6 = v2[1];

    *(v18 + 8) = isa;
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

void __swiftcall CKDeviceCapabilityCheckOptions.init()(CloudKit::CKDeviceCapabilityCheckOptions *__return_ptr retstr)
{
  v3 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v4 = sub_1883F8AE4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F8B34();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for Date();
  sub_1883F90F4(v12, 1, 1, v13);
  v22 = 0;
  sub_1884799AC(v12, v9);
  v14 = sub_18840AD28();
  sub_1884799AC(v14, v15);
  v16 = sub_1883F9014();
  if (sub_1883F971C(v16, v17, v13) == 1)
  {
    sub_18841A6BC(v9);
    sub_18841A6BC(v12);
    v18 = 0;
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(v9);
    sub_18841A6BC(v12);
    sub_1883F7930(v13);
    (*(v20 + 8))(v1, v13);
    v18 = v22;
  }

  retstr->excludeDevicesWithoutCapabilityCheckingSupport = v18;
  *(&retstr->_excludeZoneAccessBefore.value.super.isa + 7) = isa;
}

uint64_t CKDeviceCapabilityCheckOptions.init(excludeDevicesWithoutCapabilityCheckingSupport:excludeZoneAccessBefore:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v8 = sub_1883F8AE4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F8B34();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  *(a3 + 8) = 0;
  *a3 = a1;
  v14 = sub_1883F7BC0();
  sub_1884799AC(v14, v15);
  sub_1884799AC(v13, v3);
  v16 = type metadata accessor for Date();
  v17 = sub_1883F9014();
  if (sub_1883F971C(v17, v18, v16) == 1)
  {
    sub_18841A6BC(a2);
    result = sub_18841A6BC(v13);
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_18841A6BC(a2);
    sub_18841A6BC(v13);
    sub_1883F7930(v16);
    result = (*(v21 + 8))(v3, v16);
  }

  *(a3 + 8) = isa;
  return result;
}

uint64_t static CKDeviceCapabilityCheckOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3)
  {
    if (v4)
    {
      sub_1883F4C5C(0, &qword_1EA90D5D0, 0x1E695DF00);
      v5 = v4;
      v6 = v3;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

void CKDeviceCapabilityCheckOptions.hash(into:)()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int CKDeviceCapabilityCheckOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1883FEB6C();
  Hasher._combine(_:)(v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1884740C0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  Hasher.init(_seed:)();
  CKDeviceCapabilityCheckOptions.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CKDeviceCapabilityCheckResult.isSupported.getter()
{
  return *v0;
}

{
  v1 = *(v0 + OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped);
  if (v1 != 2)
  {
    return v1 & 1;
  }

  __break(1u);
  return result;
}

Swift::Int CKDeviceCapabilityCheckResult.hashValue.getter()
{
  v1 = *v0;
  sub_1883FEB6C();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1884741B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void CKContainerOptions.supportedDeviceCapabilities.getter(uint64_t *a1@<X8>)
{
  v3 = sub_1884797C0(v1);
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    *a1 = v4;
    return;
  }

  v5 = sub_188442654(v3);
  if (!v5)
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v4 = sub_188471390(v8);

    goto LABEL_17;
  }

  v6 = v5;
  v26 = MEMORY[0x1E69E7CC0];
  sub_188477824();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v26;
    v23 = v6;
    v24 = v4 & 0xC000000000000001;
    v21 = a1;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v24)
      {
        v10 = MEMORY[0x18CFD59D0](v7, v4);
      }

      else
      {
        if (v7 >= *(v22 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = &v10[OBJC_IVAR___CKDeviceCapability__wrapped];
      v13 = *&v10[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
      if (!v13)
      {
        goto LABEL_21;
      }

      v14 = v4;
      v15 = *(v12 + 1);
      v16 = *(v12 + 4);
      v25 = *(v12 + 3);
      v17 = *v12;

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1883F8DD4(v18);
        sub_188477824();
      }

      *(v26 + 16) = v19 + 1;
      v20 = v26 + 40 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v15;
      *(v20 + 48) = v13;
      *(v20 + 56) = v25;
      *(v20 + 64) = v16;
      ++v7;
      v4 = v14;
      if (v9 == v23)
      {

        a1 = v21;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1884743C4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  CKContainerOptions.supportedDeviceCapabilities.getter(&v4);
  *a2 = v4;
}

void CKContainerOptions.supportedDeviceCapabilities.setter(uint64_t a1, uint64_t a2, CloudKit::CKDeviceCapability *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_188403868();
  a27 = v29;
  a28 = v31;
  v32 = v28;
  v33 = *v30;
  if (!*v30)
  {
    isa = 0;
LABEL_11:
    [v32 setSupportedDeviceCapabilities_];
    sub_1883FDD58();

    return;
  }

  v34 = *(v33 + 16);
  if (!v34)
  {
    v44 = *v30;

LABEL_10:
    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    goto LABEL_11;
  }

  a16 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for CKDeviceCapability(0);
  v35 = 0;
  v36 = *(v33 + 16);
  v37 = (v33 + 64);
  while (v35 < *(v33 + 16))
  {
    v39 = *(v37 - 3);
    v38 = *(v37 - 2);
    v40 = *(v37 - 1);
    v41 = *v37;
    LOBYTE(a11) = *(v37 - 32);
    a12 = v39;
    a13 = v38;
    a14 = v40;
    a15 = v41;

    CKDeviceCapability.init(_:)(v42, &a11);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v43 = *(a16 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v36 == v35)
    {
      goto LABEL_15;
    }

    ++v35;
    v37 += 5;
    if (v34 == v35)
    {

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t CKContainerOptions.supportedDeviceCapabilities.modify(uint64_t *a1)
{
  a1[1] = v1;
  CKContainerOptions.supportedDeviceCapabilities.getter(a1);
  return sub_1883F7BCC();
}

uint64_t CKDatabase.checkSupportedDeviceCapabilities(_:in:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 152) = a1;
  v8 = sub_18844E6FC(&qword_1EA90D5D8, &unk_1886F8058);
  *(v5 + 176) = v8;
  v9 = *(v8 - 8);
  *(v5 + 184) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 192) = v11;
  *(v5 + 200) = v12;
  *(v5 + 208) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_188474750, 0, 0);
}

uint64_t sub_188474750()
{
  v30 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = type metadata accessor for CKDeviceCapability(0);
    v5 = 0;
    v6 = *(v1 + 16);
    v7 = (v1 + 64);
    while (v5 < *(v1 + 16))
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v29.level = *(v7 - 32);
      v29.name._countAndFlagsBits = v9;
      v29.name._object = v8;
      v29.value._countAndFlagsBits = v10;
      v29.value._object = v11;

      CKDeviceCapability.init(_:)(v12, &v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(v28 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = specialized ContiguousArray._endMutation()();
      if (v6 == v5)
      {
        goto LABEL_14;
      }

      ++v5;
      v7 += 5;
      if (v2 == v5)
      {
        v3 = v28;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_7:
    *(v0 + 224) = v3;
    v14 = *(v0 + 216);
    if (v14 == 1)
    {
      v15 = 0;
    }

    else
    {
      v16 = *(v0 + 208);
      type metadata accessor for CKDeviceCapabilityCheckOptions(0);
      v29.level = v16 & 1;
      v29.name._countAndFlagsBits = v14;
      v17 = v14;
      CKDeviceCapabilityCheckOptions.init(_:)(v18, &v29);
    }

    v25 = v15;
    *(v0 + 232) = v15;
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    v26 = *(v0 + 168);
    v27 = *(v0 + 160);
    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 240) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_188474A48;
    swift_continuation_init();
    *(v0 + 136) = v21;
    v23 = sub_188403664((v0 + 112));
    type metadata accessor for CKDeviceCapabilityCheckResult(0);
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    CheckedContinuation.init(continuation:function:)();
    (*(v19 + 32))(v23, v20, v21);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_188474CA8;
    *(v0 + 104) = &unk_1EFA276A0;
    [v26 checkSupportedDeviceCapabilities:isa inZone:v27 options:v25 completionHandler:?];
    (*(v19 + 8))(v23, v21);
    v4 = v0 + 16;
  }

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_188474A48()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v1 + 224);

    v5 = sub_188474C1C;
  }

  else
  {
    v5 = sub_188474B60;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_188474B60()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);

  v3 = v2[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];
  if (v3 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 192);
    v6 = *(v0 + 152);

    *v6 = v3 & 1;

    v7 = *(v0 + 8);

    v7();
  }
}

uint64_t sub_188474C1C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

void sub_188474CA8(uint64_t a1, void *a2, void *a3)
{
  sub_188400B68((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_1884E0A84();
  }

  else if (a2)
  {
    v5 = a2;

    sub_1884E0C04();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall CKCheckSupportedDeviceCapabilitiesOperation.init(desiredCapabilities:zoneIDs:options:)(CKCheckSupportedDeviceCapabilitiesOperation *__return_ptr retstr, CloudKit::CKDeviceCapabilitySet desiredCapabilities, Swift::OpaquePointer zoneIDs, CloudKit::CKDeviceCapabilityCheckOptions_optional *options)
{
  sub_188403868();
  v32 = v4;
  v33 = v6;
  v8 = *v7;
  v9 = *(v5 + 1);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = *v5;
    type metadata accessor for CKDeviceCapabilityCheckOptions(0);
    v26 = v11 & 1;
    v27 = v9;
    CKDeviceCapabilityCheckOptions.init(_:)((v11 & 1), &v26);
    v10 = v12;
  }

  v13 = *(v8 + 16);
  if (v13)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v14 = 0;
    v15 = *(v8 + 16);
    v16 = (v8 + 64);
    while (v14 < *(v8 + 16))
    {
      v18 = *(v16 - 3);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v26 = *(v16 - 32);
      v27 = v18;
      v28 = v17;
      v29 = v19;
      v30 = v20;

      CKDeviceCapability.init(_:)(v21, &v26);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v15 == v14)
      {
        goto LABEL_11;
      }

      ++v14;
      v16 += 5;
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for CKDeviceCapability(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v25 = Array._bridgeToObjectiveC()().super.isa;

    [v23 initWithDesiredCapabilities:isa zoneIDs:v25 options:v10];

    sub_1883FDD58();
  }
}

void __swiftcall CKCheckSupportedDeviceCapabilitiesOperation.init(desiredCapabilitySets:zoneIDs:options:)(CKCheckSupportedDeviceCapabilitiesOperation *__return_ptr retstr, Swift::OpaquePointer desiredCapabilitySets, Swift::OpaquePointer zoneIDs, CloudKit::CKDeviceCapabilityCheckOptions_optional *options)
{
  v5 = *(&options->value._excludeZoneAccessBefore.value.super.isa + 7);
  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    excludeDevicesWithoutCapabilityCheckingSupport = options->value.excludeDevicesWithoutCapabilityCheckingSupport;
    type metadata accessor for CKDeviceCapabilityCheckOptions(0);
    v32.level = excludeDevicesWithoutCapabilityCheckingSupport;
    v32.name._countAndFlagsBits = v5;
    CKDeviceCapabilityCheckOptions.init(_:)(excludeDevicesWithoutCapabilityCheckingSupport, &v32);
    v6 = v8;
  }

  v9 = *(desiredCapabilitySets._rawValue + 2);
  if (v9)
  {
    v28 = v6;
    v34 = MEMORY[0x1E69E7CC0];
    sub_188477844(0, v9, 0);
    v10 = 0;
    v11 = v34;
    rawValue = desiredCapabilitySets._rawValue;
    v31 = desiredCapabilitySets._rawValue + 32;
    v29 = v9;
    while (v10 < *(desiredCapabilitySets._rawValue + 2))
    {
      v12 = *&v31[8 * v10];
      v13 = *(v12 + 16);
      if (v13)
      {
        v33 = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        type metadata accessor for CKDeviceCapability(0);
        v14 = *(v12 + 16);
        if (v13 > v14)
        {
          goto LABEL_22;
        }

        v15 = (v12 + 64);
        while (1)
        {
          v17 = *(v15 - 3);
          v16 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *v15;
          v32.level = *(v15 - 32);
          v32.name._countAndFlagsBits = v17;
          v32.name._object = v16;
          v32.value._countAndFlagsBits = v18;
          v32.value._object = v19;

          CKDeviceCapability.init(_:)(v20, &v32);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v33 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (!v14)
          {
            break;
          }

          --v14;
          v15 += 5;
          if (!--v13)
          {

            v22 = v33;
            v9 = v29;
            desiredCapabilitySets._rawValue = rawValue;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_14:
      v34 = v11;
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_188477844((v23 > 1), v24 + 1, 1);
        v11 = v34;
      }

      ++v10;
      *(v11 + 16) = v24 + 1;
      *(v11 + 8 * v24 + 32) = v22;
      if (v10 == v9)
      {

        v6 = v28;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

LABEL_19:
    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v25 initWithDesiredCapabilitySets:isa zoneIDs:v27 options:v6];
  }
}

void CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter()
{
  v1 = sub_188479820(v0);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v4 = *(v1 + 16);
    if (v4)
    {
      v36 = MEMORY[0x1E69E7CC0];
      sub_188477864(0, v4, 0);
      v5 = 0;
      v6 = v36;
      v28 = v3;
      v29 = v3 + 32;
      v27 = v4;
      while (v5 < *(v3 + 16))
      {
        v30 = v6;
        v31 = v5;
        v7 = *(v29 + 8 * v5);
        v8 = sub_188442654(v7);
        if (v8)
        {
          v9 = v8;

          sub_188477824();
          if (v9 < 0)
          {
            goto LABEL_28;
          }

          v10 = 0;
          v11 = v2;
          v34 = v7;
          v35 = v7 & 0xC000000000000001;
          v32 = v7 & 0xFFFFFFFFFFFFFF8;
          v33 = v9;
          while (1)
          {
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v35)
            {
              v13 = MEMORY[0x18CFD59D0](v10, v7);
            }

            else
            {
              if (v10 >= *(v32 + 16))
              {
                goto LABEL_26;
              }

              v13 = *(v7 + 8 * v10 + 32);
            }

            v14 = v13;
            v15 = &v13[OBJC_IVAR___CKDeviceCapability__wrapped];
            v16 = *&v13[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
            if (!v16)
            {
              goto LABEL_29;
            }

            v17 = *(v15 + 1);
            v18 = *(v15 + 3);
            v19 = *(v15 + 4);
            v20 = *v15;
            v21 = *&v13[OBJC_IVAR___CKDeviceCapability__wrapped + 16];

            v22 = *(v11 + 16);
            if (v22 >= *(v11 + 24) >> 1)
            {
              sub_188477824();
            }

            *(v11 + 16) = v22 + 1;
            v23 = v11 + 40 * v22;
            *(v23 + 32) = v20;
            *(v23 + 40) = v17;
            *(v23 + 48) = v16;
            *(v23 + 56) = v18;
            *(v23 + 64) = v19;
            ++v10;
            v7 = v34;
            if (v12 == v33)
            {
              v4 = v27;
              v3 = v28;
              v2 = MEMORY[0x1E69E7CC0];
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
          break;
        }

        v11 = v2;
LABEL_19:
        v24 = sub_188471390(v11);

        v6 = v30;
        v26 = *(v30 + 16);
        v25 = *(v30 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_188477864((v25 > 1), v26 + 1, 1);
          v6 = v30;
        }

        v5 = v31 + 1;
        *(v6 + 16) = v26 + 1;
        *(v6 + 8 * v26 + 32) = v24;
        if (v31 + 1 == v4)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_22:
    }
  }
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilities.getter@<X0>(void *a1@<X8>)
{
  CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter();
  v3 = *(v2 + 16);

  if (v3 != 1)
  {
    goto LABEL_5;
  }

  CKCheckSupportedDeviceCapabilitiesOperation.desiredCapabilitySets.getter();
  if (!*(v5 + 16))
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(v5 + 32);

LABEL_6:
  *a1 = v6;
  return result;
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.zoneIDs.getter()
{
  result = sub_18847988C(v0);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

double CKCheckSupportedDeviceCapabilitiesOperation.options.getter@<D0>(void *a1@<X8>)
{
  v3 = [v1 options];
  if (v3)
  {
    v5 = v3;
    CKDeviceCapabilityCheckOptions.wrapped.getter(a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_1886F8030;
  }

  return result;
}

void (*CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter())(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = [v0 perResultBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188479A1C;
    *(v4 + 24) = v3;
    return sub_188479A24;
  }

  return result;
}

uint64_t sub_188475678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_18847A4C0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884756E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18847A488;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.setter(v6);
}

id CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.setter(uint64_t a1)
{
  if (a1)
  {
    sub_1883FC744();
    sub_1883F8708();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    sub_1883F71C0();
    v6[1] = 1107296256;
    v6[2] = sub_188475EAC;
    v6[3] = &unk_1EFA27740;
    v4 = _Block_copy(v6);

    [v2 setPerResultBlock_];
    _Block_release(v4);
    return sub_1883F5BA0(v2);
  }

  else
  {

    return [v2 setPerResultBlock_];
  }
}

void sub_188475888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CKDeviceCapability(0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v10 = _convertErrorToNSError(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a5 + 16))(a5, a1, v9.super.isa, a3);
}

void sub_188475938(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void *, uint64_t))
{
  v4 = a4;
  v5 = a1;
  v6 = *a2;
  v7 = *a3;
  v8 = *(*a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (a3[1])
  {
    if (!v8)
    {
LABEL_8:
      v4(v5, v9, 0, v7);

      return;
    }

    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v10 = 0;
    v11 = *(v6 + 16);
    v12 = (v6 + 64);
    while (v10 < *(v6 + 16))
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v34.level = *(v12 - 32);
      v34.name._countAndFlagsBits = v14;
      v34.name._object = v13;
      v34.value._countAndFlagsBits = v15;
      v34.value._object = v16;

      CKDeviceCapability.init(_:)(v17, &v34);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v35 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v11 == v10)
      {
        goto LABEL_22;
      }

      ++v10;
      v12 += 5;
      if (v8 == v10)
      {
        v9 = v35;
        v4 = a4;
        v5 = a1;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
LABEL_17:
      type metadata accessor for CKDeviceCapabilityCheckResult(0);
      v34.level = v7 & 1;
      CKDeviceCapabilityCheckResult.init(_:)((v7 & 1), &v34);
      v33 = v28;
      v4(v5, v9, v28, 0);

      return;
    }

    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for CKDeviceCapability(0);
    v19 = 0;
    v20 = *(v6 + 16);
    v21 = (v6 + 64);
    while (v19 < *(v6 + 16))
    {
      v23 = *(v21 - 3);
      v22 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      v34.level = *(v21 - 32);
      v34.name._countAndFlagsBits = v23;
      v34.name._object = v22;
      v34.value._countAndFlagsBits = v24;
      v34.value._object = v25;

      CKDeviceCapability.init(_:)(v26, &v34);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(v35 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v20 == v19)
      {
        goto LABEL_23;
      }

      ++v19;
      v21 += 5;
      if (v8 == v19)
      {
        v9 = v35;
        v4 = a4;
        v5 = a1;
        goto LABEL_17;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_188475BF4(uint64_t a1, unint64_t a2, unsigned __int8 *a3, void *a4, void (*a5)(void, void, void))
{
  v9 = sub_188442654(a2);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = v9;
    v33 = MEMORY[0x1E69E7CC0];
    sub_188477824();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v27 = a4;
      v28 = a3;
      v29 = a1;
      v12 = 0;
      v10 = v33;
      v30 = a5;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x18CFD59D0](v12, a2);
        }

        else
        {
          if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v14 = *(a2 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = &v14[OBJC_IVAR___CKDeviceCapability__wrapped];
        v17 = *&v14[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = *(v16 + 1);
        v19 = *(v16 + 4);
        v32 = *(v16 + 3);
        v20 = *v16;

        v33 = v10;
        v21 = v10[2];
        if (v21 >= v10[3] >> 1)
        {
          sub_188477824();
          v10 = v33;
        }

        v10[2] = v21 + 1;
        v22 = &v10[5 * v21];
        *(v22 + 32) = v20;
        v22[5] = v18;
        v22[6] = v17;
        v22[7] = v32;
        v22[8] = v19;
        ++v12;
        if (v13 == v11)
        {
          a5 = v30;
          a3 = v28;
          a1 = v29;
          a4 = v27;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  v23 = sub_188471390(v10);

  if (a4)
  {
    v36 = v23;
    v33 = a4;
    v34 = 1;
    v24 = a4;
LABEL_16:
    a5(a1, &v36, &v33);
    sub_188462CBC(v33, v34);

    return;
  }

  if (!a3)
  {
    v36 = v23;
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v33 = v35;
    v34 = 1;
    goto LABEL_16;
  }

  v36 = v23;
  v25 = a3[OBJC_IVAR___CKDeviceCapabilityCheckResult__wrapped];
  if (v25 != 2)
  {
    v33 = (v25 & 1);
    v34 = 0;
    v26 = a3;
    a5(a1, &v36, &v33);

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_188475EAC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for CKDeviceCapability(0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = a2;
  v11 = a4;
  v12 = a5;
  v9(v13, v10, a4, a5);
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.modify(void (**a1)(uint64_t a1, uint64_t *a2, uint64_t *a3))
{
  a1[2] = v1;
  *a1 = CKCheckSupportedDeviceCapabilitiesOperation.perResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t (*CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter())(uint64_t a1, char a2)
{
  result = [v0 checkSupportedDeviceCapabilitiesCompletionBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188479A3C;
    *(v4 + 24) = v3;
    return sub_188479A44;
  }

  return result;
}

uint64_t sub_18847609C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  result = CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter();
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

id sub_18847610C(uint64_t *a1, uint64_t *a2)
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
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.setter(v6);
}

id CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.setter(uint64_t a1)
{
  if (a1)
  {
    sub_1883F877C();
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    sub_1883F71C0();
    v7[1] = 1107296256;
    v7[2] = sub_1884765F8;
    v7[3] = &unk_1EFA277E0;
    v5 = _Block_copy(v7);

    [v2 setCheckSupportedDeviceCapabilitiesCompletionBlock_];
    _Block_release(v5);
    [v2 setCanDropItemResultsEarly_];
    return sub_1883F5BA0(v3);
  }

  else
  {

    return [v2 setCheckSupportedDeviceCapabilitiesCompletionBlock_];
  }
}

void sub_1884762BC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
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

uint64_t sub_188476398(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
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
  sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
  sub_18841A9C8();
  v11 = Dictionary.init(dictionaryLiteral:)();
  a3(v11, 0);
}

void sub_188476538(uint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_getErrorValue();
  v5 = a2;
  if (sub_1885164AC(v7))
  {

LABEL_4:
    a3(0, 0);
    return;
  }

  v6 = a2;
  a3(a2, 1);
}

uint64_t sub_1884765F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    sub_18844E6FC(&qword_1EA90D738, &qword_1886F8730);
    sub_18841A9C8();
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.modify(uint64_t (**a1)(uint64_t a1, char a2))
{
  a1[2] = v1;
  *a1 = CKCheckSupportedDeviceCapabilitiesOperation.checkSupportedDeviceCapabilitiesResultBlock.getter();
  a1[1] = v3;
  return sub_1883F7BCC();
}

uint64_t sub_188476748(uint64_t *a1, char a2, void (*a3)(uint64_t))
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

Swift::Int sub_1884767DC(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1885143B0(v5);
    v5 = v6;
  }

  v8 = *(v5 + 16);
  result = sub_1884788F8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1884768A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!result)
  {
    v8 = *(v6 + 16);
    sub_188410EAC();
    result = a4();
    *v4 = result;
  }

  return result;
}

uint64_t sub_188476960(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_188476AF4()
{
  sub_1884057D4();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_188476B84()
{
  sub_1884057D4();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

void sub_188476CB0()
{
  sub_1884007CC();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_18840AF6C(v6);
  if (v3)
  {
    sub_18844E6FC(&qword_1EA90D6C8, &unk_1886F86A0);
    v9 = sub_188405D3C();
    v10 = j__malloc_size(v9);
    sub_1883F791C(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[40 * v2 + 32] <= v9 + 32)
    {
      v12 = sub_1883FF6E8();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
    sub_1883FF6E8();
    swift_arrayInitWithCopy();
  }
}

void sub_188476DA8()
{
  sub_1884007CC();
  if (v3)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_18844E6FC(&qword_1EA90D690, &qword_1886F8660);
    v9 = sub_1883FF58C();
    j__malloc_size(v9);
    sub_1883F9194();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void *sub_188476E7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D768, &qword_1886F8760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&unk_1EA90D770, &qword_1886F8768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188476FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D6B8, &qword_1886F8688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1884770C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_188477234()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FF58C();
    sub_1883FF0C4(v15);
    sub_1883F8DC4(v16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v18[32 * v2] <= v17)
    {
      memmove(v17, v18, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void sub_1884772EC()
{
  sub_1884007CC();
  if (v3)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_188510764(v7, v4);
  v9 = *(type metadata accessor for PropertyDescription() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_1884776DC(v0 + v10, v7, v8 + v10, MEMORY[0x1E69947E0]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1884773F0()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FF58C();
    sub_1883FF0C4(v15);
    sub_1883F8DC4(v16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v18[8 * v2] <= v17)
    {
      memmove(v17, v18, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void sub_1884774A8()
{
  sub_1884007CC();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_18840AF6C(v6);
  if (v3)
  {
    sub_18844E6FC(&qword_1EA90D700, &qword_1886F86E8);
    v9 = sub_188405D3C();
    v10 = j__malloc_size(v9);
    sub_1883F791C(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[24 * v2 + 32] <= v9 + 32)
    {
      v12 = sub_1883FF6E8();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D708, &qword_1886F86F0);
    sub_1883FF6E8();
    swift_arrayInitWithCopy();
  }
}

void sub_1884775F4()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FA31C();
    j__malloc_size(v15);
    sub_1883F9194();
    v15[2] = v2;
    v15[3] = v16;
  }

  sub_1883F9764();
  if (v1)
  {
    sub_18840229C();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void sub_1884776DC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1883FC744();
  if (v9 < v8 || (v10 = (a4)(0), sub_1883F7930(v10), v5 + *(v11 + 72) * v4 <= a3))
  {
    a4(0);
    sub_18840AD28();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_18840AD28();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1884777AC(void *a1, int64_t a2, char a3)
{
  result = sub_188477B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1884777CC()
{
  v1 = *v0;
  sub_188478380();
  *v0 = v2;
}

char *sub_188477804(char *a1, int64_t a2, char a3)
{
  result = sub_188477C90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_188477824()
{
  v1 = *v0;
  sub_188477DA8();
  *v0 = v2;
}

void *sub_188477844(void *a1, int64_t a2, char a3)
{
  result = sub_188477E88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_188477864(char *a1, int64_t a2, char a3)
{
  result = sub_188477FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1884778DC(char *a1, int64_t a2, char a3)
{
  result = sub_1884780C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1884778FC(char *a1, int64_t a2, char a3)
{
  result = sub_1884781C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_18847791C()
{
  v1 = *v0;
  sub_1884782CC();
  *v0 = v2;
}

void sub_188477954()
{
  v1 = *v0;
  sub_1884782CC();
  *v0 = v2;
}

void sub_18847798C()
{
  v1 = *v0;
  sub_188478380();
  *v0 = v2;
}

void *sub_1884779C4(void *a1, int64_t a2, char a3)
{
  result = sub_188478438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1884779E4()
{
  v1 = *v0;
  sub_1884782CC();
  *v0 = v2;
}

void sub_188477A1C()
{
  v1 = *v0;
  sub_1884782CC();
  *v0 = v2;
}

void sub_188477AA8()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FF58C();
    sub_1883FF0C4(v15);
    sub_1883F8DC4(v16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v18[32 * v2] <= v17)
    {
      memmove(v17, v18, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void *sub_188477B60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D730, &qword_1886F8728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188477C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D6B8, &qword_1886F8688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_188477DA8()
{
  sub_1884007CC();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_18840AF6C(v6);
  if (v3)
  {
    sub_18844E6FC(&qword_1EA90D750, &qword_1886F8748);
    v9 = sub_188405D3C();
    v10 = j__malloc_size(v9);
    sub_1883F791C(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v2] <= v11)
    {
      memmove(v11, v12, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_188477E88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D748, &qword_1886F8740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D5E0, &qword_1886F8068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_188477FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D740, &qword_1886F8738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1884780C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D688, &qword_1886F8658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1884781C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_18844E6FC(&qword_1EA90D718, &unk_1886F8700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1884782CC()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FA31C();
    j__malloc_size(v15);
    sub_1883F9194();
    v15[2] = v2;
    v15[3] = v16;
  }

  sub_1883F9764();
  if (v1)
  {
    sub_18840229C();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void sub_188478380()
{
  sub_18840548C();
  if (v5)
  {
    sub_1883F876C();
    if (v7 != v8)
    {
      sub_1883FE588();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1883FA074(v6);
  if (v3)
  {
    sub_1883F83D0(v9, v10, v11, v12, v13, v14);
    v15 = sub_1883FF58C();
    sub_1883FF0C4(v15);
    sub_1883F8DC4(v16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1883F9764();
  if (v1)
  {
    if (v3 != v0 || &v18[8 * v2] <= v17)
    {
      memmove(v17, v18, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_1883FB4FC();
  }
}

void *sub_188478438(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D6F0, &qword_1886F86D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18844E6FC(&qword_1EA90D6F8, &qword_1886F86E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1884785A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    sub_1883F876C();
    if (v13 != v14)
    {
      sub_1883FE588();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1883F83D0(a1, a2, a3, a4, a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1884776DC(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_188478754(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1884787F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v9;
  if (!result || a1 > *(v9 + 24) >> 1)
  {
    if (*(v9 + 16) > a1)
    {
      v11 = *(v9 + 16);
    }

    sub_188410EAC();
    result = a6();
    *v6 = result;
  }

  return result;
}