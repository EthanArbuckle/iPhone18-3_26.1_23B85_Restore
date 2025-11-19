uint64_t sub_100DC50EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DC5154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100DC51B4()
{
  result = qword_101A201F8;
  if (!qword_101A201F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A201F8);
  }

  return result;
}

unint64_t sub_100DC5208()
{
  result = qword_101A20208;
  if (!qword_101A20208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A20208);
  }

  return result;
}

uint64_t sub_100DC5290()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100DC5340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100DC53CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100DC54A8()
{
  sub_100DA725C(319, &unk_101A205B8, type metadata accessor for CRLProto_Path.Element, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC55A8()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC5648()
{
  sub_100DA725C(319, &qword_101A206F0, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A206F8, type metadata accessor for CRLProto_Path, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100DA725C(319, &qword_101A20708, type metadata accessor for CRLProto_Date, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100DC590C(319, &qword_101A20710, &type metadata for Float, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_100DC590C(319, &unk_101A20720, &type metadata for Double, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100DC590C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100DC5984()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC5A40()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC5C04()
{
  sub_100DA725C(319, &qword_101A209D8, type metadata accessor for CRLProto_Data, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A209E0, type metadata accessor for CRLProto_TextSelection, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A209E8, type metadata accessor for CRLProto_TableCellSelection, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC5D78()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC5E8C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100DC5FDC()
{
  sub_100DC590C(319, &qword_101A1FC48, &type metadata for UInt32, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &qword_101A20CF0, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20CF8, type metadata accessor for CRLProto_ObjectInfo.AssetReference, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A20D00, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v4 <= 0x3F)
          {
            sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
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

uint64_t sub_100DC6248()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC62E4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC63C0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A21010, type metadata accessor for CRLProto_Size, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC656C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100DC66F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1005B981C(&qword_1019F67C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100DC6800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019F67C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100DC6908()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC6A04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_100DC6AC4()
{
  sub_100DA725C(319, &qword_101A209D8, type metadata accessor for CRLProto_Data, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC6BD8()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019F67C0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100DC6DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1005B981C(&qword_1019F67C0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_100DC6EE0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC6FC4()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A216A8, type metadata accessor for CRLProto_BoardIdentifier, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100DC70D4()
{
  result = qword_101A216E0;
  if (!qword_101A216E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A216E0);
  }

  return result;
}

unint64_t sub_100DC715C()
{
  result = qword_101A216F8;
  if (!qword_101A216F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A216F8);
  }

  return result;
}

unint64_t sub_100DC71E4()
{
  result = qword_101A21710;
  if (!qword_101A21710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21710);
  }

  return result;
}

unint64_t sub_100DC726C()
{
  result = qword_101A21728;
  if (!qword_101A21728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21728);
  }

  return result;
}

unint64_t sub_100DC72C4()
{
  result = qword_101A21730;
  if (!qword_101A21730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21730);
  }

  return result;
}

unint64_t sub_100DC731C()
{
  result = qword_101A21738;
  if (!qword_101A21738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21738);
  }

  return result;
}

unint64_t sub_100DC7374()
{
  result = qword_101A21740;
  if (!qword_101A21740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21740);
  }

  return result;
}

unint64_t sub_100DC73CC()
{
  result = qword_101A21748;
  if (!qword_101A21748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21748);
  }

  return result;
}

unint64_t sub_100DC7424()
{
  result = qword_101A21750;
  if (!qword_101A21750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A21750);
  }

  return result;
}

uint64_t sub_100DC751C()
{

  v1 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v2);

  sub_100DC8F08(v0 + qword_101A218A0);
  v4 = *(*v0 + 280);
  type metadata accessor for GroupSession.State();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_100DC766C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  a1[3] = *(*v1 + 248);
  a1[4] = *(v2 + 256);
  sub_10002C58C(a1);
  return GroupSession.activity.getter();
}

uint64_t sub_100DC76DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *v3;
  sub_1005B981C(&qword_1019FB750);
  v4[15] = swift_task_alloc();
  v4[16] = *(v5 + 248);
  v4[17] = *(*(v5 + 256) + 8);
  v6 = type metadata accessor for GroupSession.State();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return _swift_task_switch(sub_100DC78AC, v9, v8);
}

uint64_t sub_100DC78AC()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[14];
  v5 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[28] = *(v4 + qword_101AD8560);
  GroupSession.id.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v10, "Setting up group session sync controller. Group Session UUID: %{public}@", 72, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v11 = *(v4 + 32);
  v0[29] = v11;
  if (v11)
  {

    return _swift_task_switch(sub_100DC7B4C, v11, 0);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    v16 = swift_task_alloc();
    v0[30] = v16;
    *(v16 + 16) = v12;
    *(v16 + 24) = v13;
    v17 = swift_task_alloc();
    v0[31] = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    type metadata accessor for CRLGroupSessionSyncController();
    swift_allocObject();
    swift_unknownObjectRetain();
    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v18[1] = sub_100DC7D4C;

    return sub_100FF3118(v14, v15, &unk_1014B6220, v16, &unk_1014B6230, v17);
  }
}

uint64_t sub_100DC7B4C()
{
  *(v0[29] + 120) = v0[12];
  swift_unknownObjectWeakAssign();
  v1 = v0[26];
  v2 = v0[27];

  return _swift_task_switch(sub_100DC7BBC, v1, v2);
}

uint64_t sub_100DC7BBC()
{

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  *(v0 + 280) = static GroupSession.State.== infix(_:_:)() & 1;
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = *(v5 + 32);
  *(v0 + 272) = v7;
  if (v7)
  {

    return _swift_task_switch(sub_100DC8050, v7, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100DC7D4C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_100DC7EB4, v4, v3);
}

uint64_t sub_100DC7EB4()
{
  *(*(v0 + 112) + 32) = *(v0 + 264);

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  *(v0 + 280) = static GroupSession.State.== infix(_:_:)() & 1;
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = *(v5 + 32);
  *(v0 + 272) = v7;
  if (v7)
  {

    return _swift_task_switch(sub_100DC8050, v7, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100DC8050()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  if (v2 != *(v1 + 210))
  {
    *(v1 + 210) = v2;
    v3 = *(v0 + 272);
    if (v2 & 1) != 0 && (*(v3 + 208))
    {
      v4 = *(v0 + 120);
      *(v3 + 208) = 0;
      v5 = v3;
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = sub_100DC90F8();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v7;
      v8[4] = v5;

      sub_10064191C(0, 0, v4, &unk_1014AA538, v8);
    }
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  return _swift_task_switch(sub_100DC8184, v9, v10);
}

uint64_t sub_100DC8184()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100DC82CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_101A1A740);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  *(v3 + 4) = 0;
  v10 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v3[v10], a1, v11);
  v13(&v3[OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID], a2, v11);
  v14 = *(v7 + 56);
  v13(v9, a1, v11);
  v9[v14] = 0;
  sub_1005B981C(&qword_101A1A790);
  swift_allocObject();
  *(v3 + 2) = CurrentValueSubject.init(_:)();
  v18[1] = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A1A7A0);
  swift_allocObject();
  v15 = CurrentValueSubject.init(_:)();
  v16 = *(v12 + 8);
  v16(a2, v11);
  v16(a1, v11);
  *(v3 + 3) = v15;
  return v3;
}

uint64_t sub_100DC84B0()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100DC8540, v1, v0);
}

uint64_t sub_100DC85C0()
{

  v1 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100DC86AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLBoardGroupSession();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100DC8708(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a4;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100DC87D0, v7, v6);
}

uint64_t sub_100DC87D0()
{
  v1 = v0[5];
  v0[11] = type metadata accessor for CRLRealTimeMessenger();
  v2 = *(v1 + qword_101AD8560);

  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100DC88C4;
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  return sub_1008DE4E4(v2, v4, v5, v6);
}

uint64_t sub_100DC88C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100DC89EC, v4, v3);
}

uint64_t sub_100DC89EC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[2];

  v3[3] = v2;
  v3[4] = &off_10188C8F0;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC8A70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a4;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100DC8B38, v7, v6);
}

uint64_t sub_100DC8B38()
{
  v1 = v0[5];
  v0[11] = type metadata accessor for CRLUnreliableRealTimeMessenger();
  v2 = *(v1 + qword_101AD8560);

  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100DC8C2C;
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  return sub_10067F450(v2, v4, v5, v6);
}

uint64_t sub_100DC8C2C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100DC8D54, v4, v3);
}

uint64_t sub_100DC8D54()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[2];

  v3[3] = v2;
  v3[4] = &off_10187F6A8;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC8DD8()
{

  sub_100DC8F08(v0 + qword_101A218A0);
  v1 = *(*v0 + 280);
  type metadata accessor for GroupSession.State();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100DC8EB0()
{
  sub_100DC751C();

  return swift_deallocClassInstance();
}

uint64_t sub_100DC8F08(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A08DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100DC8F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002D4C8;

  return sub_100DC8708(a1, a2, a3, v9, v8);
}

uint64_t sub_100DC9034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002D3D4;

  return sub_100DC8A70(a1, a2, a3, v9, v8);
}

unint64_t sub_100DC90F8()
{
  result = qword_101A1A758;
  if (!qword_101A1A758)
  {
    type metadata accessor for CRLGroupSessionSyncController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1A758);
  }

  return result;
}

void *sub_100DC9150(uint64_t a1)
{
  v2 = v1;
  v75 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v75);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v95 = &v68 - v6;
  v86 = type metadata accessor for UUID();
  v7 = *(v86 - 8);
  v8 = __chkstk_darwin(v86);
  v84 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v93 = &v68 - v11;
  __chkstk_darwin(v10);
  v83 = &v68 - v12;
  v13 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v91 = type metadata accessor for CRLBoardIdentifier(0);
  v71 = *(v91 - 8);
  v16 = __chkstk_darwin(v91);
  v69 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v68 - v18;
  v94 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
    result = Set.Iterator.init(_cocoa:)();
    v20 = v96[3];
    v94 = v96[2];
    v21 = v96[4];
    v22 = v96[5];
    v23 = v96[6];
  }

  else
  {
    v24 = -1 << *(v94 + 32);
    v20 = v94 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v94 + 56);

    v22 = 0;
  }

  v70 = v21;
  v27 = (v21 + 64) >> 6;
  v85 = (v7 + 56);
  v82 = (v7 + 48);
  v81 = (v7 + 32);
  v80 = (v7 + 16);
  v79 = CKCurrentUserDefaultName;
  v73 = (v7 + 8);
  v88 = (v71 + 48);
  v89 = (v71 + 56);
  v72 = _swiftEmptyArrayStorage;
  v78 = v15;
  v90 = v27;
  v87 = v20;
LABEL_8:
  v28 = v22;
  v29 = v23;
  v30 = v86;
  if (v94 < 0)
  {
    while (1)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34)
      {
        goto LABEL_46;
      }

      v96[9] = v34;
      sub_100006370(0, &qword_1019F69D0);
      swift_dynamicCast();
      v33 = v96[0];
      v22 = v28;
      v23 = v29;
      v30 = v86;
      if (!v96[0])
      {
        goto LABEL_46;
      }

LABEL_17:
      v35 = [v33 zoneName];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39._countAndFlagsBits = 0x5F6472616F42;
      v39._object = 0xE600000000000000;
      v40 = String.hasPrefix(_:)(v39);
      if (v40)
      {
        v96[0] = 95;
        v96[1] = 0xE100000000000000;
        __chkstk_darwin(v40);
        *(&v68 - 2) = v96;
        sub_100E8FE90(sub_100C31CAC, (&v68 - 4), v36, v38);
        if (v41)
        {

          (*v85)(v95, 1, 1, v30);
LABEL_23:
          v20 = v87;
          sub_10000CAAC(v95, &qword_1019F6990);
          v43 = 1;
          goto LABEL_38;
        }

        v42 = String.index(after:)();
        sub_100DCBC88(v42, v36, v38);
        v92 = v33;

        v15 = v78;
        v30 = v86;
        static String._fromSubstring(_:)();

        v33 = v92;
        UUID.init(uuidString:)();
      }

      else
      {
        (*v85)(v95, 1, 1, v30);
      }

      if ((*v82)(v95, 1, v30) == 1)
      {
        goto LABEL_23;
      }

      v44 = v83;
      v76 = *v81;
      v76(v83, v95, v30);
      v45 = *v80;
      (*v80)(v93, v44, v30);
      v46 = [v33 ownerName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v51 = v47 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v50;
      v77 = v2;
      if (v51)
      {
        break;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_31;
      }

      v53 = [v33 ownerName];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

LABEL_32:
      v92 = v33;
      v45(v84, v93, v30);
      if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
      {
        v58 = v23;

        v15 = v78;
LABEL_36:

        v54 = 0;
        v56 = 0xE000000000000000;
        goto LABEL_37;
      }

      v58 = v23;
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = v78;
      if (v59)
      {
        goto LABEL_36;
      }

LABEL_37:
      v60 = *v73;
      (*v73)(v93, v30);
      v61 = v74;
      v76(v74, v84, v30);
      v62 = (v61 + *(v75 + 20));
      *v62 = v54;
      v62[1] = v56;
      sub_100025668(v61, v15, type metadata accessor for CRLBoardIdentifierStorage);
      v60(v83, v30);
      v43 = 0;
      v2 = v77;
      v20 = v87;
      v23 = v58;
      v33 = v92;
LABEL_38:
      v63 = v91;
      (*v89)(v15, v43, 1, v91);

      if ((*v88)(v15, 1, v63) != 1)
      {
        v64 = v68;
        sub_100025668(v15, v68, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v64, v69, type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100B36BE4(0, v72[2] + 1, 1, v72);
        }

        v66 = v72[2];
        v65 = v72[3];
        if (v66 >= v65 >> 1)
        {
          v72 = sub_100B36BE4(v65 > 1, v66 + 1, 1, v72);
        }

        v67 = v72;
        v72[2] = v66 + 1;
        result = sub_100025668(v69, v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v66, type metadata accessor for CRLBoardIdentifier);
        v27 = v90;
        goto LABEL_8;
      }

      result = sub_10000CAAC(v15, &unk_1019F52D0);
      v28 = v22;
      v29 = v23;
      v27 = v90;
      if ((v94 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    v54 = 0;
    v56 = 0xE000000000000000;
    goto LABEL_32;
  }

LABEL_9:
  v31 = v28;
  v32 = v29;
  v22 = v28;
  if (v29)
  {
LABEL_13:
    v23 = (v32 - 1) & v32;
    v33 = *(*(v94 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v32)))));
    if (v33)
    {
      goto LABEL_17;
    }

LABEL_46:
    sub_100035F90();
    return v72;
  }

  else
  {
    while (1)
    {
      v22 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v22 >= v27)
      {
        goto LABEL_46;
      }

      v32 = *(v20 + 8 * v22);
      ++v31;
      if (v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100DC9C50(unint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_101A21D00);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v28 = type metadata accessor for CRLAssetAddress();
  v23 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v22 = &v21 - v10;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 & 0xC000000000000001;
    v13 = (v23 + 48);
    v14 = _swiftEmptyArrayStorage;
    v21 = a2;
    v24 = i;
    while (v26)
    {
      v15 = a1;
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v29 = a1;
      sub_100E3892C(&v29, a2, v7);
      if (v2)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v28) == 1)
      {
        sub_10000CAAC(v7, &qword_101A21D00);
      }

      else
      {
        v17 = v22;
        sub_100025668(v7, v22, type metadata accessor for CRLAssetAddress);
        sub_100025668(v17, v27, type metadata accessor for CRLAssetAddress);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100B38E74(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_100B38E74(v18 > 1, v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        sub_100025668(v27, v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for CRLAssetAddress);
        a2 = v21;
      }

      ++v12;
      a1 = v15;
      if (v16 == v24)
      {
        return v14;
      }
    }

    if (v12 >= *(v25 + 16))
    {
      goto LABEL_21;
    }

    v15 = a1;
    a1 = *(a1 + 8 * v12 + 32);

    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_100DC9FB0()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v6 = v0;
    v7 = v0;
    v8 = sub_10001F1A0(v6);

    v9 = *&v0[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = *(v1 + 16);
  v11 = v3;
  os_unfair_lock_unlock(v10);
  return v4;
}

uint64_t sub_100DCA060(uint64_t a1)
{
  type metadata accessor for CRLTransactableHashableWrapper();
  sub_1000066D0(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v12 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));

    sub_100E6B218(&v11, v10);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v12;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCA1B0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_100E6AF38(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCA410(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_1000066D0(&qword_101A21CA0, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v21 = result;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  for (i = (v14 + 63) >> 6; v16; result = sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_10000C83C(*(a1 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100025668(v11, v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100E6F3DC(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {

      return v21;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCA65C(uint64_t a1)
{
  v2 = _s5BoardVMa(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - v8;
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_1000066D0(&qword_101A21C98, _s5BoardVMa);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v21 = result;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  for (i = (v14 + 63) >> 6; v16; result = sub_100026028(v9, _s5BoardVMa))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_10000C83C(*(a1 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v11, _s5BoardVMa);
    sub_100025668(v11, v6, _s5BoardVMa);
    sub_100E703AC(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {

      return v21;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100DCA8A8(uint64_t a1)
{
  sub_100006370(0, &qword_1019F69D0);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100E7227C(v9, *(*(a1 + 48) + ((v7 << 9) | (8 * v8))), &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100DCAA28(uint64_t a1)
{
  v2 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v34 - v6;
  v7 = sub_1005B981C(&qword_101A19C30);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  sub_1000066D0(&qword_101A21FC8, type metadata accessor for CRLSpotlightManager.ChangeType);
  result = Set.init(minimumCapacity:)();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v45 = result;
  v42 = (v3 + 56);
  v43 = v2;
  v39 = v3;
  v18 = (v3 + 48);
  v34 = a1 + 32;
  v35 = a1;
  v19 = 0xF000000000000007;
  while (1)
  {
    v44 = v19;
    if ((~v19 & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    v37 = v17;
    v38 = v14;
    v20 = 0;
    v21 = (v14 + 64) >> 6;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v22 = v20;
      v2 = v43;
LABEL_12:
      v25 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      sub_10000C83C(*(v44 + 48) + *(v39 + 72) * (v25 | (v22 << 6)), v10, type metadata accessor for CRLSpotlightManager.ChangeType);
      v26 = 0;
      v24 = v22;
LABEL_13:
      (*v42)(v10, v26, 1, v2);
      v27 = *v18;
      if ((*v18)(v10, 1, v2) == 1)
      {
        break;
      }

      sub_10003DFF8(v10, v12, &qword_101A19C30);
      if (v27(v12, 1, v2) == 1)
      {
        goto LABEL_27;
      }

      v14 = v41;
      sub_100025668(v12, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
      v28 = v40;
      sub_10004BAE8(v40, v14);
      sub_100026028(v28, type metadata accessor for CRLSpotlightManager.ChangeType);
      v20 = v24;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    result = sub_10000CAAC(v10, &qword_101A19C30);
    v17 = v37;
    v14 = v38;
LABEL_19:
    v29 = *(v35 + 16);
    if (v17 == v29)
    {
      goto LABEL_26;
    }

    if (v17 >= v29)
    {
      __break(1u);
      return result;
    }

    v19 = *(v34 + 8 * v17);
    v38 = v17 + 1;
    v30 = -1 << *(v19 + 32);
    v31 = *(v19 + 56);
    v37 = ~v30;
    v32 = -v30;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v36 = v33 & v31;

    result = sub_100EA52CC(v44);
    v16 = v36;
    v14 = v37;
    v15 = v19 + 56;
    v17 = v38;
  }

LABEL_5:
  if (v21 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v2 = v43;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v16 = 0;
      v26 = 1;
      goto LABEL_13;
    }

    v16 = *(v15 + 8 * v22);
    ++v20;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  v38 = v14;
  (*v42)(v12, 1, 1, v2);
LABEL_27:

  sub_100EA52CC(v44);
  return v45;
}

uint64_t sub_100DCAE8C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_100E6AF38(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCB0EC(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100E6DE34(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100DCB208(uint64_t a1)
{
  type metadata accessor for CRLSceneInfo();
  sub_1000066D0(&qword_101A28670, type metadata accessor for CRLSceneInfo);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100E72958(v9, *(*(a1 + 48) + ((v7 << 9) | (8 * v8))), type metadata accessor for CRLSceneInfo, &qword_1019F3688, &unk_1014B6860, type metadata accessor for CRLSceneInfo);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100DCB394()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager;
  if (*&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager])
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager];
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v5 + 16));
    v6 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v7 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v7)
    {
      v8 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v10 = v0;
      v11 = sub_10001F1A0(v10);

      v12 = *&v0[v6];
      *&v0[v6] = v11;
      v8 = v11;

      v7 = 0;
    }

    v13 = *(v5 + 16);
    v14 = v7;
    os_unfair_lock_unlock(v13);
    type metadata accessor for CRLAssetDownloadManager();
    v3 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 256) = 0;
    *(v3 + 264) = &_swiftEmptySetSingleton;
    *(v3 + 272) = &_swiftEmptyDictionarySingleton;
    *(v3 + 112) = v8;
    *(v3 + 120) = sub_100EA632C;
    *(v3 + 128) = v4;
    *(v3 + 136) = sub_10072CF0C;
    *(v3 + 144) = 0;
    *(v3 + 152) = 3;
    *(v3 + 160) = xmmword_1014B6240;
    *&v0[v2] = v3;
  }

  v15 = *(v1 + 16);

  os_unfair_lock_unlock(v15);
  return v3;
}

uint64_t sub_100DCB554(unint64_t a1)
{
  v21 = type metadata accessor for UUID();
  v2 = *(v21 - 8);
  v3 = __chkstk_darwin(v21);
  v20 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v19 = &v14 - v6;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      v18 = a1 & 0xC000000000000001;
      v15 = (v2 + 8);
      v16 = (v2 + 16);
      while (v18)
      {
        v9 = a1;
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v20;
        v11 = v21;
        (*v16)(v20, v2 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v21);
        v12 = v19;
        sub_100E6AF38(v19, v10);
        (*v15)(v12, v11);

        ++v8;
        v13 = a1 == v7;
        a1 = v9;
        if (v13)
        {
          return result;
        }
      }

      if (v8 >= *(v17 + 16))
      {
        goto LABEL_13;
      }

      v9 = a1;
      v2 = *(a1 + 8 * v8 + 32);

      a1 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100DCB764(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *(&off_101872DD8 + v6++ + 32);
    v9 = 0x646567727570;
    if (v8 != 2)
    {
      v9 = 0xD000000000000028;
    }

    v10 = 0xE600000000000000;
    if (v8 != 2)
    {
      v10 = 0x80000001015A87B0;
    }

    v11 = 0x64695F656E6F7ALL;
    if (v8)
    {
      v11 = 0x646574656C6564;
    }

    if (v8 <= 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v8 <= 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v10;
    }

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100024CBC((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v5;
    *(v17 + 5) = v4;
  }

  while (v6 != 4);

  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v18 = BidirectionalCollection<>.joined(separator:)();

  return v18;
}

uint64_t sub_100DCB998(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = a2;
    v26 = a1;
  }

  else
  {
    v26 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = *(&off_101872E00 + v5++ + 32);
    v8 = 0x80000001015A3810;
    v9 = 0xD00000000000002DLL;
    v10 = 0x656C746974;
    if (v7 == 7)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (v7 != 6)
    {
      v9 = v10;
    }

    v11 = 0x80000001015A3760;
    if (v7 != 6)
    {
      v11 = v8;
    }

    v12 = 0xD000000000000014;
    if (v7 != 4)
    {
      v12 = 0xD000000000000026;
    }

    v13 = 0x80000001015A33F0;
    if (v7 == 4)
    {
      v13 = 0x80000001015A3590;
    }

    if (v7 <= 5)
    {
      v9 = v12;
      v11 = v13;
    }

    v14 = 0x5F65726168736B63;
    if (v7 != 2)
    {
      v14 = 0xD000000000000011;
    }

    v15 = 0xEC00000061746164;
    if (v7 != 2)
    {
      v15 = 0x80000001015A3BE0;
    }

    v16 = 0x696669746E656469;
    if (v7)
    {
      v16 = 1635017060;
    }

    v17 = 0xEA00000000007265;
    if (v7)
    {
      v17 = 0xE400000000000000;
    }

    if (v7 <= 1)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v7 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = v9;
    }

    if (v7 <= 3)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    String.append(_:)(v20);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100024CBC(0, *(v6 + 2) + 1, 1, v6);
    }

    v22 = *(v6 + 2);
    v21 = *(v6 + 3);
    if (v22 >= v21 >> 1)
    {
      v6 = sub_100024CBC((v21 > 1), v22 + 1, 1, v6);
    }

    *(v6 + 2) = v22 + 1;
    v23 = &v6[16 * v22];
    *(v23 + 4) = v26;
    *(v23 + 5) = v4;
  }

  while (v5 != 9);

  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  v24 = BidirectionalCollection<>.joined(separator:)();

  return v24;
}

unint64_t sub_100DCBC88(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCBCD4@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_1005B981C(&qword_101A21DF0);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = (&v42 - v3);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A22DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&qword_101A22DF0);
  v48 = *(v11 - 8);
  v49 = v11;
  result = __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v14;
  v51 = v18;
  if (!v19)
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v34 = v48;
        v29 = v49;
        v33 = v15;
        (*(v48 + 56))(v10, 1, 1, v49);
        v35 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = v10;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v44 = v10;
  v46 = a1;
  v20 = v17;
LABEL_11:
  v45 = (v19 - 1) & v19;
  v24 = __clz(__rbit64(v19)) | (v20 << 6);
  v25 = (*(v15 + 48) + 16 * v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = v15;
  (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v24, v4);
  v29 = v49;
  v30 = *(v49 + 48);
  v31 = v44;
  *v44 = v26;
  *(v31 + 1) = v27;
  v32 = v4;
  v33 = v28;
  v10 = v31;
  (*(v5 + 32))(&v31[v30], v7, v32);
  v34 = v48;
  (*(v48 + 56))(v10, 0, 1, v29);

  v35 = v45;
  a1 = v46;
  v23 = v20;
LABEL_12:
  *v1 = v33;
  v1[1] = v16;
  v1[2] = v51;
  v1[3] = v23;
  v1[4] = v35;
  if ((*(v34 + 48))(v10, 1, v29) == 1)
  {
    sub_10000CAAC(v10, &unk_101A22DD0);
    return (*(v47 + 56))(a1, 1, 1, v50);
  }

  v36 = v10;
  v37 = v42;
  sub_10003DFF8(v36, v42, &qword_101A22DF0);
  v38 = v50;
  v39 = *(v50 + 48);
  v40 = v1[5];
  v41 = v43;
  *v43 = v40;
  result = sub_10003DFF8(v37, v41 + v39, &qword_101A22DF0);
  if (__OFADD__(v40, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v40 + 1;
  sub_10003DFF8(v41, a1, &qword_101A21DF0);
  return (*(v47 + 56))(a1, 0, 1, v38);
}

id sub_100DCC140()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v5 = type metadata accessor for CRLAssetManager();
    v6 = objc_allocWithZone(v5);
    swift_unknownObjectWeakInit();
    v7 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v8 = swift_allocObject();
    v9 = v0;
    v10 = swift_slowAlloc();
    *v10 = 0;
    *(v8 + 16) = v10;
    atomic_thread_fence(memory_order_acq_rel);
    *&v6[v7] = v8;
    *&v6[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v11 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v6[v11] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v6[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v17.receiver = v6;
    v17.super_class = v5;
    v12 = objc_msgSendSuper2(&v17, "init");

    v13 = *&v0[v2];
    *&v0[v2] = v12;
    v4 = v12;

    v3 = 0;
  }

  v14 = *(v1 + 16);
  v15 = v3;
  os_unfair_lock_unlock(v14);
  return v4;
}

uint64_t sub_100DCC2C8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v36 = v6;
  v33 = v2;
  v34 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))) + 8);
    v12 = v11 >> 62;
    v13 = v11;
    if (v11 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v14;
    v16 = __OFADD__(result, v14);
    v17 = result + v14;
    if (v16)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v15)
      {
LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_22:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v37 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v15)
    {
      goto LABEL_21;
    }

    v18 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v37 = v9;
LABEL_23:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v13;
    if (v12)
    {
      v23 = v18;
      result = _CocoaArrayWrapper.endIndex.getter();
      v18 = v23;
      v21 = v13;
      v22 = result;
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_42;
      }

      v24 = v18 + 8 * v19 + 32;
      v35 = v18;
      v40 = v21;
      if (v12)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_10001A2F8(&qword_101A22028, &qword_101A22020);
        v25 = 0;
        do
        {
          sub_1005B981C(&qword_101A22020);
          v26 = v22;
          v27 = v24;
          v28 = sub_100777974(v39, v25, v40);
          v30 = *v29;
          (v28)(v39, 0);
          v24 = v27;
          v22 = v26;
          *(v24 + 8 * v25++) = v30;
        }

        while (v26 != v25);
      }

      else
      {
        sub_100006370(0, &unk_101A22DC0);
        swift_arrayInitWithCopy();
      }

      v9 = v37;
      v2 = v33;
      v1 = v34;
      v6 = v36;
      if (v38 >= 1)
      {
        v31 = *(v35 + 16);
        v16 = __OFADD__(v31, v38);
        v32 = v31 + v38;
        if (v16)
        {
          goto LABEL_43;
        }

        *(v35 + 16) = v32;
      }
    }

    else
    {

      v9 = v37;
      v6 = v36;
      if (v38 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100DCC63C(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v30 = a1 + 32;
  v3 = &unk_101A21F70;
  while (1)
  {
    sub_1005B981C(&qword_101A21F58);
    v35 = v1;
    v32 = *(v30 + 16 * v1);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    ObjectType = swift_getObjectType();
    v34[0] = v32;
    v7 = *(*(&v32 + 1) + 8);
    v8 = *(v7 + 8);
    swift_unknownObjectRetain();
    *(inited + 32) = v8(ObjectType, v7);
    *(inited + 40) = v32;
    swift_unknownObjectRetain();
    v9 = sub_100BD9674(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &qword_101A21F60);
    v10 = sub_100DD074C(v9, sub_100E5EF08, 0, sub_100EA6318, 0, sub_100EA631C, 0, &qword_1019F6DD8, &unk_10146FBC0, sub_100A912BC, sub_100AA8E90, sub_10113E260, sub_10067CF24, &qword_101A21F68);
    swift_unknownObjectRelease();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v2 >> 62;
    if (v2 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v29 + v12;
      if (__OFADD__(v29, v12))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v13)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v12)
    {
      goto LABEL_36;
    }

    v33 = v2;
    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_38;
      }

      sub_10001A2F8(&qword_101A21F78, v3);
      v21 = v3;
      for (i = 0; i != v19; ++i)
      {
        sub_1005B981C(v21);
        v23 = sub_100777A74(v34, i, v10);
        v25 = *v24;

        (v23)(v34, 0);
        *(v20 + 8 * i) = v25;
        v21 = v3;
      }
    }

    else
    {
      sub_1005B981C(&qword_101A21F68);
      swift_arrayInitWithCopy();
      v21 = v3;
    }

    v3 = v21;

    v2 = v33;
    if (v12 >= 1)
    {
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, v12);
      v28 = v26 + v12;
      if (v27)
      {
        goto LABEL_37;
      }

      *(v16 + 16) = v28;
    }

LABEL_4:
    v1 = v35 + 1;
    if (v35 + 1 == v31)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v12 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

sqlite3_stmt *sub_100DCCAB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v18, 0, 14);
      a1 = swift_beginAccess();
      LOBYTE(v8) = -1;
      if (a4 <= 0x7FFFFFFF)
      {
        LOBYTE(v8) = 0;
        if (a4 >= 0xFFFFFFFF80000000)
        {
          a1 = *(a3 + 24);
          if (qword_1019F17C8 != -1)
          {
            v16 = *(a3 + 24);
            swift_once();
            a1 = v16;
          }

          v9 = qword_101AD69D0;
          v11 = a4;
          v10 = 0;
          goto LABEL_16;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v8 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v6)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
      a1 = swift_beginAccess();
      LOBYTE(v8) = -1;
      if (a4 <= 0x7FFFFFFF)
      {
        LOBYTE(v8) = 0;
        if (a4 >= 0xFFFFFFFF80000000)
        {
          v8 = HIWORD(a2);
          a1 = *(a3 + 24);
          if (qword_1019F17C8 == -1)
          {
LABEL_6:
            v9 = qword_101AD69D0;
            v10 = v8;
            v11 = a4;
LABEL_16:
            v13 = sqlite3_bind_blob(a1, v11, v18, v10, v9);

            return v13;
          }

LABEL_23:
          v17 = v8;
          v15 = a1;
          swift_once();
          LOBYTE(v8) = v17;
          a1 = v15;
          goto LABEL_6;
        }

        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_19;
    }

    v8 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  v13 = sub_100E928A0(v8, v12, a2, a3, a4);

  return v13;
}

uint64_t sub_100DCCD2C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100DCCD4C, 0, 0);
}

uint64_t sub_100DCCD4C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1005B981C(&qword_101A21CF0);
  *v2 = v0;
  v2[1] = sub_100DCCE58;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x80000001015A3F40, sub_100EA2328, v1, v3);
}

uint64_t sub_100DCCE58()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1005DA3B0;
  }

  else
  {

    v2 = sub_100872780;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DCCF74(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100DCD35C(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100DCD744(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100DCDB40(uint64_t a1, void (*a2)(id *__return_ptr, uint64_t *), uint64_t a3, void (*a4)(id *__return_ptr, void *), uint64_t a5, void (*a6)(char **__return_ptr, void *), uint64_t a7)
{
  v7 = *(a1 + 16);
  v84 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = 0;
    v10 = a1 + 40;
    v11 = _swiftEmptyDictionarySingleton;
    v79 = a1 + 40;
    while (2)
    {
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          goto LABEL_53;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_54;
        }

        v14 = *v12;
        v89[0] = *(v12 - 1);
        v89[1] = v14;
        swift_unknownObjectRetain();
        a2(&v86, v89);
        v15 = v86;
        if (v86)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_28;
        }
      }

      v16 = v87;
      v88[0] = v86;
      v88[1] = v87;
      swift_unknownObjectRetain();
      v78 = a5;
      a4(&v86, v88);
      v17 = v86;
      v18 = v87;
      sub_1005B981C(&qword_1019F6DD8);
      v19 = swift_allocObject();
      v19[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = v15;
      v19[5] = v16;
      v80 = v19;
      if (v11[2])
      {
        sub_10000BE7C(v17, v18);
        if (v20)
        {
          v21 = objc_opt_self();

          v77 = v21;
          v22 = [v21 _atomicIncrementAssertCount];
          v86 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v86);
          StaticString.description.getter();
          v75 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v23 = String._bridgeToObjectiveC()();

          v24 = [v23 lastPathComponent];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v26;
          v73 = v25;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v74 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v22;
          v28 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v28;
          v29 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v29;
          *(inited + 72) = v75;
          *(inited + 136) = &type metadata for String;
          v30 = sub_1000053B0();
          *(inited + 112) = v73;
          *(inited + 120) = v72;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v30;
          *(inited + 152) = 54;
          v31 = v86;
          *(inited + 216) = v28;
          *(inited + 224) = v29;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v31;
          v32 = v75;
          v33 = v31;
          v34 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v35 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v35, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v36 = swift_allocObject();
          v36[2] = 8;
          v36[3] = 0;
          v36[4] = 0;
          v36[5] = 0;
          v76 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v37 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v38 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v39 = String._bridgeToObjectiveC()();

          [v77 handleFailureInFunction:v37 file:v38 lineNumber:54 isFatal:0 format:v39 args:v76];

          v19 = v80;
        }
      }

      v41 = v19[2];
      v40 = v19[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v11;
      v44 = sub_10000BE7C(v41, v40);
      v45 = v11[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_55;
      }

      v48 = v43;
      if (v11[3] < v47)
      {
        sub_100A912BC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_10000BE7C(v41, v40);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_57;
        }

        v44 = v49;
        v11 = v86;
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        *(v11[7] + 8 * v44) = v80;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v86;
        if (v43)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_100AA8E90();
        v11 = v86;
        if (v48)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v11[(v44 >> 6) + 8] |= 1 << v44;
      v51 = (v11[6] + 16 * v44);
      *v51 = v41;
      v51[1] = v40;
      *(v11[7] + 8 * v44) = v80;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v52 = v11[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_56;
      }

      v11[2] = v54;
LABEL_25:

      a5 = v78;
      v10 = v79;
      if (v9 != v7)
      {
        continue;
      }

      goto LABEL_28;
    }
  }

  v11 = _swiftEmptyDictionarySingleton;
LABEL_28:
  v89[0] = _swiftEmptySetSingleton;
  v55 = v11 + 8;
  v56 = 1 << *(v11 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v11[8];
  v59 = (v56 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v60 = 0;
  if (v58)
  {
    while (1)
    {
      v61 = v60;
LABEL_36:
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v63 = *(v11[7] + 8 * (v62 | (v61 << 6)));

      sub_100DD216C(v11, v63, v89, a6, a7, sub_10113E260, sub_10067CF24);

      if (!v58)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
LABEL_32:
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v61 >= v59)
    {
      break;
    }

    v58 = v55[v61];
    ++v60;
    if (v58)
    {
      v60 = v61;
      goto LABEL_36;
    }
  }

  v88[0] = _swiftEmptyArrayStorage;
  v64 = 1 << *(v11 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v11[8];
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  while (1)
  {
    v69 = v68;
    if (!v66)
    {
      break;
    }

LABEL_45:
    v66 &= v66 - 1;
    if (swift_weakLoadStrong())
    {
    }

    else
    {
      sub_1005B981C(&qword_101A21F68);
      swift_allocObject();

      sub_100DCCF74(v70);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v84 = v88[0];
    }
  }

  while (1)
  {
    v68 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v68 >= v67)
    {

      swift_bridgeObjectRelease_n();
      return v84;
    }

    v66 = v55[v68];
    ++v69;
    if (v66)
    {
      goto LABEL_45;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DCE4F0(uint64_t a1, void (*a2)(void **__return_ptr, void **), uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *), uint64_t a5, void (*a6)(char **__return_ptr, uint64_t *))
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v107 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    v16 = (*(a1 + 56) + 40 * v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v118 = v15;
    v119 = v17;
    v120 = v18;
    v121 = v19;
    v122 = v20;
    v123 = v21;
    v22 = v15;
    sub_1009F5E18(v17, v18, v19, v20, v21);
    a2(&v110, &v118);
    v23 = v111;
    if ((~v111 & 0xF000000000000007) != 0)
    {
      v114 = v110;
      v115 = v111;
      v116 = v112;
      v117 = v113;
      a4(&v110, &v114);
      v29 = v115;
      v30 = v116;
      v101 = v114;
      v103 = v117;
      v31 = v110;
      v32 = v111;
      sub_1005B981C(&qword_1019F6E90);
      v33 = swift_allocObject();
      *(v33 + 72) = _swiftEmptyArrayStorage;
      swift_weakInit();
      v99 = v31;
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      *(v33 + 32) = v101;
      *(v33 + 40) = v29;
      *(v33 + 48) = v30;
      v104 = v33;
      *(v33 + 64) = v103;
      v34 = v107;
      v35 = v107[2];
      sub_1009F5E18(v101, v29, v30, *(&v30 + 1), v103);
      if (v35)
      {
        sub_10000BE7C(v99, v32);
        if (v36)
        {
          v37 = objc_opt_self();

          v102 = v37;
          v38 = [v37 _atomicIncrementAssertCount];
          v110 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v110);
          StaticString.description.getter();
          v100 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v39 = String._bridgeToObjectiveC()();

          v40 = [v39 lastPathComponent];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v42;
          v97 = v41;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v98 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v38;
          v44 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v44;
          v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v45;
          *(inited + 72) = v100;
          *(inited + 136) = &type metadata for String;
          v46 = sub_1000053B0();
          *(inited + 112) = v97;
          *(inited + 120) = v96;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v46;
          *(inited + 152) = 54;
          v47 = v110;
          *(inited + 216) = v44;
          *(inited + 224) = v45;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v47;
          v48 = v100;
          v49 = v47;
          v50 = static os_log_type_t.error.getter();
          sub_100005404(v98, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v51 = static os_log_type_t.error.getter();
          sub_100005404(v98, &_mh_execute_header, v51, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v52 = swift_allocObject();
          v52[2] = 8;
          v52[3] = 0;
          v52[4] = 0;
          v52[5] = 0;
          v53 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v54 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v55 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v56 = String._bridgeToObjectiveC()();

          [v102 handleFailureInFunction:v54 file:v55 lineNumber:54 isFatal:0 format:v56 args:v53];

          v34 = v107;
        }
      }

      v57 = *(v104 + 16);
      v58 = *(v104 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v34;
      v61 = sub_10000BE7C(v57, v58);
      v62 = v34[2];
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_52;
      }

      v65 = v60;
      if (v34[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AAA744();
        }
      }

      else
      {
        sub_100A93F18(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_10000BE7C(v57, v58);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_54;
        }

        v61 = v66;
      }

      v68 = v110;
      v107 = v110;
      if (v65)
      {
        *(v110[7] + 8 * v61) = v104;
      }

      else
      {
        v110[(v61 >> 6) + 8] |= 1 << v61;
        v69 = (v68[6] + 16 * v61);
        *v69 = v57;
        v69[1] = v58;
        *(v68[7] + 8 * v61) = v104;
        v70 = v68[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_53;
        }

        v68[2] = v72;
      }

      sub_1009F5D34(v114, v115, v116, *(&v116 + 1), v117);
      v73 = v119;
      v74 = v120;
      v75 = v121;
      v76 = v122;
      v77 = v123;

      sub_1009F5D34(v73, v74, v75, v76, v77);
    }

    else
    {
      v24 = v119;
      v25 = v120;
      v26 = v121;
      v27 = v122;
      v28 = v123;

      sub_1009F5D34(v24, v25, v26, v27, v28);
      sub_100EA5510(v110, v23, v112, *(&v112 + 1), v113);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v118 = _swiftEmptySetSingleton;
  v78 = v107 + 8;
  v79 = 1 << *(v107 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & v107[8];
  v82 = (v79 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v83 = 0;
  v84 = _swiftEmptyArrayStorage;
  while (v81)
  {
    v85 = v83;
LABEL_34:
    v86 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v87 = *(v107[7] + 8 * (v86 | (v85 << 6)));

    sub_100DD2630(v107, v87, &v118, a6);
  }

  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v85 >= v82)
    {

      v114 = _swiftEmptyArrayStorage;
      v88 = 1 << *(v107 + 32);
      v89 = -1;
      if (v88 < 64)
      {
        v89 = ~(-1 << v88);
      }

      v90 = v89 & v107[8];
      v91 = (v88 + 63) >> 6;

      v92 = 0;
      while (1)
      {
        v93 = v92;
        if (!v90)
        {
          break;
        }

LABEL_43:
        v90 &= v90 - 1;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          sub_1005B981C(&qword_101A22018);
          swift_allocObject();

          sub_100DCD35C(v94);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 = v114;
        }
      }

      while (1)
      {
        v92 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          goto LABEL_51;
        }

        if (v92 >= v91)
        {

          swift_bridgeObjectRelease_n();
          return v84;
        }

        v90 = v78[v92];
        ++v93;
        if (v90)
        {
          goto LABEL_43;
        }
      }
    }

    v81 = v78[v85];
    ++v83;
    if (v81)
    {
      v83 = v85;
      goto LABEL_34;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DCEEA8(uint64_t a1, void *a2, unsigned int (**a3)(id *, uint64_t, uint64_t), void (*a4)(unint64_t *), uint64_t a5, void (*a6)(uint64_t *), void *a7)
{
  v124 = a6;
  v125 = a7;
  v111 = a4;
  v112 = a5;
  v129 = a3;
  v121 = a2;
  v8 = sub_1005B981C(&qword_101A21E30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v113 = &v100 - v10;
  v11 = sub_1005B981C(&qword_101A21E38);
  __chkstk_darwin(v11 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v100 - v15);
  v134 = type metadata accessor for UUID();
  v128 = *(v134 - 8);
  __chkstk_darwin(v134);
  v117 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v123 = &v100 - v19;
  v116 = v9;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v130 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v115 = v8;
    v131 = v16;
    v132 = v13;
    v122 = (v128 + 32);
    v126 = (v128 + 16);
    v127 = (v128 + 8);
    if (i)
    {
      break;
    }

    v8 = _swiftEmptyDictionarySingleton;
LABEL_33:
    v114 = _swiftEmptyArrayStorage;
    v137[0] = _swiftEmptySetSingleton;
    v71 = *(v8 + 64);
    v121 = (v8 + 64);
    v72 = 1 << *(v8 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & v71;
    a1 = (v72 + 63) >> 6;
    v129 = (v116 + 48);
    v130 = v116 + 56;
    v133 = v8;
    swift_bridgeObjectRetain_n();
    v75 = 0;
    v76 = v115;
    if (v74)
    {
      while (1)
      {
        v8 = v75;
LABEL_44:
        v79 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v80 = v79 | (v8 << 6);
        v82 = v133;
        v81 = v134;
        v83 = v128;
        v84 = v123;
        (*(v128 + 16))(v123, *(v133 + 48) + *(v128 + 72) * v80, v134);
        v85 = *(*(v82 + 56) + 8 * v80);
        v86 = *(v76 + 48);
        v87 = *(v83 + 32);
        v13 = v132;
        v87(v132, v84, v81);
        *(v13 + v86) = v85;
        (*v130)(v13, 0, 1, v76);

        v78 = v8;
        v8 = v76;
LABEL_45:
        v16 = v131;
        sub_10003DFF8(v13, v131, &qword_101A21E38);
        if ((*v129)(v16, 1, v8) == 1)
        {
          break;
        }

        sub_100DD2B50(v133, *(v16 + *(v8 + 48)), v137, v124, v125);

        (*v127)(v16, v134);
        v75 = v78;
        v76 = v8;
        if (!v74)
        {
          goto LABEL_37;
        }
      }

      v16 = v137[0];
      v88 = v133;

      v136 = _swiftEmptyArrayStorage;
      v89 = 1 << *(v88 + 32);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      v91 = v90 & *(v88 + 64);
      v92 = (v89 + 63) >> 6;

      v13 = 0;
      a1 = &unk_1014B67D8;
      v93 = v113;
LABEL_52:
      v94 = v13;
      v95 = v121;
      if (!v91)
      {
        goto LABEL_54;
      }

      do
      {
        v13 = v94;
LABEL_57:
        v96 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v97 = v96 | (v13 << 6);
        (*(v128 + 16))(v93, *(v88 + 48) + *(v128 + 72) * v97, v134);
        v16 = *(*(v88 + 56) + 8 * v97);
        *(v93 + *(v8 + 48)) = v16;
        if (!swift_weakLoadStrong())
        {
          sub_1005B981C(&qword_101A21E40);
          swift_allocObject();
          v98 = swift_retain_n();
          sub_100DCD744(v98);
          sub_10000CAAC(v93, &qword_101A21E30);
          v16 = &v136;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v114 = v136;
          v88 = v133;
          goto LABEL_52;
        }

        sub_10000CAAC(v93, &qword_101A21E30);
        v94 = v13;
        v88 = v133;
        v95 = v121;
      }

      while (v91);
LABEL_54:
      while (1)
      {
        v13 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v13 >= v92)
        {

          swift_bridgeObjectRelease_n();
          return v114;
        }

        v91 = v95[v13];
        ++v94;
        if (v91)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_37:
      if (a1 <= v75 + 1)
      {
        v77 = v75 + 1;
      }

      else
      {
        v77 = a1;
      }

      v78 = v77 - 1;
      while (1)
      {
        v8 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v8 >= a1)
        {
          v8 = v76;
          (*v130)(v13, 1, 1, v76);
          v74 = 0;
          goto LABEL_45;
        }

        v74 = v121[v8];
        ++v75;
        if (v74)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v130 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = 0;
  v120 = a1 & 0xC000000000000001;
  v8 = _swiftEmptyDictionarySingleton;
  v108 = xmmword_10146CA70;
  v118 = a1;
  v119 = i;
  while (1)
  {
    if (v120)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v21 >= *(v130 + 16))
      {
        goto LABEL_67;
      }

      a1 = *(a1 + 8 * v21 + 32);

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_66;
      }
    }

    v137[0] = a1;
    v16 = v129;
    (v121)(&v135, v137);
    v23 = v135;
    if (v135)
    {
      break;
    }

    ++v21;
    v24 = v119;
LABEL_10:
    v13 = v132;
    a1 = v118;
    if (v22 == v24)
    {
      goto LABEL_33;
    }
  }

  v136 = v135;

  v25 = v123;
  v111(&v136);
  sub_1005B981C(&qword_1019F6CD8);
  v26 = swift_allocObject();
  *(v26 + *(*v26 + 120)) = _swiftEmptyArrayStorage;
  swift_weakInit();
  v27 = v25;
  v28 = v26;
  (*v122)(v26 + *(*v26 + 104), v27, v134);
  *(v26 + *(*v26 + 112)) = v23;
  v29 = *(*v26 + 104);
  v16 = v8;
  v30 = *(v8 + 16);
  v110 = v28;
  if (v30)
  {
    v16 = v8;
    v109 = v29;
    v31 = sub_10003E994(v28 + v29);
    v29 = v109;
    if (v32)
    {
      v133 = v8;
      v33 = *(*(v8 + 56) + 8 * v31);
      v34 = objc_opt_self();
      v106 = v33;

      v105 = v34;
      v35 = [v34 _atomicIncrementAssertCount];
      v135 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v135);
      StaticString.description.getter();
      v107 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      v37 = [v36 lastPathComponent];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v39;
      v102 = v38;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v103 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v108;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v35;
      v104 = (inited + 32);
      v100 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v100;
      v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v41;
      *(inited + 72) = v107;
      *(inited + 136) = &type metadata for String;
      v42 = sub_1000053B0();
      v43 = v101;
      *(inited + 112) = v102;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v42;
      *(inited + 152) = 54;
      v44 = v135;
      *(inited + 216) = v100;
      *(inited + 224) = v41;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v44;
      v107 = v107;
      v102 = v44;
      v45 = static os_log_type_t.error.getter();
      v46 = v103;
      sub_100005404(v103, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v47, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v48 = swift_allocObject();
      v103 = v48;
      v48[2] = 8;
      v48[3] = 0;
      v48[4] = 0;
      v48[5] = 0;
      v107 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v104 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v102 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      v50 = v104;
      v51 = v102;
      [v105 handleFailureInFunction:v104 file:v102 lineNumber:54 isFatal:0 format:v49 args:v107];

      v16 = v133;
      v29 = v109;
      v28 = v110;
    }
  }

  v52 = v117;
  v133 = *v126;
  (v133)(v117, v28 + v29, v134);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v135 = v16;
  v55 = sub_10003E994(v52);
  v56 = v16[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (!__OFADD__(v56, v57))
  {
    if (v16[3] < v58)
    {
      v59 = isUniquelyReferenced_nonNull_native;
      v60 = v54;
      sub_100A96A30(v58, v59);
      v16 = v135;
      v61 = sub_10003E994(v117);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_71;
      }

      v55 = v61;
      v63 = v60;
      v64 = v135;
      if ((v63 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_24:
      v8 = v64;
      *(v64[7] + v55) = v110;

      (*v127)(v117, v134);

LABEL_31:
      v24 = v119;
      v21 = v22;
      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v64 = v135;
      if (v54)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = &v135;
      v109 = v55;
      v65 = v54;
      sub_100AAC1C4();
      v66 = v65;
      v55 = v109;
      v64 = v135;
      if (v66)
      {
        goto LABEL_24;
      }
    }

LABEL_29:
    v67 = v55;
    v64[(v55 >> 6) + 8] = (v64[(v55 >> 6) + 8] | (1 << v55));
    v16 = v134;
    (v133)(v64[6] + *(v128 + 72) * v55, v117, v134);
    *(v64[7] + v67) = v110;

    (*(v128 + 8))(v117, v16);

    v68 = v64[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_70;
    }

    v8 = v64;
    v64[2] = v70;
    goto LABEL_31;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DCFCCC(unint64_t a1, void (*a2)(void **__return_ptr, uint64_t *), uint64_t a3, void (*a4)(void **__return_ptr, void *), uint64_t a5, void (*a6)(char **__return_ptr, void *), uint64_t a7)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v8 = ~v11;
    v7 = a1 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 64);
    v10 = a1;
  }

  v14 = 0;
  v15 = (v8 + 64) >> 6;
  v16 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    v17 = v14;
    if ((v10 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v24 = __CocoaDictionary.Iterator.next()();
        if (!v24)
        {
          goto LABEL_37;
        }

        v26 = v25;
        v99[0] = v24;
        sub_100006370(0, &qword_1019F6E98);
        swift_dynamicCast();
        v22 = v100[0];
        v99[0] = v26;
        sub_100006370(0, &unk_101A22DC0);
        swift_dynamicCast();
        v23 = v100[0];
        v14 = v17;
        v96 = v9;
        if (!v22)
        {
          goto LABEL_37;
        }

LABEL_17:
        v100[0] = v22;
        v100[1] = v23;
        a2(&v97, v100);
        v27 = v97;
        if (v97)
        {
          break;
        }

        v17 = v14;
        v9 = v96;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v87 = v98;
      v99[0] = v97;
      v99[1] = v98;
      swift_unknownObjectRetain();
      a4(&v97, v99);
      v28 = v97;
      v85 = v98;
      sub_1005B981C(&qword_1019F6DD8);
      v29 = swift_allocObject();
      v29[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v29[2] = v28;
      v29[3] = v85;
      v29[4] = v27;
      v29[5] = v87;
      v86 = v29;
      if (v16[2])
      {
        sub_10000BE7C(v28, v85);
        if (v30)
        {
          v31 = objc_opt_self();

          v83 = v31;
          v79 = [v31 _atomicIncrementAssertCount];
          v97 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v97);
          StaticString.description.getter();
          v88 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v32 = String._bridgeToObjectiveC()();

          v33 = [v32 lastPathComponent];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v35;
          v75 = v34;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v76 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v79;
          v80 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v80;
          v73 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v73;
          *(inited + 72) = v88;
          *(inited + 136) = &type metadata for String;
          v37 = sub_1000053B0();
          *(inited + 112) = v75;
          *(inited + 120) = v74;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v37;
          *(inited + 152) = 54;
          v38 = v97;
          *(inited + 216) = v80;
          *(inited + 224) = v73;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v38;
          v89 = v88;
          v81 = v38;
          v39 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v40 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v40, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v77 = swift_allocObject();
          v77[2] = 8;
          v77[3] = 0;
          v77[4] = 0;
          v77[5] = 0;
          v82 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v78 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v90 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v41 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v78 file:v90 lineNumber:54 isFatal:0 format:v41 args:v82];

          v29 = v86;
        }
      }

      v42 = v29[3];
      v91 = v29[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v16;
      v44 = sub_10000BE7C(v91, v42);
      v45 = v16[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_63;
      }

      if (v16[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_31;
        }

        v48 = v43;
        sub_100AA8E90();
      }

      else
      {
        v48 = v43;
        sub_100A912BC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_10000BE7C(v91, v42);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_65;
        }

        v44 = v49;
      }

      v43 = v48;
LABEL_31:
      v16 = v97;
      if (v43)
      {
        *(v97[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();
      }

      else
      {
        v97[(v44 >> 6) + 8] |= 1 << v44;
        v51 = (v16[6] + 16 * v44);
        *v51 = v91;
        v51[1] = v42;
        *(v16[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();
        v52 = v16[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_64;
        }

        v16[2] = v54;
      }

      v9 = v96;
      continue;
    }

    break;
  }

LABEL_9:
  v18 = v17;
  v19 = v9;
  v14 = v17;
  if (v9)
  {
LABEL_13:
    v96 = (v19 - 1) & v19;
    v20 = (v14 << 9) | (8 * __clz(__rbit64(v19)));
    v21 = *(*(v10 + 56) + v20);
    v22 = *(*(v10 + 48) + v20);
    v23 = v21;
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_100035F90();
    v100[0] = _swiftEmptySetSingleton;
    v55 = (v16 + 8);
    v56 = 1 << *(v16 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & v16[8];
    v59 = (v56 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v60 = 0;
    if (v58)
    {
      while (1)
      {
        v61 = v60;
LABEL_45:
        v62 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v63 = *(v16[7] + 8 * (v62 | (v61 << 6)));

        sub_100DD216C(v16, v63, v100, a6, a7, sub_10113E260, sub_10067CF24);

        if (!v58)
        {
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
LABEL_41:
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      if (v61 >= v59)
      {
        break;
      }

      v58 = *&v55[8 * v61];
      ++v60;
      if (v58)
      {
        v60 = v61;
        goto LABEL_45;
      }
    }

    v64 = _swiftEmptyArrayStorage;
    v99[0] = _swiftEmptyArrayStorage;
    v65 = 1 << *(v16 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v16[8];
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    while (1)
    {
      v70 = v69;
      if (!v67)
      {
        break;
      }

LABEL_54:
      v67 &= v67 - 1;
      if (swift_weakLoadStrong())
      {
      }

      else
      {
        sub_1005B981C(&qword_101A21F68);
        swift_allocObject();

        sub_100DCCF74(v71);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v64 = v99[0];
      }
    }

    while (1)
    {
      v69 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v69 >= v68)
      {

        swift_bridgeObjectRelease_n();
        return v64;
      }

      v67 = *&v55[8 * v69];
      ++v70;
      if (v67)
      {
        goto LABEL_54;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v15)
      {
        goto LABEL_37;
      }

      v19 = *(v7 + 8 * v14);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DD074C(uint64_t a1, void (*a2)(void **__return_ptr, id *), uint64_t a3, void (*a4)(void **__return_ptr, void *), uint64_t a5, void (*a6)(char **__return_ptr, void *), uint64_t a7, uint64_t *a8, uint64_t a9, void (*a10)(void), void (*a11)(void), uint64_t (*a12)(unint64_t), void (*a13)(uint64_t), uint64_t *a14)
{
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  v21 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v22 = v20;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v23 | (v20 << 6);
    v25 = *(a1 + 56);
    v100 = *(*(a1 + 48) + 8 * v24);
    v101 = *(v25 + 16 * v24);
    v26 = v100;
    swift_unknownObjectRetain();
    a2(&v97, &v100);
    v27 = v97;
    if (v97)
    {
      v92 = v98;
      v99[0] = v97;
      v99[1] = v98;
      swift_unknownObjectRetain();
      a4(&v97, v99);
      v28 = v98;
      v85 = v97;
      v82 = a8;
      sub_1005B981C(a8);
      v29 = swift_allocObject();
      v29[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v29[2] = v85;
      v29[3] = v28;
      v29[4] = v27;
      v29[5] = v92;
      v86 = v29;
      if (v21[2])
      {
        sub_10000BE7C(v85, v28);
        if (v30)
        {
          v31 = objc_opt_self();

          v83 = v31;
          v78 = [v31 _atomicIncrementAssertCount];
          v97 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v97);
          StaticString.description.getter();
          v93 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v32 = String._bridgeToObjectiveC()();

          v33 = [v32 lastPathComponent];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v35;
          v74 = v34;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v75 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v78;
          v79 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v79;
          v72 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v72;
          *(inited + 72) = v93;
          *(inited + 136) = &type metadata for String;
          v37 = sub_1000053B0();
          *(inited + 112) = v74;
          *(inited + 120) = v73;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v37;
          *(inited + 152) = 54;
          v38 = v97;
          *(inited + 216) = v79;
          *(inited + 224) = v72;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v38;
          v94 = v93;
          v80 = v38;
          v39 = static os_log_type_t.error.getter();
          sub_100005404(v75, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v40 = static os_log_type_t.error.getter();
          sub_100005404(v75, &_mh_execute_header, v40, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v76 = swift_allocObject();
          v76[2] = 8;
          v76[3] = 0;
          v76[4] = 0;
          v76[5] = 0;
          v81 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v77 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v41 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v77 file:v95 lineNumber:54 isFatal:0 format:v41 args:v81];

          v29 = v86;
        }
      }

      v42 = v29[3];
      v96 = v29[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v21;
      v44 = sub_10000BE7C(v96, v42);
      v45 = v21[2];
      v46 = (v43 & 1) == 0;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_53;
      }

      if (v21[3] < v45 + v46)
      {
        v47 = v43;
        a10();
        v48 = sub_10000BE7C(v96, v42);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_55;
        }

        v44 = v48;
        goto LABEL_19;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v43;
        a11();
LABEL_19:
        v43 = v47;
      }

      v21 = v97;
      if (v43)
      {
        *(v97[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        v97[(v44 >> 6) + 8] |= 1 << v44;
        v50 = (v21[6] + 16 * v44);
        *v50 = v96;
        v50[1] = v42;
        *(v21[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v51 = v21[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_54;
        }

        v21[2] = v53;
      }

      a8 = v82;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v20 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v22;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v100 = &_swiftEmptySetSingleton;
  v54 = (v21 + 8);
  v55 = 1 << *(v21 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v21[8];
  v58 = (v55 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v59 = 0;
  v60 = _swiftEmptyArrayStorage;
  while (v57)
  {
    v61 = v59;
LABEL_35:
    v62 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v63 = *(v21[7] + 8 * (v62 | (v61 << 6)));

    sub_100DD216C(v21, v63, &v100, a6, a7, a12, a13);
  }

  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v61 >= v58)
    {

      v99[0] = _swiftEmptyArrayStorage;
      v64 = 1 << *(v21 + 32);
      v65 = -1;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      v66 = v65 & v21[8];
      v67 = (v64 + 63) >> 6;

      v68 = 0;
      while (1)
      {
        v69 = v68;
        if (!v66)
        {
          break;
        }

LABEL_44:
        v66 &= v66 - 1;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          sub_1005B981C(a14);
          swift_allocObject();

          sub_100DCCF74(v70);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v60 = v99[0];
        }
      }

      while (1)
      {
        v68 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_52;
        }

        if (v68 >= v67)
        {

          swift_bridgeObjectRelease_n();
          return v60;
        }

        v66 = *&v54[8 * v68];
        ++v69;
        if (v66)
        {
          goto LABEL_44;
        }
      }
    }

    v57 = *&v54[8 * v61];
    ++v59;
    if (v57)
    {
      v59 = v61;
      goto LABEL_35;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DD10F4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v141 = a7;
  v140 = a6;
  v135 = a5;
  v134 = a4;
  v146 = sub_1005B981C(&qword_101A21E70);
  v116 = *(v146 - 8);
  __chkstk_darwin(v146 - 8);
  v115 = &v114 - v10;
  v11 = sub_1005B981C(&qword_101A21E78);
  __chkstk_darwin(v11 - 8);
  v137 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v114 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v145 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v114 - v19;
  v20 = sub_1005B981C(&qword_101A21E80);
  __chkstk_darwin(v20 - 8);
  v133 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v114 - v23;
  v25 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  __chkstk_darwin(v25);
  v142 = (&v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a1 + 16);
  v144 = v16;
  if (v28)
  {
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v139 = (v26 + 48);
    v138 = *(v26 + 72);
    v132 = (v26 + 56);
    v131 = (v16 + 32);
    v136 = (v16 + 16);
    v126 = (v16 + 8);
    v30 = _swiftEmptyDictionarySingleton;
    v118 = xmmword_10146CA70;
    v129 = a3;
    v128 = a2;
    v127 = v24;
    v130 = v25;
    while (1)
    {
      a2(v29);
      if ((*v139)(v24, 1, v25) == 1)
      {
        sub_10000CAAC(v24, &qword_101A21E80);
      }

      else
      {
        v31 = v142;
        sub_100025668(v24, v142, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v32 = v147;
        v134(v31);
        v33 = v133;
        sub_10000C83C(v31, v133, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        (*v132)(v33, 0, 1, v25);
        sub_1005B981C(&qword_1019F6CE8);
        v34 = swift_allocObject();
        *(v34 + *(*v34 + 120)) = _swiftEmptyArrayStorage;
        swift_weakInit();
        (*v131)(v34 + *(*v34 + 104), v32, v15);
        sub_10003DFF8(v33, v34 + *(*v34 + 112), &qword_101A21E80);
        v35 = *(*v34 + 104);
        if (v30[2])
        {
          v36 = sub_10003E994(v34 + v35);
          if (v37)
          {
            v125 = v35;
            v148 = v30;
            v38 = *(v30[7] + 8 * v36);
            v39 = objc_opt_self();
            v124 = v38;

            v123 = v39;
            v40 = [v39 _atomicIncrementAssertCount];
            v150 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v150);
            StaticString.description.getter();
            v122 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v41 = String._bridgeToObjectiveC()();

            v42 = [v41 lastPathComponent];

            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v44;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v120 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v118;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v40;
            v121 = inited + 32;
            v46 = sub_100006370(0, &qword_1019F4D30);
            *(inited + 96) = v46;
            v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(inited + 104) = v47;
            v48 = v122;
            *(inited + 72) = v122;
            *(inited + 136) = &type metadata for String;
            v49 = sub_1000053B0();
            v50 = v119;
            *(inited + 112) = v43;
            *(inited + 120) = v50;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 144) = v49;
            *(inited + 152) = 54;
            v51 = v150;
            *(inited + 216) = v46;
            *(inited + 224) = v47;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 192) = v51;
            v52 = v48;
            v53 = v51;
            v54 = static os_log_type_t.error.getter();
            v55 = v120;
            sub_100005404(v120, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v56 = static os_log_type_t.error.getter();
            sub_100005404(v55, &_mh_execute_header, v56, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v57 = swift_allocObject();
            v57[2] = 8;
            v57[3] = 0;
            v57[4] = 0;
            v57[5] = 0;
            v122 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v58 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v59 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v60 = String._bridgeToObjectiveC()();

            [v123 handleFailureInFunction:v58 file:v59 lineNumber:54 isFatal:0 format:v60 args:v122];

            v30 = v148;
            v35 = v125;
          }
        }

        v61 = *v136;
        v62 = v145;
        (*v136)(v145, v34 + v35, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v30;
        v64 = sub_10003E994(v62);
        v66 = v30[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_55;
        }

        v70 = v65;
        if (v30[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = v64;
            sub_100AAD0B4();
            v64 = v75;
          }
        }

        else
        {
          sub_100A98894(v69, isUniquelyReferenced_nonNull_native);
          v64 = sub_10003E994(v145);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_57;
          }
        }

        v25 = v130;
        v30 = v150;
        if (v70)
        {
          *(v150[7] + 8 * v64) = v34;
        }

        else
        {
          v150[(v64 >> 6) + 8] |= 1 << v64;
          v72 = v64;
          v61(v30[6] + *(v144 + 72) * v64, v145, v15);
          *(v30[7] + 8 * v72) = v34;
          v73 = v30[2];
          v68 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v68)
          {
            goto LABEL_56;
          }

          v30[2] = v74;
        }

        (*v126)(v145, v15);
        sub_100026028(v142, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        a2 = v128;
        v24 = v127;
      }

      v29 += v138;
      if (!--v28)
      {
        goto LABEL_23;
      }
    }
  }

  v30 = _swiftEmptyDictionarySingleton;
LABEL_23:
  v117 = _swiftEmptyArrayStorage;
  v77 = v30 + 8;
  v76 = v30[8];
  v78 = 1 << *(v30 + 32);
  v150 = _swiftEmptySetSingleton;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v79 & v76;
  v81 = (v78 + 63) >> 6;
  v142 = (v116 + 56);
  v138 = v144 + 16;
  v136 = (v144 + 32);
  v82 = (v116 + 48);
  v139 = (v144 + 8);
  swift_bridgeObjectRetain_n();
  v83 = 0;
  v145 = v15;
  v84 = v137;
  v148 = v30;
  if (v80)
  {
    while (1)
    {
      v85 = v83;
LABEL_35:
      v88 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v89 = v88 | (v85 << 6);
      v90 = v148;
      v91 = v144;
      v92 = v147;
      (*(v144 + 16))(v147, v148[6] + *(v144 + 72) * v89, v15);
      v93 = v15;
      v94 = *(*(v90 + 56) + 8 * v89);
      v95 = v146;
      v96 = *(v146 + 48);
      v97 = *(v91 + 32);
      v84 = v137;
      v97(v137, v92, v93);
      *(v84 + v96) = v94;
      (*v142)(v84, 0, 1, v95);

      v87 = v85;
LABEL_36:
      v98 = v143;
      sub_10003DFF8(v84, v143, &qword_101A21E78);
      if ((*v82)(v98, 1, v95) == 1)
      {
        break;
      }

      sub_100DD331C(v148, *(v98 + *(v95 + 48)), &v150, v140, v141);

      v99 = v98;
      v15 = v145;
      (*v139)(v99, v145);
      v83 = v87;
      if (!v80)
      {
        goto LABEL_28;
      }
    }

    v100 = v148;

    v149 = _swiftEmptyArrayStorage;
    v101 = 1 << *(v100 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v103 = v102 & *(v100 + 64);
    v104 = (v101 + 63) >> 6;

    v105 = 0;
    v106 = v115;
    v107 = v144;
    while (1)
    {
      v108 = v105;
      if (!v103)
      {
        break;
      }

LABEL_47:
      v109 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v110 = v109 | (v105 << 6);
      v111 = v148;
      (*(v107 + 16))(v106, v148[6] + *(v107 + 72) * v110, v145);
      *(v106 + *(v146 + 48)) = *(*(v111 + 56) + 8 * v110);
      if (swift_weakLoadStrong())
      {

        sub_10000CAAC(v106, &qword_101A21E70);
      }

      else
      {
        sub_1005B981C(&qword_101A21E88);
        swift_allocObject();
        v112 = swift_retain_n();
        sub_100DCD744(v112);
        sub_10000CAAC(v106, &qword_101A21E70);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v107 = v144;
          v106 = v115;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = v149;
      }
    }

    while (1)
    {
      v105 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v105 >= v104)
      {

        swift_bridgeObjectRelease_n();
        return v117;
      }

      v103 = v77[v105];
      ++v108;
      if (v103)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_28:
    if (v81 <= v83 + 1)
    {
      v86 = v83 + 1;
    }

    else
    {
      v86 = v81;
    }

    v87 = v86 - 1;
    while (1)
    {
      v85 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v85 >= v81)
      {
        v95 = v146;
        (*v142)(v84, 1, 1, v146);
        v80 = 0;
        goto LABEL_36;
      }

      v80 = v77[v85];
      ++v83;
      if (v80)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DD216C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char **__return_ptr, void *), uint64_t a5, uint64_t (*a6)(unint64_t), void (*a7)(uint64_t))
{
  v47 = &_swiftEmptySetSingleton;
  v12 = *a3;
  v13 = a2[2];
  v14 = a2[3];

  LOBYTE(v12) = sub_10079E9A8(v13, v14, v12);

  if ((v12 & 1) == 0)
  {
    v15 = a2[4];
    if (v15)
    {
      v42 = a7;
      v16 = a2;
      while (1)
      {
        v17 = v16[5];
        v46[0] = v15;
        v46[1] = v17;
        v18 = v16[2];
        v19 = v16[3];

        swift_unknownObjectRetain();
        sub_100E6DE34(&v44, v18, v19);

        v20 = v16[2];
        v21 = v16[3];

        sub_100E6DE34(&v44, v20, v21);

        a4(&v44, v46);
        if (!v45)
        {
          goto LABEL_15;
        }

        if (!*(a1 + 16) || (v22 = sub_10000BE7C(v44, v45), (v23 & 1) == 0))
        {

LABEL_15:
          swift_unknownObjectRelease();

          swift_weakAssign();
        }

        v24 = *(*(a1 + 56) + 8 * v22);
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v24[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_weakAssign();
        v25 = v47;
        if (sub_10079E9A8(v24[2], v24[3], v47))
        {
          break;
        }

        swift_unknownObjectRelease();
        v26 = *a3;
        v27 = v24[2];
        v28 = v24[3];

        LOBYTE(v26) = sub_10079E9A8(v27, v28, v26);

        if ((v26 & 1) == 0)
        {
          v15 = v24[4];
          v16 = v24;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_12;
      }

      v30 = v25[2];
      if (v30)
      {
        v31 = sub_100B39C98(v25[2], 0);
        v41 = sub_100B3B5B0(&v44, v31 + 4, v30, v25);

        sub_100035F90();
        if (v41 == v30)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      v31 = _swiftEmptyArrayStorage;
LABEL_20:
      v44 = v31;
      v32 = 0;
      sub_100DD3DDC(&v44);
      if (*(v44 + 2))
      {
        v33 = *(v44 + 4);
        v34 = *(v44 + 5);

        if (!*(a1 + 16) || (v35 = sub_10000BE7C(v33, v34), (v36 & 1) == 0))
        {

          swift_unknownObjectRelease();
        }

        v37 = *(*(a1 + 56) + 8 * v35);

        Strong = swift_weakLoadStrong();
        if (!Strong)
        {

          return swift_unknownObjectRelease();
        }

        v39 = Strong;
        swift_weakAssign();
        swift_beginAccess();

        v32 = sub_100E984CC((v39 + 48), v37, a6);

        v40 = *(v39 + 48);
        if (!(v40 >> 62))
        {
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32)
          {
LABEL_26:
            v42(v32);
            swift_endAccess();
            swift_unknownObjectRelease();
          }

          goto LABEL_32;
        }
      }

      else
      {
        __break(1u);
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v32)
      {
        goto LABEL_26;
      }

LABEL_32:
      __break(1u);

      __break(1u);
      return result;
    }
  }

LABEL_12:
}

void sub_100DD2630(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char **__return_ptr, uint64_t *))
{
  v7 = *a3;
  v48 = _swiftEmptySetSingleton;
  v8 = a2[2];
  v9 = a2[3];

  LOBYTE(v7) = sub_10079E9A8(v8, v9, v7);

  if ((v7 & 1) != 0 || (v10 = a2[5], (~v10 & 0xF000000000000007) == 0))
  {
LABEL_3:

LABEL_4:

    return;
  }

  v11 = a2;
  while (1)
  {
    v13 = v11[7];
    v12 = v11[8];
    v14 = v11[6];
    v15 = v11[3];
    v43 = v11[4];
    v16 = v43;
    v44 = v10;
    v45 = v14;
    v46 = v13;
    v47 = v12;
    v17 = v11[2];

    sub_100EA54FC(v16, v10, v14, v13, v12);
    sub_100E6DE34(&v41, v17, v15);

    v18 = v11[2];
    v19 = v11[3];

    sub_100E6DE34(&v41, v18, v19);

    a4(&v41, &v43);
    if (!v42)
    {
      sub_1009F5D34(v43, v44, v45, v46, v47);
      goto LABEL_17;
    }

    if (!*(a1 + 16) || (v20 = sub_10000BE7C(v41, v42), (v21 & 1) == 0))
    {
      sub_1009F5D34(v43, v44, v45, v46, v47);

LABEL_17:

      swift_weakAssign();
      goto LABEL_4;
    }

    v22 = *(*(a1 + 56) + 8 * v20);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v22[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v23 = v48;
    if (sub_10079E9A8(v22[2], v22[3], v48))
    {
      break;
    }

    sub_1009F5D34(v43, v44, v45, v46, v47);

    v24 = *a3;
    v25 = v22[2];
    v26 = v22[3];

    LOBYTE(v24) = sub_10079E9A8(v25, v26, v24);

    if ((v24 & 1) == 0)
    {
      v10 = v22[5];
      v11 = v22;
      if ((~v10 & 0xF000000000000007) != 0)
      {
        continue;
      }
    }

    goto LABEL_3;
  }

  v27 = v23[2];
  if (!v27)
  {
    goto LABEL_21;
  }

  v28 = sub_100B39C98(v23[2], 0);
  v40 = sub_100B3B5B0(&v41, v28 + 4, v27, v23);

  sub_100035F90();
  if (v40 != v27)
  {
    __break(1u);
LABEL_21:
    v28 = _swiftEmptyArrayStorage;
  }

  v41 = v28;
  v29 = 0;
  sub_100DD3DDC(&v41);
  if (!*(v41 + 2))
  {
    __break(1u);
    goto LABEL_32;
  }

  v30 = *(v41 + 4);
  v31 = *(v41 + 5);

  if (!*(a1 + 16) || (v32 = sub_10000BE7C(v30, v31), (v33 & 1) == 0))
  {

    sub_1009F5D34(v43, v44, v45, v46, v47);

    goto LABEL_4;
  }

  v34 = *(*(a1 + 56) + 8 * v32);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1009F5D34(v43, v44, v45, v46, v47);

    goto LABEL_4;
  }

  v36 = Strong;
  swift_weakAssign();
  swift_beginAccess();

  v29 = sub_100E984CC((v36 + 72), v34, sub_10113E260);

  v37 = *(v36 + 72);
  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38 >= v29)
    {
      goto LABEL_28;
    }

LABEL_33:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_32:
  v38 = _CocoaArrayWrapper.endIndex.getter();
  if (v38 < v29)
  {
    goto LABEL_33;
  }

LABEL_28:
  sub_10067D1E0(v29, v38);
  swift_endAccess();

  sub_1009F5D34(v43, v44, v45, v46, v47);
}

uint64_t sub_100DD2B50(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t *), void *a5)
{
  v57 = a4;
  v58 = a5;
  v62 = a3;
  v54 = a1;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v50 - v12;
  __chkstk_darwin(v13);
  v56 = &v50 - v14;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v59 = _swiftEmptySetSingleton;
  v67 = _swiftEmptySetSingleton;
  v63 = (v18 + 16);
  v19 = (v18 + 8);
  v55 = (v18 + 48);
  v51 = v18;
  v52 = (v18 + 32);

  v53 = v19;
  v64 = v9;
  while (1)
  {
    v20 = *v62;
    v21 = *(*a2 + 104);
    v22 = *v63;
    (*v63)(v17, a2 + v21, v9);
    LOBYTE(v20) = sub_10079C3B4(v17, v20);
    v23 = *v19;
    (*v19)(v17, v9);
    if ((v20 & 1) != 0 || (v24 = *(a2 + *(*a2 + 112))) == 0)
    {
    }

    v66 = *(a2 + *(*a2 + 112));
    v25 = v56;
    v22(v56, a2 + v21, v9);
    v60 = v24;

    sub_100E6AF38(v17, v25);
    v23(v17, v64);
    v22(v25, a2 + v21, v64);
    v9 = v64;
    sub_100E6AF38(v17, v25);
    v23(v17, v9);
    v57(&v66);
    if ((*v55)(v8, 1, v9) == 1)
    {

      sub_10000CAAC(v8, &qword_1019F6990);
      goto LABEL_14;
    }

    v26 = v61;
    (*v52)(v61, v8, v9);
    v27 = v54;
    if (!*(v54 + 16) || (v28 = sub_10003E994(v26), (v29 & 1) == 0))
    {
      v23(v26, v9);

LABEL_14:
      swift_weakAssign();
    }

    v30 = *(*(v27 + 56) + 8 * v28);
    v31 = *(*v30 + 120);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v59 = *((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v32 = v67;
    v33 = sub_10079C3B4(v30 + *(*v30 + 104), v67);
    v59 = v32;
    if (v33)
    {
      break;
    }

    v19 = v53;
    v23(v61, v9);

    a2 = v30;
  }

  v35 = v32[2];
  if (!v35)
  {
    goto LABEL_19;
  }

  v36 = sub_100B39BF4(v32[2], 0);
  v37 = sub_100B3AA50(v65, &v36[(*(v51 + 80) + 32) & ~*(v51 + 80)], v35, v32);
  v62 = v65[2];
  v57 = v65[4];
  v58 = v65[3];

  sub_100035F90();
  if (v37 != v35)
  {
    __break(1u);
LABEL_19:
    v36 = _swiftEmptyArrayStorage;
  }

  v38 = v54;
  v65[0] = v36;
  v39 = 0;
  sub_100DD3D34(v65);
  v40 = v50;
  if (!v65[0][2])
  {
    __break(1u);
    goto LABEL_31;
  }

  v22(v50, v65[0] + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v64);

  if (!*(v38 + 16) || (v41 = sub_10003E994(v40), (v42 & 1) == 0))
  {
    v49 = v64;
    v23(v40, v64);
LABEL_28:

    v23(v61, v49);
  }

  v43 = *(*(v38 + 56) + 8 * v41);

  v23(v40, v64);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v49 = v64;
    goto LABEL_28;
  }

  v45 = Strong;
  swift_weakAssign();
  v46 = *(*v45 + 120);
  swift_beginAccess();

  v39 = sub_100E9875C((v45 + v46), v43, sub_10113E260);

  v47 = *(v45 + v46);
  if (v47 >> 62)
  {
LABEL_31:
    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (v48 < v39)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_10067D208(v39, v48);
    swift_endAccess();

    v23(v61, v64);
  }

  v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48 >= v39)
  {
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100DD331C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v68 = a4;
  v69 = a5;
  v78 = a3;
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v9 = &v59 - v8;
  v10 = sub_1005B981C(&qword_101A21E80);
  __chkstk_darwin(v10 - 8);
  v73 = (&v59 - v11);
  v72 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v12 = *(v72 - 8);
  __chkstk_darwin(v72);
  v80 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v59 - v17;
  __chkstk_darwin(v18);
  v66 = &v59 - v19;
  __chkstk_darwin(v20);
  v77 = (&v59 - v21);
  v79 = (v22 + 16);
  v82 = _swiftEmptySetSingleton;
  v23 = (v22 + 8);
  v71 = (v12 + 48);
  v65 = (v22 + 48);
  v61 = v22;
  v62 = (v22 + 32);

  v64 = v23;
  v70 = v14;
  v67 = v9;
  v63 = a1;
  while (1)
  {
    v24 = *v78;
    v25 = *(*a2 + 104);
    v26 = v77;
    v76 = *v79;
    v76(v77, a2 + v25, v14);
    LOBYTE(v24) = sub_10079C3B4(v26, v24);
    v27 = v14;
    v28 = *v23;
    (*v23)(v26, v27);
    if (v24)
    {
    }

    v29 = v73;
    sub_10000BE14(a2 + *(*a2 + 112), v73, &qword_101A21E80);
    if ((*v71)(v29, 1, v72) == 1)
    {

      return sub_10000CAAC(v29, &qword_101A21E80);
    }

    v30 = a2;
    v31 = v28;
    sub_100025668(v29, v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v32 = a2 + v25;
    v33 = v66;
    v14 = v70;
    v34 = v76;
    v76(v66, v32, v70);
    v35 = v77;
    sub_100E6AF38(v77, v33);
    v31(v35, v14);
    v74 = v30;
    v34(v33, v30 + v25, v14);
    sub_100E6AF38(v35, v33);
    v36 = v31;
    v31(v35, v14);
    v37 = v67;
    v68(v80);
    if ((*v65)(v37, 1, v14) == 1)
    {
      sub_100026028(v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);

      sub_10000CAAC(v37, &qword_1019F6990);
LABEL_15:
      swift_weakAssign();
    }

    v38 = v75;
    (*v62)(v75, v37, v14);
    v39 = v63;
    if (!*(v63 + 16) || (v40 = sub_10003E994(v38), (v41 & 1) == 0))
    {
      v36(v38, v14);
      sub_100026028(v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);

      goto LABEL_15;
    }

    v42 = *(*(v39 + 56) + 8 * v40);
    v43 = *(*v42 + 120);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v44 = v36;
    if (*((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v59 = *((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v45 = v82;
    if (sub_10079C3B4(v42 + *(*v42 + 104), v82))
    {
      break;
    }

    v23 = v64;
    v44(v75, v14);
    sub_100026028(v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    a2 = v42;
  }

  v47 = v45[2];
  if (v47)
  {
    v48 = sub_100B39BF4(v45[2], 0);
    v49 = sub_100B3AA50(v81, &v48[(*(v61 + 80) + 32) & ~*(v61 + 80)], v47, v45);
    v77 = v81[3];
    v78 = v81[1];
    v73 = v81[4];

    sub_100035F90();
    if (v49 == v47)
    {
      v14 = v70;
      goto LABEL_21;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58 < v47)
    {
      goto LABEL_34;
    }

LABEL_27:
    sub_10067D334(v47, v58);
    swift_endAccess();

    v44(v75, v70);
    return sub_100026028(v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_21:
  v50 = v60;
  v81[0] = v48;
  v47 = 0;
  sub_100DD3D34(v81);
  if (!v81[0][2])
  {
    __break(1u);
    goto LABEL_32;
  }

  v76(v50, v81[0] + ((*(v61 + 80) + 32) & ~*(v61 + 80)), v14);

  if (!*(v39 + 16) || (v51 = sub_10003E994(v50), (v52 & 1) == 0))
  {
    v44(v50, v14);

    v44(v75, v14);
LABEL_29:
    sub_100026028(v80, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  }

  v53 = *(*(v39 + 56) + 8 * v51);

  v44(v50, v14);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v44(v75, v14);
    goto LABEL_29;
  }

  v55 = Strong;
  swift_weakAssign();
  v56 = *(*v55 + 120);
  swift_beginAccess();

  v47 = sub_100E9875C((v55 + v56), v53, sub_10113E260);

  v57 = *(v55 + v56);
  if (v57 >> 62)
  {
    goto LABEL_33;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v58 >= v47)
  {
    goto LABEL_27;
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100DD3D34(void **a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113DE5C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100E8E01C(v5);
  *a1 = v3;
}

Swift::Int sub_100DD3DDC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113E180(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100E8E148(v5);
  *a1 = v2;
  return result;
}

void *sub_100DD3E48(unint64_t a1)
{
  result = sub_100BD964C(_swiftEmptyArrayStorage);
  v8 = result;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v7)
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        result = *(a1 + 8 * j + 32);
      }

      v5 = result;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100DD3F64(&v8, result);

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    v7 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

void sub_100DD3F64(void **a1, id a2)
{
  v4 = [a2 recordID];
  v5 = [v4 zoneID];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  v21 = *a1;
  v8 = sub_1007C8A78(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  if (v7[3] < v13)
  {
    sub_100A97DB0(v13, isUniquelyReferenced_nonNull_native);
    v7 = v21;
    v8 = sub_1007C8A78(v5);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    sub_100006370(0, &qword_1019F69D0);
    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *a1 = v7;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = v8;
  sub_100AACAC0();
  v8 = v20;
  v7 = v21;
  *a1 = v21;
  if ((v14 & 1) == 0)
  {
LABEL_7:
    v16 = v8;
    sub_100AB0360(v8, v5, _swiftEmptyArrayStorage, v7);
    v17 = v5;
    v8 = v16;
  }

LABEL_8:
  v18 = (v7[7] + 8 * v8);
  v19 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

char *sub_100DD4114(uint64_t a1)
{
  result = sub_100BD87D4(_swiftEmptyArrayStorage);
  v9 = result;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8[0] = *(v4 - 2);
      v8[1] = v5;
      v8[2] = v6;
      v7 = v8[0];

      sub_100ADEC8C(&v9, v8);

      v4 += 3;
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

uint64_t sub_100DD41D8(uint64_t a1, char a2)
{
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.boardStore;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v6, "Writing a specific collection of cloudkit changes into persisted caches", 71, 2, _swiftEmptyArrayStorage);
  v7 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100EA552C;
  *(v9 + 24) = v8;
  v14[4] = sub_10002AAE4;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_10002AAB8;
  v14[3] = &unk_1018A6838;
  v10 = _Block_copy(v14);
  v11 = v2;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100DD4808(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A050F0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_100EA6324, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A65F0, sub_10001E85C, &unk_1018A6608);
}

uint64_t sub_100DD4AF0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100DD4B68, 0, 0);
}

uint64_t sub_100DD4B68()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100DD4C5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x617461446E65706FLL, 0xEE00292865736162, sub_100EA52C4, v2, &type metadata for () + 8);
}

uint64_t sub_100DD4C5C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100DD4DF4;
  }

  else
  {

    v2 = sub_100DD4D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DD4D78()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DD4DF4()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100DD4EA0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v8 = v9;
  v10 = *(v5 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  v38 = a1;
  v40 = v10;
  v13 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v15 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  v39 = v12;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v37 = type metadata accessor for CRLAssetManager();
    v17 = objc_allocWithZone(v37);
    v36 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v19 = swift_allocObject();
    v35 = v2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v19 + 16) = v20;
    atomic_thread_fence(memory_order_acq_rel);
    *&v17[v18] = v19;
    *&v17[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v21 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v17[v21] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v17[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v22 = v35;
    swift_unknownObjectWeakAssign();
    v42.receiver = v17;
    v42.super_class = v37;
    v23 = objc_msgSendSuper2(&v42, "init");

    v24 = *&v2[v14];
    *&v2[v14] = v23;
    v16 = v23;

    v15 = 0;
  }

  v25 = *(v13 + 16);
  v26 = v15;
  os_unfair_lock_unlock(v25);
  sub_100C7FC50();

  if (v38)
  {
    sub_100A78F4C();
  }

  v12 = v39;
  v10 = v40;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v27 = static OS_os_log.boardStore;
  v28 = static os_log_type_t.default.getter();
  sub_100005404(v27, &_mh_execute_header, v28, "Closing the board database", 26, 2, _swiftEmptyArrayStorage);
  v29 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database];
  v30 = *(v29 + 32);
  *v8 = v30;
  (v10)(v8, v41, v4);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  result = (v12)(v8, v4);
  if (v30)
  {

    sub_10089CCDC(v33, v29);

    result = swift_beginAccess();
    *(v29 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100DD52FC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A15A30);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_1008A1948, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A64D8, sub_100EA51D4, &unk_1018A64F0);
}

uint64_t sub_100DD55E4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100DD565C, 0, 0);
}

uint64_t sub_100DD565C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100DD5750;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x74614465736F6C63, 0xEF29286573616261, sub_100EA51CC, v2, &type metadata for () + 8);
}

uint64_t sub_100DD5750()
{

  return _swift_task_switch(sub_100DD5868, 0, 0);
}

uint64_t sub_100DD5868()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100DD58E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100022E48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100DD596C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v62 = *(v3 + 104);
  (v62)(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v60 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v61 = *(v3 + 8);
  (v61)(v5, v2);
  if (v6)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = static OS_os_log.boardStore;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v9, "Creating schema for a new board database", 40, 2, &_swiftEmptyArrayStorage);
  result = sub_100022484();
  if (v1)
  {
    return result;
  }

  v11 = result;
  v57 = v7;
  v58 = 0;
  v59 = v0;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 32) = v11;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 1;
  if (!v11)
  {
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v13 = *(v59 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v14 = swift_initStackObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;

    v15 = v58;
    sub_10003080C();
    if (v15)
    {
    }

    v56[1] = v14;
    v58 = v13;
    sub_100DDA4C4();
    sub_100DDAD7C();
    sub_100DDB3B4();
    sub_100DDBD58();
    sub_100DDC508();
    sub_100DDC9E4();
    sub_100DDCECC();
    sub_100DDD654();
    sub_100DDDBE0();
    v16 = 0;
    v17 = v60;
    *v5 = v60;
    (v62)(v5, v57, v2);
    v18 = v17;
    v19 = _dispatchPreconditionTest(_:)();
    (v61)(v5, v2);
    if (v19)
    {
      sub_100A744DC(1);
      sub_100034410();
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v62 = (inited + 32);
  v20 = inited;
  v60 = objc_opt_self();
  LODWORD(v5) = [v60 _atomicIncrementAssertCount];
  v63 = [objc_allocWithZone(NSString) init];
  v61 = v20;
  sub_100604538(v20, &v63);
  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v21 lastPathComponent];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v23;

  if (qword_1019F20A0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_10146CA70;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v5;
  v26 = sub_100006370(0, &qword_1019F4D30);
  *(v25 + 96) = v26;
  v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v25 + 104) = v27;
  *(v25 + 72) = v13;
  *(v25 + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(v25 + 112) = v16;
  *(v25 + 120) = v19;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 144) = v28;
  *(v25 + 152) = 746;
  v29 = v63;
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v29;
  v30 = v13;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);

  v33 = static os_log_type_t.error.getter();
  v34 = v61;
  sub_100005404(v24, &_mh_execute_header, v33, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v61);

  sub_10063DF98(v34, "Current schema version %{public}d before migration to %{public}d is unexpected");
  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v16 = v35 + 3;
  v35[4] = 0;
  v35[5] = 0;
  v13 = v34[2];
  if (!v13)
  {
    goto LABEL_45;
  }

  v36 = 0;
  while (1)
  {
    v37 = &v62[40 * v36];
    v5 = *(v37 + 4);
    v19 = sub_100020E58(v37, *(v37 + 3));
    v38 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v39 = *v16;
    v40 = *(v38 + 16);
    v41 = __OFADD__(*v16, v40);
    v42 = *v16 + v40;
    if (v41)
    {
      goto LABEL_39;
    }

    v5 = v38;
    v19 = v35[4];
    if (v19 >= v42)
    {
      goto LABEL_31;
    }

    if (v19 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v43 = v35[5];
    if (2 * v19 > v42)
    {
      v42 = 2 * v19;
    }

    v35[4] = v42;
    if ((v42 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v44 = swift_slowAlloc();
    v35[5] = v44;
    if (v43)
    {
      if (v44 != v43 || v44 >= &v43[8 * v39])
      {
        memmove(v44, v43, 8 * v39);
      }

      v19 = v35;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_31:
      v44 = v35[5];
    }

    if (!v44)
    {
      break;
    }

    v46 = v5[2];
    if (v46)
    {
      v47 = v5 + 4;
      v48 = *v16;
      while (1)
      {
        v49 = *v47++;
        *&v44[8 * v48] = v49;
        v48 = *v16 + 1;
        if (__OFADD__(*v16, 1))
        {
          break;
        }

        *v16 = v48;
        if (!--v46)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:

    if (++v36 == v13)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_45:
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  [v60 handleFailureInFunction:v51 file:v52 lineNumber:746 isFatal:1 format:v53 args:v50];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v54, v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100DD61EC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v65 = *(v4 + 104);
  (v65)(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v63 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v64 = *(v4 + 8);
  (v64)(v6, v3);
  if (v7)
  {
    v62 = v8;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v10, "Migrating database to minRequiredVersionForGoodEnoughFidelity schema version", 76, 2, &_swiftEmptyArrayStorage);
  result = sub_100022484();
  if (v1)
  {
    return result;
  }

  v12 = result;
  v61 = 0;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v12;
  v14 = (inited + 32);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 2;
  if (v12 != 1)
  {
LABEL_15:
    v65 = v14;
    v20 = inited;
    v63 = objc_opt_self();
    LODWORD(v21) = [v63 _atomicIncrementAssertCount];
    v66 = [objc_allocWithZone(NSString) init];
    v64 = v20;
    sub_100604538(v20, &v66);
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
LABEL_44:
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_10146CA70;
    *(v29 + 56) = &type metadata for Int32;
    *(v29 + 64) = &protocol witness table for Int32;
    *(v29 + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30);
    *(v29 + 96) = v30;
    v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v29 + 104) = v31;
    *(v29 + 72) = v22;
    *(v29 + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(v29 + 112) = v25;
    *(v29 + 120) = v27;
    *(v29 + 176) = &type metadata for UInt;
    *(v29 + 184) = &protocol witness table for UInt;
    *(v29 + 144) = v32;
    *(v29 + 152) = 639;
    v33 = v66;
    *(v29 + 216) = v30;
    *(v29 + 224) = v31;
    *(v29 + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v29);

    v37 = static os_log_type_t.error.getter();
    v38 = v64;
    sub_100005404(v28, &_mh_execute_header, v37, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v64);

    sub_10063DF98(v38, "Current schema version %{public}d before migration to %{public}d is unexpected");
    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v25 = v27 + 3;
    v27[4] = 0;
    v27[5] = 0;
    v22 = v38[2];
    if (!v22)
    {
LABEL_46:
      v54 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v55 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      [v63 handleFailureInFunction:v55 file:v56 lineNumber:639 isFatal:1 format:v57 args:v54];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v58, v59);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v39 = 0;
    while (1)
    {
      v40 = &v65[40 * v39];
      v21 = *(v40 + 4);
      sub_100020E58(v40, *(v40 + 3));
      v41 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v42 = *v25;
      v43 = *(v41 + 16);
      v44 = __OFADD__(*v25, v43);
      v45 = *v25 + v43;
      if (v44)
      {
        goto LABEL_41;
      }

      v21 = v41;
      v46 = v27[4];
      if (v46 >= v45)
      {
        goto LABEL_33;
      }

      if (v46 + 0x4000000000000000 < 0)
      {
        goto LABEL_42;
      }

      v47 = v27[5];
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      v27[4] = v45;
      if ((v45 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_43;
      }

      v48 = swift_slowAlloc();
      v27[5] = v48;
      if (v47)
      {
        break;
      }

LABEL_34:
      if (!v48)
      {
        __break(1u);
        goto LABEL_46;
      }

      v50 = *(v21 + 16);
      if (v50)
      {
        v51 = (v21 + 32);
        v52 = *v25;
        while (1)
        {
          v53 = *v51++;
          *&v48[8 * v52] = v53;
          v52 = *v25 + 1;
          if (__OFADD__(*v25, 1))
          {
            break;
          }

          *v25 = v52;
          if (!--v50)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_18:

      if (++v39 == v22)
      {
        goto LABEL_46;
      }
    }

    if (v48 != v47 || v48 >= &v47[8 * v42])
    {
      memmove(v48, v47, 8 * v42);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
    v48 = v27[5];
    goto LABEL_34;
  }

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v15 = swift_initStackObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0;

  v16 = v61;
  sub_10003080C();
  if (!v16)
  {
    sub_100DD9180();
    sub_100DD964C();
    sub_100DD9B24();
    sub_100DD9FF4();
    v61 = 0;
    v17 = v63;
    *v6 = v63;
    (v65)(v6, v62, v3);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    inited = (v64)(v6, v3);
    if (v17)
    {
      v19 = v61;
      sub_100A744DC(2);
      if (v19)
      {
        sub_10089C46C();
        swift_willThrow();
      }

      else
      {
        sub_100034410();
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_100DD6A3C()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v156 = enum case for DispatchPredicate.onQueue(_:);
  v157 = v8;
  v158 = v4 + 104;
  (v8)(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v155 = v3;
  v159 = v10;
  v160 = v4 + 8;
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = static OS_os_log.boardStore;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v12, "Migrating database to minRequiredVersionForFullFidelity schema version", 70, 2, &_swiftEmptyArrayStorage);
    result = sub_100022484();
    if (v2)
    {
      return result;
    }

    v14 = result;
    v146 = v9;
    v153 = v0;
    v145 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v143 = xmmword_10146BDE0;
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 32) = v14;
    v16 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = 3;
    if (v14 != 2)
    {
      v74 = inited;
      v157 = objc_opt_self();
      LODWORD(v73) = [v157 _atomicIncrementAssertCount];
      v162 = [objc_allocWithZone(NSString) init];
      v160 = v74;
      sub_100604538(v74, &v162);
      StaticString.description.getter();
      v159 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      v76 = [v75 lastPathComponent];

      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_82;
      }

      while (1)
      {
        v79 = static OS_os_log.crlAssert;
        v80 = swift_initStackObject();
        *(v80 + 16) = xmmword_10146CA70;
        *(v80 + 56) = &type metadata for Int32;
        *(v80 + 64) = &protocol witness table for Int32;
        *(v80 + 32) = v73;
        v81 = sub_100006370(0, &qword_1019F4D30);
        *(v80 + 96) = v81;
        v82 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v80 + 104) = v82;
        v83 = v159;
        *(v80 + 72) = v159;
        *(v80 + 136) = &type metadata for String;
        v84 = sub_1000053B0();
        *(v80 + 112) = v158;
        *(v80 + 120) = v78;
        *(v80 + 176) = &type metadata for UInt;
        *(v80 + 184) = &protocol witness table for UInt;
        *(v80 + 144) = v84;
        *(v80 + 152) = 595;
        v85 = v162;
        *(v80 + 216) = v81;
        *(v80 + 224) = v82;
        *(v80 + 192) = v85;
        v86 = v83;
        v87 = v85;
        v88 = static os_log_type_t.error.getter();
        sub_100005404(v79, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v80);

        v89 = static os_log_type_t.error.getter();
        v90 = v79;
        v91 = v160;
        sub_100005404(v90, &_mh_execute_header, v89, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v160);

        sub_10063DF98(v91, "Current schema version %{public}d before migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v73 = swift_allocObject();
        v73[2] = 8;
        v73[3] = 0;
        v92 = v73 + 3;
        v73[4] = 0;
        v73[5] = 0;
        v160 = *(v91 + 16);
        if (!v160)
        {
          goto LABEL_89;
        }

        v78 = 0;
        while (1)
        {
          v72 = sub_100020E58((v16 + 40 * v78), *(v16 + 40 * v78 + 24));
          v93 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v94 = *v92;
          v95 = *(v93 + 16);
          v96 = __OFADD__(*v92, v95);
          v97 = *v92 + v95;
          if (v96)
          {
            goto LABEL_53;
          }

          v98 = v93;
          v72 = v73[4];
          if (v72 >= v97)
          {
            goto LABEL_45;
          }

          if (v72 + 0x4000000000000000 < 0)
          {
            goto LABEL_54;
          }

          v99 = v73[5];
          if (2 * v72 > v97)
          {
            v97 = 2 * v72;
          }

          v73[4] = v97;
          if ((v97 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_55;
          }

          v100 = swift_slowAlloc();
          v73[5] = v100;
          if (v99)
          {
            if (v100 != v99 || v100 >= &v99[8 * v94])
            {
              memmove(v100, v99, 8 * v94);
            }

            v72 = v73;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_45:
            v100 = v73[5];
          }

          if (!v100)
          {
            goto LABEL_86;
          }

          v102 = *(v98 + 16);
          if (v102)
          {
            break;
          }

LABEL_30:

          if (++v78 == v160)
          {
            goto LABEL_89;
          }
        }

        v103 = (v98 + 32);
        v104 = *v92;
        while (1)
        {
          v105 = *v103++;
          *&v100[8 * v104] = v105;
          v104 = *v92 + 1;
          if (__OFADD__(*v92, 1))
          {
            break;
          }

          *v92 = v104;
          if (!--v102)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v157 = objc_opt_self();
        LODWORD(v94) = [v157 _atomicIncrementAssertCount];
        v162 = [objc_allocWithZone(NSString) init];
        v160 = v72;
        sub_100604538(v72, &v162);
        StaticString.description.getter();
        v159 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v106 = String._bridgeToObjectiveC()();

        v107 = [v106 lastPathComponent];

        v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v108;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_87;
        }

        while (2)
        {
          v109 = static OS_os_log.crlAssert;
          v110 = swift_initStackObject();
          *(v110 + 16) = xmmword_10146CA70;
          *(v110 + 56) = &type metadata for Int32;
          *(v110 + 64) = &protocol witness table for Int32;
          *(v110 + 32) = v94;
          v111 = sub_100006370(0, &qword_1019F4D30);
          *(v110 + 96) = v111;
          v112 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(v110 + 104) = v112;
          v113 = v159;
          *(v110 + 72) = v159;
          *(v110 + 136) = &type metadata for String;
          v114 = sub_1000053B0();
          *(v110 + 112) = v158;
          *(v110 + 120) = v78;
          *(v110 + 176) = &type metadata for UInt;
          *(v110 + 184) = &protocol witness table for UInt;
          *(v110 + 144) = v114;
          *(v110 + 152) = 629;
          v115 = v162;
          *(v110 + 216) = v111;
          *(v110 + 224) = v112;
          *(v110 + 192) = v115;
          v116 = v113;
          v117 = v115;
          v118 = static os_log_type_t.error.getter();
          sub_100005404(v109, &_mh_execute_header, v118, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v110);

          v119 = static os_log_type_t.error.getter();
          v120 = v109;
          v121 = v160;
          sub_100005404(v120, &_mh_execute_header, v119, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v160);

          sub_10063DF98(v121, "Queried schema version %{public}d after migration to %{public}d is unexpected");
          type metadata accessor for __VaListBuilder();
          v94 = swift_allocObject();
          *(v94 + 16) = 8;
          *(v94 + 24) = 0;
          v122 = (v94 + 24);
          *(v94 + 32) = 0;
          *(v94 + 40) = 0;
          v160 = *(v121 + 16);
          if (!v160)
          {
            while (1)
            {
LABEL_91:
              v141 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v142 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v137 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v138 = String._bridgeToObjectiveC()();

              [v157 handleFailureInFunction:v142 file:v137 lineNumber:629 isFatal:1 format:v138 args:v141];

LABEL_90:
              SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v139, v140);
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v78 = 0;
LABEL_60:
          sub_100020E58(&v73[5 * v78], v73[5 * v78 + 3]);
          v123 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v16 = *v122;
          v124 = *(v123 + 16);
          v96 = __OFADD__(*v122, v124);
          v125 = *v122 + v124;
          if (v96)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            swift_once();
            continue;
          }

          break;
        }

        v126 = v123;
        v127 = *(v94 + 32);
        if (v127 >= v125)
        {
          goto LABEL_74;
        }

        if (v127 + 0x4000000000000000 < 0)
        {
          goto LABEL_84;
        }

        v128 = *(v94 + 40);
        if (2 * v127 > v125)
        {
          v125 = 2 * v127;
        }

        *(v94 + 32) = v125;
        if ((v125 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_85;
        }

        v129 = swift_slowAlloc();
        *(v94 + 40) = v129;
        if (v128)
        {
          if (v129 != v128 || v129 >= &v128[8 * v16])
          {
            memmove(v129, v128, 8 * v16);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_74:
          v129 = *(v94 + 40);
        }

        if (!v129)
        {
          __break(1u);
LABEL_89:
          v135 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v136 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v137 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v138 = String._bridgeToObjectiveC()();

          [v157 handleFailureInFunction:v136 file:v137 lineNumber:595 isFatal:1 format:v138 args:v135];

          goto LABEL_90;
        }

        v131 = *(v126 + 16);
        if (!v131)
        {
LABEL_59:

          if (++v78 == v160)
          {
            goto LABEL_91;
          }

          goto LABEL_60;
        }

        v132 = (v126 + 32);
        v133 = *v122;
        while (1)
        {
          v134 = *v132++;
          *&v129[8 * v133] = v134;
          v133 = *v122 + 1;
          if (__OFADD__(*v122, 1))
          {
            break;
          }

          *v122 = v133;
          if (!--v131)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_82:
        swift_once();
      }
    }

    swift_setDeallocating();
    v144 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v17._object = 0xEC00000020454C42;
    v17._countAndFlagsBits = 0x4154205245544C41;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x736472616F62;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x4C4F432044444120;
    v19._object = 0xEC000000204E4D55;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000026;
    v20._object = 0x80000001015A33F0;
    String.append(_:)(v20);
    v21._object = 0x80000001015A8F90;
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v21);
    v151 = 0x1000000000000;
    v161 = 0x1000000000000;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 59;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v152 = v162;
    v154 = v163;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v24._countAndFlagsBits = 0x4154205245544C41;
    v24._object = 0xEC00000020454C42;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0x74695F6472616F62;
    v25._object = 0xEB00000000736D65;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x4C4F432044444120;
    v26._object = 0xEC000000204E4D55;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0xD000000000000026;
    v27._object = 0x80000001015A33F0;
    String.append(_:)(v27);
    v28._object = 0x80000001015A8F90;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v28);
    v161 = 0x1000000000000;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 59;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v149 = v163;
    v150 = v162;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v31._countAndFlagsBits = 0x4154205245544C41;
    v31._object = 0xEC00000020454C42;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD000000000000018;
    v32._object = 0x80000001015A31A0;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0x4C4F432044444120;
    v33._object = 0xEC000000204E4D55;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000026;
    v34._object = 0x80000001015A33F0;
    String.append(_:)(v34);
    v35._object = 0x80000001015A8F90;
    v35._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v35);
    v161 = 0x1000000000000;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._countAndFlagsBits = 59;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v147 = v163;
    v148 = v162;
    v162 = 0;
    v163 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v38._countAndFlagsBits = 0x4154205245544C41;
    v38._object = 0xEC00000020454C42;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0x6D5F736472616F62;
    v39._object = 0xEF61746164617465;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x4C4F432044444120;
    v40._object = 0xEC000000204E4D55;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0xD000000000000026;
    v41._object = 0x80000001015A33F0;
    String.append(_:)(v41);
    v42._object = 0x80000001015A8F90;
    v42._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v42);
    v161 = v151;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 59;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = v162;
    v46 = v163;
    sub_1005B981C(&unk_1019F61D0);
    v47 = swift_initStackObject();
    v48 = v153;
    *(v47 + 32) = v152;
    *(v47 + 16) = xmmword_10146D2A0;
    v49 = v149;
    v50 = v150;
    *(v47 + 40) = v154;
    *(v47 + 48) = v50;
    *(v47 + 56) = v49;
    v51 = v147;
    *(v47 + 64) = v148;
    *(v47 + 72) = v51;
    *(v47 + 80) = v45;
    *(v47 + 88) = v46;
    v2 = *(v48 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v52 = swift_initStackObject();
    *(v52 + 16) = v2;
    *(v52 + 24) = 0;

    sub_10003080C();
    v152 = v52;
    v154 = type metadata accessor for SQLiteStatement();
    v53 = 0;
LABEL_7:
    v55 = *(v47 + v53 + 32);
    v54 = *(v47 + v53 + 40);
    swift_initStackObject();

    v56 = sub_10001CC04(v2, v55, v54);

    v57 = *(*(v56 + 16) + 32);
    *v6 = v57;
    v0 = v155;
    (v157)(v6, v156, v155);
    v58 = v57;
    v9 = _dispatchPreconditionTest(_:)();
    (v159)(v6, v0);
    if (v9)
    {
      break;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v59 = *(v56 + 16);

  v60 = sub_10001CEC4(v59, v56);

  if (v60 != 101)
  {

    sub_10089C7D0();
    swift_allocError();
    *v64 = v60;
    *(v64 + 8) = 0xD000000000000017;
    *(v64 + 16) = 0x80000001015AAEC0;
    swift_willThrow();
    v65 = *(*(v56 + 16) + 32);
    *v6 = v65;
    (v157)(v6, v156, v0);
    v66 = v65;
    LOBYTE(v65) = _dispatchPreconditionTest(_:)();
    (v159)(v6, v0);
    if (v65)
    {
      swift_beginAccess();
      v67 = *(v56 + 24);
      if (v67)
      {
        sqlite3_finalize(v67);
        *(v56 + 24) = 0;
      }

      sub_10089C46C();
      swift_willThrow();
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v61 = *(*(v56 + 16) + 32);
  *v6 = v61;
  (v157)(v6, v156, v0);
  v62 = v61;
  v9 = _dispatchPreconditionTest(_:)();
  (v159)(v6, v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v63 = *(v56 + 24);
  if (v63)
  {
    sqlite3_finalize(v63);
    *(v56 + 24) = 0;
  }

  v53 += 16;
  if (v53 != 64)
  {
    goto LABEL_7;
  }

  v68 = v146;
  *v6 = v146;
  v69 = v155;
  (v157)(v6, v156, v155);
  v70 = v68;
  LOBYTE(v68) = _dispatchPreconditionTest(_:)();
  (v159)(v6, v69);
  if ((v68 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100A744DC(3);
  sub_100034410();
  v71 = sub_100022484();
  v72 = swift_initStackObject();
  *(v72 + 16) = v143;
  *(v72 + 32) = v71;
  v73 = (v72 + 32);
  *(v72 + 56) = &type metadata for Int;
  *(v72 + 96) = &type metadata for Int;
  *(v72 + 104) = &protocol witness table for Int;
  *(v72 + 64) = &protocol witness table for Int;
  *(v72 + 72) = 3;
  if (v71 != 3)
  {
    goto LABEL_56;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_100DD7F0C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  LODWORD(v118) = enum case for DispatchPredicate.onQueue(_:);
  v119 = v8;
  v8(v6);
  v117 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v7)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Migrating database to optimizeSubtreeQuery schema version", 57, 2, &_swiftEmptyArrayStorage);
  result = sub_100022484();
  if (v1)
  {
    return result;
  }

  v13 = result;
  v116 = v9;
  v120 = 0;
  v115 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v114 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v13;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 4;
  if (v13 != 3)
  {
    v120 = (inited + 32);
    v46 = inited;
    v118 = objc_opt_self();
    LODWORD(v45) = [v118 _atomicIncrementAssertCount];
    v122 = [objc_allocWithZone(NSString) init];
    v119 = v46;
    sub_100604538(v46, &v122);
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    v49 = [v48 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_89;
    }

    while (1)
    {
      v52 = static OS_os_log.crlAssert;
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_10146CA70;
      *(v53 + 56) = &type metadata for Int32;
      *(v53 + 64) = &protocol witness table for Int32;
      *(v53 + 32) = v45;
      v54 = sub_100006370(0, &qword_1019F4D30);
      *(v53 + 96) = v54;
      v55 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v53 + 104) = v55;
      v56 = v47;
      *(v53 + 72) = v47;
      *(v53 + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(v53 + 112) = v44;
      *(v53 + 120) = v51;
      *(v53 + 176) = &type metadata for UInt;
      *(v53 + 184) = &protocol witness table for UInt;
      *(v53 + 144) = v57;
      *(v53 + 152) = 555;
      v58 = v122;
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v58;
      v59 = v56;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v53);

      v62 = static os_log_type_t.error.getter();
      v63 = v119;
      sub_100005404(v52, &_mh_execute_header, v62, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v119);

      sub_10063DF98(v63, "Current schema version %{public}d before migration to %{public}d is unexpected");
      type metadata accessor for __VaListBuilder();
      v45 = swift_allocObject();
      v45[2] = 8;
      v45[3] = 0;
      v51 = v45 + 3;
      v45[4] = 0;
      v45[5] = 0;
      v64 = v63[2];
      if (!v64)
      {
        goto LABEL_96;
      }

      v47 = 0;
      while (1)
      {
        v44 = sub_100020E58(&v120[5 * v47], v120[5 * v47 + 3]);
        v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v66 = *v51;
        v67 = *(v65 + 16);
        v68 = __OFADD__(*v51, v67);
        v69 = *v51 + v67;
        if (v68)
        {
          goto LABEL_60;
        }

        v70 = v65;
        v44 = v45[4];
        if (v44 >= v69)
        {
          goto LABEL_52;
        }

        if (v44 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v71 = v45[5];
        if (2 * v44 > v69)
        {
          v69 = 2 * v44;
        }

        v45[4] = v69;
        if ((v69 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v72 = swift_slowAlloc();
        v45[5] = v72;
        if (v71)
        {
          if (v72 != v71 || v72 >= &v71[8 * v66])
          {
            memmove(v72, v71, 8 * v66);
          }

          v44 = v45;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_52:
          v72 = v45[5];
        }

        if (!v72)
        {
          goto LABEL_91;
        }

        v74 = *(v70 + 16);
        if (v74)
        {
          break;
        }

LABEL_37:

        v47 = v47 + 1;
        if (v47 == v64)
        {
          goto LABEL_96;
        }
      }

      v75 = (v70 + 32);
      v76 = *v51;
      while (1)
      {
        v77 = *v75++;
        *&v72[8 * v76] = v77;
        v76 = *v51 + 1;
        if (__OFADD__(*v51, 1))
        {
          break;
        }

        *v51 = v76;
        if (!--v74)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v120 = v45;
      v118 = objc_opt_self();
      LODWORD(v45) = [v118 _atomicIncrementAssertCount];
      v121 = [objc_allocWithZone(NSString) init];
      v119 = v44;
      sub_100604538(v44, &v121);
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v78 = String._bridgeToObjectiveC()();

      v79 = [v78 lastPathComponent];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v80;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_94;
      }

      while (2)
      {
        v81 = static OS_os_log.crlAssert;
        v82 = swift_initStackObject();
        *(v82 + 16) = xmmword_10146CA70;
        *(v82 + 56) = &type metadata for Int32;
        *(v82 + 64) = &protocol witness table for Int32;
        *(v82 + 32) = v45;
        v83 = sub_100006370(0, &qword_1019F4D30);
        *(v82 + 96) = v83;
        v84 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v82 + 104) = v84;
        v85 = v47;
        *(v82 + 72) = v47;
        *(v82 + 136) = &type metadata for String;
        v86 = sub_1000053B0();
        *(v82 + 112) = v44;
        *(v82 + 120) = v51;
        *(v82 + 176) = &type metadata for UInt;
        *(v82 + 184) = &protocol witness table for UInt;
        *(v82 + 144) = v86;
        *(v82 + 152) = 583;
        v87 = v121;
        *(v82 + 216) = v83;
        *(v82 + 224) = v84;
        *(v82 + 192) = v87;
        v88 = v85;
        v89 = v87;
        v90 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v90, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v82);

        v91 = static os_log_type_t.error.getter();
        v92 = v119;
        sub_100005404(v81, &_mh_execute_header, v91, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v119);

        sub_10063DF98(v92, "Queried schema version %{public}d after migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v45 = swift_allocObject();
        v45[2] = 8;
        v45[3] = 0;
        v51 = v45 + 3;
        v45[4] = 0;
        v45[5] = 0;
        v93 = v92[2];
        if (!v93)
        {
          while (1)
          {
LABEL_98:
            v112 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v107 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v108 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v109 = String._bridgeToObjectiveC()();

            [v118 handleFailureInFunction:v107 file:v108 lineNumber:583 isFatal:1 format:v109 args:v112];
LABEL_97:

            SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v110, v111);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        v47 = 0;
LABEL_67:
        v44 = sub_100020E58(&v120[5 * v47], v120[5 * v47 + 3]);
        v94 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v95 = *v51;
        v96 = *(v94 + 16);
        v68 = __OFADD__(*v51, v96);
        v97 = *v51 + v96;
        if (v68)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          swift_once();
          continue;
        }

        break;
      }

      v98 = v94;
      v44 = v45[4];
      if (v44 >= v97)
      {
        goto LABEL_81;
      }

      if (v44 + 0x4000000000000000 < 0)
      {
        goto LABEL_92;
      }

      v99 = v45[5];
      if (2 * v44 > v97)
      {
        v97 = 2 * v44;
      }

      v45[4] = v97;
      if ((v97 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_93;
      }

      v100 = swift_slowAlloc();
      v45[5] = v100;
      if (v99)
      {
        if (v100 != v99 || v100 >= &v99[8 * v95])
        {
          memmove(v100, v99, 8 * v95);
        }

        v44 = v45;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_81:
        v100 = v45[5];
      }

      if (!v100)
      {
        __break(1u);
LABEL_96:
        v106 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v107 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v108 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v109 = String._bridgeToObjectiveC()();

        [v118 handleFailureInFunction:v107 file:v108 lineNumber:555 isFatal:1 format:v109 args:v106];
        goto LABEL_97;
      }

      v102 = *(v98 + 16);
      if (!v102)
      {
LABEL_66:

        v47 = v47 + 1;
        if (v47 == v93)
        {
          goto LABEL_98;
        }

        goto LABEL_67;
      }

      v103 = (v98 + 32);
      v104 = *v51;
      while (1)
      {
        v105 = *v103++;
        *&v100[8 * v104] = v105;
        v104 = *v51 + 1;
        if (__OFADD__(*v51, 1))
        {
          break;
        }

        *v51 = v104;
        if (!--v102)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_89:
      swift_once();
    }
  }

  swift_setDeallocating();
  v15 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v17 = swift_initStackObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;

  v18 = v120;
  sub_10003080C();
  v120 = v18;
  if (v18)
  {
  }

  v113[2] = v15;
  v113[3] = v17;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v20 = v120;
  v21 = sub_10001CC04(v19, 0xD000000000000061, 0x80000001015AAFA0);
  v120 = v20;
  if (v20)
  {
    goto LABEL_17;
  }

  v22 = v21;
  v113[1] = v16;

  v23 = *(*(v22 + 16) + 32);
  *v6 = v23;
  (v119)(v6, v118, v3);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v116(v6, v3);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = *(v22 + 16);

  v26 = v25;
  v27 = v120;
  v28 = sub_10001CEC4(v26, v22);

  if (v28 != 101)
  {
    sub_10089C7D0();
    v34 = swift_allocError();
    *v35 = v28;
    *(v35 + 8) = 0xD00000000000003DLL;
    *(v35 + 16) = 0x80000001015AB010;
    v120 = v34;
    swift_willThrow();
    v36 = *(*(v22 + 16) + 32);
    *v6 = v36;
    (v119)(v6, v118, v3);
    v37 = v36;
    LOBYTE(v36) = _dispatchPreconditionTest(_:)();
    v116(v6, v3);
    if ((v36 & 1) == 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    swift_beginAccess();
    v33 = *(v22 + 24);
    if (v33)
    {
LABEL_16:
      sqlite3_finalize(v33);
      *(v22 + 24) = 0;
    }

LABEL_17:

    sub_10089C46C();
    swift_willThrow();
  }

  v29 = v117;
  *v6 = v117;
  (v119)(v6, v118, v3);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v116(v6, v3);
  if ((v29 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100A744DC(4);
  v120 = v27;
  if (v27)
  {
    v31 = *(*(v22 + 16) + 32);
    *v6 = v31;
    (v119)(v6, v118, v3);
    v32 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    v116(v6, v3);
    if (v31)
    {
      swift_beginAccess();
      v33 = *(v22 + 24);
      if (!v33)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_32;
  }

  v38 = *(*(v22 + 16) + 32);
  *v6 = v38;
  (v119)(v6, v118, v3);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v116(v6, v3);
  if ((v38 & 1) == 0)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v40 = *(v22 + 24);
  if (v40)
  {
    sqlite3_finalize(v40);
    *(v22 + 24) = 0;
  }

  v41 = v120;
  sub_100034410();
  if (v41)
  {
    v120 = v41;
  }

  v42 = sub_100022484();
  v120 = 0;
  v43 = v42;
  v44 = swift_initStackObject();
  *(v44 + 16) = v114;
  *(v44 + 32) = v43;
  v45 = (v44 + 32);
  *(v44 + 56) = &type metadata for Int;
  *(v44 + 96) = &type metadata for Int;
  *(v44 + 104) = &protocol witness table for Int;
  *(v44 + 64) = &protocol witness table for Int;
  *(v44 + 72) = 4;
  if (v43 != 4)
  {
    goto LABEL_63;
  }

  swift_setDeallocating();
  return swift_arrayDestroy();
}

unint64_t sub_100DD8F2C(char a1)
{
  result = 0x736472616F62;
  switch(a1)
  {
    case 1:
      result = 0x74695F6472616F62;
      break;
    case 2:
      result = 0x756C61765F79656BLL;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0x6D5F736472616F62;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x64726F6365726B63;
      break;
    case 10:
      result = 0x635F656E6F7A6B63;
      break;
    case 12:
      result = 0x737265646C6F66;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100DD9180()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Adding MinRequiredVersionForGoodEnoughFidelity to the boards table", 66, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x736472616F62;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v15._object = 0x80000001015A3760;
  String.append(_:)(v15);
  v16._object = 0x80000001015A8F90;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000020;
    *(v30 + 16) = 0x80000001015AAE00;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t sub_100DD964C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Adding MinRequiredVersionForGoodEnoughFidelity to the board items table", 71, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x74695F6472616F62;
  v13._object = 0xEB00000000736D65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v15._object = 0x80000001015A3760;
  String.append(_:)(v15);
  v16._object = 0x80000001015A8F90;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000025;
    *(v30 + 16) = 0x80000001015AAD80;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t sub_100DD9B24()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Adding MinRequiredVersionForGoodEnoughFidelityForBucket to the freehand drawing buckets table", 93, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._object = 0x80000001015A31A0;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000038;
  v15._object = 0x80000001015A3980;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x80000001015A8F90;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000065;
    *(v30 + 16) = 0x80000001015AACC0;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}

uint64_t sub_100DD9FF4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  v37(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v6)
  {
    v36 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Adding MinRequiredVersionForGoodEnoughFidelityForItems to the freehand drawing buckets table", 92, 2, &_swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v12._countAndFlagsBits = 0x4154205245544C41;
  v12._object = 0xEC00000020454C42;
  String.append(_:)(v12);
  v13._object = 0x80000001015A31A0;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4C4F43204444410ALL;
  v14._object = 0xEC000000204E4D55;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000037;
  v15._object = 0x80000001015A39C0;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x80000001015A8F90;
  String.append(_:)(v16);
  v38 = 0x2000400000000;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 59;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = v39;
  v20 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = sub_10001CC04(v21, v19, v20);

  if (v1)
  {
    return result;
  }

  v24 = *(*(v22 + 16) + 32);
  *v5 = v24;
  v37(v5, v7, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v5, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v22 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v22);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000064;
    *(v30 + 16) = 0x80000001015AABF0;
    swift_willThrow();
    v31 = *(*(v22 + 16) + 32);
    *v5 = v31;
    v37(v5, v7, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v5, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v22 + 16) + 32);
  *v5 = v28;
  v37(v5, v7, v2);
  v29 = v28;
  v7 = _dispatchPreconditionTest(_:)();
  v26(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v22 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v22 + 24) = 0;
  }
}