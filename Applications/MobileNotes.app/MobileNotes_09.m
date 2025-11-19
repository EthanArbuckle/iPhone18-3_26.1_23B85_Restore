uint64_t sub_1001CDB04(uint64_t a1, uint64_t a2)
{
  v4 = _s3TagVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CDB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CDBD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001CDC18(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1001CDC44()
{
  result = qword_1006BF488;
  if (!qword_1006BF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF488);
  }

  return result;
}

unint64_t sub_1001CDC98()
{
  result = qword_1006BF498;
  if (!qword_1006BF498)
  {
    sub_10017992C(&qword_1006BE8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF498);
  }

  return result;
}

void ICMoveDecisionControlling.performDecision(completion:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001CDDB4;
  v4[3] = &unk_100650220;
  v3 = _Block_copy(v4);

  [v2 performDecisionWithCompletion:v3];
  _Block_release(v3);
}

uint64_t sub_1001CDDB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001CE438();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t ICMoveDecisionControlling.performDecision()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_1001CDEC4, v4, v3);
}

uint64_t sub_1001CDEC4()
{
  v6 = *(v0 + 24);
  v1 = static MainActor.shared.getter();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v6;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10015DA04(&qword_1006BF4A0);
  *v3 = v0;
  v3[1] = sub_1001CDFF0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v1, &protocol witness table for MainActor, 0xD000000000000011, 0x8000000100563410, sub_1001CE364, v2, v4);
}

uint64_t sub_1001CDFF0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1001CE150, v3, v2);
}

uint64_t sub_1001CE150()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1001CE1B4(uint64_t a1, void *a2)
{
  v4 = sub_10015DA04(&qword_1006C4D50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1001CE3BC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CDDB4;
  aBlock[3] = &unk_100650270;
  v10 = _Block_copy(aBlock);

  [a2 performDecisionWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1001CE36C()
{

  sub_10015DA04(&qword_1006C4D50);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001CE3BC()
{
  sub_10015DA04(&qword_1006C4D50);

  return sub_1001CE36C();
}

unint64_t sub_1001CE438()
{
  result = qword_1006C2D00;
  if (!qword_1006C2D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C2D00);
  }

  return result;
}

uint64_t sub_1001CE48C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100025918(v0, qword_1006EF298);
  sub_10002597C(v0, qword_1006EF298);
  sub_10015DA04(&qword_1006BF4F0);
  v1 = (sub_10015DA04(&qword_1006BF4F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100538200;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "creation_date_millis_since_epoch";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "last_modified_date_millis_since_epoch";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "tags";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "audio_attachments_meta";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001CE770()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        v3 = v0;
        switch(result)
        {
          case 4:
            type metadata accessor for NoteMetadata(0);
LABEL_18:
            v0 = v3;
            dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
            break;
          case 6:
            type metadata accessor for AudioAttachmentMetadata(0);
            sub_1001CFBF4(&qword_1006BF4B0, type metadata accessor for AudioAttachmentMetadata);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for NoteMetadata(0);
          goto LABEL_18;
        }

        type metadata accessor for NoteMetadata(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001CE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CF4F4(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
  if (!v4)
  {
    sub_1001CF578(v3, a1, a2, a3, type metadata accessor for NoteMetadata);
    sub_1001CEAB8(v3);
    sub_1001CEB30(v3);
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for AudioAttachmentMetadata(0);
      sub_1001CFBF4(&qword_1006BF4B0, type metadata accessor for AudioAttachmentMetadata);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for NoteMetadata(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001CEAB8(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CEB30(uint64_t a1)
{
  result = type metadata accessor for NoteMetadata(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CEBA8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = _swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a1[8];
  v6 = (a2 + a1[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  v9[8] = 1;
  v10 = a2 + v8;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

uint64_t sub_1001CEC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001CECAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1001CED74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFBF4(&qword_1006BF4E8, type metadata accessor for NoteMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001CEE14(uint64_t a1)
{
  v2 = sub_1001CFBF4(&qword_1006BF4D0, type metadata accessor for NoteMetadata);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001CEE80()
{
  sub_1001CFBF4(&qword_1006BF4D0, type metadata accessor for NoteMetadata);

  return Message.hash(into:)();
}

uint64_t sub_1001CEF00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100025918(v0, qword_1006EF2B0);
  sub_10002597C(v0, qword_1006EF2B0);
  sub_10015DA04(&qword_1006BF4F0);
  v1 = (sub_10015DA04(&qword_1006BF4F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100538200;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "uuid";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "audio_file_name";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "audio_name";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "transcript_file_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "summary_file_name";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_call_recording";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001CF1CC()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for AudioAttachmentMetadata(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 6)
      {
        type metadata accessor for AudioAttachmentMetadata(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1001CF304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001CF404(v3);
  if (!v4)
  {
    sub_1001CF47C(v3);
    sub_1001CF4F4(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_1001CF578(v3, a1, a2, a3, type metadata accessor for AudioAttachmentMetadata);
    sub_1001CF5FC(v3);
    sub_1001CF674(v3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001CF404(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF47C(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF5FC(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF674(uint64_t a1)
{
  result = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001CF6F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v11) = 2;
  return result;
}

uint64_t sub_1001CF770@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001CF7D8(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1001CF870(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFBF4(&qword_1006BF508, type metadata accessor for AudioAttachmentMetadata);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001CF910@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_10002597C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1001CF9AC(uint64_t a1)
{
  v2 = sub_1001CFBF4(&qword_1006BF4B0, type metadata accessor for AudioAttachmentMetadata);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001CFA18()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CFA70()
{
  sub_1001CFBF4(&qword_1006BF4B0, type metadata accessor for AudioAttachmentMetadata);

  return Message.hash(into:)();
}

Swift::Int sub_1001CFAEC()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CFBF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CFE4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1001CFEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_1001D04F8(v18, v15, a4);
        sub_1001D04F8(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_1001D0560(v12, a4);
        sub_1001D0560(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1001D0078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  if (v45 != 2)
  {
    if (v46 != 2 && ((v45 ^ v46) & 1) == 0)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v46 != 2)
  {
    return 0;
  }

LABEL_50:
  type metadata accessor for UnknownStorage();
  sub_1001CFBF4(&qword_1006BF500, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1001D02E8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  if (sub_1001CFE4C(*a1, *a2) & 1) != 0 && (sub_1001CFEDC(a1[1], a2[1], type metadata accessor for AudioAttachmentMetadata, type metadata accessor for AudioAttachmentMetadata, sub_1001D0078))
  {
    type metadata accessor for UnknownStorage();
    sub_1001CFBF4(&qword_1006BF500, &type metadata accessor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_1001D04F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D0560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001D05E8()
{
  sub_1001D0890(319, &qword_1006BF578, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1001D0720();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        sub_1001D0890(319, &qword_1006C0620, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001D0890(319, &unk_1006BF588, &type metadata for Int64, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001D0720()
{
  if (!qword_1006BF580)
  {
    type metadata accessor for AudioAttachmentMetadata(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BF580);
    }
  }
}

void sub_1001D07A0()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1001D0890(319, &qword_1006C0620, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001D0890(319, &unk_1006BF638, &type metadata for Bool, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D0890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1001D091C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static AddTagsToNotesIntent.title);
  sub_10002597C(v6, static AddTagsToNotesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t AddTagsToNotesIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC5A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static AddTagsToNotesIntent.title);
}

uint64_t static AddTagsToNotesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static AddTagsToNotesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AddTagsToNotesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static AddTagsToNotesIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BF680);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BF688);
  __chkstk_darwin(v1);
  sub_1001D110C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x2065687420646441;
  v2._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF698);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6F74207367617420;
  v3._object = 0xED00002065687420;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF6A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x7365746F6E20;
  v4._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_1001D110C()
{
  result = qword_1006BF690;
  if (!qword_1006BF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF690);
  }

  return result;
}

uint64_t (*AddTagsToNotesIntent.notes.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*AddTagsToNotesIntent.tags.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*AddTagsToNotesIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t AddTagsToNotesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = type metadata accessor for BulkModifyNoteTags();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001D1458, 0, 0);
}

uint64_t sub_1001D1458()
{
  v1 = v0[16];
  AppDependency.wrappedValue.getter();
  v2 = v0[6];
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  *v1 = 0;
  *(v1 + 8) = v2;
  IntentParameter.wrappedValue.getter();
  v3 = v0[7];
  v0[17] = v3;
  IntentParameter.wrappedValue.getter();
  v4 = v0[8];
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_100183FD4;

  return sub_100459D9C(v3, v4);
}

uint64_t sub_1001D1578(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return AddTagsToNotesIntent.perform()(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D1638@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes09AddTagsToB6IntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t _s11MobileNotes09AddTagsToB6IntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v52 = v0;
  v53 = v1;
  __chkstk_darwin(v0);
  v51 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&unk_1006BE0D0);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = v35 - v6;
  v7 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v7 - 8);
  v44 = v35 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v46 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35[2] = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v10 + 104);
  v38 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v39 = v9;
  v19(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  v41 = v19;
  v40 = v10 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v12, v18, v9);
  v20 = v44;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v16 + 56);
  v45 = v16 + 56;
  v47 = v21;
  v21(v20, 0, 1, v15);
  v54 = 0;
  v22 = type metadata accessor for IntentDialog();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v42 = v24;
  v43 = v23 + 56;
  v24(v49, 1, 1, v22);
  v24(v50, 1, 1, v22);
  v56 = sub_10026EE08();
  v57 = v25;
  v58 = v26;
  v59 = v27;
  v60 = v28;
  v36 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v53 + 104);
  v53 += 104;
  v37 = v29;
  v29(v51);
  sub_1001797CC();
  v48 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v35[1] = sub_10015DA04(&qword_1006BCB00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v38;
  v31 = v39;
  v32 = v41;
  v41(v12, v38, v39);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v12, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v47(v20, 0, 1, v46);
  v56 = 0;
  v33 = v42;
  v42(v49, 1, 1, v22);
  v33(v50, 1, 1, v22);
  v37(v51, v36, v52);
  sub_1001D1FAC(&qword_1006BCB08, type metadata accessor for TagEntity);
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v54 = 0xD000000000000021;
  v55 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v54 = 0xD000000000000024;
  v55 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v48;
}

unint64_t sub_1001D1EA0()
{
  result = qword_1006BF6A8;
  if (!qword_1006BF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF6A8);
  }

  return result;
}

unint64_t sub_1001D1EF8()
{
  result = qword_1006BF6B0;
  if (!qword_1006BF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF6B0);
  }

  return result;
}

uint64_t sub_1001D1FAC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1001D1FF4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v44 = a5;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_10015DA04(&qword_1006BF728);
  v50 = v10;
  v52 = *(v10 - 8);
  v11 = v52;
  __chkstk_darwin(v10);
  v51 = &v42 - v12;
  v53 = sub_10015DA04(&qword_1006BF730);
  v43 = *(v53 - 8);
  v13 = *(v43 + 64);
  v14 = __chkstk_darwin(v53);
  v15 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v42 - v16;
  *&v5[OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource_accountsChangeObservation] = 0;
  (*(v11 + 56))(&v5[OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource____lazy_storage___accountsChangePublisher], 1, 1, v10);
  *&v5[OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource_folderSelection] = a3;
  *&v5[OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource_accountObjectID] = a4;
  v17 = objc_allocWithZone(ICFolderCoreDataIndexer);
  v18 = a3;
  v19 = a4;
  v48 = v19;
  v20 = [v17 initWithLegacyManagedObjectContext:a1 modernManagedObjectContext:a2];
  [v20 setAccountObjectID:v19];
  [v20 setShouldIncludeSmartFolders:0];
  [v20 setShouldIncludeAccount:2];
  [v20 setShouldIncludeSystemPaper:2];
  [v20 setShouldIncludeMathNotes:2];
  [v20 setShouldIncludeCallNotes:2];
  [v20 setShouldIncludeSharedWithYou:2];
  [v20 setShouldIncludeTrash:0];
  [v20 setShouldIncludeLegacyAccounts:0];
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v18;
  sub_1000054A4(0, &qword_1006BF738);
  sub_1000054A4(0, &qword_1006BFEC0);
  v46 = v18;
  v47 = a2;
  v22 = v54;
  UICollectionView.CellRegistration.init(handler:)();
  v23 = v43;
  v24 = v53;
  (*(v43 + 16))(v15, v22, v53);
  v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v44;
  (*(v23 + 32))(v26 + v25, v15, v24);
  v60 = sub_1001D33E4;
  v61 = v26;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1003574C0;
  v59 = &unk_100650380;
  v28 = _Block_copy(&aBlock);
  v29 = v27;
  v44 = v29;

  v55.receiver = v5;
  v55.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v55, "initWithCollectionView:cellProvider:indexer:", v29, v28, v20);
  _Block_release(v28);
  v31 = v30;
  [v31 setAutoExpandMode:2];
  sub_10015DA04(&unk_1006BD390);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100534670;
  *(v32 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
  sub_1000054A4(0, &qword_1006C3F30);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setSectionTypes:isa];

  v34 = [objc_allocWithZone(UICollectionViewDiffableDataSourceSectionSnapshotHandlers) init];
  v60 = variable initialization expression of FastSync.LeaveActivityAction.isFinished;
  v61 = 0;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1001D2B50;
  v59 = &unk_1006503A8;
  v35 = _Block_copy(&aBlock);
  [v34 setShouldExpandItemHandler:v35];
  _Block_release(v35);
  v60 = variable initialization expression of FastSync.LeaveActivityAction.isFinished;
  v61 = 0;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_1001D2B50;
  v59 = &unk_1006503D0;
  v36 = _Block_copy(&aBlock);
  [v34 setShouldCollapseItemHandler:v36];
  _Block_release(v36);
  v37 = [v31 collectionViewDiffableDataSource];
  [v37 setSectionSnapshotHandlers:v34];

  v38 = v51;
  sub_1001D2BC8(v51);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000060B4(&qword_1006BF740, &qword_1006BF728);
  v39 = v50;
  v40 = Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v38, v39);
  (*(v23 + 8))(v54, v53);
  *&v31[OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource_accountsChangeObservation] = v40;

  return v31;
}

void sub_1001D27A4(void *a1, int a2, void *a3, id a4, void *a5)
{
  if (a4)
  {
    v17 = [a4 ic_existingObjectWithID:*a3];
    if (v17)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 && (v8 = v7, [a1 setAllowsExpandCollapse:0], objc_msgSend(a1, "setHasGroupInset:", 1), objc_msgSend(a1, "setHasDisclosureIndicator:", 0), objc_msgSend(a1, "setShowsNoteCount:", 0), v17 = v17, objc_msgSend(a1, "setNoteContainer:", v8), v9 = objc_msgSend(v8, "identifier"), v17, v9))
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = [a5 folderIdentifiers];
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v18[0] = v10;
        v18[1] = v12;
        __chkstk_darwin(v15);
        v16[2] = v18;
        LOBYTE(v13) = sub_100474E24(sub_1001D3624, v16, v14);

        [a1 setShowsCheckmark:v13 & 1];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1001D29C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A2A0(a3, v9);
  sub_1000054A4(0, &qword_1006BFEC0);
  if (swift_dynamicCast())
  {
    sub_1000054A4(0, &qword_1006BF738);
    v3 = v8;
    v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    sub_100009F60(v9);
    return v4;
  }

  else
  {
    _StringGuts.grow(_:)(45);
    v6._object = 0x80000001005636F0;
    v6._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v6);
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 125;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D2B50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  LOBYTE(a2) = v3(v5);

  sub_100009F60(v5);
  return a2 & 1;
}

uint64_t sub_1001D2BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10015DA04(&qword_1006BF748);
  __chkstk_darwin(v3 - 8);
  v41 = &v33 - v4;
  v42 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v38 = sub_10015DA04(&qword_1006BF750);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v33 - v8;
  v10 = sub_10015DA04(&qword_1006BF758);
  v11 = __chkstk_darwin(v10 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR____TtC11MobileNotes39FolderComposerFolderSelectionDataSource____lazy_storage___accountsChangePublisher;
  swift_beginAccess();
  sub_1001D3484(v1 + v15, v14);
  v16 = sub_10015DA04(&qword_1006BF728);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_1000073B4(v14, &qword_1006BF758);
  v18 = objc_opt_self();
  v34 = a1;
  v35 = v1;
  v19 = v18;
  v20 = [v18 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v21 = [v19 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1001D34F4();
  Publishers.Merge.init(_:_:)();
  v22 = v39;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v23 = [objc_opt_self() mainRunLoop];
  v43 = v23;
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v25 = v41;
  (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  sub_1000054A4(0, &qword_1006BF760);
  v33 = v15;
  sub_1000060B4(&qword_1006BF768, &qword_1006BF750);
  sub_1001D354C();
  v26 = v9;
  v27 = v34;
  v28 = v38;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000073B4(v25, &qword_1006BF748);

  (*(v40 + 8))(v22, v42);
  (*(v36 + 8))(v26, v28);
  v29 = v37;
  (*(v17 + 16))(v37, v27, v16);
  (*(v17 + 56))(v29, 0, 1, v16);
  v30 = v35;
  v31 = v33;
  swift_beginAccess();
  sub_1001D35B4(v29, v30 + v31);
  return swift_endAccess();
}

void sub_1001D3170()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadDataAnimated:1];
  }
}

uint64_t type metadata accessor for FolderComposerFolderSelectionDataSource()
{
  result = qword_1006BF710;
  if (!qword_1006BF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D32CC()
{
  sub_1001D3378();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D3378()
{
  if (!qword_1006BF720)
  {
    sub_10017992C(&qword_1006BF728);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BF720);
    }
  }
}

uint64_t sub_1001D33E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006BF730);

  return sub_1001D29C0(a1, a2, a3);
}

uint64_t sub_1001D3484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BF758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D34F4()
{
  result = qword_1006C43D0;
  if (!qword_1006C43D0)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C43D0);
  }

  return result;
}

unint64_t sub_1001D354C()
{
  result = qword_1006BF770;
  if (!qword_1006BF770)
  {
    sub_1000054A4(255, &qword_1006BF760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF770);
  }

  return result;
}

uint64_t sub_1001D35B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BF758);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3654()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static FolderViewSetting.typeDisplayRepresentation);
  sub_10002597C(v10, static FolderViewSetting.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t FolderViewSetting.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC5A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static FolderViewSetting.typeDisplayRepresentation);
}

uint64_t static FolderViewSetting.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static FolderViewSetting.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

MobileNotes::FolderViewSetting_optional __swiftcall FolderViewSetting.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064BAB8, v2);

  if (v3 == 1)
  {
    v4.value = MobileNotes_FolderViewSetting_listView;
  }

  else
  {
    v4.value = MobileNotes_FolderViewSetting_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t FolderViewSetting.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x776569567473696CLL;
  }

  else
  {
    return 0x567972656C6C6167;
  }
}

uint64_t sub_1001D3AD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776569567473696CLL;
  }

  else
  {
    v3 = 0x567972656C6C6167;
  }

  if (v2)
  {
    v4 = 0xEB00000000776569;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x776569567473696CLL;
  }

  else
  {
    v5 = 0x567972656C6C6167;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB00000000776569;
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

uint64_t sub_1001D3B84@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064BAB8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1001D3BE4(uint64_t *a1@<X8>)
{
  v2 = 0x567972656C6C6167;
  if (*v1)
  {
    v2 = 0x776569567473696CLL;
  }

  v3 = 0xEB00000000776569;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1001D3C2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D3CB8()
{
  String.hash(into:)();
}

Swift::Int sub_1001D3D30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001D3DB8(uint64_t a1)
{
  v2 = sub_100179820();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1001D3E04()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v35 = &v23 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v34 = &v23 - v3;
  v37 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v36 = type metadata accessor for LocalizedStringResource();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  sub_10015DA04(&qword_1006BF7E0);
  v9 = sub_10015DA04(&qword_1006BDDD0);
  v38 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_100535E30;
  v13 = v12 + v11;
  v29 = *(v9 + 48);
  *(v12 + v11) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v14 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v14;
  v24 = v6;
  v14(v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = *(v39 + 56);
  v39 += 56;
  v26 = v15;
  v16 = v34;
  v15(v34, 1, 1, v36);
  v17 = type metadata accessor for DisplayRepresentation.Image();
  v25 = *(*(v17 - 8) + 56);
  v18 = v35;
  v25(v35, 1, 1, v17);
  v27 = v13;
  v19 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v20 = (v13 + v33);
  v33 = *(v38 + 48);
  *v20 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v24, v30, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26(v16, 1, 1, v36);
  v25(v19, 1, 1, v17);
  DisplayRepresentation.init(title:subtitle:image:)();
  v21 = sub_100190004(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static FolderViewSetting.caseDisplayRepresentations = v21;
  return result;
}

uint64_t *FolderViewSetting.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC5B0 != -1)
  {
    swift_once();
  }

  return &static FolderViewSetting.caseDisplayRepresentations;
}

uint64_t static FolderViewSetting.caseDisplayRepresentations.getter()
{
  if (qword_1006BC5B0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1001D4434()
{
  result = qword_1006BF778;
  if (!qword_1006BF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF778);
  }

  return result;
}

unint64_t sub_1001D448C()
{
  result = qword_1006BF780;
  if (!qword_1006BF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF780);
  }

  return result;
}

unint64_t sub_1001D44E4()
{
  result = qword_1006BF788;
  if (!qword_1006BF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF788);
  }

  return result;
}

unint64_t sub_1001D453C()
{
  result = qword_1006BF790;
  if (!qword_1006BF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF790);
  }

  return result;
}

unint64_t sub_1001D45A0()
{
  result = qword_1006BF798;
  if (!qword_1006BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF798);
  }

  return result;
}

unint64_t sub_1001D45F4()
{
  result = qword_1006BF7A0;
  if (!qword_1006BF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7A0);
  }

  return result;
}

unint64_t sub_1001D4648()
{
  result = qword_1006BF7A8;
  if (!qword_1006BF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7A8);
  }

  return result;
}

unint64_t sub_1001D46A0()
{
  result = qword_1006BF7B0;
  if (!qword_1006BF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7B0);
  }

  return result;
}

unint64_t sub_1001D4748()
{
  result = qword_1006BF7B8;
  if (!qword_1006BF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7B8);
  }

  return result;
}

unint64_t sub_1001D47A0()
{
  result = qword_1006BF7C0;
  if (!qword_1006BF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7C0);
  }

  return result;
}

unint64_t sub_1001D47F8()
{
  result = qword_1006BF7C8;
  if (!qword_1006BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7C8);
  }

  return result;
}

uint64_t sub_1001D484C(uint64_t a1)
{
  v2 = sub_1001D46A0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D489C()
{
  result = qword_1006BF7D0;
  if (!qword_1006BF7D0)
  {
    sub_10017992C(&qword_1006BF7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF7D0);
  }

  return result;
}

uint64_t sub_1001D4928()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006BF7E8);
  sub_10002597C(v0, qword_1006BF7E8);
  return static Logger.audioTranscription.getter();
}

id sub_1001D4974()
{
  result = [objc_allocWithZone(type metadata accessor for CallNoteCoordinator()) init];
  static CallNoteCoordinator.shared = result;
  return result;
}

uint64_t *CallNoteCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  return &static CallNoteCoordinator.shared;
}

id static CallNoteCoordinator.shared.getter()
{
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CallNoteCoordinator.shared;

  return v0;
}

void static CallNoteCoordinator.shared.setter(uint64_t a1)
{
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CallNoteCoordinator.shared;
  static CallNoteCoordinator.shared = a1;
}

uint64_t (*static CallNoteCoordinator.shared.modify())()
{
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1001D4B84()
{
  v0 = type metadata accessor for URL();
  sub_100025918(v0, static CallNoteCoordinator.csdDirectory);
  sub_10002597C(v0, static CallNoteCoordinator.csdDirectory);
  return URL.init(fileURLWithPath:)();
}

uint64_t CallNoteCoordinator.csdDirectory.unsafeMutableAddressor()
{
  if (qword_1006BC5C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_10002597C(v0, static CallNoteCoordinator.csdDirectory);
}

uint64_t static CallNoteCoordinator.csdDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_10002597C(v2, static CallNoteCoordinator.csdDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id CallNoteCoordinator.init()()
{
  v1 = OBJC_IVAR___ICCallNoteCoordinator_eventReporter;
  *&v0[OBJC_IVAR___ICCallNoteCoordinator_eventReporter] = 0;
  sub_1000054A4(0, &qword_1006BF808);
  if ([swift_getObjCClassFromMetadata() isOptedInForAnalytics])
  {
    type metadata accessor for CallNoteCoordinator();
    sub_10015DA04(&qword_1006BF810);
    String.init<A>(describing:)();
    v2 = objc_allocWithZone(ICNAEventReporter);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithSubTrackerName:v3];

    v5 = *&v0[v1];
    *&v0[v1] = v4;

    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() selector:"eventReporterLostSession:" name:ICNAEventReporterLostSessionNotification object:*&v0[v1]];

    swift_unknownObjectRelease();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CallNoteCoordinator();
  return objc_msgSendSuper2(&v8, "init");
}

id CallNoteCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallNoteCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001D52C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1001CAD64(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1001CAD64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1001CAD64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1001CAD64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1001CAD64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MobileNotes19CallNoteCoordinatorC8callType3forSo06ICCallG0VSo6NSUUIDC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [a1 UUIDString];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v2 callWithUniqueProxyIdentifier:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 service];

  v6 = 2;
  if (v5 != 2)
  {
    v6 = 3;
  }

  if (v5 == 1)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void sub_1001D5764(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v146 = a5;
  v144 = a4;
  v8 = sub_10015DA04(&qword_1006BF840);
  __chkstk_darwin(v8 - 8);
  v10 = &v140 - v9;
  v148 = type metadata accessor for RecordingMetadata();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v12 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for URL();
  v150 = *(v152 - 8);
  v13 = __chkstk_darwin(v152);
  v141 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v140 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.analytics.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v154 = v16;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Call recording started", v22, 2u);
    v16 = v154;
  }

  (*(v17 + 8))(v19, v16);
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [*(static CallNoteCoordinator.shared + OBJC_IVAR___ICCallNoteCoordinator_eventReporter) startAudioRecordingEvent];
  v23 = [objc_opt_self() sharedContext];
  [v23 ensureModernAccountExistsInContext:a3];

  v24 = [objc_opt_self() defaultAccountInContext:a3];
  if (v24)
  {
    v25 = v24;
    if (qword_1006BC5B8 != -1)
    {
      swift_once();
    }

    v26 = sub_10002597C(v16, qword_1006BF7E8);
    v27 = a1;
    v28 = a2;
    v145 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v153 = v28;

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2112;
      v33 = v12;
      v34 = v153;
      *(v31 + 14) = v153;
      *v32 = v27;
      v32[1] = v34;
      v35 = v27;
      v36 = v34;
      v12 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "creating new call note from NSUserActivity with note ID: %@ attachmentID: %@", v31, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v37 = [v27 UUIDString];
    if (!v37)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = String._bridgeToObjectiveC()();
    }

    v38 = objc_opt_self();
    v39 = [v38 noteWithIdentifier:v37 context:a3];

    v40 = v39;
    if (!v39)
    {
      v41 = [v25 defaultFolder];
      v40 = [v38 newEmptyNoteWithUUID:v27 folder:v41];
    }

    v42 = v12;
    v43 = objc_opt_self();
    v140 = v39;
    v142 = v39;
    v149 = [v43 paragraphStyleNamed:0];
    v154 = v40;
    [v40 markAsCallNoteIfNeeded:1];
    if (qword_1006BC5C8 != -1)
    {
      swift_once();
    }

    sub_10002597C(v152, static CallNoteCoordinator.csdDirectory);
    v44 = [v27 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v155 = v45;
    v156 = v47;
    v48._countAndFlagsBits = 95;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49 = [v153 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);

    URL.appendingPathComponent(_:)();

    sub_10023C6F8(v10);
    v54 = v147;
    v55 = v148;
    v56 = (*(v147 + 48))(v10, 1, v148);
    v143 = v25;
    if (v56 == 1)
    {
      sub_1000073B4(v10, &qword_1006BF840);
    }

    else
    {
      (*(v54 + 32))(v42, v10, v55);
      RecordingMetadata.remoteHandle.getter();
      v60 = static AudioTranscriptionContactsUtility.speakerNameFromContacts(handle:)();
      v62 = v61;

      if (v62)
      {
        v63 = [objc_opt_self() mainBundle];
        v64 = v54;
        v65 = String._bridgeToObjectiveC()();
        v66 = [v63 localizedStringForKey:v65 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10015DA04(&qword_1006C1A30);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_100531E30;
        *(v67 + 56) = &type metadata for String;
        *(v67 + 64) = sub_1001D9030();
        *(v67 + 32) = v60;
        *(v67 + 40) = v62;
        String.init(format:_:)();

        (*(v64 + 8))(v42, v55);
        v68 = v154;
        goto LABEL_29;
      }

      (*(v54 + 8))(v42, v55);
    }

    v69 = v27;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&_mh_execute_header, v70, v71, "Could not fetch caller name for note id %@. Falling back to default title", v72, 0xCu);
      sub_1000073B4(v73, &qword_1006C1440);
    }

    v75 = [objc_opt_self() mainBundle];
    v76 = String._bridgeToObjectiveC()();
    v77 = [v75 localizedStringForKey:v76 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v154;
LABEL_29:
    v78 = [v68 textStorage];
    if (v78)
    {
      v79 = v78;
      sub_10015DA04(&unk_1006C8190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      v81 = ICTTAttributeNameParagraphStyle;
      *(inited + 32) = ICTTAttributeNameParagraphStyle;
      *(inited + 64) = sub_1000054A4(0, &qword_1006BF848);
      v82 = v149;
      *(inited + 40) = v149;
      v83 = v81;
      v84 = v82;
      sub_1001901EC(inited);
      swift_setDeallocating();
      sub_1000073B4(inited + 32, &qword_1006C81A0);
      v85 = objc_allocWithZone(NSAttributedString);
      v86 = String._bridgeToObjectiveC()();
      type metadata accessor for Key(0);
      sub_1001D8FD8();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v88 = [v85 initWithString:v86 attributes:isa];

      v68 = v154;
      [v79 appendAttributedString:v88];
    }

    v89 = [v153 UUIDString];
    if (!v89)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = String._bridgeToObjectiveC()();
    }

    v90 = [v68 addAudioAttachmentWithIdentifier:v89];

    v91 = _s11MobileNotes19CallNoteCoordinatorC8callType3forSo06ICCallG0VSo6NSUUIDC_tFZ_0(v27);
    v92 = [objc_opt_self() mainBundle];
    v93 = String._bridgeToObjectiveC()();
    v94 = [v92 localizedStringForKey:v93 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = String._bridgeToObjectiveC()();

    [v90 setTitle:v95];

    v96 = [v90 audioModel];
    if (v96)
    {
      v97 = v96;
      v98 = [v96 audioDocument];

      if (!v98)
      {
        __break(1u);
        goto LABEL_59;
      }

      [v98 setIsCallRecording:1];
    }

    v99 = [v90 audioModel];
    if (!v99)
    {

      goto LABEL_40;
    }

    v100 = v99;
    v101 = [v99 audioDocument];

    if (v101)
    {

      [v101 setCallType:v91];

LABEL_40:
      v102 = [v90 audioModel];
      if (v102)
      {
        v103 = v102;
        [v102 setMergeableDataDirty:1];
      }

      v104 = String._bridgeToObjectiveC()();
      [v90 updateChangeCountWithReason:v104];

      v105 = objc_allocWithZone(ICAttachmentInsertionController);
      v106 = v154;
      v107 = [v105 initWithNote:v154];

      [v106 save];
      v108 = *(static CallNoteCoordinator.shared + OBJC_IVAR___ICCallNoteCoordinator_eventReporter);
      if (v108)
      {
        v109 = v108;
        v110 = [v109 subTracker];
        if (v110)
        {
          v111 = v110;
          v112 = [objc_opt_self() sharedController];
          if (v112)
          {
            v113 = v112;
            v114 = (v150 + 8);
            if (v140)
            {
              v115 = v141;
              URL.init(fileURLWithPath:)();
              URL._bridgeToObjectiveC()(v116);
              v118 = v117;
              (*v114)(v115, v152);
              v119 = String._bridgeToObjectiveC()();
              [v113 startAppAndGlobalSessionIfNecessaryWithReferralURL:v118 referralApplication:v119];

              [v113 enterGroupWithSubtracker:v111];
              [v109 submitAttachmentAddEventForAttachment:v90];
            }

            else
            {
              v121 = v141;
              URL.init(fileURLWithPath:)();
              URL._bridgeToObjectiveC()(v122);
              v124 = v123;
              (*v114)(v121, v152);
              v125 = String._bridgeToObjectiveC()();
              [v113 startAppAndGlobalSessionIfNecessaryWithReferralURL:v124 referralApplication:v125];

              [v113 enterGroupWithSubtracker:v111];
              [v109 submitNoteCreateEventForModernNote:v154 createApproach:22];
            }

            [v113 leaveGroupWithSubtracker:v111];

            v120 = v111;
          }

          else
          {
            v120 = v109;
            v109 = v111;
          }
        }
      }

      if ((v146 & 1) == 0)
      {
        v126 = [objc_opt_self() sharedApplication];
        [v126 endBackgroundTask:v144];
      }

      v127 = v27;
      v128 = v153;
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v131 = 138412546;
        *(v131 + 4) = v127;
        *(v131 + 12) = 2112;
        *(v131 + 14) = v128;
        *v132 = v127;
        v132[1] = v128;
        v133 = v127;
        v134 = v128;
        _os_log_impl(&_mh_execute_header, v129, v130, "finalized creation of new call note from NSUserActivity with note ID: %@ attachmentID: %@", v131, 0x16u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();

        v135 = v142;
        v136 = v154;
        v137 = v149;
        v138 = &v158;
      }

      else
      {
        v135 = v129;
        v136 = v90;
        v137 = v107;
        v90 = v143;
        v129 = v154;
        v107 = v149;
        v138 = &v157;
      }

      v139 = *(v138 - 32);

      (*(v150 + 8))(v151, v152);
      return;
    }

LABEL_59:
    __break(1u);
    return;
  }

  if (qword_1006BC5B8 != -1)
  {
    swift_once();
  }

  sub_10002597C(v16, qword_1006BF7E8);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Call recording could not create a new note from because we couldnt get a default account", v59, 2u);
  }
}

uint64_t _s11MobileNotes19CallNoteCoordinatorC08fetchAllC10Recordings9directorySay10Foundation3URLVGAHSg_tFZ_0(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001D9600(a1, v4);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    if (qword_1006BC5C8 != -1)
    {
      swift_once();
    }

    v10 = sub_10002597C(v5, static CallNoteCoordinator.csdDirectory);
    (*(v6 + 16))(v8, v10, v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1000073B4(v4, &qword_1006BCC20);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = NSFileManager.contentsOfDirectory(at:)();
  (*(v6 + 8))(v8, v5);

  return v12;
}

void _s11MobileNotes19CallNoteCoordinatorC06deleteC23RecordingsFromDirectory9directoryy10Foundation3URLV_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v30 = 0;
  v10 = [v6 removeItemAtURL:v8 error:&v30];

  if (v10)
  {
    v11 = qword_1006BC5B8;
    v12 = v30;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10002597C(v13, qword_1006BF7E8);
    (*(v3 + 16))(v5, a1, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = URL.description.getter();
      v20 = v19;
      (*(v3 + 8))(v5, v2);
      v21 = sub_100009D88(v18, v20, &v30);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "deleted call recording from directory: %s", v16, 0xCu);
      sub_100009F60(v17);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v22 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006BC5B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006BF7E8);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "could not delete directory for call recording: %@", v26, 0xCu);
      sub_1000073B4(v27, &qword_1006C1440);
    }

    else
    {
    }
  }
}

uint64_t sub_1001D7170(void *a1)
{
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(static CallNoteCoordinator.shared + OBJC_IVAR___ICCallNoteCoordinator_eventReporter);
  *(static CallNoteCoordinator.shared + OBJC_IVAR___ICCallNoteCoordinator_eventReporter) = 0;

  v3 = [objc_opt_self() defaultCenter];
  *&v15 = type metadata accessor for CallNoteCoordinator();
  sub_10015DA04(&qword_1006BF810);
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = ICNAEventReporterLostSessionNotification;
  if (!a1)
  {
    goto LABEL_9;
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  v6 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v7 = sub_10017CC60(&v15, *(&v16 + 1));
    v8 = *(*(&v14 + 1) - 8);
    __chkstk_darwin(v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    sub_100009F60(&v15);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  [v3 removeObserver:v4 name:v5 object:{v11, v13, v14, v15, v16}];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t _s11MobileNotes19CallNoteCoordinatorC015importAndDeleteC13RecordingFile20managedObjectContext9directory6noteID09recordingP00Q3URLSbSo09NSManagedlM0C_10Foundation0R0VSgSo6NSUUIDCAqNtFZ_0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v200 = a5;
  v212 = a2;
  v8 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v8 - 8);
  v215 = &v191 - v9;
  v10 = sub_10015DA04(&qword_1006BCC20);
  v204 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v202 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v213 = &v191 - v14;
  v205 = v15;
  __chkstk_darwin(v13);
  v17 = &v191 - v16;
  v206 = type metadata accessor for URL();
  v18 = *(v206 - 8);
  v19 = __chkstk_darwin(v206);
  v210 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v211 = &v191 - v22;
  v23 = __chkstk_darwin(v21);
  v214 = &v191 - v24;
  v203 = v25;
  __chkstk_darwin(v23);
  v27 = &v191 - v26;
  v216 = [objc_opt_self() defaultManager];
  v28 = &selRef_insertSubview_atIndex_;
  v219 = a3;
  v29 = [a3 UUIDString];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = [objc_opt_self() noteWithIdentifier:v29 context:a1];

  v207 = a1;
  if (!v30)
  {
    goto LABEL_33;
  }

  v31 = [v30 attachments];
  if (!v31)
  {

LABEL_33:
    v61 = v18;
    v62 = [v219 v28[216]];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = [a4 v28[216]];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    LOBYTE(v66) = sub_100242B38(v63, v65, v67, v69);

    if ((v66 & 1) == 0)
    {
      v70 = v202;
      sub_1001D9600(v212, v202);
      v71 = v61;
      v72 = *(v61 + 48);
      v73 = v206;
      if (v72(v70, 1, v206) == 1)
      {
        v74 = v210;
        if (qword_1006BC5C8 != -1)
        {
          swift_once();
        }

        v75 = sub_10002597C(v73, static CallNoteCoordinator.csdDirectory);
        (*(v61 + 16))(v74, v75, v73);
        if (v72(v70, 1, v73) != 1)
        {
          sub_1000073B4(v70, &qword_1006BCC20);
        }
      }

      else
      {
        (*(v61 + 32))(v210, v70, v73);
      }

      v76 = [v219 description];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v221 = v77;
      v222 = v79;
      v80._countAndFlagsBits = 95;
      v80._object = 0xE100000000000000;
      String.append(_:)(v80);
      v81 = [a4 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85._countAndFlagsBits = v82;
      v85._object = v84;
      String.append(_:)(v85);

      v86 = v214;
      URL.appendingPathComponent(_:)();

      v87 = type metadata accessor for TaskPriority();
      (*(*(v87 - 8) + 56))(v215, 1, 1, v87);
      (*(v61 + 16))(v211, v86, v73);
      sub_1001D9600(v212, v213);
      v88 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v217 = (v88 + v203 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + v203 + 23) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
      v92 = (*(v204 + 80) + v91 + 8) & ~*(v204 + 80);
      v93 = a4;
      v94 = v92 + v205;
      v95 = swift_allocObject();
      *(v95 + 16) = 0;
      *(v95 + 24) = 0;
      (*(v71 + 32))(v95 + v88, v211, v73);
      v96 = v95 + v217;
      *v96 = 0;
      *(v96 + 8) = 1;
      v97 = v219;
      *(v95 + v89) = v219;
      *(v95 + v90) = v93;
      v98 = v207;
      *(v95 + v91) = v207;
      sub_10000CA08(v213, v95 + v92);
      *(v95 + v94) = 0;
      a4 = v93;
      v99 = v97;
      v100 = v93;
      v101 = v98;
      sub_10023D268(0, 0, v215, &unk_100538AC0, v95);

      v102 = *(v71 + 8);
      v102(v214, v73);
      v102(v210, v73);
    }

    if (qword_1006BC5B8 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_10002597C(v103, qword_1006BF7E8);
    v104 = v219;
    v105 = a4;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v108 = 138412546;
      *(v108 + 4) = v104;
      *(v108 + 12) = 2112;
      *(v108 + 14) = v105;
      *v109 = v104;
      v109[1] = v105;
      v110 = v104;
      v111 = v105;
      _os_log_impl(&_mh_execute_header, v106, v107, "importing call recording source file for new note with note ID: %@ attachmentID: %@", v108, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v112 = v216;
    goto LABEL_46;
  }

  v32 = v31;
  v199 = v30;
  v196 = v18;
  v33 = sub_1000054A4(0, &unk_1006C2C90);
  v34 = sub_1001D9A38();
  v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v195 = v27;
  v194 = v17;
  v201 = v33;
  v193 = v34;
  v198 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v37 = v223;
    v36 = v224;
    v38 = v225;
    v39 = v226;
    v40 = v227;
  }

  else
  {
    v41 = -1 << *(v35 + 32);
    v36 = (v35 + 56);
    v38 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(v35 + 56);
    v37 = v35;

    v39 = 0;
  }

  v197 = v38;
  v44 = (v38 + 64) >> 6;
  v217 = v37;
  v218 = a4;
  while (1)
  {
    if ((v37 & 0x8000000000000000) != 0)
    {
      v49 = __CocoaSet.Iterator.next()();
      if (!v49 || (v220 = v49, swift_dynamicCast(), v48 = v221, v47 = v39, v35 = v40, !v221))
      {
LABEL_32:
        sub_10019E530();

        v18 = v196;
        goto LABEL_33;
      }
    }

    else
    {
      v45 = v39;
      v46 = v40;
      v47 = v39;
      if (!v40)
      {
        while (1)
        {
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v47 >= v44)
          {
            goto LABEL_32;
          }

          v46 = v36[v47];
          ++v45;
          if (v46)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:

        goto LABEL_62;
      }

LABEL_20:
      v35 = (v46 - 1) & v46;
      v48 = *(*(v37 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
      if (!v48)
      {
        goto LABEL_32;
      }
    }

    v208 = v39;
    v209 = v40;
    v50 = [v48 identifier];
    v51 = v48;
    if (v50)
    {
      v52 = v50;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v56 = [a4 UUIDString];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if (!v55)
    {

      a4 = v218;
      goto LABEL_14;
    }

    if (v53 == v57 && v55 == v59)
    {
      break;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v218;
    if (v60)
    {
      goto LABEL_48;
    }

LABEL_14:

    v39 = v47;
    v40 = v35;
    v28 = &selRef_insertSubview_atIndex_;
    v37 = v217;
  }

  a4 = v218;
LABEL_48:
  sub_10019E530();

  v28 = v51;
  if ([v51 isDeletedOrInTrash])
  {

    v18 = v196;
    v28 = &selRef_insertSubview_atIndex_;
    goto LABEL_33;
  }

  v114 = ICInternalSettingsShouldPreserveImportedCallRecordingData();
  v40 = v195;
  v35 = v194;
  if ((v114 & 1) == 0)
  {
    v115 = [v51 subAttachments];
    if (v115)
    {
      v116 = v115;
      v117 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = sub_1002C89B4(v117);

      if (v36)
      {
        v118 = [v36 media];
        v119 = v199;
        if (v118)
        {

          URL._bridgeToObjectiveC()(&v228);
          v121 = v120;
          v221 = 0;
          v122 = [v216 removeItemAtURL:v120 error:&v221];

          if (v122)
          {
            v123 = qword_1006BC5B8;
            v124 = v221;
            if (v123 != -1)
            {
              swift_once();
            }

            v125 = type metadata accessor for Logger();
            sub_10002597C(v125, qword_1006BF7E8);
            v126 = v219;
            v127 = a4;
            v128 = Logger.logObject.getter();
            v129 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              *v130 = 138412546;
              *(v130 + 4) = v126;
              *(v130 + 12) = 2112;
              *(v130 + 14) = v127;
              *v131 = v126;
              v131[1] = v127;
              v132 = v126;
              v133 = v127;
              _os_log_impl(&_mh_execute_header, v128, v129, "deleting call recording source file for note ID: %@ attachmentID: %@", v130, 0x16u);
              sub_10015DA04(&qword_1006C1440);
              swift_arrayDestroy();
            }

            return 0;
          }

          else
          {
            v184 = v221;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            if (qword_1006BC5B8 != -1)
            {
              swift_once();
            }

            v185 = type metadata accessor for Logger();
            sub_10002597C(v185, qword_1006BF7E8);
            swift_errorRetain();
            v186 = Logger.logObject.getter();
            v187 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v186, v187))
            {
              v188 = swift_slowAlloc();
              v189 = swift_slowAlloc();
              *v188 = 138412290;
              swift_errorRetain();
              v190 = _swift_stdlib_bridgeErrorToNSError();
              *(v188 + 4) = v190;
              *v189 = v190;
              _os_log_impl(&_mh_execute_header, v186, v187, "could not remove call recording:%@", v188, 0xCu);
              sub_1000073B4(v189, &qword_1006C1440);
            }

            else
            {
            }

            return 0;
          }
        }

        goto LABEL_61;
      }
    }
  }

LABEL_62:
  v134 = [v219 UUIDString];
  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;

  v138 = [a4 UUIDString];
  v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v141 = v140;

  LOBYTE(v138) = sub_100242B38(v135, v137, v139, v141);

  if ((v138 & 1) == 0)
  {
    sub_1001D9600(v212, v35);
    v142 = v196;
    v143 = *(v196 + 48);
    v144 = v206;
    v145 = v143(v35, 1, v206);
    v192 = v28;
    if (v145 == 1)
    {
      if (qword_1006BC5C8 != -1)
      {
        swift_once();
      }

      v146 = sub_10002597C(v144, static CallNoteCoordinator.csdDirectory);
      (*(v142 + 16))(v40, v146, v144);
      if (v143(v35, 1, v144) != 1)
      {
        sub_1000073B4(v35, &qword_1006BCC20);
      }
    }

    else
    {
      (*(v142 + 32))(v40, v35, v144);
    }

    v147 = [v219 description];
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v149;

    v221 = v148;
    v222 = v150;
    v151._countAndFlagsBits = 95;
    v151._object = 0xE100000000000000;
    String.append(_:)(v151);
    v152 = [a4 description];
    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = v154;

    v156._countAndFlagsBits = v153;
    v156._object = v155;
    String.append(_:)(v156);

    v157 = v214;
    URL.appendingPathComponent(_:)();

    v158 = type metadata accessor for TaskPriority();
    (*(*(v158 - 8) + 56))(v215, 1, 1, v158);
    v159 = v211;
    (*(v142 + 16))(v211, v157, v144);
    sub_1001D9600(v212, v213);
    v160 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v217 = (v160 + v203 + 7) & 0xFFFFFFFFFFFFFFF8;
    v161 = (v160 + v203 + 23) & 0xFFFFFFFFFFFFFFF8;
    v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
    v163 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
    v164 = (*(v204 + 80) + v163 + 8) & ~*(v204 + 80);
    v165 = v164 + v205;
    v166 = swift_allocObject();
    *(v166 + 16) = 0;
    *(v166 + 24) = 0;
    (*(v142 + 32))(v166 + v160, v159, v144);
    v167 = v166 + v217;
    *v167 = 0;
    *(v167 + 8) = 1;
    v168 = v218;
    v169 = v219;
    *(v166 + v161) = v219;
    *(v166 + v162) = v168;
    v170 = v207;
    *(v166 + v163) = v207;
    sub_10000CA08(v213, v166 + v164);
    *(v166 + v165) = 0;
    a4 = v218;
    v171 = v169;
    v172 = a4;
    v173 = v170;
    sub_10023D268(0, 0, v215, &unk_100538AC8, v166);

    v174 = *(v142 + 8);
    v174(v214, v144);
    v174(v195, v144);
    v28 = v192;
  }

  if (qword_1006BC5B8 != -1)
  {
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  sub_10002597C(v175, qword_1006BF7E8);
  v176 = v219;
  v177 = a4;
  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *v180 = 138412546;
    *(v180 + 4) = v176;
    *(v180 + 12) = 2112;
    *(v180 + 14) = v177;
    *v181 = v176;
    v181[1] = v177;
    v182 = v176;
    v183 = v177;
    _os_log_impl(&_mh_execute_header, v178, v179, "importing call recording source file for existing note with note ID: %@ attachmentID: %@", v180, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
  }

  v112 = v199;
LABEL_46:

  return 1;
}

void sub_1001D886C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = (URL.pathComponents.getter() + 16);
  if (*v9 && (v10 = &v9[2 * *v9], v11 = *v10, v12 = v10[1], , v13 = , v34[0] = 95, v34[1] = 0xE100000000000000, __chkstk_darwin(v13), *(&v30 - 2) = v34, v14 = sub_1001D52C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001D9C64, (&v30 - 4), v11, v12, &v30), (v15 = v14[2]) != 0) && (v30 = a3, v31 = a2, v16 = &v14[4 * v15], v17 = v16[1], v34[3] = *v16, v32 = v16[2], v33 = v17, , , , static String._fromSubstring(_:)(), , v18 = objc_allocWithZone(NSUUID), v19 = String._bridgeToObjectiveC()(), , v20 = [v18 initWithUUIDString:v19], v19, v20))
  {
    static String._fromSubstring(_:)();

    v21 = objc_allocWithZone(NSUUID);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 initWithUUIDString:v22];

    if (v23)
    {
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v8, v30, v24);
      (*(v25 + 56))(v8, 0, 1, v24);
      _s11MobileNotes19CallNoteCoordinatorC015importAndDeleteC13RecordingFile20managedObjectContext9directory6noteID09recordingP00Q3URLSbSo09NSManagedlM0C_10Foundation0R0VSgSo6NSUUIDCAqNtFZ_0(v31, v8, v20, v23, a1);

      sub_1000073B4(v8, &qword_1006BCC20);
      return;
    }
  }

  else
  {
  }

  if (qword_1006BC5B8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10002597C(v26, qword_1006BF7E8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "did not parse directory name for call recording", v29, 2u);
  }
}

uint64_t _s11MobileNotes19CallNoteCoordinatorC015importAndDeleteC22RecordingFilesIfNeeded9directory20managedObjectContexty10Foundation3URLVSg_So09NSManagedoP0CtFZ_0(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = sub_10015DA04(&qword_1006BCC20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v23 - v14);
  sub_1001D9600(a1, v8);
  v16 = *(v10 + 48);
  if ((v16)(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v19 = *(v10 + 16);
    goto LABEL_7;
  }

  if (qword_1006BC5C8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = sub_10002597C(v9, static CallNoteCoordinator.csdDirectory);
    v18 = *(v10 + 16);
    v18(v15, v17, v9);
    if ((v16)(v8, 1, v9) != 1)
    {
      sub_1000073B4(v8, &qword_1006BCC20);
    }

    v19 = v18;
LABEL_7:
    v25 = v15;
    v20 = v19;
    v19(v6, v15, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v8 = _s11MobileNotes19CallNoteCoordinatorC08fetchAllC10Recordings9directorySay10Foundation3URLVGAHSg_tFZ_0(v6);
    sub_1000073B4(v6, &qword_1006BCC20);
    v21 = *(v8 + 2);
    if (!v21)
    {
      break;
    }

    v16 = 0;
    v6 = 0;
    v15 = (v10 + 8);
    while (v16 < *(v8 + 2))
    {
      v20(v13, &v8[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16], v9);
      sub_1001D886C(v13, v24, v25);
      ++v16;
      (*v15)(v13, v9);
      if (v21 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:

  return (*(v10 + 8))(v25, v9);
}

unint64_t sub_1001D8FD8()
{
  result = qword_1006C95D0;
  if (!qword_1006C95D0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C95D0);
  }

  return result;
}

unint64_t sub_1001D9030()
{
  result = qword_1006C3070;
  if (!qword_1006C3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3070);
  }

  return result;
}

uint64_t sub_1001D9084(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v62 = a3;
  v63 = a5;
  v61 = a4;
  v67 = a2;
  v6 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v6 - 8);
  v66 = &v55 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v68 = &v55 - v13;
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = sub_10015DA04(&qword_1006BCC20);
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v64 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v55 - v20;
  __chkstk_darwin(v19);
  v23 = &v55 - v22;
  (*(v9 + 56))(&v55 - v22, 1, 1, v8);
  v65 = v23;
  sub_1001D9600(v23, v21);
  v24 = *(v9 + 48);
  if (v24(v21, 1, v8) == 1)
  {
    if (qword_1006BC5C8 != -1)
    {
      swift_once();
    }

    v25 = sub_10002597C(v8, static CallNoteCoordinator.csdDirectory);
    (*(v9 + 16))(v15, v25, v8);
    if (v24(v21, 1, v8) != 1)
    {
      sub_1000073B4(v21, &qword_1006BCC20);
    }
  }

  else
  {
    (*(v9 + 32))(v15, v21, v8);
  }

  v26 = [a1 description];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = a1;
  v28 = v27;
  v30 = v29;

  v69 = v28;
  v70 = v30;
  v31._countAndFlagsBits = 95;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = [v67 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37 = v68;
  v57 = v15;
  URL.appendingPathComponent(_:)();

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
  v39 = v59;
  (*(v9 + 16))(v59, v37, v8);
  sub_1001D9600(v65, v64);
  v40 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v56 = (v40 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v60 + 80) + v43 + 8) & ~*(v60 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  (*(v9 + 32))(v45 + v40, v39, v8);
  v46 = v45 + v56;
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = v58;
  *(v45 + v41) = v58;
  v48 = v67;
  *(v45 + v42) = v67;
  v49 = v62;
  *(v45 + v43) = v62;
  sub_10000CA08(v64, v45 + v44);
  *(v45 + v44 + v17) = 1;
  v50 = v47;
  v51 = v48;
  v52 = v49;
  sub_10023D268(0, 0, v66, v63, v45);

  v53 = *(v9 + 8);
  v53(v68, v8);
  v53(v57, v8);
  return sub_1000073B4(v65, &qword_1006BCC20);
}

uint64_t sub_1001D9600(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BCC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9670(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10015DA04(&qword_1006BCC20);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v9 = v1 + v6;
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v9 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A1FC;

  return sub_10023D5B4(a1, v17, v16, v1 + v4, v10, v13, v11, v12);
}

uint64_t sub_1001D9854(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10015DA04(&qword_1006BCC20);
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v9 = v1 + v6;
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v9 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000A600;

  return sub_10023D5B4(a1, v17, v16, v1 + v4, v10, v13, v11, v12);
}

unint64_t sub_1001D9A38()
{
  result = qword_1006C9020;
  if (!qword_1006C9020)
  {
    sub_1000054A4(255, &unk_1006C2C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C9020);
  }

  return result;
}

uint64_t sub_1001D9AA0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v14 = *(v2 + 80);
  v3 = (v14 + 32) & ~v14;
  v4 = (*(v2 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10015DA04(&qword_1006BCC20) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v13 = *(v7 + 64);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = *(v2 + 8);
  v11(v10, v1);

  if (!(*(v2 + 48))(v0 + v9, 1, v1))
  {
    v11(v0 + v9, v1);
  }

  return _swift_deallocObject(v0, v13 + v9 + 1, v14 | v8 | 7);
}

uint64_t sub_1001D9C64(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t ICMoveDecisionType.debugDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD00000000000002CLL;
      }

      goto LABEL_8;
    }

    return 0xD00000000000001ALL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD00000000000002ALL;
      }

LABEL_8:
      _StringGuts.grow(_:)(16);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0xD00000000000001DLL;
    }

    return 0xD000000000000018;
  }
}

uint64_t sub_1001D9E28(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_26:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_27:

    return v1;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v22 = v2;

  for (i = 4; ; ++i)
  {
    v2 = i - 4;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v5 = *(v1 + 8 * i);
    }

    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v6;
    }

    v9 = [v7 action];

    if (v9)
    {
      break;
    }

    v11 = i - 3;
    if (__OFADD__(v2, 1))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_16:
    if (v11 == v3)
    {
      return v1;
    }
  }

  v10 = static Selector.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    v11 = i - 3;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() mainBundle];
  v23._object = 0x8000000100563B10;
  v15._object = 0x8000000100563AF0;
  v23._countAndFlagsBits = 0xD00000000000001ALL;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v23);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v12 ic_keyCommandWithInput:v13 modifierFlags:1179648 action:"findAndReplace:" discoverabilityTitle:v17];

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v22 || (result & 1) == 0)
  {
    result = sub_10030FFBC(v1);
    v1 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v20 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v2 < *(v20 + 16))
  {
    v21 = *(v20 + 8 * i);
    *(v20 + 8 * i) = v18;

    return v1;
  }

  __break(1u);
  return result;
}

id sub_1001DA0BC()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100563BC0;
  v3._countAndFlagsBits = 0x6B6E694C20646441;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000020;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  v8 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"handleAddLinkKey:" discoverabilityTitle:v5 image:v7];
  [v8 setWantsPriorityOverSystemBehavior:1];
  return v8;
}

id sub_1001DA23C()
{
  v25 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E10;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v26._object = 0x8000000100563B30;
  v5._countAndFlagsBits = 0x4620686361747441;
  v5._object = 0xEB00000000656C69;
  v26._countAndFlagsBits = 0xD000000000000023;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v26);

  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 systemImageNamed:v8];

  v11 = [v1 ic_keyCommandWithInput:v2 modifierFlags:1179648 action:"handleAttachFile:" discoverabilityTitle:v7 image:v10];
  *(v0 + 32) = v11;
  *(v0 + 40) = sub_1001DA0BC();
  sub_1000054A4(0, &qword_1006BF850);
  v12 = [v3 mainBundle];
  v27._object = 0x8000000100563B60;
  v13._countAndFlagsBits = 0x412064726F636552;
  v13._object = 0xEC0000006F696475;
  v27._countAndFlagsBits = 0xD00000000000001CLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v27);

  v15 = String._bridgeToObjectiveC()();
  v16 = [v9 systemImageNamed:v15];

  *(v0 + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v17 = [v3 mainBundle];
  v28._object = 0x8000000100563BA0;
  v18._object = 0x8000000100563B80;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  v18._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v28);

  v20 = String._bridgeToObjectiveC()();
  v21 = [v9 systemImageNamed:v20];

  *(v0 + 56) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v25 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  return v23;
}

void sub_1001DA68C(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1001DA23C();
    [a1 insertSiblingMenu:v2 beforeMenuForIdentifier:UIMenuFind];

    v3 = UIMenuFindPanel;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1001D9E28;
    *(v4 + 24) = 0;
    aBlock[4] = sub_1001DA9C4;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003F6814;
    aBlock[3] = &unk_1006505A8;
    v5 = _Block_copy(aBlock);

    [a1 replaceChildrenOfMenuForIdentifier:v3 fromChildrenBlock:v5];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v6 = objc_opt_self();
      sub_10015DA04(&unk_1006BD390);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100534670;
      v8 = objc_opt_self();
      v9 = String._bridgeToObjectiveC()();
      v10 = [objc_opt_self() mainBundle];
      v18._object = 0x8000000100563AD0;
      v11._object = 0x8000000100563AB0;
      v18._countAndFlagsBits = 0xD00000000000001ALL;
      v11._countAndFlagsBits = 0xD000000000000010;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

      v13 = String._bridgeToObjectiveC()();

      v14 = [v8 ic_keyCommandWithInput:v9 modifierFlags:1572864 action:"handleToggleSearch:" discoverabilityTitle:v13 image:0];

      *(v7 + 32) = v14;
      sub_1000054A4(0, &qword_1006C6400);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v6 ic_inlineMenuWithChildren:isa];

      [a1 insertChildMenu:v16 atStartOfMenuForIdentifier:v3];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001DA9D8()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static StartRecordingIntent.title);
  sub_10002597C(v6, static StartRecordingIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t StartRecordingIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC5D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static StartRecordingIntent.title);
}

uint64_t static StartRecordingIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static StartRecordingIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static StartRecordingIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static StartRecordingIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BF858);
  __chkstk_darwin(v0 - 8);
  sub_100021A6C();
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*StartRecordingIntent.loggingConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t sub_1001DB118()
{
  v0 = sub_10015DA04(&qword_1006BF858);
  __chkstk_darwin(v0 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1001DB1E0@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes20StartRecordingIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11MobileNotes20StartRecordingIntentVACycfC_0()
{
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v0;
}

id sub_1001DB370(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(a1 + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_font);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 configurationWithFont:v5];
    [v2 setSymbolConfiguration:v6];
  }

  [v2 setContentMode:4];

  return v2;
}

id sub_1001DB44C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001DB4B0(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTextAlignment:1];
  [v2 setFont:*(a1 + OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_font)];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v6];
  return v2;
}

id sub_1001DB5A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_horizontalPadding] = 0x4024000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_verticalPadding] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_imageToTextPadding] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_cornerRadius] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_backgroundTintColorRatio] = 0x3FC3333333333333;
  v10 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_font;
  *&v4[v10] = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline withFontWeight:UIFontWeightSemibold];
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___textLabel] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_1001DB6E4();

  return v11;
}

void sub_1001DB6E4()
{
  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E20;
  *(v1 + 32) = sub_1001DB44C(&OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___imageView, sub_1001DB370);
  *(v1 + 40) = sub_1001DB44C(&OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___textLabel, sub_1001DB4B0);
  v2 = objc_allocWithZone(UIStackView);
  sub_1001DBC94();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArrangedSubviews:isa];

  [v4 setSpacing:3.0];
  v5 = [v0 contentView];
  [v5 addSubview:v4];

  [v4 ic_addAnchorsToFillSuperviewWithHorizontalPadding:1 verticalPadding:10.0 usesSafeAreaLayoutGuide:6.0];
  v6 = [v0 contentView];
  [v6 ic_applyRoundedCornersWithRadius:8.0];
}

id sub_1001DB898(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_horizontalPadding] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_verticalPadding] = 0x4018000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_imageToTextPadding] = 0x4008000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_cornerRadius] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_backgroundTintColorRatio] = 0x3FC3333333333333;
  v4 = OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell_font;
  *&v1[v4] = [objc_opt_self() ic_preferredFontForStyle:UIFontTextStyleSubheadline withFontWeight:UIFontWeightSemibold];
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___textLabel] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1001DB6E4();
  }

  return v6;
}

void sub_1001DB9E4()
{
  v1 = sub_1001DB44C(&OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___textLabel, sub_1001DB4B0);
  v2 = ICLocalizedStringForICFilterType();
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  [v1 setText:v2];

  v3 = sub_1001DB44C(&OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___imageView, sub_1001DB370);
  v4 = ICSymbolImageNameForICFilterType();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() _systemImageNamed:v5];

  [v3 setImage:v6];
  v7 = ICTintColorForICFilterType();
  v8 = *&v0[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___imageView];
  v9 = v7;
  [v8 setTintColor:v9];
  v10 = *&v0[OBJC_IVAR____TtC11MobileNotes32LearnMoreSmartFoldersFiltersCell____lazy_storage___textLabel];
  [v10 setTextColor:v9];

  v11 = [v0 contentView];
  v12 = [v9 colorWithAlphaComponent:0.15];
  [v11 setBackgroundColor:v12];
}

unint64_t sub_1001DBC94()
{
  result = qword_1006C95E0;
  if (!qword_1006C95E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C95E0);
  }

  return result;
}

uint64_t sub_1001DBCEC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static ChangeFolderViewSettingIntent.title);
  sub_10002597C(v6, static ChangeFolderViewSettingIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t ChangeFolderViewSettingIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC5D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static ChangeFolderViewSettingIntent.title);
}

uint64_t static ChangeFolderViewSettingIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static ChangeFolderViewSettingIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ChangeFolderViewSettingIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static ChangeFolderViewSettingIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BF8F0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BF8F8);
  __chkstk_darwin(v1);
  sub_10002086C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF908);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x2065687420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF910);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x676E697474657320;
  v4._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t ChangeFolderViewSettingIntent.changeOperation.setter(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ChangeFolderViewSettingIntent.changeOperation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*ChangeFolderViewSettingIntent.setting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1001DC718(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1001DC808(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_1001DC87C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1001DC8F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

char *sub_1001DC96C@<X0>(char **a1@<X8>)
{
  result = _s11MobileNotes29ChangeFolderViewSettingIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *_s11MobileNotes29ChangeFolderViewSettingIntentVACycfC_0()
{
  v54 = type metadata accessor for InputConnectionBehavior();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v35 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10015DA04(&unk_1006BE0D0);
  v2 = __chkstk_darwin(v1 - 8);
  v50 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v52 = &v35 - v4;
  v5 = sub_10015DA04(&qword_1006BCB10);
  __chkstk_darwin(v5 - 8);
  v51 = &v35 - v6;
  v7 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v7 - 8);
  v55 = &v35 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v47 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10015DA04(&qword_1006BCB18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = *(v10 + 104);
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v9;
  v18(v12);
  v44 = v18;
  v45 = v10 + 104;
  v36 = v12;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v18)(v12, v19, v9);
  v20 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = *(v16 + 56);
  v46 = v16 + 56;
  v48 = v21;
  v21(v20, 0, 1, v15);
  v22 = type metadata accessor for ChangeOperation();
  (*(*(v22 - 8) + 56))(v51, 1, 1, v22);
  v23 = type metadata accessor for IntentDialog();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v37 = v25;
  v38 = v24 + 56;
  v25(v52, 1, 1, v23);
  v26 = v50;
  v25(v50, 1, 1, v23);
  v40 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v56 + 104);
  v56 += 104;
  v41 = v27;
  v27(v53);
  sub_1001DD21C(&qword_1006BCB20);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_1001DD21C(&qword_1006BCB28);
  v51 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v49 = sub_10015DA04(&qword_1006BCB30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = v36;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  (v44)(v36, v42, v43);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v28, v29, v30);
  v32 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v48(v32, 0, 1, v47);
  v57 = 2;
  v33 = v37;
  v37(v52, 1, 1, v23);
  v33(v26, 1, 1, v23);
  v41(v53, v40, v54);
  sub_100179820();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v51;
}

unint64_t sub_1001DD178()
{
  result = qword_1006BF918;
  if (!qword_1006BF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF918);
  }

  return result;
}

uint64_t sub_1001DD21C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChangeOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1001DD260()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
  [*(v0 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font) lineHeight];
  v3 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight;
  v4 = *(v0 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight);
  v5 = 4.0;
  v6 = 4.0;
  if (v2 + 8.0 < v4)
  {
    [*(v0 + v1) lineHeight];
    v6 = (v4 - v7) * 0.5;
  }

  [*(v0 + v1) lineHeight];
  v9 = v8;
  [*(v0 + v1) lineHeight];
  v11 = *(v0 + v3);
  if (v10 + 8.0 < v11)
  {
    [*(v0 + v1) lineHeight];
    v5 = (v11 - v12) * 0.5;
  }

  return v6 + v9 + v5;
}

id sub_1001DD334()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_menu] = 0;
  *&v0[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_traitCollection] = 0;
  v2 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
  *&v0[v2] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_foregroundColor;
  *&v0[v3] = [objc_opt_self() labelColor];
  *&v0[OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight] = 0;
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 textAttachmentViewProviderClassForFileType:v5];

  if (!v6)
  {
    type metadata accessor for InlineMenuButtonTextAttachmentViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = String._bridgeToObjectiveC()();
    [v4 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v8];
  }

  v9 = String._bridgeToObjectiveC()();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithData:ofType:", 0, v9);

  return v10;
}

void sub_1001DD4EC(void *a1)
{
  *(v1 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_menu) = 0;
  *(v1 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_traitCollection) = 0;
  v2 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_font;
  *(v1 + v2) = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v3 = OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_foregroundColor;
  *(v1 + v3) = [objc_opt_self() labelColor];
  *(v1 + OBJC_IVAR____TtC11MobileNotes30InlineMenuButtonTextAttachment_minimumHeight) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001DD6E4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static CreateNoteIntent.title);
  sub_10002597C(v6, static CreateNoteIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateNoteIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC5E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateNoteIntent.title);
}

uint64_t static CreateNoteIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateNoteIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateNoteIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static CreateNoteIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BF998);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006BF9A0);
  __chkstk_darwin(v1);
  sub_100023DE8();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6120657461657243;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF9B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x6E692065746F6E20;
  v3._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BF9B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x6F63207461687420;
  v4._object = 0xEF20736E6961746ELL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10015DA04(&unk_1006BF9C0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

double CreateNoteIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1001E28D0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*CreateNoteIntent.name.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateNoteIntent.contents.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v2 - 8);
  sub_100006038(a1, &v5 - v3, &unk_1006C5400);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006C5400);
}

uint64_t (*CreateNoteIntent.contents.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateNoteIntent.folder.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  sub_100006038(a1, &v5 - v3, &unk_1006BF9D0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BF9D0);
}

uint64_t (*CreateNoteIntent.folder.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*CreateNoteIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateNoteIntent.perform()(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = type metadata accessor for Logger();
  v2[52] = v3;
  v2[53] = *(v3 - 8);
  v2[54] = swift_task_alloc();
  v4 = type metadata accessor for OpensIntentHint();
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();
  sub_10015DA04(&unk_1006BF9D0);
  v2[58] = swift_task_alloc();
  v5 = type metadata accessor for FolderEntity();
  v2[59] = v5;
  v2[60] = *(v5 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = type metadata accessor for NoteEntity(0);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v2[68] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[69] = v6;
  v2[70] = *(v6 - 8);
  v2[71] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[72] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[73] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v2[74] = v7;
  v2[75] = *(v7 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v8 = type metadata accessor for AttributedString.Index();
  v2[78] = v8;
  v2[79] = *(v8 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v9 = type metadata accessor for AttributedString.CharacterView();
  v2[82] = v9;
  v2[83] = *(v9 - 8);
  v2[84] = swift_task_alloc();
  v10 = type metadata accessor for AttributedString();
  v2[85] = v10;
  v2[86] = *(v10 - 8);
  v2[87] = swift_task_alloc();
  sub_10015DA04(&unk_1006C5400);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v11 = type metadata accessor for IntentSystemContext.Kind();
  v2[93] = v11;
  v2[94] = *(v11 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = sub_10015DA04(&qword_1006BF9E0);
  v2[97] = swift_task_alloc();
  sub_10015DA04(&qword_1006BF9E8);
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v12 = type metadata accessor for IntentSystemContext.Source();
  v2[101] = v12;
  v2[102] = *(v12 - 8);
  v2[103] = swift_task_alloc();
  v2[104] = sub_10015DA04(&qword_1006BF9F0);
  v2[105] = swift_task_alloc();
  sub_10015DA04(&qword_1006BF9F8);
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v13 = type metadata accessor for IntentSystemContext();
  v2[109] = v13;
  v2[110] = *(v13 - 8);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return _swift_task_switch(sub_1001DEB88, 0, 0);
}

uint64_t sub_1001DEB88()
{
  v1 = *(v0 + 896);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 840);
  v107 = *(v0 + 832);
  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = *(v0 + 408);
  v10 = *(v9 + 32);
  v11 = *(v9 + 16);
  *(v0 + 96) = *v9;
  *(v0 + 112) = v11;
  *(v0 + 128) = v10;
  sub_100023DE8();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  v111 = *(v2 + 8);
  v111(v1, v3);
  (*(v7 + 104))(v5, enum case for IntentSystemContext.Source.actionButton(_:), v8);
  (*(v7 + 56))(v5, 0, 1, v8);
  v12 = *(v107 + 48);
  sub_100006038(v4, v6, &qword_1006BF9F8);
  sub_100006038(v5, v6 + v12, &qword_1006BF9F8);
  v13 = *(v7 + 48);
  if (v13(v6, 1, v8) == 1)
  {
    v14 = *(v0 + 864);
    v15 = *(v0 + 808);
    sub_1000073B4(*(v0 + 856), &qword_1006BF9F8);
    sub_1000073B4(v14, &qword_1006BF9F8);
    if (v13(v6 + v12, 1, v15) == 1)
    {
      sub_1000073B4(*(v0 + 840), &qword_1006BF9F8);
      v16 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v17 = *(v0 + 808);
  sub_100006038(*(v0 + 840), *(v0 + 848), &qword_1006BF9F8);
  v18 = v13(v6 + v12, 1, v17);
  v19 = *(v0 + 864);
  v20 = *(v0 + 856);
  v21 = *(v0 + 848);
  if (v18 == 1)
  {
    v22 = *(v0 + 816);
    v23 = *(v0 + 808);
    sub_1000073B4(*(v0 + 856), &qword_1006BF9F8);
    sub_1000073B4(v19, &qword_1006BF9F8);
    (*(v22 + 8))(v21, v23);
LABEL_6:
    sub_1000073B4(*(v0 + 840), &qword_1006BF9F0);
    v16 = 0;
    goto LABEL_8;
  }

  v108 = *(v0 + 840);
  v24 = *(v0 + 824);
  v25 = *(v0 + 816);
  v26 = *(v0 + 808);
  (*(v25 + 32))(v24, v6 + v12, v26);
  sub_1001E35E4(&qword_1006C3480, &type metadata accessor for IntentSystemContext.Source);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v25 + 8);
  v27(v24, v26);
  sub_1000073B4(v20, &qword_1006BF9F8);
  sub_1000073B4(v19, &qword_1006BF9F8);
  v27(v21, v26);
  sub_1000073B4(v108, &qword_1006BF9F8);
LABEL_8:
  v109 = v16;
  *(v0 + 1016) = v16 & 1;
  v28 = *(v0 + 888);
  v29 = *(v0 + 872);
  v30 = *(v0 + 800);
  v31 = *(v0 + 792);
  v32 = *(v0 + 776);
  v33 = *(v0 + 768);
  v34 = *(v0 + 752);
  v35 = *(v0 + 744);
  v36 = *(v0 + 408);
  v37 = *(v36 + 32);
  v38 = *(v36 + 16);
  *(v0 + 136) = *v36;
  *(v0 + 152) = v38;
  *(v0 + 168) = v37;
  AppIntent.systemContext.getter();
  IntentSystemContext.kind.getter();
  v111(v28, v29);
  (*(v34 + 104))(v31, enum case for IntentSystemContext.Kind.userShortcut(_:), v35);
  (*(v34 + 56))(v31, 0, 1, v35);
  v39 = *(v33 + 48);
  sub_100006038(v30, v32, &qword_1006BF9E8);
  sub_100006038(v31, v32 + v39, &qword_1006BF9E8);
  v40 = *(v34 + 48);
  if (v40(v32, 1, v35) == 1)
  {
    v41 = *(v0 + 800);
    v42 = *(v0 + 744);
    sub_1000073B4(*(v0 + 792), &qword_1006BF9E8);
    sub_1000073B4(v41, &qword_1006BF9E8);
    if (v40(v32 + v39, 1, v42) == 1)
    {
      sub_1000073B4(*(v0 + 776), &qword_1006BF9E8);
      LOBYTE(v43) = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v44 = *(v0 + 744);
  sub_100006038(*(v0 + 776), *(v0 + 784), &qword_1006BF9E8);
  v45 = v40(v32 + v39, 1, v44);
  v46 = *(v0 + 800);
  v47 = *(v0 + 792);
  v48 = *(v0 + 784);
  if (v45 == 1)
  {
    v49 = *(v0 + 752);
    v50 = *(v0 + 744);
    sub_1000073B4(*(v0 + 792), &qword_1006BF9E8);
    sub_1000073B4(v46, &qword_1006BF9E8);
    (*(v49 + 8))(v48, v50);
LABEL_13:
    sub_1000073B4(*(v0 + 776), &qword_1006BF9E0);
    LODWORD(v43) = 0;
    goto LABEL_15;
  }

  v115 = *(v0 + 776);
  v51 = *(v0 + 760);
  v52 = *(v0 + 752);
  v53 = *(v0 + 744);
  (*(v52 + 32))(v51, v32 + v39, v53);
  sub_1001E35E4(&unk_1006BFA50, &type metadata accessor for IntentSystemContext.Kind);
  LODWORD(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v52 + 8);
  v54(v51, v53);
  sub_1000073B4(v47, &qword_1006BF9E8);
  sub_1000073B4(v46, &qword_1006BF9E8);
  v54(v48, v53);
  sub_1000073B4(v115, &qword_1006BF9E8);
LABEL_15:
  if (((v43 | v109) & 1) == 0)
  {
    v63 = *(v0 + 720);
    v64 = *(v0 + 688);
    v65 = *(v0 + 680);
    IntentParameter.wrappedValue.getter();
    v66 = *(v64 + 48);
    v67 = v66(v63, 1, v65);
    v68 = *(v0 + 720);
    if (v67 == 1)
    {
      v69 = *(v0 + 680);
      AttributedString.init()();
      if (v66(v68, 1, v69) != 1)
      {
        sub_1000073B4(*(v0 + 720), &unk_1006C5400);
      }
    }

    else
    {
      (*(*(v0 + 688) + 32))(*(v0 + 728), *(v0 + 720), *(v0 + 680));
    }

    v70 = *(v0 + 728);
    v43 = *(v0 + 712);
    (*(*(v0 + 688) + 56))(v70, 0, 1, *(v0 + 680));
    sub_100006038(v70, v43, &unk_1006C5400);
    IntentParameter.wrappedValue.setter();
    sub_1000073B4(v70, &unk_1006C5400);
    v71 = 0;
    LOBYTE(v43) = 0;
    goto LABEL_30;
  }

LABEL_16:
  IntentParameter.wrappedValue.getter();
  v55 = *(v0 + 304);
  if (!v55)
  {
    goto LABEL_20;
  }

  v56 = *(v0 + 296);

  v57 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {
LABEL_20:
    v58 = *(v0 + 736);
    v59 = *(v0 + 688);
    v60 = *(v0 + 680);
    IntentParameter.wrappedValue.getter();
    v61 = (*(v59 + 48))(v58, 1, v60);
    v62 = *(v0 + 736);
    if (v61)
    {
      sub_1000073B4(*(v0 + 736), &unk_1006C5400);
      goto LABEL_28;
    }

    v106 = *(v0 + 688);
    v110 = *(v0 + 696);
    v72 = *(v0 + 672);
    v112 = *(v0 + 680);
    v113 = *(v0 + 664);
    v73 = *(v0 + 656);
    v74 = *(v0 + 648);
    v75 = *(v0 + 640);
    v76 = *(v0 + 632);
    v77 = *(v0 + 624);
    (*(v106 + 16))();
    sub_1000073B4(v62, &unk_1006C5400);
    AttributedString.characters.getter();
    sub_1001E35E4(&unk_1006BFA40, &type metadata accessor for AttributedString.CharacterView);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    sub_1001E35E4(&unk_1006C55F0, &type metadata accessor for AttributedString.Index);
    v78 = dispatch thunk of static Equatable.== infix(_:_:)();
    v79 = *(v76 + 8);
    v79(v75, v77);
    v79(v74, v77);
    (*(v113 + 8))(v72, v73);
    (*(v106 + 8))(v110, v112);
    if (v78)
    {
LABEL_28:
      v80 = *(v0 + 616);
      v81 = *(v0 + 608);
      v82 = *(v0 + 600);
      v114 = *(v0 + 592);
      v83 = *(v0 + 568);
      v84 = *(v0 + 560);
      v85 = *(v0 + 552);
      v86 = *(v0 + 544);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v84 + 104))(v83, enum case for LocalizedStringResource.BundleDescription.main(_:), v85);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentParameter.projectedValue.getter();
      (*(v82 + 16))(v81, v80, v114);
      IntentDialog.init(_:)();
      v87 = type metadata accessor for IntentDialog();
      (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
      type metadata accessor for AppIntentError();
      sub_1001E35E4(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_1000073B4(v86, &unk_1006BE0D0);
      swift_willThrow();
      (*(v82 + 8))(v80, v114);

      v105 = *(v0 + 8);

      return v105();
    }
  }

  v71 = 1;
LABEL_30:
  *(v0 + 1017) = v43 & 1;
  *(v0 + 904) = *(*(v0 + 408) + 24);
  AppDependency.wrappedValue.getter();
  v88 = *(v0 + 312);
  v89 = [objc_allocWithZone(ICCreateNoteAction) initWithNoteContext:v88];
  *(v0 + 912) = v89;

  if ((v71 & 1) == 0)
  {
    [v89 setAllowsNoContent:1];
  }

  v90 = *(v0 + 472);
  v91 = *(v0 + 480);
  v92 = *(v0 + 464);
  IntentParameter.wrappedValue.getter();
  if ((*(v91 + 48))(v92, 1, v90) == 1)
  {
    sub_1000073B4(*(v0 + 464), &unk_1006BF9D0);
    IntentParameter.wrappedValue.getter();
    IntentParameter.wrappedValue.getter();
    v101 = ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();
    sub_1000073B4(*(v0 + 704), &unk_1006C5400);

    *(v0 + 960) = v101;
    v102 = v101;
    AppDependency.wrappedValue.getter();
    *(v0 + 968) = *(v0 + 368);
    v103 = swift_task_alloc();
    *(v0 + 976) = v103;
    v104 = sub_10015DA04(&unk_1006BFA20);
    *v103 = v0;
    v103[1] = sub_1001E0338;

    return ICUnifiedNoteContext.perform<A, B>(with:using:)(v104, v102, sub_1001E2490, 0, v104, &type metadata for () + 8);
  }

  else
  {
    v93 = *(v0 + 408);
    sub_1001E345C(*(v0 + 464), *(v0 + 488), type metadata accessor for FolderEntity);
    AppDependency.wrappedValue.getter();
    v94 = *(v0 + 392);
    *(v0 + 920) = v94;
    v95 = swift_allocObject();
    *(v0 + 928) = v95;
    *(v95 + 16) = v89;
    v97 = *v93;
    v96 = v93[1];
    *(v95 + 56) = *(v93 + 4);
    *(v95 + 24) = v97;
    *(v95 + 40) = v96;
    v98 = v89;

    v99 = swift_task_alloc();
    *(v0 + 936) = v99;
    *v99 = v0;
    v99[1] = sub_1001E00C0;

    return (sub_1001A7EE8)(v94, sub_1001E34C4, v95);
  }
}

uint64_t sub_1001E00C0(uint64_t a1)
{
  v4 = *v2;
  v4[118] = v1;

  v5 = v4[115];

  if (v1)
  {
    v6 = sub_1001E1134;
  }

  else
  {
    v4[119] = a1;
    v6 = sub_1001E021C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E021C()
{
  sub_1001E34E4(v0[61], type metadata accessor for FolderEntity);
  v1 = v0[119];
  v0[120] = v1;
  v2 = v1;
  AppDependency.wrappedValue.getter();
  v0[121] = v0[46];
  v3 = swift_task_alloc();
  v0[122] = v3;
  v4 = sub_10015DA04(&unk_1006BFA20);
  *v3 = v0;
  v3[1] = sub_1001E0338;

  return ICUnifiedNoteContext.perform<A, B>(with:using:)(v4, v2, sub_1001E2490, 0, v4, &type metadata for () + 8);
}

uint64_t sub_1001E0338()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  v3 = *(v2 + 968);

  if (v0)
  {
    v4 = sub_1001E1758;
  }

  else
  {
    v4 = sub_1001E0484;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E0484()
{
  v1 = [*(v0 + 960) managedObjectContext];
  *(v0 + 992) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 960) objectID];
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 1000) = v5;
    *v5 = v0;
    v5[1] = sub_1001E0BA4;
    v6 = *(v0 + 528);

    return NoteEntity.init(for:in:)(v6, v3, v4);
  }

  v8 = *(v0 + 960);
  v9 = *(v0 + 912);
  type metadata accessor for ICError(0);
  *(v0 + 384) = 225;
  sub_1001E27A0(_swiftEmptyArrayStorage);
  sub_1001E35E4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = _convertErrorToNSError(_:)();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "CreateNoteIntent failed with error: %@", v12, 0xCu);
    sub_1000073B4(v13, &qword_1006C1440);
  }

  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v17 = *(v0 + 416);

  (*(v16 + 8))(v15, v17);
  type metadata accessor for Code(0);
  *(v0 + 320) = 228;
  swift_errorRetain();
  sub_1001E35E4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v17) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v17)
  {
    sub_100197CCC();
    swift_allocError();
    v19 = 9;
  }

  else
  {
    *(v0 + 328) = 229;
    swift_errorRetain();
    v20 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v20)
    {
      sub_100197CCC();
      swift_allocError();
      v19 = 10;
    }

    else
    {
      *(v0 + 336) = 218;
      swift_errorRetain();
      v21 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        *(v0 + 352) = 218;
        sub_10015DA04(&qword_1006BFBE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100531E30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v24;
        swift_getErrorValue();
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        *(inited + 72) = v26;
        v27 = sub_100180240((inited + 48));
        (*(*(v26 - 8) + 16))(v27, v25, v26);
        sub_10018F334(inited);
        swift_setDeallocating();
        sub_1000073B4(inited + 32, &unk_1006BFA10);
        _BridgedStoredNSError.init(_:userInfo:)();
        goto LABEL_14;
      }

      sub_100197CCC();
      swift_allocError();
      v19 = 8;
    }
  }

  *v18 = v19;
LABEL_14:
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1001E0BA4()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_1001E1D64;
  }

  else
  {
    v2 = sub_1001E0CB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E0CB8()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 960);
  v3 = *(v0 + 1017);
  v20 = *(v0 + 1016);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);

  sub_1001E345C(v5, v4, type metadata accessor for NoteEntity);
  sub_1001AD0E0(v4, v6);
  v9 = _s11MobileNotes14OpenNoteIntentVACycfC_0();
  v11 = v10;
  v13 = v12;
  sub_1001AD0E0(v6, v7);
  sub_1001AD0E0(v7, v8);
  IntentParameter.wrappedValue.setter();
  sub_1001E34E4(v7, type metadata accessor for NoteEntity);
  sub_1001E34E4(v6, type metadata accessor for NoteEntity);
  v14 = *(v0 + 536);
  if ((v3 & 1) != 0 || !v20)
  {
    *(v0 + 256) = v9;
    *(v0 + 264) = v11;
    *(v0 + 272) = v13;
    sub_1001E35E4(&qword_1006BE480, type metadata accessor for NoteEntity);
    sub_10002128C();
    static IntentResult.result<A, B>(value:opensIntent:)();
  }

  else
  {
    *(v0 + 232) = v9;
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 440);
    *(v0 + 240) = v11;
    *(v0 + 248) = v13;
    (*(v16 + 104))(v15, enum case for OpensIntentHint.disable(_:), v17);
    sub_1001E35E4(&qword_1006BE480, type metadata accessor for NoteEntity);
    sub_10002128C();
    static IntentResult.result<A, B>(value:opensIntent:hint:)();
    (*(v16 + 8))(v15, v17);
  }

  sub_1001E34E4(v14, type metadata accessor for NoteEntity);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1001E1134()
{
  v1 = *(v0 + 488);

  sub_1001E34E4(v1, type metadata accessor for FolderEntity);
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateNoteIntent failed with error: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 416);

  (*(v8 + 8))(v7, v9);
  type metadata accessor for Code(0);
  *(v0 + 320) = 228;
  swift_errorRetain();
  sub_1001E35E4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v9) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v9)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 9;
LABEL_9:
    *v10 = v11;
    goto LABEL_10;
  }

  *(v0 + 328) = 229;
  swift_errorRetain();
  v12 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v12)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 10;
    goto LABEL_9;
  }

  *(v0 + 336) = 218;
  swift_errorRetain();
  v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v13)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 8;
    goto LABEL_9;
  }

  type metadata accessor for ICError(0);
  *(v0 + 352) = 218;
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v17;
  swift_getErrorValue();
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  *(inited + 72) = v19;
  v20 = sub_100180240((inited + 48));
  (*(*(v19 - 8) + 16))(v20, v18, v19);
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &unk_1006BFA10);
  sub_1001E35E4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_10:
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001E1758()
{
  v1 = *(v0 + 960);

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateNoteIntent failed with error: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = *(v0 + 416);

  (*(v8 + 8))(v7, v9);
  type metadata accessor for Code(0);
  *(v0 + 320) = 228;
  swift_errorRetain();
  sub_1001E35E4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v9) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v9)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 9;
LABEL_9:
    *v10 = v11;
    goto LABEL_10;
  }

  *(v0 + 328) = 229;
  swift_errorRetain();
  v12 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v12)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 10;
    goto LABEL_9;
  }

  *(v0 + 336) = 218;
  swift_errorRetain();
  v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v13)
  {
    sub_100197CCC();
    swift_allocError();
    v11 = 8;
    goto LABEL_9;
  }

  type metadata accessor for ICError(0);
  *(v0 + 352) = 218;
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v17;
  swift_getErrorValue();
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);
  *(inited + 72) = v19;
  v20 = sub_100180240((inited + 48));
  (*(*(v19 - 8) + 16))(v20, v18, v19);
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &unk_1006BFA10);
  sub_1001E35E4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_10:
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001E1D64()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 960);

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "CreateNoteIntent failed with error: %@", v5, 0xCu);
    sub_1000073B4(v6, &qword_1006C1440);
  }

  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v10 = *(v0 + 416);

  (*(v9 + 8))(v8, v10);
  type metadata accessor for Code(0);
  *(v0 + 320) = 228;
  swift_errorRetain();
  sub_1001E35E4(&unk_1006BFA00, type metadata accessor for Code);
  LOBYTE(v10) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v10)
  {
    sub_100197CCC();
    swift_allocError();
    v12 = 9;
LABEL_9:
    *v11 = v12;
    goto LABEL_10;
  }

  *(v0 + 328) = 229;
  swift_errorRetain();
  v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v13)
  {
    sub_100197CCC();
    swift_allocError();
    v12 = 10;
    goto LABEL_9;
  }

  *(v0 + 336) = 218;
  swift_errorRetain();
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v14)
  {
    sub_100197CCC();
    swift_allocError();
    v12 = 8;
    goto LABEL_9;
  }

  type metadata accessor for ICError(0);
  *(v0 + 352) = 218;
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  swift_getErrorValue();
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  *(inited + 72) = v20;
  v21 = sub_100180240((inited + 48));
  (*(*(v20 - 8) + 16))(v21, v19, v20);
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &unk_1006BFA10);
  sub_1001E35E4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
LABEL_10:
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001E2378@<X0>(uint64_t *a1@<X8>)
{
  v8 = a1;
  v2 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v5 = ICCreateNoteAction.perform(withTitle:contents:pinned:container:)();
  sub_1000073B4(v4, &unk_1006C5400);

  if (!v1)
  {
    *v8 = v5;
  }

  return result;
}

void sub_1001E2490(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 folder];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() sharedInstance];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      v9 = [v6 objectID];
      [v8 refreshNotesForCollectionWithID:v9];

      swift_unknownObjectRelease();
      v4 = v9;
    }
  }
}

uint64_t (*sub_1001E2584(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_1001E2600(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return CreateNoteIntent.perform()(a1);
}

uint64_t sub_1001E26AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1001E27A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10015DA04(&qword_1006BDDE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006038(v4, &v13, &unk_1006BFA10);
      v5 = v13;
      v6 = v14;
      result = sub_1004167D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001FA64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001E28D0@<X0>(char **a1@<X8>)
{
  v59 = a1;
  v1 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v58 = &v50 - v2;
  v3 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v3 - 8);
  v56 = &v50 - v4;
  v72 = type metadata accessor for InputConnectionBehavior();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v50 - v9;
  v10 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v10 - 8);
  v55 = &v50 - v11;
  v12 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - v13;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for LocalizedStringResource();
  v69 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v60 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v15 + 104);
  v61 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v52 = v14;
  v24(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v62 = v15 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v23, v14);
  v25 = v54;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = *(v21 + 56);
  v68 = v21 + 56;
  v70 = v26;
  v26(v25, 0, 1, v20);
  v27 = type metadata accessor for String.IntentInputOptions();
  v77 = 0;
  v78 = 0;
  (*(*(v27 - 8) + 56))(v55, 1, 1, v27);
  v64 = type metadata accessor for IntentDialog();
  v28 = *(v64 - 8);
  v29 = *(v28 + 56);
  v65 = v28 + 56;
  v66 = v29;
  v29(v67, 1, 1, v64);
  v71 = enum case for InputConnectionBehavior.default(_:);
  v63 = *(v74 + 104);
  v74 += 104;
  v30 = v72;
  v63(v73);
  v55 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v53 = sub_10015DA04(&unk_1006BCB50);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v61;
  v32 = v52;
  v51 = v24;
  v24(v17, v61, v52);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v70(v25, 0, 1, v69);
  v33 = type metadata accessor for AttributedString();
  (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
  v34 = v67;
  v66(v67, 1, 1, v64);
  (v63)(v73, v71, v30);
  v56 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v53 = sub_10015DA04(&unk_1006BCB60);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = v61;
  v36 = v51;
  v51(v17, v61, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36(v17, v35, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v70(v25, 0, 1, v69);
  v37 = type metadata accessor for FolderEntity();
  (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
  v38 = v64;
  v39 = v66;
  v66(v34, 1, 1, v64);
  v39(v57, 1, 1, v38);
  v77 = sub_10019C71C();
  v78 = v40;
  v79 = v41 & 1;
  v80 = v42 & 1;
  v81 = v43 & 1;
  v82 = v44 & 1;
  (v63)(v73, v71, v72);
  sub_100179874();
  v45 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v75 = 0xD000000000000021;
  v76 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v46 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v75 = 0xD000000000000024;
  v76 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v48 = v59;
  v49 = v56;
  *v59 = v55;
  v48[1] = v49;
  v48[2] = v45;
  v48[3] = v46;
  v48[4] = result;
  return result;
}

uint64_t sub_1001E345C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E34E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E3548()
{
  result = qword_1006BFA60;
  if (!qword_1006BFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFA60);
  }

  return result;
}

uint64_t sub_1001E35E4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1001E3680(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001E3694(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E36DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1001E3768(void *a1)
{
  v2 = [a1 interactions];
  sub_10015DA04(&unk_1006BFB00);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:

    goto LABEL_16;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for UIAppIntentInteraction();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        swift_beginAccess();
        v8 = sub_1003B38B4(v7);
        swift_endAccess();
        if (v8)
        {

          [a1 removeInteraction:v7];
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_16:

    return;
  }

  __break(1u);
}

uint64_t sub_1001E3990(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v4 = a2[1];
  *(v3 + 96) = *a2;
  *(v3 + 112) = v4;
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v6;
  *(v3 + 144) = v5;

  return _swift_task_switch(sub_1001E3A30, v6, v5);
}

uint64_t sub_1001E3A30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (Strong)
  {
    v2 = [Strong window];
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 152) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  v3[3] = sub_10015DA04(&unk_1006BE4B0);
  v3[4] = sub_1001EAB4C(&qword_1006BFBE8, &unk_1006BE4B0);
  v5 = sub_100180240(v3);
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1001E3BC8;

  return AddOrRemoveNoteLockIntent.perform()(v5);
}

uint64_t sub_1001E3BC8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001E3DBC;
  }

  else
  {
    v6 = v2[19];

    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001E3D18;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E3D18()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E3DBC()
{
  v1 = v0[19];
  v2 = v0[10];

  sub_1001EA9F0(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1001E3E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a3;
  v4 = *(a2 + 16);
  *(v3 + 128) = *a2;
  *(v3 + 144) = v4;
  *(v3 + 160) = *(a2 + 32);
  *(v3 + 176) = *(a2 + 48);
  type metadata accessor for MainActor();
  *(v3 + 184) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 192) = v6;
  *(v3 + 200) = v5;

  return _swift_task_switch(sub_1001E3F30, v6, v5);
}

uint64_t sub_1001E3F30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], *(v0 + 208) = v3, v2, v3))
  {
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    v16 = *(v0 + 176);

    v11 = [v3 noteEditorViewController];
    *(v0 + 216) = v11;

    *(v0 + 16) = v9;
    *(v0 + 24) = v8;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = v5;
    *(v0 + 56) = v4;
    *(v0 + 64) = v11;
    v10[3] = sub_10015DA04(&qword_1006BE0A0);
    v10[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v12 = sub_100180240(v10);
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_1001E41CC;

    return ApplyFormattingIntent.perform()(v12);
  }

  else
  {

    type metadata accessor for ICError(0);
    *(v0 + 104) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1001E41CC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1001E43D0;
  }

  else
  {
    v5 = sub_1001E4308;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001E4308()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E43D0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_1001EA9F0(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001E44AC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a3;
  v5 = type metadata accessor for ChangeOperation();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *a2;
  *(v3 + 208) = type metadata accessor for MainActor();
  *(v3 + 216) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 224) = v7;
  *(v3 + 232) = v6;

  return _swift_task_switch(sub_1001E45B0, v7, v6);
}

uint64_t sub_1001E45B0()
{
  IntentParameter.wrappedValue.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v2, v3))
  {
    if ([v3 canUserChangeNoteContainerViewMode])
    {
      v4 = *(v0 + 184);
      v5 = *(v0 + 168);
      v6 = *(v0 + 176);
      IntentParameter.wrappedValue.getter();
      v7 = (*(v6 + 88))(v4, v5);
      if (v7 == enum case for ChangeOperation.disable(_:))
      {
        IntentParameter.wrappedValue.getter();
        if (*(v0 + 257))
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v9 = v8 ^ 1;
        }

        else
        {

          v9 = 0;
        }

        goto LABEL_19;
      }

      if (v7 == enum case for ChangeOperation.enable(_:))
      {
        IntentParameter.wrappedValue.getter();
        if (*(v0 + 258))
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {

          v9 = 1;
        }

LABEL_19:
        v13 = *(v0 + 152);
        [v3 setNoteContainerViewMode:v9 & 1];

        v13[3] = sub_10015DA04(&qword_1006BE0A0);
        v13[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
        *(v0 + 240) = sub_100180240(v13);
        *(v0 + 248) = static MainActor.shared.getter();
        v15 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1001E4AC4, v15, v14);
      }

      if (v7 == enum case for ChangeOperation.toggle(_:))
      {
        v9 = [v3 noteContainerViewMode] != 1;
        goto LABEL_19;
      }

      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = *(v0 + 168);

      type metadata accessor for ICError(0);
      *(v0 + 144) = 223;
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v20;
      *(inited + 48) = 0xD000000000000013;
      *(inited + 56) = 0x80000001005640D0;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1000073B4(inited + 32, &unk_1006BFA10);
      sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      (*(v17 + 8))(v16, v18);
    }

    else
    {

      sub_100197CCC();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
    }
  }

  else
  {

    type metadata accessor for ICError(0);
    *(v0 + 128) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001E4AC4()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_1001E4B30, v1, v2);
}

uint64_t sub_1001E4B30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E4BA0(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  *(v3 + 56) = *a2;
  type metadata accessor for MainActor();
  *(v3 + 72) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return _swift_task_switch(sub_1001E4C40, v5, v4);
}

uint64_t sub_1001E4C40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  swift_retain_n();
  if (Strong)
  {
    v2 = [Strong window];
  }

  else
  {
    v2 = 0;
  }

  v0[12] = v2;
  v3 = v0[5];
  v3[3] = sub_10015DA04(&qword_1006BE0A0);
  v3[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v4 = sub_100180240(v3);
  v5 = v2;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1001E4DA8;
  v7 = v0[7];
  v8 = v0[8];

  return DeleteTagsIntent.perform()(v4, v7, v8, v2);
}

uint64_t sub_1001E4DA8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_1001E4F64;
  }

  else
  {
    v6 = v2[12];

    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_1001E4EDC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E4EDC()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E4F64()
{
  v1 = v0[12];
  v2 = v0[5];

  sub_1001EA9F0(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1001E5004(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  v4 = *(a2 + 24);
  *(v3 + 96) = *a2;
  *(v3 + 112) = v4;
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v6;
  *(v3 + 144) = v5;

  return _swift_task_switch(sub_1001E50A8, v6, v5);
}

uint64_t sub_1001E50A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (Strong)
  {
    v2 = [Strong window];
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 152) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  v3[3] = sub_10015DA04(&qword_1006BE0A0);
  v3[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v5 = sub_100180240(v3);
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1001E5240;

  return MoveNotesToFolderIntent.perform()(v5);
}

uint64_t sub_1001E5240()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001EABAC;
  }

  else
  {
    v6 = v2[19];

    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001EABA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E5390(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = *a2;
  v3[10] = type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v5;
  v3[13] = v4;

  return _swift_task_switch(sub_1001E5434, v5, v4);
}

uint64_t sub_1001E5434()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], *(v0 + 112) = v3, v2, v3))
  {
    IntentParameter.wrappedValue.getter();
    if (*(v0 + 40))
    {
      [v3 showAccountListAnimated:1];
    }

    else
    {
      [v3 showAttachmentBrowser];
    }

    v6 = *(v0 + 56);
    v6[3] = sub_10015DA04(&qword_1006BE0A0);
    v6[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    *(v0 + 120) = sub_100180240(v6);
    *(v0 + 128) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E5660, v8, v7);
  }

  else
  {

    type metadata accessor for ICError(0);
    *(v0 + 48) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1001E5660()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_1001E56CC, v1, v2);
}

uint64_t sub_1001E56CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E573C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[49] = a1;
  v3[50] = a3;
  v3[51] = *a2;
  v3[52] = type metadata accessor for MainActor();
  v3[53] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[54] = v5;
  v3[55] = v4;

  return _swift_task_switch(sub_1001E57E0, v5, v4);
}

uint64_t sub_1001E57E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], *(v0 + 448) = v3, v2, v3))
  {
    v4 = [objc_opt_self() sharedContext];
    if (v4 && (v5 = v4, v6 = [v4 workerManagedObjectContext], *(v0 + 456) = v6, v5, v6))
    {
      IntentParameter.wrappedValue.getter();
      if (*(v0 + 480) > 1u)
      {
        if (*(v0 + 480) == 2)
        {
          v7 = [objc_allocWithZone(ICVirtualSmartFolderItemIdentifier) initWithType:ICVirtualSmartFolderItemIdentifierTypeSystemPaper parentIdentifier:0];
          if ([v7 visibleItemCountInContext:v6] >= 1)
          {
            sub_10015DA04(&qword_1006BE7B8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100531E30;
            v9 = inited + 32;
            *(v0 + 368) = v7;
            sub_1000054A4(0, &qword_1006BFBD0);
            sub_1001EAAE4();
            v10 = v7;
            goto LABEL_22;
          }

          sub_100197CCC();
          swift_allocError();
          v19 = 38;
        }

        else
        {
          v7 = [objc_allocWithZone(ICVirtualSmartFolderItemIdentifier) initWithType:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou parentIdentifier:0];
          if ([v7 visibleItemCountInContext:v6] >= 1)
          {
            sub_10015DA04(&qword_1006BE7B8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100531E30;
            v9 = inited + 32;
            *(v0 + 360) = v7;
            sub_1000054A4(0, &qword_1006BFBD0);
            sub_1001EAAE4();
            v10 = v7;
            goto LABEL_22;
          }

          sub_100197CCC();
          swift_allocError();
          v19 = 39;
        }
      }

      else if (*(v0 + 480))
      {
        v7 = [objc_allocWithZone(ICVirtualSmartFolderItemIdentifier) initWithType:ICVirtualSmartFolderItemIdentifierTypeMathNotes parentIdentifier:0];
        if ([v7 visibleItemCountInContext:v6] >= 1)
        {
          sub_10015DA04(&qword_1006BE7B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100531E30;
          v9 = inited + 32;
          *(v0 + 376) = v7;
          sub_1000054A4(0, &qword_1006BFBD0);
          sub_1001EAAE4();
          v10 = v7;
          goto LABEL_22;
        }

        sub_100197CCC();
        swift_allocError();
        v19 = 37;
      }

      else
      {
        v7 = [objc_allocWithZone(ICVirtualSmartFolderItemIdentifier) initWithType:ICVirtualSmartFolderItemIdentifierTypeCallNotes parentIdentifier:0];
        if ([v7 visibleItemCountInContext:v6] >= 1)
        {
          sub_10015DA04(&qword_1006BE7B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100531E30;
          v9 = inited + 32;
          *(v0 + 384) = v7;
          sub_1000054A4(0, &qword_1006BFBD0);
          sub_1001EAAE4();
          v10 = v7;
LABEL_22:
          AnyHashable.init<A>(_:)();
          v13 = *(v0 + 392);
          sub_10026F4A8(inited);
          swift_setDeallocating();
          sub_100024F9C(v9);
          isa = Set._bridgeToObjectiveC()().super.isa;

          v15 = Set._bridgeToObjectiveC()().super.isa;
          [v3 selectContainerWithIdentifiers:isa excludingIdentifiers:v15 usingRootViewController:1 deferUntilDataLoaded:1 animated:1];

          v13[3] = sub_10015DA04(&qword_1006BE0A0);
          v13[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
          *(v0 + 464) = sub_100180240(v13);
          *(v0 + 472) = static MainActor.shared.getter();
          v17 = dispatch thunk of Actor.unownedExecutor.getter();

          return _swift_task_switch(sub_1001E5EF8, v17, v16);
        }

        sub_100197CCC();
        swift_allocError();
        v19 = 36;
      }

      *v18 = v19;
      swift_willThrow();
    }

    else
    {

      type metadata accessor for ICError(0);
      *(v0 + 352) = 225;
      sub_1001E27A0(_swiftEmptyArrayStorage);
      sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  else
  {

    type metadata accessor for ICError(0);
    *(v0 + 336) = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1001E5EF8()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);

  return _swift_task_switch(sub_1001E5F64, v1, v2);
}

uint64_t sub_1001E5F64()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E5FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1001E6084, v5, v4);
}

uint64_t sub_1001E6084()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[16] = v3, v2, v3))
  {
    v6 = sub_1004614B8(v0[9], v0[10], v0[11]);
    v7 = v0[7];
    [v3 showObjectWithObjectID:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[17] = sub_100180240(v7);
    v0[18] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E62BC, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E62BC()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1001EABA4, v1, v2);
}

uint64_t sub_1001E6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  sub_10015DA04(&unk_1006BE0D0);
  *(v3 + 120) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v3 + 176) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v3 + 184) = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  *(v3 + 192) = v7;
  *(v3 + 200) = *(v7 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = type metadata accessor for AttachmentEntity();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 256) = *(a2 + 16);
  *(v3 + 264) = type metadata accessor for MainActor();
  *(v3 + 272) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 280) = v9;
  *(v3 + 288) = v8;

  return _swift_task_switch(sub_1001E65B8, v9, v8);
}

uint64_t sub_1001E65B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[37] = v3, v2, !v3))
  {

    type metadata accessor for ICError(0);
    v0[10] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = v0[28];
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v5 = v0[11];
  URL._bridgeToObjectiveC()(*(v4 + 20));
  v7 = v6;
  v8 = [v5 managedObjectIDForURIRepresentation:v6];

  if (!v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = [v5 managedObjectContextForObjectID:v8];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v9;
  v13 = v0[29];
  v14 = [v9 objectWithID:v8];
  v0[38] = v14;

  sub_1001EAA40(v13);
  v0[12] = &OBJC_PROTOCOL___ICAttachmentObject;
  swift_dynamicCastObjCProtocolUnconditional();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[30];
    v18 = v14;
    v24 = sub_100461724(v17, v16, v15);
    v25 = v24;
    goto LABEL_14;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v25 = v14;
    v9 = [v22 note];
    if (v9)
    {
      v23 = v9;
      v24 = [v9 objectID];

      v18 = v24;
LABEL_14:
      v26 = v0[13];
      [v3 showObjectWithObjectID:v24];

      v26[3] = sub_10015DA04(&qword_1006BE0A0);
      v26[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
      v0[39] = sub_100180240(v26);
      v0[40] = static MainActor.shared.getter();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      v9 = sub_1001E6C80;
      v10 = v27;
      v11 = v29;

      return _swift_task_switch(v9, v10, v11);
    }

LABEL_22:
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v30 = v0[20];
  v31 = v0[21];
  v32 = v0[19];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v30 + 104))(v31, enum case for LocalizedStringResource.BundleDescription.main(_:), v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "OpenAttachmentIntent: unknown object type for attachment", v35, 2u);
  }

  v36 = v0[26];
  v38 = v0[24];
  v37 = v0[25];
  v44 = v0[27];
  v40 = v0[17];
  v39 = v0[18];
  v41 = v0[16];
  v43 = v0[15];

  (*(v40 + 8))(v39, v41);
  IntentParameter.projectedValue.getter();
  (*(v37 + 16))(v36, v44, v38);
  IntentDialog.init(_:)();
  v42 = type metadata accessor for IntentDialog();
  (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  type metadata accessor for AppIntentError();
  sub_1001EAA9C(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
  swift_allocError();
  IntentParameter.needsValueError(_:)();

  sub_1000073B4(v43, &unk_1006BE0D0);
  swift_willThrow();

  (*(v37 + 8))(v44, v38);
LABEL_8:

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001E6C80()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return _swift_task_switch(sub_1001E6CEC, v1, v2);
}

uint64_t sub_1001E6CEC()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1001E6E88, v5, v4);
}

uint64_t sub_1001E6E88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[16] = v3, v2, v3))
  {
    v6 = sub_10040BB08(v0[9], v0[10], v0[11]);
    v7 = v0[7];
    [v3 showObjectWithObjectID:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[17] = sub_100180240(v7);
    v0[18] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E62BC, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E70BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1001E7168, v5, v4);
}

uint64_t sub_1001E7168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[16] = v3, v2, v3))
  {
    v6 = sub_100461990(v0[9], v0[10], v0[11]);
    v7 = v0[7];
    [v3 showObjectWithObjectID:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[17] = sub_100180240(v7);
    v0[18] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E73A0, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E73A0()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1001E740C, v1, v2);
}

uint64_t sub_1001E740C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E747C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1001E7528, v5, v4);
}

uint64_t sub_1001E7528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[16] = v3, v2, v3))
  {
    v6 = sub_100461BFC(v0[9], v0[10], v0[11]);
    v7 = v0[7];
    [v3 selectNoteStartEditingIfEmptyWithObjectID:v6 scrollState:0 animated:1 ensurePresented:1];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[17] = sub_100180240(v7);
    v0[18] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E62BC, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 112) = v5;
  *(v3 + 120) = v4;

  return _swift_task_switch(sub_1001E7818, v5, v4);
}

uint64_t sub_1001E7818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[16] = v3, v2, v3))
  {
    v6 = sub_100461E68(v0[9], v0[10], v0[11]);
    v7 = v0[7];
    [v3 showObjectWithObjectID:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[17] = sub_100180240(v7);
    v0[18] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E62BC, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E7A50(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = type metadata accessor for MainActor();
  *(v3 + 96) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 104) = v5;
  *(v3 + 112) = v4;

  return _swift_task_switch(sub_1001E7AF4, v5, v4);
}

uint64_t sub_1001E7AF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[15] = v3, v2, v3))
  {
    v6 = sub_100462338(v0[9], v0[10]);
    v7 = v0[7];
    [v3 selectTagSelection:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[16] = sub_100180240(v7);
    v0[17] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E7D24, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E7D24()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1001E7D90, v1, v2);
}

uint64_t sub_1001E7D90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E7E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 112) = type metadata accessor for MainActor();
  *(v3 + 120) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 128) = v6;
  *(v3 + 136) = v5;

  return _swift_task_switch(sub_1001E7EAC, v6, v5);
}

uint64_t sub_1001E7EAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[18] = v3, v2, v3))
  {
    v6 = sub_10024F58C();
    v7 = v0[12];
    [v3 selectTagSelection:v6];

    v7[3] = sub_10015DA04(&qword_1006BE0A0);
    v7[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v0[19] = sub_100180240(v7);
    v0[20] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001E80D8, v9, v8);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[11] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001E80D8()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1001E8144, v1, v2);
}

uint64_t sub_1001E8144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E81B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1001E8250, v5, v4);
}

uint64_t sub_1001E8250()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[13] = v3, v2, !v3))
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v4 = [v3 noteEditorViewController];
  v5 = [v4 ic_isViewVisible];

  if ((v5 & 1) != 0 && (v6 = [v3 noteEditorViewController], v7 = objc_msgSend(v6, "note"), v6, v7))
  {
    if ([v7 isPasswordProtectedAndLocked])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 15;
LABEL_18:
      *v8 = v9;
      swift_willThrow();

      goto LABEL_8;
    }

    if (![v7 canAddAttachment])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 35;
      goto LABEL_18;
    }

    v16 = [v3 noteEditorViewController];
    [v16 showInsertUIWithPreferredSourceType:4];
  }

  else
  {
    v12 = [v3 showNewNoteWithApproach:10 sender:0 animated:1];
    swift_unknownObjectRelease();
  }

  v13 = v0[7];
  v13[3] = sub_10015DA04(&qword_1006BE0A0);
  v13[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v0[14] = sub_100180240(v13);
  v0[15] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E85A0, v15, v14);
}

uint64_t sub_1001E85A0()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1001E860C, v1, v2);
}

uint64_t sub_1001E860C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  type metadata accessor for MainActor();
  *(v3 + 96) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 104) = v5;
  *(v3 + 112) = v4;

  return _swift_task_switch(sub_1001E8724, v5, v4);
}

uint64_t sub_1001E8724()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[15] = v3, v2, v3))
  {
    v4 = v0[7];

    v5 = [v3 noteEditorViewController];
    v0[16] = v5;
    v4[3] = sub_10015DA04(&qword_1006BE0A0);
    v4[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
    v6 = sub_100180240(v4);
    v7 = v5;
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1001E8970;
    v9 = v0[10];
    v10 = v0[11];
    v11 = v0[9];

    return SetParagraphStyleIntent.perform()(v6, v11, v9, v10, v5);
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1001E8970()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1001E8B2C;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1001E8A8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001E8A8C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001E8B2C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[7];

  sub_1001EA9F0(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001E8BE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[23] = a1;
  v3[24] = a3;
  v5 = type metadata accessor for StringSearchCriteria();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[28] = v6;
  v3[29] = v7;
  v3[30] = type metadata accessor for MainActor();
  v3[31] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[32] = v9;
  v3[33] = v8;

  return _swift_task_switch(sub_1001E8CF0, v9, v8);
}

uint64_t sub_1001E8CF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[34] = v3, v2, v3))
  {
    v4 = v0[28];
    v5 = v0[25];
    v6 = v0[26];
    IntentParameter.wrappedValue.getter();
    v7 = StringSearchCriteria.term.getter();
    v9 = v8;
    v10 = *(v6 + 8);
    v10(v4, v5);

    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v0[27];
      v13 = v0[25];
      v14 = [objc_opt_self() windowStateArchiveWithEmptyState];
      v0[35] = v14;
      IntentParameter.wrappedValue.getter();
      StringSearchCriteria.term.getter();
      v10(v12, v13);
      v15 = String._bridgeToObjectiveC()();

      [v14 setCurrentSearchTerm:v15];

      v0[2] = v0;
      v0[3] = sub_1001E9110;
      v16 = swift_continuation_init();
      v0[17] = sub_10015DA04(&unk_1006BFBB0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100252EB0;
      v0[13] = &unk_1006507E0;
      v0[14] = v16;
      [v3 applyStateRestoreArchive:v14 completion:?];

      return _swift_continuation_await(v0 + 2);
    }

    else
    {
      v18 = String._bridgeToObjectiveC()();
      [v3 startSearchWithSearchQueryString:v18 becomeFirstResponder:1];

      v19 = v0[23];
      v19[3] = sub_10015DA04(&qword_1006BE0A0);
      v19[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
      v0[36] = sub_100180240(v19);
      v0[37] = static MainActor.shared.getter();
      v21 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_1001E92FC, v21, v20);
    }
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[22] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1001E9110()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return _swift_task_switch(sub_1001E9218, v2, v1);
}

uint64_t sub_1001E9218()
{
  v1 = *(v0 + 184);
  v1[3] = sub_10015DA04(&qword_1006BE0A0);
  v1[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  *(v0 + 288) = sub_100180240(v1);
  *(v0 + 296) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E92FC, v3, v2);
}

uint64_t sub_1001E92FC()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return _swift_task_switch(sub_1001E9368, v1, v2);
}

uint64_t sub_1001E9368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E93F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1001E9490, v5, v4);
}

uint64_t sub_1001E9490()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[13] = v3, v2, !v3))
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v4 = [v3 noteEditorViewController];
  v5 = [v4 ic_isViewVisible];

  if ((v5 & 1) != 0 && (v6 = [v3 noteEditorViewController], v7 = objc_msgSend(v6, "note"), v6, v7))
  {
    if ([v7 isPasswordProtected])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 15;
LABEL_20:
      *v8 = v9;
      swift_willThrow();

      goto LABEL_8;
    }

    if (![v7 isEditable])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 16;
      goto LABEL_20;
    }

    if (![v7 canAddAttachment])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 35;
      goto LABEL_20;
    }

    v16 = [v3 noteEditorViewController];
    [v16 showInsertUIWithPreferredSourceType:7];
  }

  else
  {
    v12 = [v3 showNewNoteWithApproach:8 sender:0 recordAudio:1 animated:1];
    swift_unknownObjectRelease();
  }

  v13 = v0[7];
  v13[3] = sub_10015DA04(&qword_1006BE0A0);
  v13[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v0[14] = sub_100180240(v13);
  v0[15] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E9828, v15, v14);
}

uint64_t sub_1001E9828()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1001EABA8, v1, v2);
}

uint64_t sub_1001E9894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1001E9930, v5, v4);
}

uint64_t sub_1001E9930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong ic_viewControllerManager], v0[13] = v3, v2, !v3))
  {

    type metadata accessor for ICError(0);
    v0[6] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001EAA9C(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v4 = [v3 noteEditorViewController];
  v5 = [v4 ic_isViewVisible];

  if ((v5 & 1) != 0 && (v6 = [v3 noteEditorViewController], v7 = objc_msgSend(v6, "note"), v6, v7))
  {
    if ([v7 isPasswordProtectedAndLocked])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 15;
LABEL_18:
      *v8 = v9;
      swift_willThrow();

      goto LABEL_8;
    }

    if (![v7 canAddAttachment])
    {

      sub_100197CCC();
      swift_allocError();
      v9 = 35;
      goto LABEL_18;
    }

    v16 = [v3 noteEditorViewController];
    [v16 showInsertUIWithPreferredSourceType:1];
  }

  else
  {
    v12 = [v3 showNewNoteWithApproach:11 sender:0 animated:1];
    swift_unknownObjectRelease();
  }

  v13 = v0[7];
  v13[3] = sub_10015DA04(&qword_1006BE0A0);
  v13[4] = sub_1001EAB4C(&unk_1006BFBA0, &qword_1006BE0A0);
  v0[14] = sub_100180240(v13);
  v0[15] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E9828, v15, v14);
}

uint64_t sub_1001E9C80(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E3990(a1, a2, v2);
}

uint64_t sub_1001E9D2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E3E80(a1, a2, v2);
}

uint64_t sub_1001E9DD8(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E44AC(a1, a2, v2);
}

uint64_t sub_1001E9E84(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A600;

  return sub_1001E4BA0(a1, a2, v2);
}

uint64_t sub_1001E9F30(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E5004(a1, a2, v2);
}

uint64_t sub_1001E9FDC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E5390(a1, a2, v2);
}

uint64_t sub_1001EA088(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E573C(a1, a2, v2);
}

uint64_t sub_1001EA134(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E5FD8(a1, a2, v2);
}

uint64_t sub_1001EA1E0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E6328(a1, a2, v2);
}

uint64_t sub_1001EA28C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E6DDC(a1, a2, v2);
}

uint64_t sub_1001EA338(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E70BC(a1, a2, v2);
}

uint64_t sub_1001EA3E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E747C(a1, a2, v2);
}

uint64_t sub_1001EA490(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E776C(a1, a2, v2);
}

uint64_t sub_1001EA53C(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E7A50(a1, a2, v2);
}

uint64_t sub_1001EA5E8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E7E00(a1, a2, v2);
}

uint64_t sub_1001EA694(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E81B4(a1, a2, v2);
}

uint64_t sub_1001EA740(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E867C(a1, a2, v2);
}

uint64_t sub_1001EA7EC(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E8BE4(a1, a2, v2);
}

uint64_t sub_1001EA898(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E93F4(a1, a2, v2);
}

uint64_t sub_1001EA944(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000A1FC;

  return sub_1001E9894(a1, a2, v2);
}

uint64_t sub_1001EA9F0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1001EAA40(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001EAA9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001EAAE4()
{
  result = qword_1006BFBD8;
  if (!qword_1006BFBD8)
  {
    sub_1000054A4(255, &qword_1006BFBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFBD8);
  }

  return result;
}

uint64_t sub_1001EAB4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001EABD8()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static AppendMarkdownToNoteIntent.title);
  sub_10002597C(v6, static AppendMarkdownToNoteIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t AppendMarkdownToNoteIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC5E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static AppendMarkdownToNoteIntent.title);
}

uint64_t static AppendMarkdownToNoteIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC5E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static AppendMarkdownToNoteIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AppendMarkdownToNoteIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static AppendMarkdownToNoteIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006BFBF0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006BFBF8);
  __chkstk_darwin(v1);
  sub_1001EB3AC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20646E65707041;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BFC08);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006BFC10);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_1001EB3AC()
{
  result = qword_1006BFC00;
  if (!qword_1006BFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFC00);
  }

  return result;
}

uint64_t AppendMarkdownToNoteIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t (*AppendMarkdownToNoteIntent.entity.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*AppendMarkdownToNoteIntent.markdownText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t AppendMarkdownToNoteIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for NoteEntity(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001EB688, 0, 0);
}

uint64_t sub_1001EB688()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v4 = v0[2];
  v0[10] = v4;
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1001EB7C8;

  return sub_1001A7890(v4, sub_1001EC7D0, v5);
}

uint64_t sub_1001EB7C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 72);
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  sub_1001AD144(v6);

  if (v2)
  {
    v7 = sub_1001A756C;
  }

  else
  {
    v7 = sub_1001EB93C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001EB93C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1001EB9E8;
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);

  return NoteEntity.init(for:in:)(v7, v5, v6);
}

uint64_t sub_1001EB9E8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001A75D8;
  }

  else
  {
    v2 = sub_1001EBAFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EBAFC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  sub_1001ECE20(&qword_1006BE480, type metadata accessor for NoteEntity);
  static IntentResult.result<A>(value:)();

  sub_1001AD144(v3);

  v4 = v0[1];

  return v4();
}

void sub_1001EBBE0(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = sub_1001EC9F4(v6);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      type metadata accessor for ICError(0);
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v15;
      v16 = [objc_opt_self() mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 localizedStringForKey:v17 value:0 table:0];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v19;
      *(inited + 56) = v21;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1001AD2D0(inited + 32);
      sub_1001ECE20(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      return;
    }

    v11 = v10;
    v7 = a1;
    v8 = sub_1001ECC68(v11);
  }

  v12 = v8;
  v13 = v9;

  if (!v2)
  {
    *a2 = v12;
    a2[1] = v13;
  }
}

uint64_t sub_1001EBE28(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return AppendMarkdownToNoteIntent.perform()(a1, v4, v5, v6);
}

char *sub_1001EBEDC@<X0>(char **a1@<X8>)
{
  result = _s11MobileNotes26AppendMarkdownToNoteIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

char *_s11MobileNotes26AppendMarkdownToNoteIntentVACycfC_0()
{
  v0 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v0 - 8);
  v53 = v36 - v1;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  __chkstk_darwin(v2);
  v55 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006BE0D0);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = v36 - v8;
  v9 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v9 - 8);
  v51 = v36 - v10;
  v11 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v11 - 8);
  v46 = v36 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for LocalizedStringResource();
  v48 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v36[1] = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v14 + 104);
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38 = v13;
  v23(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  v40 = v23;
  v39 = v14 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v16, v22, v13);
  v24 = v46;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v25 = *(v20 + 56);
  v47 = v20 + 56;
  v49 = v25;
  v25(v24, 0, 1, v19);
  v26 = type metadata accessor for NoteEntity(0);
  (*(*(v26 - 8) + 56))(v51, 1, 1, v26);
  v27 = type metadata accessor for IntentDialog();
  v43 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v44 = v29;
  v45 = v28 + 56;
  v29(v54, 1, 1, v27);
  v29(v52, 1, 1, v27);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v57 + 104);
  v57 += 104;
  v42 = v30;
  v30(v55);
  sub_1001ECE20(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v52 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCB70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v37;
  v32 = v38;
  v33 = v40;
  v40(v16, v37, v38);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v16, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v49(v24, 0, 1, v48);
  v34 = type metadata accessor for String.IntentInputOptions();
  v60 = 0;
  v61 = 0;
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v44(v54, 1, 1, v43);
  v42(v55, v41, v56);
  IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v58 = 0xD000000000000021;
  v59 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v52;
}

unint64_t sub_1001EC7F4()
{
  result = qword_1006BFC18;
  if (!qword_1006BFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFC18);
  }

  return result;
}

unint64_t sub_1001EC84C()
{
  result = qword_1006BFC20;
  if (!qword_1006BFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFC20);
  }

  return result;
}

id sub_1001EC900()
{
  v0 = objc_opt_self();
  IntentParameter.wrappedValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 attributedMarkdownStringFromPlainMarkdown:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1001EC9F4(void *a1)
{
  v2 = a1;
  v3 = [a1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    if ([v2 isPasswordProtectedAndLocked])
    {
      sub_100197CCC();
      swift_allocError();
      v6 = 15;
LABEL_11:
      *v5 = v6;
      swift_willThrow();
      goto LABEL_12;
    }

    if (![v2 isEditable])
    {
      sub_100197CCC();
      swift_allocError();
      v6 = 16;
      goto LABEL_11;
    }

    v7 = sub_1001EC900();
    if (v1)
    {
LABEL_12:

      return v2;
    }

    v8 = v7;
    v14 = 0;
    v9 = [v2 appendAttributedString:v7 options:7 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v2 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return v2;
    }

    v14 = 0;
    v11 = v10;
    if (([v4 save:&v14] & 1) == 0)
    {
      v2 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_12;
    }

    v12 = v14;
    v2 = [v2 objectID];
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001ECE20(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v2;
}

id sub_1001ECC68(void *a1)
{
  v2 = a1;
  v3 = [a1 managedObjectContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001EC900();
    if (!v1)
    {
      v7 = v5;
      NoteObject.append(_:)(v5);
      if (v8)
      {

        return v2;
      }

      v11 = 0;
      if ([v4 save:&v11])
      {
        v10 = v11;
        v2 = [v2 objectID];

        return v2;
      }

      v2 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ICError(0);
    v2 = v6;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1001ECE20(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1001ECE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001ECE90(uint64_t a1)
{
  v1 = *(a1 + 32) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1001ECEAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFA && *(a1 + 40))
  {
    return (*a1 + 2097147);
  }

  if (((((*(a1 + 32) >> 43) >> 18) | (8 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (*(a1 + 24) >> 50) & 0x3C00 | ((*(a1 + 24) & 7) << 7) | (*(a1 + 32) >> 43) & 0x20000 | ((*(a1 + 32) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFA)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 32) >> 43) >> 18) | (8 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (*(a1 + 24) >> 50) & 0x3C00 | ((*(a1 + 24) & 7) << 7) | (*(a1 + 32) >> 43) & 0x20000 | ((*(a1 + 32) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1001ECF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2097147;
    if (a3 > 0x1FFFFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      v4 = vdupq_n_s64(v3);
      *(result + 24) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1005395E0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1005395F0), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

void *sub_1001ECFF0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = result[3] & 0xFFFFFFFFFFFFFF8;
    v3 = result[4] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
    result[1] &= 0xFFFFFFFFFFFFFF8uLL;
    result[3] = v2;
    result[4] = v3;
  }

  else
  {
    *result = (a2 - 5);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1001ED04C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006BFC38);
  sub_10002597C(v0, qword_1006BFC38);
  return static Logger.realtimeCollaboration.getter();
}

uint64_t sub_1001ED098()
{
  v1 = *(v0 + 32) >> 61;
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 0x28746E6573657270;
      }

      else
      {
        v2 = 0x28676E697661656CLL;
      }
    }

    else
    {
      v2 = 0x676E697472617473;
    }

    v14 = v2;
    swift_getObjectType();
    v12._countAndFlagsBits = sub_1001ED31C();
    String.append(_:)(v12);

    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v14 = 0;
    _StringGuts.grow(_:)(63);
    v6._object = 0x8000000100564180;
    v6._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v6);
    swift_getObjectType();
    v7._countAndFlagsBits = sub_1001ED31C();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x7473202020200A3BLL;
    v8._object = 0xEF20676E69747261;
    String.append(_:)(v8);
    swift_getObjectType();
    v9._countAndFlagsBits = sub_1001ED31C();
    String.append(_:)(v9);

    v10 = 10506;
    v11 = 0xE200000000000000;
LABEL_13:
    String.append(_:)(*&v10);
    return v14;
  }

  if (v1 == 4)
  {
    v14 = 0;
    _StringGuts.grow(_:)(27);
    v3._countAndFlagsBits = 0x46676E696E696F6ALL;
    v3._object = 0xEE002864656C6961;
    String.append(_:)(v3);
    swift_getObjectType();
    v4._countAndFlagsBits = sub_1001ED31C();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x3D726F727265202CLL;
    v5._object = 0xE800000000000000;
    String.append(_:)(v5);
    sub_10015DA04(&unk_1006C9B40);
    _print_unlocked<A, B>(_:_:)();
LABEL_12:
    v10 = 41;
    v11 = 0xE100000000000000;
    goto LABEL_13;
  }

  return 1701602409;
}

uint64_t sub_1001ED31C()
{
  v1 = type metadata accessor for EditNoteActivity();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  v5._countAndFlagsBits = 0x3D65746F6ELL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  dispatch thunk of GroupSessionProvider.activity.getter();
  v6 = EditNoteActivity.noteID.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3D6469202CLL;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v13 = v0;
  _print_unlocked<A, B>(_:_:)();
  return v14;
}