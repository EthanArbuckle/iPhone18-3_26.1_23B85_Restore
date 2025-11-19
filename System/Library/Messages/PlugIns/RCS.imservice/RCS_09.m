uint64_t CTLazuliMessageFileTransferPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  if (RCSMessage.fromChatBot.getter())
  {
    v8 = [v2 chipList];
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    type metadata accessor for RCSChipList();
    v11 = swift_allocObject();
    v12 = objc_opt_self();
    v13 = sub_F07BC();
    v14 = [v12 IMChipListFromCTChipList:v8 originalID:v13];

    *(v11 + 16) = v14;
  }

  else
  {
    v11 = 0;
  }

  v15 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v2 descriptor], v7);
  *&v7[v15] = v11;
  v16 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v17 + 32));
}

uint64_t CTLazuliMessageGroupFileTransferPush.populate(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v2 descriptor], v7);
  *&v7[v8] = 0;
  v9 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v7, a1 + *(v10 + 32));
}

uint64_t sub_CA138(uint64_t a1)
{
  v3 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
  RCSFile.init(descriptor:)([v7 descriptor], v6);
  *&v6[v8] = 0;
  v9 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v10 = type metadata accessor for RCSMessage(0);
  return sub_C9724(v6, a1 + *(v10 + 32));
}

uint64_t CTLazuliMessageIncomingGroupChat.populate(message:)(uint64_t a1)
{
  v4 = sub_388C8(&unk_127FA0, &qword_F34C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v12 - v6);
  v8 = type metadata accessor for RCSMessage(0);
  sub_CA4D0(a1 + *(v8 + 36), &v12);
  if (v13)
  {
    sub_55248(&v12, v14);
    v9 = [v1 chat];
    sub_1F28(v14, &v12);
    RCSGroup.init(group:identity:)(v9, &v12, v7);
    result = sub_1EDC(v14);
    if (!v2)
    {
      v11 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
      return sub_C9724(v7, a1 + *(v8 + 32));
    }
  }

  else
  {
    sub_39C18(&v12);
    sub_CA540();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_CA4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B08, &qword_F29A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_CA540()
{
  result = qword_129DF8;
  if (!qword_129DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129DF8);
  }

  return result;
}

unint64_t sub_CA5AC()
{
  result = qword_129E00[0];
  if (!qword_129E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_129E00);
  }

  return result;
}

uint64_t sub_CA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage() + 36);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t RCSMessageProcessingQueue.__allocating_init(delegate:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_CB950();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t RCSMessageProcessingQueue.init(delegate:)()
{
  v0 = sub_CB950();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_CA784(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v4 = sub_F0B5C();
  v5 = sub_F0DEC();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t sub_CA88C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1800C;

  return sub_CADCC();
}

uint64_t RCSMessageProcessingQueue.enqueue(_:subscription:)(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v28 = *v2;
  v3 = v28[11];
  v4 = v28[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  v6 = *(v26 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v24 - v7;
  v24[1] = v3;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v24 - v16;
  v25 = sub_F0B2C();
  v18 = *(v25 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v25);
  v22 = v24 - v21;
  v28 = v28[14];
  (*(v10 + 16))(v13, v29, v9, v20);
  (*(v26 + 16))(v8, v30, v27);
  sub_CA600(v13, v8, v17);
  swift_storeEnumTagMultiPayload();
  sub_F0B5C();
  sub_F0B4C();
  return (*(v18 + 8))(v22, v25);
}

uint64_t RCSMessageProcessingQueue.enqueueRelayBlock(_:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  v10 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = sub_F0B2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  v19 = *(v7 + 112);
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  sub_F0B5C();

  sub_F0B4C();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_CADCC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 80);
  v1[4] = *(v2 + 88);
  v3 = type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = *(*(sub_F0DEC() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = sub_F0B8C();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_18100, 0, 0);
}

uint64_t sub_CAFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v38 = a3;
  v39 = a4;
  v8 = sub_F06EC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_F071C();
  v40 = *(v37 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v37);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_388C8(&qword_129F98, &qword_F62E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v34 - v18;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  v35 = *(a2 + *(*a2 + 120));
  (*(v16 + 16))(v19, a1, v15);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = a5;
  (*(v16 + 32))(v22 + v21, v19, v15);
  v47 = sub_18A80;
  v48 = v22;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v36 = &v45;
  v45 = sub_9400C;
  v46 = &unk_121730;
  v23 = _Block_copy(&aBlock);
  v24 = v20;
  sub_F06FC();
  v42 = &_swiftEmptyArrayStorage;
  v34[1] = sub_18BA4(&qword_127F88, &type metadata accessor for DispatchWorkItemFlags);
  v34[0] = sub_388C8(&qword_127F90, &qword_F2EC0);
  sub_18BEC(&qword_127F98, &qword_127F90, &qword_F2EC0);
  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v23);
  v25 = *(v41 + 8);
  v41 += 8;
  v35 = v25;
  v25(v11, v8);
  v26 = *(v40 + 8);
  v40 += 8;
  v27 = v37;
  v26(v14, v37);

  sub_C81EC();
  v28 = sub_F0D4C();
  sub_F070C();
  v29 = swift_allocObject();
  v30 = v39;
  v29[2] = v38;
  v29[3] = v30;
  v29[4] = v24;
  v47 = sub_18B4C;
  v48 = v29;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_9400C;
  v46 = &unk_121788;
  v31 = _Block_copy(&aBlock);
  v42 = &_swiftEmptyArrayStorage;
  v32 = v24;

  sub_F0E8C();
  sub_F0D5C();
  _Block_release(v31);

  v35(v11, v8);
  v26(v14, v27);
}

uint64_t sub_CB4E4(double a1)
{
  v2 = sub_F06DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_F074C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  result = sub_F072C();
  v16 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    *v6 = v16;
    (*(v3 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v2);
    sub_F073C();
    (*(v3 + 8))(v6, v2);
    v17 = *(v8 + 8);
    v17(v12, v7);
    sub_F0D1C();
    v17(v14, v7);
    sub_388C8(&qword_129F98, &qword_F62E8);
    return sub_F0A8C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_CB750(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_18B90, v5);
}

uint64_t *RCSMessageProcessingQueue.deinit()
{
  v1 = *v0;
  swift_unknownObjectUnownedDestroy();
  v2 = *(*v0 + 104);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v5 = sub_F0B9C();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 112);
  v7 = sub_F0B5C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return v0;
}

uint64_t RCSMessageProcessingQueue.__deallocating_deinit()
{
  RCSMessageProcessingQueue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_CB950()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = v35 - v5;
  v6 = sub_F0D3C();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v38 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_F0D2C();
  v9 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_F071C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35[1] = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v2 + 80);
  v45 = *(v2 + 88);
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  v43 = sub_F0B3C();
  v14 = *(v43 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v43);
  v17 = v35 - v16;
  v44 = sub_F0B9C();
  v42 = *(v44 - 8);
  v18 = *(v42 + 64);
  __chkstk_darwin(v44);
  v20 = v35 - v19;
  v21 = sub_F0B5C();
  v22 = sub_F0DEC();
  v47 = *(v22 - 8);
  v23 = *(v47 + 64);
  __chkstk_darwin(v22);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v35 - v27;
  swift_unknownObjectUnownedInit();
  v29 = *(v21 - 8);
  (*(v29 + 56))(v28, 1, 1, v21);
  (*(v14 + 104))(v17, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v43);
  v48 = v46;
  v49 = v45;
  v50 = v28;
  sub_F0BAC();
  (*(v42 + 32))(&v1[*(*v1 + 104)], v20, v44);
  v30 = *(v47 + 16);
  v46 = v28;
  v30(v25, v28, v22);
  result = (*(v29 + 48))(v25, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 32))(&v1[*(*v1 + 112)], v25, v21);
    sub_C81EC();
    sub_F070C();
    v51 = _swiftEmptyArrayStorage;
    sub_18BA4(&qword_129FA0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_388C8(&qword_129FA8, &qword_F62F0);
    sub_18BEC(qword_129FB0, &qword_129FA8, &qword_F62F0);
    sub_F0E8C();
    (*(v39 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
    *&v1[*(*v1 + 120)] = sub_F0D6C();
    v32 = v41;
    sub_F0AFC();
    v33 = sub_F0B1C();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v1;

    sub_3CC0C(0, 0, v32, &unk_F6300, v34);

    (*(v47 + 8))(v46, v22);
    return v1;
  }

  return result;
}

uint64_t sub_CC038(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for RCSMessageProcessingQueue.QueuedJob();
  result = sub_F0B9C();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_F0B5C();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_CC14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for RCSMessageProcessingQueue.RCSQueuedMessage();
  if (v3 <= 0x3F)
  {
    sub_CC60C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_CC1C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = 24;
  if (v9 > 0x18)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 < 2)
    {
LABEL_25:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 255;
}

void sub_CC39C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((v9 + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  if (v11 <= 0x18)
  {
    v11 = 24;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_39:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v11] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_24;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_CC60C()
{
  if (!qword_129F08)
  {
    sub_3CB70(qword_129F10, qword_F62A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_129F08);
    }
  }
}

uint64_t sub_CC680(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_CC740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 64) + v13;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = (v15 & ~v13) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v9 >= v12)
        {
          v25 = *(v8 + 48);

          return v25(a1, v9, AssociatedTypeWitness);
        }

        else
        {
          v23 = *(v11 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_CCA00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v12 + 80);
  v16 = *(v10 + 64) + v15;
  v17 = (v16 & ~v15) + *(v12 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v11 >= v13)
  {
    v25 = *(v10 + 56);

    v25(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v24 = *(v12 + 56);

    v24(&a1[v16] & ~v15, a2);
  }
}

uint64_t sub_CCD3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  v3 = sub_3C96C(v2, static Logger.rcs);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id RCSMessageCreator.MessageCreationError.errorDescription.getter(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a4 >> 61;
  if ((a4 >> 61) <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v26[0] = 0;
        v26[1] = 0xE000000000000000;
        sub_F0F9C(57);
        v27._countAndFlagsBits = 0xD000000000000028;
        v27._object = 0x8000000000100620;
        sub_F08CC(v27);
        result = [a1 guid];
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      sub_F0F9C(29);

      v26[0] = 0xD00000000000001BLL;
      v26[1] = 0x8000000000100600;
      v17._countAndFlagsBits = a1;
      v17._object = a2;
LABEL_17:
      sub_F08CC(v17);
      return v26[0];
    }

    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_F0F9C(53);
    v33._countAndFlagsBits = 0xD000000000000028;
    v33._object = 0x8000000000100650;
    sub_F08CC(v33);
    result = [a1 guid];
    if (result)
    {
      v13 = result;
      v14 = sub_F07EC();
      v16 = v15;

      v34._countAndFlagsBits = v14;
      v34._object = v16;
      sub_F08CC(v34);

      v35._countAndFlagsBits = 0x74616863206E6920;
      v35._object = 0xE900000000000020;
      sub_F08CC(v35);
      v17._countAndFlagsBits = a2;
      v17._object = a3;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 3)
  {
    sub_F0F9C(48);

    strcpy(v26, "Can't process ");
    HIBYTE(v26[1]) = -18;
    result = [a1 guid];
    if (result)
    {
      v18 = result;
      v19 = sub_F07EC();
      v21 = v20;

      v36._countAndFlagsBits = v19;
      v36._object = v21;
      sub_F08CC(v36);

      v37._countAndFlagsBits = 0xD00000000000001DLL;
      v37._object = 0x80000000001005E0;
      sub_F08CC(v37);
      v38._countAndFlagsBits = a2;
      v38._object = a3;
      sub_F08CC(v38);
      v17._countAndFlagsBits = 33;
      v17._object = 0xE100000000000000;
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v7 == 4)
  {
    sub_F0F9C(48);

    v26[0] = 0xD00000000000001FLL;
    v26[1] = 0x80000000001005C0;
    result = [a1 guid];
    if (result)
    {
LABEL_9:
      v9 = result;
      v10 = sub_F07EC();
      v12 = v11;

      v28._countAndFlagsBits = v10;
      v28._object = v12;
      sub_F08CC(v28);

      v29._countAndFlagsBits = 0x74616863206E6920;
      v29._object = 0xE900000000000020;
      sub_F08CC(v29);
      v30._countAndFlagsBits = a2;
      v30._object = a3;
      sub_F08CC(v30);
      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      sub_F08CC(v31);
      swift_getErrorValue();
      v32._countAndFlagsBits = sub_F12AC();
      sub_F08CC(v32);

      return v26[0];
    }

    goto LABEL_22;
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_F0F9C(54);
  v39._countAndFlagsBits = 0x72702074276E6143;
  v39._object = 0xEE0020737365636FLL;
  sub_F08CC(v39);
  result = [a1 guid];
  if (result)
  {
    v22 = result;
    v23 = sub_F07EC();
    v25 = v24;

    v40._countAndFlagsBits = v23;
    v40._object = v25;
    sub_F08CC(v40);

    v41._countAndFlagsBits = 0x74616863206E6920;
    v41._object = 0xE900000000000020;
    sub_F08CC(v41);
    v42._countAndFlagsBits = a2;
    v42._object = a3;
    sub_F08CC(v42);
    v17._object = 0x80000000001005A0;
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t RCSMessageCreator.__allocating_init(delegate:)()
{
  v0 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RCSMessageCreator.init(delegate:)()
{
  v0 = sub_CE450();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RCSMessageCreator.__deallocating_deinit()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_CD3D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_F06CC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_F0AEC();
  v2[8] = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_18E30, v7, v6);
}

uint64_t sub_CD4F0(void *a1)
{
  v2 = sub_F06CC();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - v8;
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = [a1 localURL];
  v13 = sub_F01EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v12)
  {
    goto LABEL_34;
  }

  sub_F01AC();

  v25 = sub_F020C();
  v27 = v26;
  (*(v14 + 8))(v17, v13);
  v28 = objc_opt_self();
  v29 = sub_F024C();
  v55 = 0;
  v30 = [v28 contactsWithData:v29 error:&v55];

  v31 = v55;
  v32 = v27;
  v33 = v25;
  if (!v30)
  {
    v43 = v55;
    sub_F015C();

    swift_willThrow();
    sub_5F048(v25, v32);
    sub_CCD3C(v6);
    swift_errorRetain();
    v18 = sub_F06AC();
    v19 = sub_F0CFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v55);
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_0, v18, v19, "%{public}s error reading vlocation data: %@", v20, 0x16u);
      sub_372B0(v21, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v22);
    }

    else
    {
    }

    (*(v53 + 8))(v6, v54);
    return 0;
  }

  sub_37310(0, &qword_12A0B8, CNContact_ptr);
  v34 = sub_F09FC();
  v35 = v31;

  if (v34 >> 62)
  {
    if (sub_F10DC())
    {
      goto LABEL_12;
    }

LABEL_23:

    sub_CCD3C(v9);
    v44 = sub_F06AC();
    v45 = sub_F0CFC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v55);
      _os_log_impl(&dword_0, v44, v45, "%{public}s error extracting contact from current location vcard", v46, 0xCu);
      sub_1EDC(v47);
    }

    sub_5F048(v25, v32);

    (*(v53 + 8))(v9, v54);
    return 0;
  }

  if (!*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_F0FCC();
  }

  else
  {
    if (!*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_32;
    }

    v36 = *(v34 + 32);
  }

  v30 = v36;

  v37 = [v30 urlAddresses];
  sub_388C8(qword_12A0C0, &qword_F65B8);
  v38 = sub_F09FC();

  if (v38 >> 62)
  {
    if (sub_F10DC())
    {
LABEL_17:
      if ((v38 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
        {
          v39 = *(v38 + 32);
LABEL_20:
          v40 = v39;

          v41 = [v40 value];
          v42 = sub_F07EC();

          sub_5F048(v33, v32);
          return v42;
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

LABEL_32:
      v39 = sub_F0FCC();
      goto LABEL_20;
    }
  }

  else if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  sub_CCD3C(v11);
  v48 = sub_F06AC();
  v49 = sub_F0CFC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_3E850(0xD000000000000020, 0x80000000001006D0, &v55);
    _os_log_impl(&dword_0, v48, v49, "%{public}s current location VCF was missing a URL address to extract a location from", v50, 0xCu);
    sub_1EDC(v51);
  }

  sub_5F048(v25, v32);
  (*(v53 + 8))(v11, v54);
  return 0;
}

uint64_t sub_CDC84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v2[4] = static RCSActor.shared;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_191C4;

  return sub_CD3D4(a1);
}

uint64_t sub_CDD5C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v2[13] = static RCSActor.shared;
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_195AC;

  return sub_CDC84(a2);
}

uint64_t sub_CDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_F06CC();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v9 = static RCSActor.shared;
  v4[15] = static RCSActor.shared;

  return _swift_task_switch(sub_19AB8, v9, 0);
}

uint64_t sub_CDFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = *v4;
  v5[36] = *(*v4 + 88);
  v5[37] = *(v6 + 80);
  v5[38] = swift_getAssociatedTypeWitness();
  v7 = sub_F0DEC();
  v5[39] = v7;
  v8 = *(v7 - 8);
  v5[40] = v8;
  v9 = *(v8 + 64) + 15;
  v5[41] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v10 = static RCSActor.shared;
  v5[42] = static RCSActor.shared;

  return _swift_task_switch(sub_1B370, v10, 0);
}

uint64_t RCSMessageCreator.createSenderInfo(with:for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v5 = static RCSActor.shared;

  return _swift_task_switch(sub_1BD4C, v5, 0);
}

uint64_t RCSMessageCreator.createRCSMessage(with:originalItem:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[36] = a3;
  v6[37] = a4;
  v6[38] = a5;
  v6[39] = v5;
  v6[34] = a1;
  v6[35] = a2;
  v6[40] = *v5;
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v6[41] = static RCSActor.shared;
  v10 = swift_task_alloc();
  v6[42] = v10;
  *v10 = v6;
  v10[1] = sub_1BED0;

  return sub_CDFF8((v6 + 18), a2, a4, a5);
}

uint64_t RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[52] = a5;
  v6[53] = v5;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  v6[54] = *v5;
  v7 = type metadata accessor for RCSMessage(0);
  v6[55] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v9 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  if (qword_128FB8 != -1)
  {
    swift_once();
  }

  v10 = static RCSActor.shared;
  v6[58] = static RCSActor.shared;

  return _swift_task_switch(sub_1C508, v10, 0);
}

void sub_CE48C(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_CE514()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_CE55C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 32))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 24) >> 57) >> 4) | (8 * ((*(a1 + 24) >> 57) & 8 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_CE5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t RCSMessageReceiver.__allocating_init(delegate:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t RCSMessageReceiver.MessageProcessingError.errorDescription.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v27 - v9);
  v11 = *(*(a1 - 8) + 64);
  v13 = __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2, a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = &v15[*(sub_388C8(&qword_128308, &qword_F3480) + 48)];
    v21 = *v19;
    v20 = v19[1];
    sub_22B7C(v15, v10, type metadata accessor for RCSMessage);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_F0F9C(41);

    v22 = 0x8000000000100770;
    v23 = 0xD000000000000023;
LABEL_6:
    v27 = v23;
    v28 = v22;
    sub_F08CC(v10[8]);
    v29._countAndFlagsBits = 8250;
    v29._object = 0xE200000000000000;
    sub_F08CC(v29);
    v18._countAndFlagsBits = v21;
    v18._object = v20;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v24 = &v15[*(sub_388C8(&qword_128C20, &unk_F65C0) + 48)];
    v21 = *v24;
    v20 = v24[1];
    sub_22B7C(v15, v10, type metadata accessor for RCSMessage);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_F0F9C(37);

    v22 = 0x8000000000100720;
    v23 = 0xD00000000000001FLL;
    goto LABEL_6;
  }

  sub_22B7C(v15, v10, type metadata accessor for RCSMessage);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_F0F9C(41);

  v27 = 0xD000000000000027;
  v28 = 0x8000000000100740;
  sub_23624(v10, v7, type metadata accessor for RCSMessage);
  v18._countAndFlagsBits = sub_F083C();
LABEL_7:
  sub_F08CC(v18);

  v25 = v27;
  sub_37640(v10, type metadata accessor for RCSMessage);
  return v25;
}

uint64_t sub_CE990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for RCSMessageReceiver.MessageProcessingContext();
  *(a4 + v8[13]) = 256;
  *a4 = a1;
  v9 = objc_allocWithZone(IMToSuperParserContext);
  v10 = a1;
  v11 = [v9 init];
  a4[1] = v11;
  [v11 reset];
  sub_23624(a2, a4 + v8[10], type metadata accessor for RCSMessage);

  *(a4 + v8[11]) = a3;
  result = sub_37640(a2, type metadata accessor for RCSMessage);
  *(a4 + v8[12]) = 0;
  return result;
}

void sub_CEA7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v5 + 8);
  v9 = sub_F07BC();
  [v8 appendString:v9];

  if (a3)
  {
    v10 = RCSChipList.attributes.getter();
    if (v10)
    {
      sub_51844(v10);

      a3 = sub_F075C();
    }

    else
    {
      a3 = 0;
    }
  }

  [v8 appendChipList:a3];

  v11 = *(a4 + 48);
  v12 = *(v5 + v11);
  if ((v12 & 1) == 0)
  {
    *(v5 + v11) = v12 | 1;
  }

  *(v5 + *(a4 + 52)) = 1;
}

uint64_t sub_CEB68(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(v2 + v3);
  v5 = 8;
  if (((v4 | a1) & 1) == 0)
  {
    v5 = 9;
  }

  v6 = v5 | v4;
  if ((v4 & 8) == 0 || ((v4 | a1) & 1) == 0)
  {
    *(v2 + v3) = v6;
  }

  v7 = v2 + *(a2 + 40);
  v8 = type metadata accessor for RCSMessage(0);
  sub_37380(v7 + *(v8 + 36), v11, &qword_127B08, &qword_F29A0);
  v9 = v12;
  result = sub_372B0(v11, &qword_127B08, &qword_F29A0);
  if (v9)
  {
    if ((v4 & 0x40000000) == 0)
    {
      *(v2 + v3) = v6 | 0x40000000;
    }
  }

  return result;
}

uint64_t sub_CEC28(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for RCSFile(0);
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1CE50, 0, 0);
}

uint64_t sub_CECEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for RCSFile(0);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1E0A4, 0, 0);
}

void sub_CED90(int *a1)
{
  v3 = *(v1 + a1[12]);
  v4 = *v1;
  v5 = v1[1];
  if ((v3 & 8) == 0)
  {
    v6 = [v1[1] body];
    [v4 setBody:v6];
  }

  v7 = [v5 fileTransferGUIDs];
  [v4 setFileTransferGUIDs:v7];

  [v4 setFlags:v3];
  v8 = v1 + a1[10];
  v9 = *(v8 + 16);
  v10 = *(v8 + 17);
  v11 = sub_F07BC();
  [v4 setFallbackHash:v11];

  v12 = &v8[*(type metadata accessor for RCSMessage(0) + 48)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = sub_F07BC();
  [v4 setRcsAdvisedAction:v15];

  v16 = v1 + a1[13];
  if ((v16[1] & 1) == 0)
  {
    v17 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:*v16];
    [v4 setMessageContentType:v17];
  }
}

uint64_t sub_CEF28(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = *v2;
  v5 = type metadata accessor for RCSFile(0);
  v3[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = type metadata accessor for RCSMessage(0);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = *(v4 + 80);
  v3[27] = *(v4 + 88);
  v10 = type metadata accessor for RCSMessageReceiver.MessageProcessingContext();
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1EE0C, 0, 0);
}

uint64_t sub_CF0B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v4 = *v2;
  v5 = type metadata accessor for RCSMessage(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v88 - v10;
  __chkstk_darwin(v12);
  v94 = (&v88 - v13);
  if (a1[19])
  {
    v14 = a1[18];
    v15 = a1[19];
  }

  else
  {
    v14 = a1[16];
    v15 = a1[17];
  }

  v16 = v2[2];
  v19 = v4 + 80;
  v17 = *(v4 + 80);
  v18 = *(v19 + 8);
  v20 = *(v18 + 128);

  if (v20(v14, v15, v17, v18))
  {

    v21 = sub_F035C();
    v95 = &v88;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    __chkstk_darwin(v21);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = &v88 - v24;
    sub_F034C();
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v26 = sub_F06CC();
    v27 = sub_3C96C(v26, static Logger.rcs);
    v94 = &v88;
    v28 = __chkstk_darwin(v27);
    v29 = &v88 - v24;
    (*(v22 + 16))(&v88 - v24, &v88 - v24, v21, v28);
    sub_23624(a1, v8, type metadata accessor for RCSMessage);
    v30 = sub_F06AC();
    v31 = sub_F0D0C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v97 = v93;
      *v32 = 136315394;
      v33 = sub_F032C();
      v35 = v34;
      (*(v22 + 8))(v29, v21);
      v36 = sub_3E850(v33, v35, &v97);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = *(v8 + 16);
      v38 = *(v8 + 17);

      sub_37640(v8, type metadata accessor for RCSMessage);
      v39 = sub_3E850(v37, v38, &v97);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_0, v30, v31, "Assigning a random GUID %s to RCS message %s due to database collision", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_37640(v8, type metadata accessor for RCSMessage);
      (*(v22 + 8))(&v88 - v24, v21);
    }

    return (*(v22 + 32))(v96, v25, v21);
  }

  else
  {
    v93 = v11;
    v40 = sub_F035C();
    v95 = &v88;
    v41 = *(v40 - 8);
    v42 = *(v41 + 64);
    __chkstk_darwin(v40);
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
    v44 = &v88 - v43;
    v45 = sub_388C8(&qword_128020, &qword_F2F08);
    v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v45 - 8);
    v48 = &v88 - v47;
    sub_F031C();
    v49 = v41;

    if ((*(v41 + 48))(v48, 1, v40) == 1)
    {
      v94 = v40;
      v50 = sub_372B0(v48, &qword_128020, &qword_F2F08);
      __chkstk_darwin(v50);
      v51 = &v88 - v43;
      sub_F034C();
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v52 = sub_F06CC();
      v53 = sub_3C96C(v52, static Logger.rcs);
      v54 = __chkstk_darwin(v53);
      v55 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = v94;
      (*(v41 + 16))(v55, v51, v94, v54);
      v57 = v93;
      sub_23624(a1, v93, type metadata accessor for RCSMessage);
      v58 = sub_F06AC();
      v59 = sub_F0D0C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v95 = &v88;
        v61 = v60;
        v97 = swift_slowAlloc();
        *v61 = 136315394;
        v62 = sub_F032C();
        v90 = v41;
        v63 = v62;
        v65 = v64;
        (*(v41 + 8))(v55, v94);
        v66 = sub_3E850(v63, v65, &v97);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2080;
        v67 = v57[16];
        v68 = v57[17];

        sub_37640(v57, type metadata accessor for RCSMessage);
        v69 = sub_3E850(v67, v68, &v97);

        *(v61 + 14) = v69;
        _os_log_impl(&dword_0, v58, v59, "Assigning a random GUID %s to RCS message %s due to non-UUID network ID", v61, 0x16u);
        swift_arrayDestroy();

        v56 = v94;

        v70 = v90;
      }

      else
      {

        sub_37640(v57, type metadata accessor for RCSMessage);
        (*(v41 + 8))(v55, v56);
        v70 = v41;
      }

      return (*(v70 + 32))(v96, v51, v56);
    }

    else
    {
      v93 = *(v41 + 32);
      v93(&v88 - v43, v48, v40);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v72 = sub_F06CC();
      v73 = sub_3C96C(v72, static Logger.rcs);
      v92 = &v88;
      v74 = __chkstk_darwin(v73);
      v75 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v75, v44, v40, v74);
      v76 = v94;
      sub_23624(a1, v94, type metadata accessor for RCSMessage);
      v77 = sub_F06AC();
      v78 = v49;
      v79 = sub_F0D0C();
      if (os_log_type_enabled(v77, v79))
      {
        v80 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v97 = v89;
        *v80 = 136315394;
        v81 = sub_F032C();
        v91 = v44;
        v83 = v82;
        (*(v78 + 8))(v75, v40);
        v84 = sub_3E850(v81, v83, &v97);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2080;
        v85 = *(v76 + 128);
        v86 = *(v76 + 136);

        sub_37640(v76, type metadata accessor for RCSMessage);
        v87 = sub_3E850(v85, v86, &v97);

        *(v80 + 14) = v87;
        v44 = v91;
        _os_log_impl(&dword_0, v77, v79, "Assigning GUID %s to RCS message %s as the network ID was a valid, unique UUID", v80, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_37640(v76, type metadata accessor for RCSMessage);
        (*(v78 + 8))(v75, v40);
      }

      return (v93)(v96, v44, v40);
    }
  }
}

uint64_t sub_CFBA4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = type metadata accessor for RCSMessage(0);
  v2[35] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v5 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_20438, 0, 0);
}

uint64_t RCSMessageReceiver.process(rcsMessage:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *v2;
  v3[29] = *(*v2 + 88);
  v3[30] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[31] = AssociatedTypeWitness;
  v6 = sub_F0DEC();
  v3[32] = v6;
  v7 = *(v6 - 8);
  v3[33] = v7;
  v8 = *(v7 + 64) + 15;
  v3[34] = swift_task_alloc();
  v9 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = *(AssociatedTypeWitness - 8);
  v3[36] = v10;
  v11 = *(v10 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_212D4, 0, 0);
}

uint64_t RCSMessageReceiver.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RCSMessageReceiver.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_CFF44()
{
  sub_22B10(319, &qword_128490);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RCSMessage(319);
    if (v1 <= 0x3F)
    {
      sub_22B10(319, &qword_12A1C8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_D0004(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_22BE4, 0, 0);
}

uint64_t sub_D002C(uint64_t a1, uint64_t a2)
{
  v3 = sub_388C8(&qword_128300, &unk_F68D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_F068C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a2)
  {

    sub_F063C();
    sub_F061C();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_372B0(v6, &qword_128300, &unk_F68D0);
    }

    else
    {
      (*(v8 + 32))(v14, v6, v7);
      sub_F064C();
      v16 = sub_F067C();
      v17 = *(v8 + 8);
      v17(v11, v7);
      if (v16)
      {
        v17(v14, v7);
        return 3;
      }

      sub_F065C();
      v18 = sub_F067C();
      v17(v11, v7);
      if (v18)
      {
        v17(v14, v7);
        return 7;
      }

      sub_F066C();
      v19 = sub_F067C();
      v17(v11, v7);
      if (v19)
      {
        v17(v14, v7);
        return 4;
      }

      sub_F060C();
      v20 = sub_F067C();
      v17(v11, v7);
      v17(v14, v7);
      if (v20)
      {
        return 5;
      }
    }
  }

  return 0;
}

void sub_D0300(uint64_t a1)
{
  sub_37310(319, &qword_12A258, IMMessageItem_ptr);
  if (v2 <= 0x3F)
  {
    sub_37310(319, &qword_12A260, IMToSuperParserContext_ptr);
    if (v3 <= 0x3F)
    {
      type metadata accessor for RCSMessage(319);
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          type metadata accessor for FZMessageFlags(319);
          if (v7 <= 0x3F)
          {
            sub_D0430();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D0430()
{
  if (!qword_12A268)
  {
    type metadata accessor for IMAssociatedMessageContentType(255);
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A268);
    }
  }
}

uint64_t sub_D0488()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_12A270);
  sub_3C96C(v4, qword_12A270);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_D05B0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_12A288);
  sub_3C96C(v4, qword_12A288);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_D06D8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_12A2A0);
  sub_3C96C(v4, qword_12A2A0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F047C();
}

uint64_t sub_D07FC()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_12A2B8);
  sub_3C96C(v4, qword_12A2B8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F047C();
}

uint64_t sub_D0920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_237DC, 0, 0);
}

Swift::Int RCSHandle.BotStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_F12FC();
  sub_F130C(a1);
  return sub_F132C();
}

unint64_t sub_D09CC()
{
  result = qword_12A2D0;
  if (!qword_12A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A2D0);
  }

  return result;
}

uint64_t sub_D0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v12 = *(*(sub_388C8(&qword_1299D0, &qword_F6890) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[10] = v13;
  *v13 = v7;
  v13[1] = sub_23EC0;

  return sub_D11B0(a2, a3, a4, a6);
}

uint64_t sub_D0B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a6;
  *(v8 + 16) = a2;
  *(v8 + 72) = a1;
  v15 = swift_task_alloc();
  *(v8 + 56) = v15;
  *v15 = v8;
  v15[1] = sub_24764;

  return sub_D0C30(a1 & 1, a2, a3, a4, a5, a7);
}

uint64_t sub_D0C30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 256) = a6;
  *(v7 + 264) = v6;
  *(v7 + 240) = a4;
  *(v7 + 248) = a5;
  *(v7 + 224) = a2;
  *(v7 + 232) = a3;
  *(v7 + 616) = a1;
  v8 = type metadata accessor for RCSFile(0);
  *(v7 + 272) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v10 = *(*(sub_388C8(&qword_1299D0, &qword_F6890) - 8) + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v11 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  *(v7 + 312) = v11;
  v12 = *(v11 - 8);
  *(v7 + 320) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_249F4, 0, 0);
}

void sub_D0D7C(void *a1, uint64_t a2)
{
  v4 = sub_F068C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_388C8(&qword_128300, &unk_F68D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = (a2 + *(type metadata accessor for RCSFile(0) + 20));
  v12 = v11[1];
  v13 = v11[2];
  v14 = sub_F07BC();
  [a1 setTransferredFilename:v14];

  v15 = v11[3];
  v16 = v11[4];
  v17 = sub_F07BC();
  [a1 setMimeType:v17];

  sub_F063C();
  sub_F05EC();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_372B0(v10, &qword_128300, &unk_F68D0);
    v18 = 0;
  }

  else
  {
    sub_F05FC();
    (*(v5 + 8))(v10, v4);
    v18 = sub_F07BC();
  }

  [a1 setType:v18];
}

uint64_t sub_D0FB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 guid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_F07EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  v9 = [a1 localPath];
  if (v9)
  {
    v10 = v9;
    v11 = sub_F07EC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  a2[2] = v11;
  a2[3] = v13;
  v14 = [a1 localURL];
  v15 = sub_388C8(&qword_128320, &qword_F34B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v23 - v17;
  if (v14)
  {
    sub_F01AC();

    v19 = sub_F01EC();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_F01EC();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  v21 = sub_388C8(&qword_12A2D8, &unk_F68C0);
  return sub_81EC4(v18, a2 + *(v21 + 64));
}

uint64_t sub_D1180@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D11B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RCSFile(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_268D4, 0, 0);
}

uint64_t sub_D1258()
{
  v0 = sub_F07BC();
  v1 = [v0 pathExtension];
  v2 = sub_F07EC();
  v4 = v3;

  v5 = [v0 stringByDeletingPathExtension];
  v6 = sub_F07EC();

  sub_F0F9C(19);

  v8._countAndFlagsBits = 0x616E626D7568742DLL;
  v8._object = 0xEB000000002E6C69;
  sub_F08CC(v8);
  v9._countAndFlagsBits = v2;
  v9._object = v4;
  sub_F08CC(v9);

  v10._countAndFlagsBits = 1735420462;
  v10._object = 0xE400000000000000;
  sub_F08CC(v10);

  return v6;
}

uint64_t sub_D1360(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = v5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 472) = a1;
  return _swift_task_switch(sub_27A6C, 0, 0);
}

uint64_t sub_D1388(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v121 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_388C8(&qword_1299D0, &qword_F6890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v108 - v7;
  v123 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v9 = *(v123 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v123);
  v120 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v122 = v108 - v13;
  v14 = sub_388C8(&qword_128300, &unk_F68D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v108 - v16;
  v18 = sub_F068C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v108 - v24;
  v119 = v2;
  v26 = a1;
  v27 = a1 + *(v2 + 20);
  v28 = *(v27 + 24);
  v29 = *(v27 + 32);

  sub_F063C();
  sub_F05EC();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_372B0(v17, &qword_128300, &unk_F68D0);
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v30 = sub_F06CC();
    sub_3C96C(v30, static Logger.rcs);
    v31 = sub_F06AC();
    v32 = sub_F0CCC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "No mimetype in file description, not using any thumbnail", v33, 2u);
    }

    return 0;
  }

  (*(v19 + 32))(v25, v17, v18);
  sub_F065C();
  v34 = sub_F067C();
  v36 = v19 + 8;
  v35 = *(v19 + 8);
  v35(v22, v18);
  if ((v34 & 1) == 0)
  {
    sub_F064C();
    v37 = sub_F067C();
    v35(v22, v18);
    if ((v37 & 1) == 0)
    {
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v76 = sub_F06CC();
      sub_3C96C(v76, static Logger.rcs);
      v77 = v121;
      sub_297F8(v26, v121, type metadata accessor for RCSFile);
      v78 = sub_F06AC();
      v79 = sub_F0CCC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v117 = v36;
        v81 = v80;
        v82 = v25;
        v83 = swift_slowAlloc();
        v124 = v83;
        *v81 = 136315138;
        v84 = &v77[*(v119 + 20)];
        v85 = *(v84 + 3);
        v86 = *(v84 + 4);

        sub_29750(v77, type metadata accessor for RCSFile);
        v87 = sub_3E850(v85, v86, &v124);
        v88 = v35;
        v89 = v87;

        *(v81 + 4) = v89;
        _os_log_impl(&dword_0, v78, v79, "Non A/V or image mimetype %s, not using any thumbnail", v81, 0xCu);
        sub_1EDC(v83);

        v88(v82, v18);
        return 0;
      }

      sub_29750(v77, type metadata accessor for RCSFile);
      goto LABEL_34;
    }
  }

  sub_37380(v26, v8, &qword_1299D0, &qword_F6890);
  v38 = v123;
  if ((*(v9 + 48))(v8, 1, v123) == 1)
  {
    sub_372B0(v8, &qword_1299D0, &qword_F6890);
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v39 = sub_F06CC();
    sub_3C96C(v39, static Logger.rcs);
    v40 = sub_F06AC();
    v41 = sub_F0CCC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "No thumbnail info found", v42, 2u);

      v43 = v25;
LABEL_35:
      v35(v43, v18);
      return 0;
    }

LABEL_34:
    v43 = v25;
    goto LABEL_35;
  }

  v121 = v35;
  v44 = v8;
  v45 = v122;
  sub_C2AB8(v44, v122);
  v46 = v38;
  v47 = sub_F030C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_F02DC();
  v50 = *(v46 + 28);
  sub_297B0(&qword_128BC0, &type metadata accessor for Date);
  if ((sub_F07AC() & 1) == 0)
  {
    (*(v48 + 8))(v108 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
    sub_29750(v45, type metadata accessor for RCSFile.ThumbnailInformation);
    (v121)(v25, v18);
    return 1;
  }

  v115 = v108;
  v116 = v25;
  v118 = v108 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v47;
  v51 = v48;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v52 = sub_F06CC();
  sub_3C96C(v52, static Logger.rcs);
  v53 = v120;
  v54 = sub_297F8(v45, v120, type metadata accessor for RCSFile.ThumbnailInformation);
  v114 = v108;
  v55 = __chkstk_darwin(v54);
  v56 = v108 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v48 + 16);
  v58 = v118;
  v59 = v119;
  v57(v56, v118, v119, v55);
  v60 = sub_F06AC();
  v61 = sub_F0CCC();
  if (!os_log_type_enabled(v60, v61))
  {

    v90 = *(v51 + 8);
    v90(v56, v59);
    sub_29750(v53, type metadata accessor for RCSFile.ThumbnailInformation);
    v90(v58, v59);
    sub_29750(v45, type metadata accessor for RCSFile.ThumbnailInformation);
    (v121)(v116, v18);
    return 0;
  }

  v112 = v51;
  v113 = v56;
  v109 = v61;
  v110 = v60;
  v111 = v18;
  v117 = v36;
  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v124 = v63;
  v64 = v62;
  *v62 = 136315394;
  v65 = *(v123 + 28);
  if (qword_128F70 != -1)
  {
    swift_once();
  }

  v66 = qword_12FCB8;
  v67 = qword_12FCB8 >> 62;
  if (qword_12FCB8 >> 62)
  {
    result = sub_F10DC();
  }

  else
  {
    result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
  }

  v108[1] = v63;
  if (result)
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v69 = sub_F0FCC();
    }

    else
    {
      if (!*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_53;
      }

      v69 = *(v66 + 32);
    }

    v70 = v69;
    v71 = sub_F028C();
    v72 = [v70 stringFromDate:v71];

    v73 = sub_F07EC();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0xE000000000000000;
  }

  sub_29750(v53, type metadata accessor for RCSFile.ThumbnailInformation);
  v91 = sub_3E850(v73, v75, &v124);

  *(v64 + 1) = v91;
  *(v64 + 6) = 2080;
  v92 = v112;
  if (v67)
  {
    result = sub_F10DC();
  }

  else
  {
    result = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
  }

  v93 = v122;
  v94 = v113;
  v95 = v119;
  if (!result)
  {
    v100 = 0;
    v102 = 0xE000000000000000;
    v103 = v111;
    goto LABEL_47;
  }

  if ((v66 & 0xC000000000000001) != 0)
  {
    v96 = sub_F0FCC();
    goto LABEL_45;
  }

  if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
  {
    v96 = *(v66 + 32);
LABEL_45:
    v97 = v96;
    v98 = sub_F028C();
    v99 = [v97 stringFromDate:v98];

    v100 = sub_F07EC();
    v102 = v101;

    v94 = v113;
    v103 = v111;
    v95 = v119;
LABEL_47:
    v104 = *(v92 + 8);
    v105 = v95;
    v104(v94, v95);
    v106 = sub_3E850(v100, v102, &v124);

    *(v64 + 14) = v106;
    v107 = v110;
    _os_log_impl(&dword_0, v110, v109, "RCS Thumbnail has passed expiration (%s, not auto downloading (now %s", v64, 0x16u);
    swift_arrayDestroy();

    v104(v118, v105);
    sub_29750(v93, type metadata accessor for RCSFile.ThumbnailInformation);
    (v121)(v116, v103);
    return 0;
  }

LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_D2074()
{
  result = qword_12A2E0;
  if (!qword_12A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A2E0);
  }

  return result;
}

unint64_t sub_D20C8()
{
  result = qword_128050;
  if (!qword_128050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_128050);
  }

  return result;
}

void CTGroupDestinationProviding.groupUri.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 8))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 destination];
    v6 = sub_F07EC();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v13, v9, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);

    if (!v10)
    {
      id = v13.id;
      *a2 = v13.scheme;
      *(a2 + 16) = id;
      *(a2 + 32) = *&v13.attributes._rawValue;
      *(a2 + 41) = *(&v13.alternateHandle + 1);
    }
  }

  else
  {
    sub_C2B84();
    swift_allocError();
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0x8000000000000000;
    swift_willThrow();
  }
}

id sub_D2218(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = [v2 remoteUri];

  return v3;
}

id CTLazuliMessageIncomingGroupChat.rawGroupUri.getter()
{
  v1 = [v0 chat];
  v2 = [v1 remoteUri];

  return v2;
}

id sub_D22E8()
{
  v1 = [*v0 chat];
  v2 = [v1 remoteUri];

  return v2;
}

uint64_t sub_D2344(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v58 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  if (((*(v20 + 32))(v21, v20) & 1) == 0)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v33 = sub_F06CC();
    sub_3C96C(v33, static Logger.rcs);
    (*(v7 + 16))(v19, v3, a2);
    v23 = sub_F06AC();
    v34 = sub_F0CDC();
    if (os_log_type_enabled(v23, v34))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 136315138;
      v35 = a3[1](a2, a3);
      v37 = v36;
      (*(v7 + 8))(v19, a2);
      v38 = sub_3E850(v35, v37, &v59);

      *(v25 + 4) = v38;
      v31 = "%s unreachable beacuse doesn't support chat";
      v32 = v34;
      goto LABEL_12;
    }

    (*(v7 + 8))(v19, a2);
    return 0;
  }

  if (v6 & 1) == 0 && (a3[8](a2, a3))
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v22 = sub_F06CC();
    sub_3C96C(v22, static Logger.rcs);
    (*(v7 + 16))(v17, v3, a2);
    v23 = sub_F06AC();
    v24 = sub_F0CDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 136315138;
      v27 = a3[1](a2, a3);
      v29 = v28;
      (*(v7 + 8))(v17, a2);
      v30 = sub_3E850(v27, v29, &v59);

      *(v25 + 4) = v30;
      v31 = "%s unreachable because destination is offline and this is not a group";
      v32 = v24;
LABEL_12:
      _os_log_impl(&dword_0, v23, v32, v31, v25, 0xCu);
      sub_1EDC(v26);

      return 0;
    }

    (*(v7 + 8))(v17, a2);
    return 0;
  }

  if (a3[7](a2, a3))
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v40 = sub_F06CC();
    sub_3C96C(v40, static Logger.rcs);
    (*(v7 + 16))(v14, v3, a2);
    v41 = sub_F06AC();
    v42 = sub_F0CDC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315138;
      v45 = a3[1](a2, a3);
      v47 = v46;
      (*(v7 + 8))(v14, a2);
      v48 = sub_3E850(v45, v47, &v59);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_0, v41, v42, "%s reachable because is bot and supports chat", v43, 0xCu);
      sub_1EDC(v44);
    }

    else
    {

      (*(v7 + 8))(v14, a2);
    }
  }

  else
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v49 = sub_F06CC();
    sub_3C96C(v49, static Logger.rcs);
    (*(v7 + 16))(v11, v3, a2);
    v50 = sub_F06AC();
    v51 = sub_F0CDC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59 = v53;
      *v52 = 136315138;
      v54 = a3[1](a2, a3);
      v56 = v55;
      (*(v7 + 8))(v11, a2);
      v57 = sub_3E850(v54, v56, &v59);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_0, v50, v51, "%s reachable because supports text and transfer", v52, 0xCu);
      sub_1EDC(v53);
    }

    else
    {

      (*(v7 + 8))(v11, a2);
    }
  }

  return 1;
}

id sub_D2AA4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v6 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_373E8(a1, v11);
  v13 = (*(v12 + 80))(v11, v12);
  v14 = [objc_opt_self() sharedFeatureFlags];
  v15 = [v14 isRCSEncryptionEnabled];

  if (qword_128F88 != -1)
  {
    swift_once();
  }

  v16 = sub_3C96C(v6, qword_129D98);
  (*(v7 + 16))(v10, v16, v6);
  sub_F044C();
  (*(v7 + 8))(v10, v6);
  v17 = v31;
  if (!a4)
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_373E8(a1, v18);
    (*(v19 + 8))(v18, v19);
  }

  v20 = v17 | v15 & v13;
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_F07BC();

  v23 = IMServiceNameRCS;
  v24 = a1[3];
  v25 = a1[4];
  sub_373E8(a1, v24);
  v26 = v23;
  v27 = [v21 initWithHandleID:v22 service:v26 isReachable:sub_D2344(v30 & 1 supportsEncryption:{v24, v25) & 1, v20 & 1}];

  sub_1EDC(a1);
  return v27;
}

uint64_t RCSPersistentMenu.properties.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_128F48;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_F06CC();
    sub_3C96C(v4, static Logger.chatbot);
    v5 = sub_F06AC();
    v6 = sub_F0CCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Fetched persistent menu", v7, 2u);
    }

    v8 = [v3 dictionaryRepresentation];
    v9 = sub_F076C();
  }

  else
  {
    if (qword_128F48 != -1)
    {
      swift_once();
    }

    v10 = sub_F06CC();
    sub_3C96C(v10, static Logger.chatbot);
    v11 = sub_F06AC();
    v12 = sub_F0CEC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Empty stamped persistent menu", v13, 2u);
    }

    v8 = [objc_opt_self() emptyStampProperty];
    v9 = sub_F076C();
  }

  return v9;
}

uint64_t RCSPersistentMenu.__allocating_init(menu:)(void *a1)
{
  v2 = swift_allocObject();
  sub_D36C4(a1);
  v4 = v3;

  *(v2 + 16) = v4;
  return v2;
}

uint64_t RCSPersistentMenu.init(menu:)(void *a1)
{
  sub_D36C4(a1);
  v4 = v3;

  *(v1 + 16) = v4;
  return v1;
}

uint64_t sub_D301C(void *a1)
{
  v1 = a1;
  v2 = [a1 list];
  sub_37310(0, &qword_12A3C0, CTLazuliChatBotMenuL2Content_ptr);
  v3 = sub_F09FC();

  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v14 = [v1 displayText];
    sub_F07EC();

    v15 = objc_allocWithZone(IMPersistentMenu);
    v16 = sub_F07BC();

    sub_F0D7C();
    v17 = sub_F09EC();

    v18 = [v15 initWithLevel:2 displayText:v16 items:v17];

    return v18;
  }

  v4 = sub_F10DC();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = objc_opt_self();
  if (v4 >= 1)
  {
    v6 = result;
    v19 = v1;
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_F0FCC();
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 chip];
      v11 = sub_F07BC();
      v12 = [v6 IMChipFromCTChip:v10 originalID:v11];

      [objc_allocWithZone(IMPersistentMenuItem) initWithType:0 content:v12];
      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v13 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_F0A1C();
      }

      sub_F0A3C();
    }

    v1 = v19;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_D32C4(void *a1)
{
  v1 = a1;
  v35 = _swiftEmptyArrayStorage;
  v2 = [a1 list];
  sub_37310(0, &qword_12A3B0, CTLazuliChatBotMenuL1Content_ptr);
  v3 = sub_F09FC();

  if (v3 >> 62)
  {
    v4 = sub_F10DC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_21:

LABEL_22:
    v27 = [v1 displayText];
    sub_F07EC();

    v28 = objc_allocWithZone(IMPersistentMenu);
    v29 = sub_F07BC();

    sub_F0D7C();
    v30 = sub_F09EC();

    [v28 initWithLevel:1 displayText:v29 items:v30];

    return;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v31 = v1;
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = _swiftEmptyArrayStorage;
    v8 = &unk_12A3B8;
    while (1)
    {
      v9 = v6 ? sub_F0FCC() : *(v3 + 8 * v5 + 32);
      v10 = v9;
      v11 = [v9 item];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_37310(0, v8, CTLazuliChatBotMenuL2_ptr);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_37310(0, &qword_12A3A8, CTLazuliChatBotSuggestedChip_ptr);
      if (swift_dynamicCast())
      {
        v12 = v33;
        v32 = [v10 type];
        v16 = objc_opt_self();
        v17 = v3;
        v18 = v4;
        v19 = v6;
        v20 = v7;
        v21 = v8;
        v22 = sub_F07BC();
        v14 = [v16 IMChipFromCTChip:v33 originalID:v22];

        v8 = v21;
        v7 = v20;
        v6 = v19;
        v4 = v18;
        v3 = v17;
        v15 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v32 content:v14];
LABEL_14:
        v23 = v15;

        sub_1EDC(v34);
        if (v23)
        {
          v24 = v23;
          sub_F09DC();
          if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v25 = v8;
            v26 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
            sub_F0A1C();
            v8 = v25;
          }

          sub_F0A3C();

          v7 = v35;
        }

        else
        {
        }

        goto LABEL_6;
      }

      sub_1EDC(v34);
LABEL_6:
      if (v4 == ++v5)
      {

        v1 = v31;
        goto LABEL_22;
      }
    }

    v12 = v33;
    v13 = [v10 type];
    v14 = sub_D301C(v33);
    v15 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v13 content:v14];
    goto LABEL_14;
  }

  __break(1u);
}

void sub_D36C4(void *a1)
{
  v1 = [a1 persistentMenu];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v27 = _swiftEmptyArrayStorage;
  v3 = [v1 list];
  sub_37310(0, &qword_12A398, CTLazuliChatBotMenuL0Content_ptr);
  v4 = sub_F09FC();

  if (v4 >> 62)
  {
    v5 = sub_F10DC();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_23:

LABEL_24:
    v22 = objc_allocWithZone(IMPersistentMenu);
    sub_F0D7C();
    v23 = sub_F09EC();

    [v22 initWithLevel:0 displayText:0 items:v23];

    return;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v24 = v2;
    v6 = 0;
    v7 = &unk_12A3A0;
    while (1)
    {
      v8 = (v4 & 0xC000000000000001) != 0 ? sub_F0FCC() : *(v4 + 8 * v6 + 32);
      v9 = v8;
      v10 = [v8 item];
      sub_F0E6C();
      swift_unknownObjectRelease();
      sub_37310(0, v7, CTLazuliChatBotMenuL1_ptr);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_37310(0, &qword_12A3A8, CTLazuliChatBotSuggestedChip_ptr);
      if (swift_dynamicCast())
      {
        v11 = v25;
        v12 = [v9 type];
        v15 = objc_opt_self();
        v16 = v7;
        v17 = sub_F07BC();
        v14 = [v15 IMChipFromCTChip:v25 originalID:v17];

        v7 = v16;
LABEL_15:
        v18 = [objc_allocWithZone(IMPersistentMenuItem) initWithType:v12 content:v14];

        sub_1EDC(v26);
        if (v18)
        {
          v19 = v18;
          sub_F09DC();
          if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v20 = v7;
            v21 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
            sub_F0A1C();
            v7 = v20;
          }

          sub_F0A3C();
        }

        else
        {
        }

        goto LABEL_7;
      }

      sub_1EDC(v26);
LABEL_7:
      if (v5 == ++v6)
      {

        v2 = v24;
        goto LABEL_24;
      }
    }

    v11 = v25;
    v12 = [v9 type];
    sub_D32C4(v25);
    v14 = v13;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_D3A9C()
{
  sub_F089C();
}

id RCSMessage.fromChatBot.getter()
{
  sub_5BD2C(v0, v8);
  if (v9[58])
  {
    v1 = v8[1];
    v2 = v8[3];
    if (*(v0 + *(type metadata accessor for RCSMessage(0) + 44)) == 1)
    {

      v3 = &dword_0 + 1;
    }

    else
    {
      v4 = v8[2];
      v7 = v8[0];

      v10._countAndFlagsBits = 58;
      v10._object = 0xE100000000000000;
      sub_F08CC(v10);
      v11._countAndFlagsBits = v4;
      v11._object = v2;
      sub_F08CC(v11);

      v5 = sub_F07BC();

      v3 = [v5 __im_isChatBot];
    }

    sub_5BD88(v9);
  }

  else
  {
    sub_5EFF4(v8);
    return 0;
  }

  return v3;
}

unint64_t RCSMessage.SenderInfo.description.getter()
{
  sub_5BD2C(v0, &v9);
  if (v13)
  {
    v14[0] = v9;
    v14[1] = v10;
    v15[0] = v11[0];
    *(v15 + 9) = *(v11 + 9);
    v6 = v11[2];
    v7 = v11[3];
    v8[0] = *v12;
    *(v8 + 10) = *&v12[10];
    sub_F0F9C(42);

    v1 = RCSHandle.rawValue.getter();
    v3 = v2;
    sub_3CAB8(v14);
    v16._countAndFlagsBits = v1;
    v16._object = v3;
    sub_F08CC(v16);

    v17._countAndFlagsBits = 0x6E6974736564202CLL;
    v17._object = 0xEE003D6E6F697461;
    sub_F08CC(v17);
    v18._countAndFlagsBits = RCSDestination.description.getter();
    sub_F08CC(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    sub_F08CC(v19);
    v4 = 0xD000000000000017;
  }

  else
  {
    v6 = v9;
    v7 = v10;
    v8[0] = v11[0];
    *(v8 + 10) = *(v11 + 10);
    *&v14[0] = 0;
    *(&v14[0] + 1) = 0xE000000000000000;
    sub_F0F9C(17);

    strcpy(v14, "SenderInfo.to(");
    HIBYTE(v14[0]) = -18;
    v20._countAndFlagsBits = RCSDestination.description.getter();
    sub_F08CC(v20);

    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    sub_F08CC(v21);
    v4 = *&v14[0];
  }

  sub_5BD88(&v6);
  return v4;
}

uint64_t RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = type metadata accessor for RCSMessage(0);
  v19 = v18[8];
  v20 = type metadata accessor for RCSMessage.Content(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v18[9]];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  a9[v18[13]] = 0;
  *&a9[v18[14]] = 0;
  sub_5BD2C(a1, a9);
  *(a9 + 16) = a2;
  *(a9 + 17) = a3;
  *(a9 + 18) = a4;
  *(a9 + 19) = a5;
  v22 = &a9[v18[15]];
  *v22 = a6;
  *(v22 + 1) = a7;
  *(v22 + 2) = a8;
  *(v22 + 3) = a10;
  sub_1CDE8(a11, &a9[v19], &unk_127FA0, &qword_F34C0);
  sub_1CDE8(a12, v21, &qword_127B08, &qword_F29A0);
  *(a9 + 20) = a13;
  *&a9[v18[10]] = a14;
  a9[v18[11]] = a15;
  if (*(a14 + 16))
  {

    v23 = sub_E92AC();
    if (v24)
    {
      v25 = (*(a14 + 56) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
  }

  sub_372B0(a12, &qword_127B08, &qword_F29A0);
  sub_372B0(a11, &unk_127FA0, &qword_F34C0);
  result = sub_5EFF4(a1);
  v29 = &a9[v18[12]];
  *v29 = v27;
  v29[1] = v26;
  return result;
}

uint64_t RCSMessage.sender.getter@<X0>(uint64_t a1@<X8>)
{
  sub_5BD2C(v1, v12);
  if (v17[58])
  {
    v10 = v12[0];
    v11 = v12[1];
    v3 = v13;
    v4 = v14;
    v5 = v15;
    v6 = v16;
    result = sub_5BD88(v17);
    v8 = v10;
    v9 = v11;
  }

  else
  {
    result = sub_5EFF4(v12);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  return result;
}

BOOL RCSMessage.looksLikeFromChatBot.getter()
{
  sub_5BD2C(v0, v3);
  if (v4[58])
  {
    v1 = v3[56];
    sub_5BD88(v4);

    return (v1 - 1) < 2;
  }

  else
  {
    sub_5EFF4(v3);
    return 0;
  }
}

uint64_t RCSMessage.fromMe.getter()
{
  sub_5BD2C(v0, &v3);
  v1 = v5;
  if (v5)
  {

    sub_5BD88(&v4);
  }

  else
  {
    sub_5EFF4(&v3);
  }

  return v1 ^ 1u;
}

__n128 RCSMessage.destination.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = &v6;
  sub_5BD2C(v1, &v6);
  if (v7[58] == 1)
  {

    v3 = v7;
  }

  v4 = *(v3 + 1);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v3 + 2);
  result = *(v3 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t RCSMessage.originalID.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t RCSMessage.originalID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t RCSMessage.messageID.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t RCSMessage.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

void *RCSMessage.encryption.getter()
{
  v1 = *(v0 + 160);
  sub_3896C(v1);
  return v1;
}

uint64_t RCSMessage.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSMessage(0) + 40));
}

uint64_t RCSMessage.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSMessage(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t RCSMessage.isChatBot.setter(char a1)
{
  result = type metadata accessor for RCSMessage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t RCSMessage.advisedAction.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSMessage(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSMessage.advisedAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RCSMessage(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RCSMessage.alreadyReceivedReplicatedVersion.setter(char a1)
{
  result = type metadata accessor for RCSMessage(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_D4AC4()
{
  if (*v0)
  {
    result = 0x44496D6973;
  }

  else
  {
    result = 0x4449656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_D4AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000;
  if (v6 || (sub_F122C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D6973 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_F122C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_D4BE0(uint64_t a1)
{
  v2 = sub_D5F48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D4C1C(uint64_t a1)
{
  v2 = sub_D5F48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.SubscriptionInfo.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_388C8(&qword_12A3C8, &unk_F6AC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D5F48();
  sub_F136C();
  v16 = 0;
  sub_F118C();
  if (!v5)
  {
    v15 = 1;
    sub_F118C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t RCSMessage.SubscriptionInfo.init(from:)(uint64_t *a1)
{
  result = sub_D5F9C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_D4E18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_D5F9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t RCSMessage.subscriptionInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSMessage(0) + 60));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  return v2;
}

uint64_t RCSMessage.subscriptionInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for RCSMessage(0) + 60));
  v10 = v9[1];

  v11 = v9[3];

  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_D4F84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreRCS10RCSMessageV11ContentTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_D4FB4@<X0>(uint64_t *a1@<X8>)
{
  result = RCSMessage.ContentType.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_D5090()
{
  v1 = *v0;
  sub_F12FC();
  sub_D3A9C();
  return sub_F132C();
}

Swift::Int sub_D50E0()
{
  v1 = *v0;
  sub_F12FC();
  sub_D3A9C();
  return sub_F132C();
}

uint64_t RCSMessage.Content.type.getter()
{
  v1 = type metadata accessor for RCSMessage.Content(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D61B4(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
        return 2;
      }

      else
      {
        sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
        return 3;
      }
    }

    else if (result)
    {
      v6 = *&v4[*(sub_388C8(&qword_128028, &qword_F3670) + 48)];

      sub_29A0C(v4, type metadata accessor for RCSFile);
      return 1;
    }

    else
    {
      sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
      return 0;
    }
  }

  else if (result <= 5)
  {
    if (result != 4)
    {
      sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
      return 5;
    }
  }

  else if (result == 6)
  {
    sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
    return 6;
  }

  else if (result == 7)
  {
    sub_29A0C(v4, type metadata accessor for RCSMessage.Content);
    return 7;
  }

  else
  {
    return 8;
  }

  return result;
}

uint64_t static RCSMessage.Encryption.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_D6218();
  return sub_F0DDC() & 1;
}

uint64_t sub_D5390(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_D6218();
  return sub_F0DDC() & 1;
}

uint64_t RCSHandle.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_D54A8()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_D5510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D62B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D5538(uint64_t a1)
{
  v2 = sub_D6264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D5574(uint64_t a1)
{
  v2 = sub_D6264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.Coordinates.encode(to:)(void *a1)
{
  v3 = sub_388C8(&qword_12A3E0, &qword_F6AD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D6264();
  sub_F136C();
  v13 = 0;
  sub_F11BC();
  if (!v1)
  {
    v12 = 1;
    sub_F11BC();
    v11 = 2;
    sub_F118C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSMessage.Coordinates.init(from:)(uint64_t *a1)
{
  result = sub_D63DC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_D5798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_D63DC(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

uint64_t sub_D57C8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return RCSMessage.Coordinates.encode(to:)(a1);
}

uint64_t sub_D5828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E697079547369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_F122C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_D58BC(uint64_t a1)
{
  v2 = sub_D65BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D58F8(uint64_t a1)
{
  v2 = sub_D65BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RCSMessage.Typing.encode(to:)(void *a1)
{
  v2 = sub_388C8(&qword_12A3F0, &qword_F6AD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F136C();
  sub_F11AC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RCSMessage.Typing.init(from:)(uint64_t *a1)
{
  v3 = sub_388C8(&qword_12A400, &qword_F6AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F135C();
  if (!v1)
  {
    v9 = sub_F115C();
    (*(v4 + 8))(v7, v3);
  }

  sub_1EDC(a1);
  return v9 & 1;
}

uint64_t sub_D5BB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_388C8(&qword_12A400, &qword_F6AE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F135C();
  if (v2)
  {
    return sub_1EDC(a1);
  }

  v11 = sub_F115C();
  (*(v6 + 8))(v9, v5);
  result = sub_1EDC(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_D5D1C(void *a1)
{
  v3 = sub_388C8(&qword_12A3F0, &qword_F6AD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D65BC();
  sub_F136C();
  sub_F11AC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static RCSMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136))
  {
    return 1;
  }

  else
  {
    return sub_F122C();
  }
}

uint64_t RCSMessage.hash(into:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return sub_F089C();
}

Swift::Int RCSMessage.hashValue.getter()
{
  sub_F12FC();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_F089C();
  return sub_F132C();
}

Swift::Int sub_D5ED0()
{
  sub_F12FC();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_F089C();
  return sub_F132C();
}

unint64_t sub_D5F48()
{
  result = qword_12A3D0;
  if (!qword_12A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3D0);
  }

  return result;
}

uint64_t sub_D5F9C(uint64_t *a1)
{
  v3 = sub_388C8(&qword_12A608, &qword_F7360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_373E8(a1, a1[3]);
  sub_D5F48();
  sub_F135C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_F113C();
    v11 = 1;
    sub_F113C();
    (*(v4 + 8))(v7, v3);
  }

  sub_1EDC(a1);
  return v8;
}

uint64_t _s7CoreRCS10RCSMessageV11ContentTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11F788;
  v6._object = a2;
  v4 = sub_F112C(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_D61B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D6218()
{
  result = qword_12A3D8;
  if (!qword_12A3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12A3D8);
  }

  return result;
}

unint64_t sub_D6264()
{
  result = qword_12A3E8;
  if (!qword_12A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3E8);
  }

  return result;
}

uint64_t sub_D62B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_F122C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_F122C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_F122C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_D63DC(uint64_t *a1)
{
  v3 = sub_388C8(&qword_12A600, &qword_F7358);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_373E8(a1, a1[3]);
  sub_D6264();
  sub_F135C();
  if (!v1)
  {
    v11[15] = 0;
    sub_F116C();
    v11[14] = 1;
    sub_F116C();
    v11[13] = 2;
    v9 = sub_F113C();
    (*(v4 + 8))(v7, v3);
  }

  sub_1EDC(a1);
  return v9;
}

unint64_t sub_D65BC()
{
  result = qword_12A3F8;
  if (!qword_12A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A3F8);
  }

  return result;
}

unint64_t sub_D6614()
{
  result = qword_12A408;
  if (!qword_12A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A408);
  }

  return result;
}

unint64_t sub_D666C()
{
  result = qword_12A410;
  if (!qword_12A410)
  {
    type metadata accessor for RCSMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A410);
  }

  return result;
}

void sub_D66EC()
{
  sub_BDDEC();
  if (v0 <= 0x3F)
  {
    sub_D6814();
    if (v1 <= 0x3F)
    {
      sub_29BD8(319, &qword_12A488, &qword_128C48, qword_F4230);
      if (v2 <= 0x3F)
      {
        sub_29BD8(319, &unk_12A490, &qword_128558, &unk_F4430);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_D6814()
{
  if (!qword_12A480)
  {
    type metadata accessor for RCSMessage.Content(255);
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A480);
    }
  }
}

__n128 sub_D6878(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_D68A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 123))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 122);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D68E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 107) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 123) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 123) = 0;
    }

    if (a2)
    {
      *(result + 122) = -a2;
    }
  }

  return result;
}

uint64_t sub_D6938(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 106) = 0u;
    v2 = a2 - 2;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 122) = a2;
  return result;
}

uint64_t sub_D697C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_D69D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSMessage.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_D6B8C()
{
  sub_29C2C(319, &qword_12A568);
  if (v0 <= 0x3F)
  {
    sub_D6C84();
    if (v1 <= 0x3F)
    {
      sub_29C2C(319, &unk_12A580);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RCSRichCards();
        if (v3 <= 0x3F)
        {
          type metadata accessor for RCSSuggestedReply();
          if (v4 <= 0x3F)
          {
            type metadata accessor for RCSSuggestedAction();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_D6C84()
{
  if (!qword_12A578)
  {
    type metadata accessor for RCSFile(255);
    sub_3CB70(&qword_12A570, &qword_F6F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_12A578);
    }
  }
}

uint64_t sub_D6D00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D6D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_D6DB0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_D6DE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_D6E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.Typing(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_D6F84()
{
  result = qword_12A5B0;
  if (!qword_12A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5B0);
  }

  return result;
}

unint64_t sub_D6FDC()
{
  result = qword_12A5B8;
  if (!qword_12A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5B8);
  }

  return result;
}

unint64_t sub_D7034()
{
  result = qword_12A5C0;
  if (!qword_12A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5C0);
  }

  return result;
}

unint64_t sub_D708C()
{
  result = qword_12A5C8;
  if (!qword_12A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5C8);
  }

  return result;
}

unint64_t sub_D70E4()
{
  result = qword_12A5D0;
  if (!qword_12A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5D0);
  }

  return result;
}

unint64_t sub_D713C()
{
  result = qword_12A5D8;
  if (!qword_12A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5D8);
  }

  return result;
}

unint64_t sub_D7194()
{
  result = qword_12A5E0;
  if (!qword_12A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5E0);
  }

  return result;
}

unint64_t sub_D71EC()
{
  result = qword_12A5E8;
  if (!qword_12A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5E8);
  }

  return result;
}

unint64_t sub_D7244()
{
  result = qword_12A5F0;
  if (!qword_12A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5F0);
  }

  return result;
}

unint64_t sub_D7298()
{
  result = qword_12A5F8;
  if (!qword_12A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A5F8);
  }

  return result;
}

id CTLazuliOriginalMessageID.init(uuid:secureGroupVersion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_F07BC();

  [v4 setUuid:v5];

  [v4 setSecureGroupVersion:a3];
  return v4;
}

id CTLazuliMessageID.init(uuid:secureGroupVersion:encryptedMessageUUID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_F07BC();

  [v4 setUuid:v5];

  v6 = objc_allocWithZone(CTLazuliOriginalMessageID);
  v7 = a3;
  v8 = [v6 init];
  v9 = sub_F07BC();

  [v8 setUuid:v9];

  [v8 setSecureGroupVersion:v7];
  [v4 setOriginalId:v8];

  return v4;
}

id CTLazuliSecureGroupVersion.init(era:epoch:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_F0C5C();
  [v0 setEra:v1];

  v2 = sub_F0C5C();
  [v0 setEpoch:v2];

  return v0;
}

id CTLazuliGroupChatSubject.init(displayString:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_F07BC();

  [v2 setDisplayString:v3];

  return v2;
}

id CTLazuliMessageRevokeData.init(messageGUID:destination:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_allocWithZone(CTLazuliMessageID);
  v6 = v4;
  v7 = [v5 init];
  v8 = sub_F07BC();

  [v7 setUuid:v8];

  [v6 setMessageID:v7];
  [v6 setDestination:a3];

  return v6;
}

void *RCSRichCards.files()()
{
  v132 = type metadata accessor for RCSFile.DispositionInformation(0);
  v1 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v125 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v126 = &v125 - v4;
  v5 = sub_388C8(&qword_1299D0, &qword_F6890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v129 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v140 = &v125 - v9;
  v131 = type metadata accessor for RCSFile(0);
  v130 = *(v131 - 8);
  v10 = *(v130 + 64);
  __chkstk_darwin(v131);
  v128 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v127 = &v125 - v13;
  __chkstk_darwin(v14);
  v139 = &v125 - v15;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v138 = &v125 - v18;
  v19 = [*(v0 + 16) cards];
  sub_F0CAC();
  v20 = sub_F09FC();

  v146 = v20;
  if (v20 >> 62)
  {
LABEL_62:
    v21 = sub_F10DC();
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_63:
    v149 = _swiftEmptyArrayStorage;
LABEL_64:

    return v149;
  }

  v21 = *(&dword_10 + (v146 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_63;
  }

LABEL_3:
  v22 = 0;
  v144 = v146 & 0xFFFFFFFFFFFFFF8;
  v145 = v146 & 0xC000000000000001;
  v149 = _swiftEmptyArrayStorage;
  v23 = &selRef__setLocalPath_;
  v141 = v21;
  while (1)
  {
    if (v145)
    {
      v24 = sub_F0FCC();
    }

    else
    {
      if (v22 >= *(v144 + 16))
      {
        goto LABEL_61;
      }

      v24 = *(v146 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v27 = [v24 v23[43]];
    if (v27)
    {
      break;
    }

LABEL_33:
    v76 = [v25 v23[43]];
    if (v76 && (v77 = v76, v78 = [v76 thumbnailUrl], v77, v78))
    {
      v147 = v26;
      sub_F07EC();

      v79 = sub_F01EC();
      v80 = *(v79 - 8);
      v81 = *(v80 + 64);
      __chkstk_darwin(v79);
      v83 = &v125 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
      v84 = sub_388C8(&qword_128320, &qword_F34B0);
      v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v84 - 8);
      v87 = &v125 - v86;
      sub_F01DC();
      if ((*(v80 + 48))(v87, 1, v79) == 1)
      {

        sub_DA158(v87);
        v23 = &selRef__setLocalPath_;
        v26 = v147;
        v21 = v141;
      }

      else
      {
        v143 = &v125;
        (*(v80 + 32))(v83, v87, v79);
        *&v151 = 0x69616E626D756874;
        *(&v151 + 1) = 0xEA00000000005F6CLL;
        v154 = v22;
        v156._countAndFlagsBits = sub_F11EC();
        sub_F08CC(v156);

        v88 = *(&v151 + 1);
        v89 = v151;
        result = [objc_opt_self() defaultHFSFileManager];
        if (!result)
        {
          goto LABEL_66;
        }

        v90 = result;

        v91 = [v25 media];
        if (!v91 || (v92 = v91, v93 = [v91 thumbnailContentType], v92, !v93))
        {
          v93 = 0;
        }

        v94 = [v90 pathExtensionForMIMEType:v93];

        if (v94)
        {
          v95 = sub_F07BC();
          v96 = [v95 stringByAppendingPathExtension:v94];

          if (v96)
          {
            v89 = sub_F07EC();
            v98 = v97;

            v88 = v98;
          }
        }

        v99 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        v100 = *(v99 - 8);
        v137 = *(v100 + 56);
        v136 = (v100 + 56);
        (v137)(v129, 1, 1, v99);
        v101 = [v25 media];
        if (v101 && (v102 = v101, v103 = [v101 thumbnailFileSize], v102, v103))
        {
          v135 = [v103 integerValue];
        }

        else
        {
          v135 = 0;
        }

        v148 = v79;
        v104 = [v25 media];
        v150 = v25;
        v105 = v89;
        if (v104)
        {
          v106 = v83;
          v107 = v104;
          v108 = [v104 thumbnailContentType];

          if (v108)
          {
            v109 = sub_F07EC();
            v111 = v110;
          }

          else
          {
            v109 = 0;
            v111 = 0xE000000000000000;
          }

          v83 = v106;
        }

        else
        {
          v109 = 0;
          v111 = 0xE000000000000000;
        }

        v112 = v132;
        v113 = *(v80 + 16);
        v114 = v125;
        v115 = &v125[*(v132 + 28)];
        v142 = v83;
        v113(v115, v83, v148);
        v116 = v114 + v112[8];
        sub_F027C();
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        v117 = v114 + v112[10];
        v118 = v114 + v112[11];
        *(v118 + 32) = 0;
        *v118 = 0u;
        *(v118 + 16) = 0u;
        *v114 = v135;
        v114[1] = v105;
        v114[2] = v88;
        v114[3] = v109;
        v114[4] = v111;
        *(v114 + v112[9]) = 1;
        *v117 = 0;
        v117[8] = 1;

        sub_14A04(&v151, v118, &qword_1299C8, &qword_F5700);
        v119 = v127;
        (v137)(v127, 1, 1, v99);
        sub_14A04(v129, v119, &qword_1299D0, &qword_F6890);
        sub_29F7C(v114, v119 + *(v131 + 20), type metadata accessor for RCSFile.DispositionInformation);
        sub_C2B1C(v119, v128);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_29DA0(0, v149[2] + 1, 1, v149, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
        }

        v21 = v141;
        v120 = v150;
        v122 = v149[2];
        v121 = v149[3];
        v123 = v148;
        if (v122 >= v121 >> 1)
        {
          v149 = sub_29DA0(v121 > 1, v122 + 1, 1, v149, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
        }

        (*(v80 + 8))(v142, v123);
        v124 = v149;
        v149[2] = v122 + 1;
        sub_29F7C(v128, v124 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v122, type metadata accessor for RCSFile);
        sub_DA1C0(v127);
        v23 = &selRef__setLocalPath_;
        v26 = v147;
      }
    }

    else
    {
    }

    ++v22;
    if (v26 == v21)
    {
      goto LABEL_64;
    }
  }

  v148 = v22;
  v150 = v25;
  v28 = v27;
  v29 = [v27 mediaUrl];

  sub_F07EC();
  v30 = sub_F01EC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_388C8(&qword_128320, &qword_F34B0);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35 - 8);
  v38 = &v125 - v37;
  sub_F01DC();
  if ((*(v31 + 48))(v38, 1, v30) == 1)
  {

    sub_DA158(v38);
    v23 = &selRef__setLocalPath_;
    v22 = v148;
LABEL_32:
    v25 = v150;
    goto LABEL_33;
  }

  v137 = v31;
  v39 = *(v31 + 32);
  v143 = v30;
  v39(v34, v38, v30);
  *&v151 = 0x5F616964656DLL;
  *(&v151 + 1) = 0xE600000000000000;
  v154 = v148;
  v155._countAndFlagsBits = sub_F11EC();
  sub_F08CC(v155);

  v40 = *(&v151 + 1);
  v41 = v151;
  result = [objc_opt_self() defaultHFSFileManager];
  if (result)
  {
    v43 = result;

    v44 = [v150 media];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 mediaContentType];

      if (!v46)
      {
        sub_F07EC();
        v46 = sub_F07BC();
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = [v43 pathExtensionForMIMEType:v46];

    if (v47)
    {
      v48 = sub_F07BC();
      v49 = [v48 stringByAppendingPathExtension:v47];

      if (v49)
      {
        v41 = sub_F07EC();
        v51 = v50;

        v40 = v51;
      }
    }

    v52 = type metadata accessor for RCSFile.ThumbnailInformation(0);
    v53 = *(v52 - 8);
    v134 = *(v53 + 56);
    v133 = v53 + 56;
    v134(v140, 1, 1, v52);
    v54 = [v150 media];
    v135 = v40;
    if (v54)
    {
      v55 = v54;
      v56 = [v54 mediaFileSize];

      v57 = [v56 integerValue];
    }

    else
    {
      v57 = 0;
    }

    v58 = v41;
    v142 = v34;
    v136 = &v125;
    v59 = [v150 media];
    v147 = v26;
    if (v59)
    {
      v60 = v59;
      v61 = [v59 mediaContentType];

      v62 = sub_F07EC();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0xE000000000000000;
    }

    v65 = v137;
    v22 = v148;
    v66 = v132;
    v67 = v126;
    (*(v137 + 16))(&v126[*(v132 + 28)], v142, v143);
    v68 = v67 + v66[8];
    sub_F027C();
    v153 = 0;
    v151 = 0u;
    v152 = 0u;
    v69 = v67 + v66[10];
    v70 = v67 + v66[11];
    *(v70 + 32) = 0;
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *v67 = v57;
    v67[1] = v58;
    v67[2] = v135;
    v67[3] = v62;
    v67[4] = v64;
    *(v67 + v66[9]) = 1;
    *v69 = 0;
    v69[8] = 1;

    sub_14A04(&v151, v70, &qword_1299C8, &qword_F5700);
    v71 = v138;
    v134(v138, 1, 1, v52);
    sub_14A04(v140, v71, &qword_1299D0, &qword_F6890);
    sub_29F7C(v67, v71 + *(v131 + 20), type metadata accessor for RCSFile.DispositionInformation);
    sub_C2B1C(v71, v139);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_29DA0(0, v149[2] + 1, 1, v149, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
    }

    v21 = v141;
    v72 = v142;
    v26 = v147;
    v74 = v149[2];
    v73 = v149[3];
    v23 = &selRef__setLocalPath_;
    if (v74 >= v73 >> 1)
    {
      v149 = sub_29DA0(v73 > 1, v74 + 1, 1, v149, &qword_12A6D0, &qword_F73A0, type metadata accessor for RCSFile);
    }

    (*(v65 + 8))(v72, v143);
    v75 = v149;
    v149[2] = v74 + 1;
    sub_29F7C(v139, v75 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v74, type metadata accessor for RCSFile);
    sub_DA1C0(v138);
    goto LABEL_32;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t RCSRichCards.attributes.getter()
{
  v1 = v0;
  if (qword_128F48 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.chatbot);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = [*(v1 + 16) cards];
    sub_F0CAC();
    v7 = sub_F09FC();

    if (v7 >> 62)
    {
      v8 = sub_F10DC();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_0, v3, v4, "Apply %ld rich cards attributes", v5, 0xCu);
  }

  else
  {
  }

  v9 = [*(v1 + 16) dictionaryRepresentation];
  v10 = sub_F076C();

  return v10;
}

uint64_t RCSRichCards.init(card:originalID:)(void *a1)
{
  v3 = sub_D9518(a1);

  *(v1 + 16) = v3;
  return v1;
}

uint64_t RCSRichCards.init(cardCarousel:originalID:)(void *a1)
{
  v3 = sub_D9CDC(a1);

  *(v1 + 16) = v3;
  return v1;
}

void *sub_D8A20(void *result, int64_t a2, char a3, void *a4)
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
    sub_388C8(&qword_12A6C8, &qword_F7398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_388C8(qword_129F10, qword_F62A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_D8B54(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_12A6E0, &qword_F73A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_D8C60(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_129390, &unk_F52C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_D8D94(void *a1)
{
  v2 = [a1 cardOrientation];
  v3 = [a1 imageAlignment];
  v4 = [a1 titleStyle];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 style];

    if (v6)
    {
      v7 = v6;
      v6 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v7 italics:"bold") underline:{objc_msgSend(v7, "italics"), objc_msgSend(v7, "underline")}];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [a1 descriptionStyle];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 style];

    if (v10)
    {
      v11 = v10;
      v10 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v11 italics:"bold") underline:{objc_msgSend(v11, "italics"), objc_msgSend(v11, "underline")}];
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [a1 cardStyle];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 uri];

    v15 = sub_F01EC();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    sub_F017C();
    (*(v16 + 8))(v19, v15);
    v20 = sub_F07BC();
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(IMRichCardLayout) initWithOrientation:v2 imageAlignment:v3 width:-1 titleStyle:v6 descriptionStyle:v10 cardStyleUrl:v20];

  return v21;
}

id sub_D90BC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 mediaUrl];
    v3 = sub_F01EC();
    v43 = v40;
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3);
    v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    v40[1] = sub_F017C();
    v40[2] = v8;
    v9 = *(v4 + 8);
    v9(v7, v3);
    v10 = [v1 mediaContentType];
    if (!v10)
    {
      sub_F07EC();
      v11 = sub_F07BC();

      v10 = v11;
    }

    v42 = v10;
    v41 = [v1 mediaFileSize];
    v12 = sub_388C8(&qword_128320, &qword_F34B0);
    v13 = v40 - ((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = [v1 thumbnailUrl];
    __chkstk_darwin(v14);
    if (v15)
    {
      v16 = v15;
      sub_F01AC();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    (*(v4 + 56))(v13, v17, 1, v3);
    sub_81EC4(v13, v13);
    if ((*(v4 + 48))(v13, 1, v3) == 1)
    {
      sub_DA158(v13);
      v40[0] = 0;
      v19 = 0;
    }

    else
    {
      v40[0] = sub_F017C();
      v20 = v9;
      v19 = v21;
      v20(v13, v3);
    }

    v22 = [v1 thumbnailContentType];
    if (v22)
    {
      v23 = v22;
      sub_F07EC();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v1 thumbnailFileSize];
    v27 = [v1 height];
    v28 = [v1 contentDescription];
    if (v28)
    {
      v29 = v28;
      sub_F07EC();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_F07BC();

    if (v19)
    {
      v33 = sub_F07BC();

      if (v25)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v33 = 0;
      if (v25)
      {
LABEL_19:
        v34 = sub_F07BC();

        if (v31)
        {
LABEL_20:
          v35 = sub_F07BC();

LABEL_24:
          v36 = objc_allocWithZone(IMRichCardMedia);
          v38 = v41;
          v37 = v42;
          v18 = [v36 initWithMediaUrl:v32 mediaContentType:v42 mediaFileSize:v41 thumbnailUrl:v33 thumbnailContentType:v34 thumbnailFileSize:v26 height:v27 contentDescription:v35];

          return v18;
        }

LABEL_23:
        v35 = 0;
        goto LABEL_24;
      }
    }

    v34 = 0;
    if (v31)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  return 0;
}

id sub_D9518(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 card];
  v4 = [v3 content];

  v5 = [v4 chipList];
  v6 = sub_F07BC();
  v38 = [v2 IMChipListFromCTChipList:v5 originalID:v6];

  v7 = [a1 chipList];
  v8 = sub_F07BC();
  v36 = [v2 IMChipListFromCTChipList:v7 originalID:v8];

  sub_388C8(&qword_128BB8, &unk_F41E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_F3F80;
  v10 = [a1 card];
  v11 = [v10 layout];

  v12 = sub_D8D94(v11);
  v13 = [a1 card];
  v14 = [v13 content];

  v15 = [v14 media];
  v16 = sub_D90BC(v15);

  v17 = [a1 card];
  v18 = [v17 content];

  v19 = [v18 title];
  if (v19)
  {
    v20 = [v19 text];

    sub_F07EC();
    v19 = v21;
  }

  v22 = [a1 card];
  v23 = [v22 content];

  v24 = [v23 cardDescription];
  if (v24)
  {
    v25 = [v24 text];

    sub_F07EC();
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_opt_self() merge:v38 with:v37];
  if (!v19)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  v29 = sub_F07BC();

  if (!v27)
  {
    goto LABEL_10;
  }

LABEL_8:
  v30 = sub_F07BC();

LABEL_11:
  v31 = [objc_allocWithZone(IMRichCard) initWithLayout:v12 media:v16 title:v29 cardDescription:v30 chipList:v28];

  *(v9 + 32) = v31;
  v32 = objc_allocWithZone(IMRichCards);
  sub_F0CAC();
  v33 = sub_F09EC();

  v34 = [v32 initWithCards:v33];

  return v34;
}

id sub_D9974(void *a1)
{
  v2 = [a1 orientation];
  v3 = [a1 imageAlignment];
  v4 = [a1 width];
  v5 = [a1 titleStyle];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 style];

    if (v7)
    {
      v8 = v7;
      v7 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v8 italics:"bold") underline:{objc_msgSend(v8, "italics"), objc_msgSend(v8, "underline")}];
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [a1 descriptionStyle];
  if (v9 && (v10 = v9, v11 = [v9 style], v10, v11))
  {
    v12 = v11;
    v13 = [objc_allocWithZone(IMRichCardStyle) initWithBold:objc_msgSend(v12 italics:"bold") underline:{objc_msgSend(v12, "italics"), objc_msgSend(v12, "underline")}];
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 cardStyle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 uri];

    v17 = sub_F01EC();
    v29[1] = v29;
    v18 = v7;
    v19 = v4;
    v20 = v3;
    v21 = v2;
    v22 = *(v17 - 8);
    v23 = *(v22 + 64);
    __chkstk_darwin(v17);
    v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F01AC();

    sub_F017C();
    (*(v22 + 8))(v25, v17);
    v2 = v21;
    v3 = v20;
    v4 = v19;
    v7 = v18;
    v26 = sub_F07BC();
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(IMRichCardLayout) initWithOrientation:v2 imageAlignment:v3 width:v4 titleStyle:v7 descriptionStyle:v13 cardStyleUrl:v26];

  return v27;
}

uint64_t sub_D9CDC(void *a1)
{
  v45 = [a1 layout];
  v2 = objc_opt_self();
  v3 = [a1 chipList];
  v4 = sub_F07BC();
  v43 = v2;
  v44 = [v2 IMChipListFromCTChipList:v3 originalID:v4];

  v5 = [a1 content];
  sub_DA240();
  v6 = sub_F09FC();

  v7 = v6;
  if (v6 >> 62)
  {
    v35 = sub_F10DC();
    v7 = v6;
    v8 = v35;
    if (v35)
    {
      goto LABEL_3;
    }

LABEL_24:

    v36 = objc_allocWithZone(IMRichCards);
    sub_F0CAC();
    v37 = sub_F09EC();

    v38 = [v36 initWithCards:v37];

    return v38;
  }

  v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = v7;
  result = objc_opt_self();
  v42 = result;
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = v9;
    v39 = v9 & 0xC000000000000001;
    v40 = v8;
    v41 = v9;
    while (1)
    {
      if (v39)
      {
        v13 = sub_F0FCC();
      }

      else
      {
        v13 = *(v12 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 chipList];
      v16 = sub_F07BC();
      v17 = [v43 IMChipListFromCTChipList:v15 originalID:v16];

      v18 = sub_D9974(v45);
      v19 = [v14 media];
      v20 = sub_D90BC(v19);

      v21 = [v14 title];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 text];

        sub_F07EC();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = [v14 cardDescription];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 text];

        sub_F07EC();
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = [v42 merge:v17 with:v44];
      if (v25)
      {
        v32 = sub_F07BC();

        if (!v30)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v32 = 0;
        if (!v30)
        {
LABEL_18:
          v33 = 0;
          goto LABEL_19;
        }
      }

      v33 = sub_F07BC();

LABEL_19:
      [objc_allocWithZone(IMRichCard) initWithLayout:v18 media:v20 title:v32 cardDescription:v33 chipList:v31];

      sub_F09DC();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v34 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_F0A1C();
      }

      ++v11;
      sub_F0A3C();

      v12 = v41;
      if (v40 == v11)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_DA158(uint64_t a1)
{
  v2 = sub_388C8(&qword_128320, &qword_F34B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DA1C0(uint64_t a1)
{
  v2 = type metadata accessor for RCSFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DA240()
{
  result = qword_12A6D8;
  if (!qword_12A6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12A6D8);
  }

  return result;
}

CoreRCS::RCSFile::Disposition_optional __swiftcall RCSFile.Disposition.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) < 3)
  {
    return (rawValue + 1);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_DA2FC()
{
  v1 = v0;
  v2 = type metadata accessor for RCSFile.DispositionInformation(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_388C8(&qword_128300, &unk_F68D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_F068C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = *(v1 + 24);
  v20 = *(v1 + 32);

  sub_F063C();
  sub_F05EC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_372B0(v12, &qword_128300, &unk_F68D0);
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v21 = sub_F062C();
    v23 = v22;
    (*(v14 + 8))(v18, v13);
    if (v23)
    {
      return v21;
    }
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v25 = sub_F06CC();
  sub_3C96C(v25, static Logger.rcs);
  sub_DC994(v1, v8);
  sub_DC994(v1, v5);
  v26 = sub_F06AC();
  v27 = sub_F0CEC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = *(v8 + 3);
    v30 = *(v8 + 4);

    sub_2AA3C(v8, type metadata accessor for RCSFile.DispositionInformation);
    v31 = sub_3E850(v29, v30, &v36);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = *(v5 + 1);
    v33 = *(v5 + 2);

    sub_2AA3C(v5, type metadata accessor for RCSFile.DispositionInformation);
    v34 = sub_3E850(v32, v33, &v36);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_0, v26, v27, "Failed to find file's UTType or path extension for mimetype %s, filename %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_2AA3C(v5, type metadata accessor for RCSFile.DispositionInformation);
    sub_2AA3C(v8, type metadata accessor for RCSFile.DispositionInformation);
  }

  return 0;
}

uint64_t RCSFile.DispositionInformation.init(fileSizeInBytes:originalFileName:mimeType:dataUrl:validUntil:disposition:timeLength:cryptoMaterial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v19 = type metadata accessor for RCSFile.DispositionInformation(0);
  v20 = &a9[v19[10]];
  v21 = &a9[v19[11]];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v22 = v19[7];
  v23 = sub_F01EC();
  (*(*(v23 - 8) + 32))(&a9[v22], a6, v23);
  v24 = v19[8];
  v25 = sub_F030C();
  (*(*(v25 - 8) + 32))(&a9[v24], a7, v25);
  a9[v19[9]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return sub_14A04(a12, v21, &qword_1299C8, &qword_F5700);
}

uint64_t RCSFile.init(thumbnail:disposition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_14A04(a1, a3, &qword_1299D0, &qword_F6890);
  v7 = type metadata accessor for RCSFile(0);
  return sub_2A340(a2, a3 + *(v7 + 20), type metadata accessor for RCSFile.DispositionInformation);
}

uint64_t RCSFile.ThumbnailInformation.contentType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RCSFile.ThumbnailInformation.contentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RCSFile.ThumbnailInformation.dataUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFile.ThumbnailInformation(0) + 24);
  v4 = sub_F01EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFile.ThumbnailInformation.dataUrl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFile.ThumbnailInformation(0) + 24);
  v4 = sub_F01EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSFile.ThumbnailInformation.init(fileSizeInBytes:contentType:dataUrl:validUntil:cryptoMaterial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v15 = &a7[v14[8]];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v16 = v14[6];
  v17 = sub_F01EC();
  (*(*(v17 - 8) + 32))(&a7[v16], a4, v17);
  v18 = v14[7];
  v19 = sub_F030C();
  (*(*(v19 - 8) + 32))(&a7[v18], a5, v19);
  return sub_14A04(a6, v15, &qword_1299C8, &qword_F5700);
}

uint64_t sub_DADF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_388C8(&qword_1299C0, &unk_F74D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v78 - v6;
  v8 = sub_F07EC();
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v10 = sub_51FEC(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_3FE38(*(a1 + 56) + 32 * v10, &v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = v90;
  v14 = sub_F07EC();
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v16 = sub_51FEC(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_3FE38(*(a1 + 56) + 32 * v16, &v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = v90;
  v20 = sub_F07EC();
  if (!*(a1 + 16))
  {

LABEL_12:

LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_51FEC(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_3FE38(*(a1 + 56) + 32 * v22, &v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v89 = *(&v19 + 1);
  v85 = v19;
  v86 = v90;
  v25 = sub_F01EC();
  v88 = v78;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v84 = v28;
  v29 = v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_388C8(&qword_128320, &qword_F34B0);
  v87 = v78;
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30 - 8);
  v33 = v78 - v32;
  sub_F01DC();

  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {

    sub_372B0(v33, &qword_128320, &qword_F34B0);
LABEL_14:
    v34 = type metadata accessor for RCSFile.ThumbnailInformation(0);
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v80 = v26;
  v38 = *(v26 + 32);
  v36 = v26 + 32;
  v37 = v38;
  v82 = v29;
  v86 = v25;
  v38(v29, v33, v25);
  v39 = sub_F030C();
  v83 = v78;
  v87 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v78[2] = v42;
  v79 = v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_388C8(&qword_127B20, &unk_F74E0);
  v81 = v78;
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43 - 8);
  v46 = v78 - v45;
  v47 = sub_F07EC();
  if (!*(a1 + 16))
  {

    goto LABEL_22;
  }

  v78[0] = v37;
  v78[1] = v36;
  v49 = sub_51FEC(v47, v48);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
LABEL_22:

    v80[1](v82, v86);
    (*(v40 + 56))(v46, 1, 1, v87);
    goto LABEL_23;
  }

  sub_3FE38(*(a1 + 56) + 32 * v49, &v94);
  v52 = v87;
  v53 = swift_dynamicCast();
  (*(v40 + 56))(v46, v53 ^ 1u, 1, v52);
  if ((*(v40 + 48))(v46, 1, v52) == 1)
  {
    v80[1](v82, v86);

LABEL_23:
    sub_372B0(v46, &qword_127B20, &unk_F74E0);
    goto LABEL_14;
  }

  v54 = *(v40 + 32);
  v55 = v79;
  v80 = v54;
  (v54)(v79, v46, v52);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v56 = sub_F07EC();
  if (!*(a1 + 16))
  {

    goto LABEL_30;
  }

  v58 = sub_51FEC(v56, v57);
  v60 = v59;

  if ((v60 & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_3FE38(*(a1 + 56) + 32 * v58, &v90);

  sub_388C8(&qword_128568, &qword_F3950);
  v61 = swift_dynamicCast();
  if (v61)
  {
    FileCryptoMaterial.init(dictionaryRepresentation:)(v93, v7);
    v62 = sub_F050C();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v7, 1, v62) == 1)
    {
      sub_372B0(&v94, &qword_1299C8, &qword_F5700);
      v61 = sub_372B0(v7, &qword_1299C0, &unk_F74D0);
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
    }

    else
    {
      *(&v91 + 1) = v62;
      v92 = &protocol witness table for FileCryptoMaterial;
      v77 = sub_37474(&v90);
      (*(v63 + 32))(v77, v7, v62);
      v61 = sub_372B0(&v94, &qword_1299C8, &qword_F5700);
    }

    v94 = v90;
    v95 = v91;
    v96 = v92;
    v64 = v78[0];
    v55 = v79;
    goto LABEL_32;
  }

LABEL_31:
  v64 = v78[0];
LABEL_32:
  v82 = v78;
  __chkstk_darwin(v61);
  v66 = v78 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v64(v66);
  v84 = v78;
  __chkstk_darwin(v67);
  v69 = v78 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v87;
  v71 = v80;
  (v80)(v69, v55, v87);
  v72 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v73 = v64;
  v74 = &a2[v72[8]];
  *(v74 + 32) = 0;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v76 = v85;
  v75 = v86;
  *a2 = v13;
  *(a2 + 1) = v76;
  *(a2 + 2) = v89;
  v73(&a2[v72[6]], v66, v75);
  v71(&a2[v72[7]], v69, v70);
  sub_14A04(&v94, v74, &qword_1299C8, &qword_F5700);
  return (*(*(v72 - 1) + 56))(a2, 0, 1, v72);
}

Swift::Int sub_DB7A4()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1 - 1);
  return sub_F132C();
}

Swift::Int sub_DB81C()
{
  v1 = *v0;
  sub_F12FC();
  sub_F130C(v1 - 1);
  return sub_F132C();
}

void *sub_DB860@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t RCSFile.DispositionInformation.mimeType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RCSFile.DispositionInformation.mimeType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RCSFile.DispositionInformation.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFile.DispositionInformation(0) + 32);
  v4 = sub_F030C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFile.DispositionInformation.validUntil.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSFile.DispositionInformation(0) + 32);
  v4 = sub_F030C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSFile.DispositionInformation.disposition.setter(char a1)
{
  result = type metadata accessor for RCSFile.DispositionInformation(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t RCSFile.DispositionInformation.timeLength.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSFile.DispositionInformation(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t RCSFile.DispositionInformation.timeLength.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for RCSFile.DispositionInformation(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_DBD4C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_388C8(&qword_1299C0, &unk_F74D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v92 - v8;
  v10 = sub_F07EC();
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v12 = sub_51FEC(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_3FE38(*(a1 + 56) + 32 * v12, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = v111;
  v16 = sub_F07EC();
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v18 = sub_51FEC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_3FE38(*(a1 + 56) + 32 * v18, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = v111;
  v22 = sub_F07EC();
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v110 = v21;
  v24 = sub_51FEC(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_3FE38(*(a1 + 56) + 32 * v24, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v28 = *(&v111 + 1);
  v27 = v111;
  v29 = sub_F07EC();
  if (!*(a1 + 16))
  {

LABEL_18:

LABEL_15:

LABEL_16:

    goto LABEL_17;
  }

  v108 = v27;
  v109 = v28;
  v31 = sub_51FEC(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_3FE38(*(a1 + 56) + 32 * v31, &v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v103 = v111;
  v34 = sub_F01EC();
  v106 = v92;
  v107 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v101 = v37;
  v105 = v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_388C8(&qword_128320, &qword_F34B0);
  v104 = v92;
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38 - 8);
  v41 = v92 - v40;
  sub_F01DC();
  v42 = v107;

  v103 = v35;
  if ((*(v35 + 48))(v41, 1, v42) == 1)
  {

    sub_372B0(v41, &qword_128320, &qword_F34B0);
LABEL_17:
    v43 = type metadata accessor for RCSFile.DispositionInformation(0);
    return (*(*(v43 - 8) + 56))(a3, 1, 1, v43);
  }

  v45 = *(v103 + 32);
  v98 = v103 + 32;
  v97 = v45;
  v45(v105, v41, v42);
  v102 = sub_F030C();
  v46 = *(v102 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v102);
  v95 = v48;
  v96 = v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_388C8(&qword_127B20, &unk_F74E0);
  v100 = v92;
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49 - 8);
  v104 = v92 - v51;
  v52 = sub_F07EC();
  if (!*(a1 + 16))
  {

    goto LABEL_27;
  }

  v99 = v92;
  v94 = sub_51FEC(v52, v53);
  v55 = v54;

  if ((v55 & 1) == 0)
  {
LABEL_27:

    (*(v103 + 8))(v105, v107);
    v59 = v104;
    (*(v46 + 56))(v104, 1, 1, v102);
    goto LABEL_28;
  }

  sub_3FE38(*(a1 + 56) + 32 * v94, &v115);
  v56 = v104;
  v57 = v102;
  v58 = swift_dynamicCast();
  (*(v46 + 56))(v56, v58 ^ 1u, 1, v57);
  if ((*(v46 + 48))(v56, 1, v57) == 1)
  {
    (*(v103 + 8))(v105, v107);

    v59 = v104;
LABEL_28:
    sub_372B0(v59, &qword_127B20, &unk_F74E0);
    goto LABEL_17;
  }

  v60 = v104;
  v103 = *(v46 + 32);
  v104 = (v46 + 32);
  (v103)(v96, v60, v57);
  if (a2)
  {
    v61 = sub_F07EC();
    if (*(a1 + 16))
    {
      v63 = sub_51FEC(v61, v62);
      v65 = v64;

      if (v65)
      {
        sub_3FE38(*(a1 + 56) + 32 * v63, &v115);
        v66 = swift_dynamicCast();
        v67 = v111;
        if (!v66)
        {
          v67 = 0;
        }

        v100 = v67;
        LODWORD(v94) = v66 ^ 1;
        v68 = 2;
        v69 = &v118 + 4;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v100 = 0;
    v93 = 2;
    v68 = 1;
    v69 = &v119;
  }

  else
  {
    v100 = 0;
    v68 = 1;
    LODWORD(v94) = 1;
    v69 = &v118 + 4;
  }

LABEL_38:
  *(v69 - 64) = v68;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v70 = sub_F07EC();
  if (*(a1 + 16))
  {
    v72 = sub_51FEC(v70, v71);
    v74 = v73;

    if (v74)
    {
      sub_3FE38(*(a1 + 56) + 32 * v72, &v111);

      sub_388C8(&qword_128568, &qword_F3950);
      v75 = swift_dynamicCast();
      if (v75)
      {
        FileCryptoMaterial.init(dictionaryRepresentation:)(v114, v9);
        v76 = sub_F050C();
        v77 = *(v76 - 8);
        if ((*(v77 + 48))(v9, 1, v76) == 1)
        {
          sub_372B0(&v115, &qword_1299C8, &qword_F5700);
          v75 = sub_372B0(v9, &qword_1299C0, &unk_F74D0);
          v111 = 0u;
          v112 = 0u;
          v113 = 0;
        }

        else
        {
          *(&v112 + 1) = v76;
          v113 = &protocol witness table for FileCryptoMaterial;
          v78 = sub_37474(&v111);
          (*(v77 + 32))(v78, v9, v76);
          v75 = sub_372B0(&v115, &qword_1299C8, &qword_F5700);
        }

        v115 = v111;
        v116 = v112;
        v117 = v113;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v92[1] = v92;
  __chkstk_darwin(v75);
  v80 = v92 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v97(v80, v105, v107);
  v105 = v92;
  __chkstk_darwin(v81);
  v83 = v92 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v102;
  v84 = v103;
  (v103)(v83, v96, v102);
  v86 = type metadata accessor for RCSFile.DispositionInformation(0);
  v87 = &a3[v86[10]];
  v88 = &a3[v86[11]];
  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  v89 = v110;
  *a3 = v15;
  *(a3 + 1) = v89;
  v91 = v108;
  v90 = v109;
  *(a3 + 2) = *(&v21 + 1);
  *(a3 + 3) = v91;
  *(a3 + 4) = v90;
  v97(&a3[v86[7]], v80, v107);
  v84(&a3[v86[8]], v83, v85);
  a3[v86[9]] = v93;
  *v87 = v100;
  v87[8] = v94;
  sub_14A04(&v115, v88, &qword_1299C8, &qword_F5700);
  return (*(*(v86 - 1) + 56))(a3, 0, 1, v86);
}

uint64_t RCSFile.disposition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSFile(0) + 20);

  return sub_DC994(v3, a1);
}

uint64_t sub_DC994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSFile.disposition.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSFile(0) + 20);

  return sub_DCA3C(a1, v3);
}

uint64_t sub_DCA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_DCAE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v54) = a2;
  v55 = a3;
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v50 - v10;
  __chkstk_darwin(v9);
  v13 = v50 - v12;
  v14 = sub_388C8(&qword_12A8E8, &qword_F74C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v50 - v16;
  v18 = type metadata accessor for RCSFile.DispositionInformation(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v50 - v24;
  v26 = sub_F07EC();
  if (!*(a1 + 16))
  {

LABEL_7:

    goto LABEL_8;
  }

  v52 = v8;
  v53 = v13;
  v28 = sub_51FEC(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_3FE38(*(a1 + 56) + 32 * v28, v57);
  v31 = sub_388C8(&qword_128568, &qword_F3950);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_DBD4C(v56, v54 & 1, v17);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_2A340(v17, v25, type metadata accessor for RCSFile.DispositionInformation);
    v34 = type metadata accessor for RCSFile.ThumbnailInformation(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v54 = v34;
    v51 = v36;
    (v36)(v53, 1, 1);
    v37 = sub_F07EC();
    if (*(a1 + 16))
    {
      v50[1] = v31;
      v39 = sub_51FEC(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_3FE38(*(a1 + 56) + 32 * v39, v57);

        if (swift_dynamicCast())
        {
          sub_DADF0(v56, v11);
          v42 = v54;
          v43 = (*(v35 + 48))(v11, 1, v54);
          v45 = v52;
          v44 = v53;
          if (v43 != 1)
          {
            sub_372B0(v53, &qword_1299D0, &qword_F6890);
            sub_2A340(v11, v44, type metadata accessor for RCSFile.ThumbnailInformation);
            v47 = v51;
            v51(v44, 0, 1, v42);
            v46 = v44;
            goto LABEL_19;
          }

          sub_372B0(v11, &qword_1299D0, &qword_F6890);
          v46 = v44;
LABEL_18:
          v47 = v51;
LABEL_19:
          sub_DDCB8(v46, v45);
          sub_2A340(v25, v23, type metadata accessor for RCSFile.DispositionInformation);
          v48 = v55;
          v47(v55, 1, 1, v42);
          sub_14A04(v45, v48, &qword_1299D0, &qword_F6890);
          v49 = type metadata accessor for RCSFile(0);
          sub_2A340(v23, v48 + *(v49 + 20), type metadata accessor for RCSFile.DispositionInformation);
          return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
        }

LABEL_17:
        v45 = v52;
        v46 = v53;
        v42 = v54;
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

  sub_372B0(v17, &qword_12A8E8, &qword_F74C8);
LABEL_8:
  v32 = type metadata accessor for RCSFile(0);
  return (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
}

unint64_t RCSFile.userInfoRepresentation(simID:)(void *a1, uint64_t a2)
{
  v95 = a1;
  v96 = a2;
  v3 = sub_388C8(&qword_1299D0, &qword_F6890);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v88 - v5;
  v99 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  v97 = *(v99 - 8);
  v7 = *(v97 + 64);
  __chkstk_darwin(v99);
  v94 = (v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F3720;
  v93 = IMFileTransferUserInfoRCSURLKey;
  *(inited + 32) = sub_F07EC();
  *(inited + 40) = v10;
  v11 = *(type metadata accessor for RCSFile(0) + 20);
  v98 = v2;
  v12 = (v2 + v11);
  v13 = type metadata accessor for RCSFile.DispositionInformation(0);
  v14 = v12 + v13[7];
  v15 = sub_F017C();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  v92 = IMFileTransferUserInfoRCSMIMETypeKey;
  *(inited + 80) = sub_F07EC();
  *(inited + 88) = v17;
  v18 = v12[3];
  v19 = v12[4];
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v18;
  *(inited + 104) = v19;
  *(inited + 128) = sub_F07EC();
  *(inited + 136) = v20;
  v21 = v12[1];
  v22 = v12[2];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v91 = IMFileTransferUserInfoRCSFileSizeKey;
  *(inited + 176) = sub_F07EC();
  *(inited + 184) = v23;
  v24 = *v12;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v24;
  v90 = IMFileTransferUserInfoRCSValidUntilKey;
  *(inited + 224) = sub_F07EC();
  *(inited + 232) = v25;
  v26 = v13[8];
  v27 = sub_F030C();
  *(inited + 264) = v27;
  v28 = sub_37474((inited + 240));
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v88[1] = v29 + 16;
  v89 = v30;
  v30(v28, v12 + v26, v27);

  v31 = sub_81270(inited);
  swift_setDeallocating();
  v100 = sub_388C8(&qword_1285C0, &qword_F3780);
  swift_arrayDestroy();
  sub_37380(v12 + v13[11], &v104, &qword_1299C8, &qword_F5700);
  v32 = v105;
  if (v105)
  {
    v33 = v106;
    sub_373E8(&v104, v105);
    v34 = (*(v33 + 56))(v32, v33);
    sub_1EDC(&v104);
    v35 = sub_F07EC();
    v37 = v36;
    v105 = sub_388C8(&qword_128568, &qword_F3950);
    *&v104 = v34;
    sub_54F88(&v104, v103);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v31;
    sub_52328(v103, v35, v37, isUniquelyReferenced_nonNull_native);

    v31 = v102;
  }

  else
  {
    sub_372B0(&v104, &qword_1299C8, &qword_F5700);
  }

  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_F73B0;
  *(v39 + 32) = sub_F07EC();
  *(v39 + 40) = v40;
  v41 = sub_F07EC();
  *(v39 + 72) = &type metadata for String;
  *(v39 + 48) = v41;
  *(v39 + 56) = v42;
  *(v39 + 80) = sub_F07EC();
  *(v39 + 88) = v43;
  *(v39 + 120) = &type metadata for String;
  v44 = v96;
  *(v39 + 96) = v95;
  *(v39 + 104) = v44;
  *(v39 + 128) = sub_F07EC();
  *(v39 + 136) = v45;
  v95 = sub_388C8(&qword_128568, &qword_F3950);
  *(v39 + 168) = v95;
  *(v39 + 144) = v31;

  v46 = sub_81270(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  v47 = v12 + v13[10];
  if ((v47[8] & 1) == 0)
  {
    v48 = *v47;
    v49 = sub_F07EC();
    if (*(v46 + 16))
    {
      v51 = sub_51FEC(v49, v50);
      v53 = v52;

      if (v53)
      {
        sub_3FE38(*(v46 + 56) + 32 * v51, &v104);
        if (swift_dynamicCast())
        {
          v54 = *&v103[0];
          v55 = sub_F07EC();
          v57 = v56;
          v105 = &type metadata for Double;
          *&v104 = v48;
          sub_54F88(&v104, v103);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v102 = v54;
          sub_52328(v103, v55, v57, v58);
        }
      }
    }

    else
    {
    }
  }

  sub_37380(v98, v6, &qword_1299D0, &qword_F6890);
  v59 = v99;
  if ((*(v97 + 48))(v6, 1, v99) == 1)
  {
    sub_372B0(v6, &qword_1299D0, &qword_F6890);
  }

  else
  {
    v60 = v94;
    sub_2A340(v6, v94, type metadata accessor for RCSFile.ThumbnailInformation);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_F4320;
    *(v61 + 32) = sub_F07EC();
    *(v61 + 40) = v62;
    v63 = v60 + v59[6];
    v64 = sub_F017C();
    *(v61 + 72) = &type metadata for String;
    *(v61 + 48) = v64;
    *(v61 + 56) = v65;
    *(v61 + 80) = sub_F07EC();
    *(v61 + 88) = v66;
    v67 = v60[1];
    v68 = v60[2];
    *(v61 + 120) = &type metadata for String;
    *(v61 + 96) = v67;
    *(v61 + 104) = v68;
    *(v61 + 128) = sub_F07EC();
    *(v61 + 136) = v69;
    v70 = *v60;
    *(v61 + 168) = &type metadata for Int;
    *(v61 + 144) = v70;
    *(v61 + 176) = sub_F07EC();
    *(v61 + 184) = v71;
    v72 = v59[7];
    *(v61 + 216) = v27;
    v73 = sub_37474((v61 + 192));
    v89(v73, v60 + v72, v27);

    v74 = sub_81270(v61);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_37380(v60 + v59[8], &v104, &qword_1299C8, &qword_F5700);
    v75 = v105;
    if (v105)
    {
      v76 = v106;
      sub_373E8(&v104, v105);
      v77 = (*(v76 + 56))(v75, v76);
      sub_1EDC(&v104);
      v78 = sub_F07EC();
      v80 = v79;
      v81 = v95;
      v105 = v95;
      *&v104 = v77;
      sub_54F88(&v104, v103);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v74;
      sub_52328(v103, v78, v80, v82);

      v74 = v102;
    }

    else
    {
      sub_372B0(&v104, &qword_1299C8, &qword_F5700);
      v81 = v95;
    }

    v83 = sub_F07EC();
    v85 = v84;
    v105 = v81;
    *&v104 = v74;
    sub_54F88(&v104, v103);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v46;
    sub_52328(v103, v83, v85, v86);

    sub_2AA3C(v60, type metadata accessor for RCSFile.ThumbnailInformation);
    return v102;
  }

  return v46;
}

unint64_t sub_DD8BC()
{
  result = qword_12A6E8;
  if (!qword_12A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12A6E8);
  }

  return result;
}

void sub_DD938()
{
  sub_DD9BC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RCSFile.DispositionInformation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DD9BC()
{
  if (!qword_12A758)
  {
    type metadata accessor for RCSFile.ThumbnailInformation(255);
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A758);
    }
  }
}

void sub_DDA3C()
{
  sub_F01EC();
  if (v0 <= 0x3F)
  {
    sub_F030C();
    if (v1 <= 0x3F)
    {
      sub_DDAF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_DDAF0()
{
  if (!qword_12A7F0)
  {
    sub_3CB70(&unk_12A7F8, &qword_F7498);
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A7F0);
    }
  }
}

void sub_DDB8C()
{
  sub_F01EC();
  if (v0 <= 0x3F)
  {
    sub_F030C();
    if (v1 <= 0x3F)
    {
      sub_DDC68();
      if (v2 <= 0x3F)
      {
        sub_DDAF0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_DDC68()
{
  if (!qword_12A8A0)
  {
    v0 = sub_F0DEC();
    if (!v1)
    {
      atomic_store(v0, &qword_12A8A0);
    }
  }
}

uint64_t sub_DDCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_1299D0, &qword_F6890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FileCryptoMaterial.init(dictionaryRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_51FEC(7955819, 0xE300000000000000);
    if (v5)
    {
      sub_3FE38(*(a1 + 56) + 32 * v4, v29);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_51FEC(0x67615468747561, 0xE700000000000000), (v7 & 1) != 0) && (sub_3FE38(*(a1 + 56) + 32 * v6, v29), (swift_dynamicCast() & 1) != 0))
        {
          if (*(a1 + 16) && (v8 = sub_51FEC(0x65636E6F6ELL, 0xE500000000000000), (v9 & 1) != 0) && (sub_3FE38(*(a1 + 56) + 32 * v8, v29), (swift_dynamicCast() & 1) != 0))
          {
            if (*(a1 + 16) && (v10 = sub_51FEC(6578529, 0xE300000000000000), (v11 & 1) != 0))
            {
              sub_3FE38(*(a1 + 56) + 32 * v10, v29);
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_5F048(v27, v28);
                sub_5F048(v27, v28);

LABEL_29:
                sub_5F048(v27, v28);
                goto LABEL_23;
              }

              if (*(a1 + 16))
              {
                v12 = sub_51FEC(0xD000000000000017, 0x8000000000100BD0);
                if (v13)
                {
                  sub_3FE38(*(a1 + 56) + 32 * v12, v29);

                  if (swift_dynamicCast())
                  {
                    v14 = v28 >> 62;
                    if ((v28 >> 62) > 1)
                    {
                      if (v14 != 2)
                      {
                        goto LABEL_38;
                      }

                      v22 = *(v27 + 16);
                      v23 = *(v27 + 24);
                    }

                    else
                    {
                      if (!v14)
                      {
                        if ((v28 & 0xFF000000000000) == 0)
                        {
                          goto LABEL_38;
                        }

LABEL_37:
                        sub_660D0(v27, v28);
                        goto LABEL_38;
                      }

                      v22 = v27;
                      v23 = v27 >> 32;
                    }

                    if (v22 != v23)
                    {
                      goto LABEL_37;
                    }

LABEL_38:
                    v24 = v28 >> 62;
                    if ((v28 >> 62) > 1)
                    {
                      if (v24 != 2)
                      {
                        goto LABEL_48;
                      }

                      v25 = *(v27 + 16);
                      v26 = *(v27 + 24);
                    }

                    else
                    {
                      if (!v24)
                      {
                        if ((v28 & 0xFF000000000000) == 0)
                        {
                          goto LABEL_48;
                        }

                        goto LABEL_47;
                      }

                      v25 = v27;
                      v26 = v27 >> 32;
                    }

                    if (v25 == v26)
                    {
                      goto LABEL_48;
                    }

LABEL_47:
                    sub_660D0(v27, v28);
LABEL_48:
                    sub_F04DC();
                    sub_5F048(v27, v28);
                    sub_5F048(v27, v28);
                    v17 = 0;
                    goto LABEL_24;
                  }

                  sub_5F048(v27, v28);
                  sub_5F048(v27, v28);
                  sub_5F048(v27, v28);
                  goto LABEL_29;
                }
              }

              sub_5F048(v27, v28);
              sub_5F048(v27, v28);
              v20 = v27;
              v21 = v28;
            }

            else
            {
              sub_5F048(v27, v28);
              v20 = v27;
              v21 = v28;
            }

            sub_5F048(v20, v21);
            v15 = v27;
            v16 = v28;
          }

          else
          {
            sub_5F048(v27, v28);
            v15 = v27;
            v16 = v28;
          }
        }

        else
        {
          v15 = v27;
          v16 = v28;
        }

        sub_5F048(v15, v16);
      }
    }
  }

LABEL_23:
  v17 = 1;
LABEL_24:
  v18 = sub_F050C();
  return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
}

unint64_t FileCryptoMaterial.dictionaryRepresentation()()
{
  sub_388C8(&qword_1285A0, &unk_F74F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_F3720;
  *(inited + 32) = 7955819;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_F04CC();
  *(inited + 56) = v1;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 0x65636E6F6ELL;
  *(inited + 88) = 0xE500000000000000;
  v2 = sub_F04EC();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
  }

  *(inited + 96) = v4;
  *(inited + 104) = v5;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 6578529;
  *(inited + 136) = 0xE300000000000000;
  v6 = sub_F04BC();
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for Data;
  *(inited + 176) = 0x67615468747561;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = sub_F04FC();
  *(inited + 200) = v10;
  *(inited + 216) = &type metadata for Data;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x8000000000100BD0;
  v11 = sub_F04AC();
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = v11;
  v12 = sub_81270(inited);
  swift_setDeallocating();
  sub_388C8(&qword_1285C0, &qword_F3780);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_DE2FC(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 281) = a3;
  *(v6 + 280) = a2;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  *(v6 + 80) = *v5;
  v7 = sub_F06CC();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v10 = type metadata accessor for RCSFile(0);
  *(v6 + 112) = v10;
  v11 = *(v10 - 8);
  *(v6 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v13 = *(*(sub_388C8(&qword_12A8F0, &qword_F7558) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v14 = sub_388C8(&qword_12A8F8, &qword_F7560);
  *(v6 + 144) = v14;
  v15 = *(v14 - 8);
  *(v6 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_2AA9C, 0, 0);
}

uint64_t sub_DE504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = v7;
  *(v8 + 361) = a5;
  *(v8 + 360) = a4;
  *(v8 + 120) = a3;
  *(v8 + 128) = a6;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  *(v8 + 152) = *v7;
  v9 = *(*(sub_388C8(&qword_12A900, &unk_F7570) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_F06CC();
  *(v8 + 168) = v10;
  v11 = *(v10 - 8);
  *(v8 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_2B3AC, 0, 0);
}

uint64_t sub_DE658()
{
  v1 = sub_F06CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v64 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  if ((sub_F016C() & 1) == 0)
  {
    return 0;
  }

  v65 = v9;
  v66 = v0;
  v64 = v6;
  v67 = v2;
  v68 = v1;
  v15 = sub_F01BC();
  v17 = v16;
  v18 = sub_F07BC();
  v19 = [v18 pathExtension];

  v20 = sub_F07EC();
  v22 = v21;

  v70[0] = sub_F084C();
  v70[1] = v23;
  __chkstk_darwin(v70[0]);
  *(&v64 - 2) = v70;
  v24 = sub_400F0(sub_2C990, (&v64 - 4), &off_11F748);
  swift_arrayDestroy();

  if ((v24 & 1) == 0)
  {

    sub_CCD3C(v14);

    v42 = sub_F06AC();
    v43 = sub_F0CEC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v70[0] = v45;
      *v44 = 136315138;
      v46 = sub_3E850(v20, v22, v70);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_0, v42, v43, "Wrong type for thumbnail %s", v44, 0xCu);
      sub_1EDC(v45);
    }

    else
    {
    }

    v47 = *(v67 + 8);
    v48 = v14;
    goto LABEL_26;
  }

  v25 = [objc_opt_self() defaultManager];
  v26 = sub_F07BC();
  v27 = [v25 fileExistsAtPath:v26];

  v28 = v17;
  if (!v27)
  {

    return 0;
  }

  v29 = sub_F07BC();
  v70[0] = 0;
  v30 = [v25 attributesOfItemAtPath:v29 error:v70];

  v31 = v70[0];
  if (!v30)
  {
    v49 = v70[0];
    sub_F015C();

    swift_willThrow();
    v50 = v64;
    sub_CCD3C(v64);

    swift_errorRetain();
    v51 = sub_F06AC();
    v52 = sub_F0CEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v70[0] = v55;
      *v53 = 136315394;
      v56 = sub_3E850(v15, v17, v70);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2112;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v57;
      *v54 = v57;
      _os_log_impl(&dword_0, v51, v52, "Failed to get attributes of %s: %@", v53, 0x16u);
      sub_372B0(v54, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v55);

      v47 = *(v67 + 8);
      v48 = v64;
    }

    else
    {

      v47 = *(v67 + 8);
      v48 = v50;
    }

LABEL_26:
    v47(v48, v68);
    return 0;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_DEEF8();
  v32 = sub_F076C();
  v33 = v31;

  if (!*(v32 + 16))
  {

    v35 = v65;
    goto LABEL_21;
  }

  v34 = sub_E9B18(NSFileSize);
  v35 = v65;
  if ((v36 & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_3FE38(*(v32 + 56) + 32 * v34, v70);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    sub_CCD3C(v35);

    v58 = sub_F06AC();
    v59 = sub_F0CEC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v60 = 136315138;
      v62 = sub_3E850(v15, v28, v70);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_0, v58, v59, "Couldn't find file size for %s", v60, 0xCu);
      sub_1EDC(v61);
    }

    else
    {
    }

    v47 = *(v67 + 8);
    v48 = v35;
    goto LABEL_26;
  }

  v38 = v68;
  v37 = v69;
  if (v69 <= 0x2800)
  {

    return 1;
  }

  sub_CCD3C(v12);
  v39 = sub_F06AC();
  v40 = sub_F0CEC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134218240;
    *(v41 + 4) = v37;
    *(v41 + 12) = 2048;
    *(v41 + 14) = 10240;
    _os_log_impl(&dword_0, v39, v40, "Too large for thumbnail %llu > %ld", v41, 0x16u);
  }

  (*(v67 + 8))(v12, v38);
  return 0;
}

uint64_t sub_DEE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_DEEF8()
{
  result = qword_129538;
  if (!qword_129538)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_129538);
  }

  return result;
}

uint64_t sub_DEF50(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 56) = a1;
  v7 = sub_F109C();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v10 = sub_F10AC();
  *(v6 + 112) = v10;
  v11 = *(v10 - 8);
  *(v6 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_2C9E8, 0, 0);
}

uint64_t sub_DF07C()
{
  v1 = *(v0 + 112);

  sub_F0BBC();

  v2 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_DF114(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_F0C3C();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_82EDC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RCSGroupController.convergeParticipants(with:group:)(void *a1, uint64_t a2)
{
  v61 = a2;
  v59 = a1;
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = type metadata accessor for RCSParticipantChange();
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  v7 = __chkstk_darwin(v57);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v47 - v9;
  v10 = sub_F0DEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v55 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v54 = (&v47 - v21);
  __chkstk_darwin(v20);
  v60 = &v47 - v22;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
    return (*(v11 + 8))(v15, v10);
  }

  v23 = *(v3 + 104);
  v51 = v4;
  v23(v61, v4, v3);
  swift_unknownObjectRelease();
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v11 + 8))(v15, v10);
  }

  v24 = v60;
  (*(v16 + 32))(v60, v15, AssociatedTypeWitness);
  v25 = *(type metadata accessor for RCSConvergenceContext() + 32);
  v63[3] = AssociatedTypeWitness;
  v63[4] = AssociatedConformanceWitness;
  v26 = sub_37474(v63);
  v27 = v59;
  v28 = v59 + v25;
  v29 = *(v16 + 16);
  v29(v26, v28, AssociatedTypeWitness);
  sub_54C4C(v61, v62);
  v30 = v64;
  v31 = sub_DFE90(v63, v62);
  v64 = v30;
  if (v30)
  {
    return (*(v16 + 8))(v24, AssociatedTypeWitness);
  }

  v61 = v31;
  v34 = *(v31 + 16);
  v50 = v32;
  if (v34)
  {
    v29(v54, v60, AssociatedTypeWitness);
    v35 = v27[1];
    v49 = v29;
    if (v35)
    {
      v36 = v27[3];
      v48 = v27[2];
    }

    else
    {
      v48 = 0;
      v36 = 0;
    }

    v37 = v27[8];
    v38 = v27[9];

    v39 = v61;

    v40 = v52;
    RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(v54, 1, v39, v48, v36, v37, v38, 0, v52, AssociatedTypeWitness);
    if (swift_unknownObjectWeakLoadStrong())
    {
      (*(v3 + 112))(v40, v51, v3);
      swift_unknownObjectRelease();
    }

    (*(v56 + 8))(v40, v57);
    v27 = v59;
    v32 = v50;
    v29 = v49;
  }

  if (*(v32 + 16))
  {
    v29(v55, v60, AssociatedTypeWitness);
    if (v27[1])
    {
      v42 = v27[2];
      v41 = v27[3];
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v43 = v27[8];
    v44 = v27[9];

    v45 = v50;

    v46 = v53;
    RCSParticipantChange.init(chat:type:participants:fromHandle:toID:fromMe:)(v55, 0, v45, v42, v41, v43, v44, 0, v53, AssociatedTypeWitness);

    if (swift_unknownObjectWeakLoadStrong())
    {
      (*(v3 + 112))(v46, v51, v3);
      swift_unknownObjectRelease();
    }

    (*(v56 + 8))(v46, v57);
    return (*(v16 + 8))(v60, AssociatedTypeWitness);
  }

  else
  {
    (*(v16 + 8))(v60, AssociatedTypeWitness);
  }
}

uint64_t sub_DF914(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_F12FC();
  sub_F089C();
  v7 = sub_F132C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_F122C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_9DF94();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_DFA50(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_DFA50(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_F0EAC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_F12FC();

        sub_F089C();
        v15 = sub_F132C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_DFC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v5 = a1;
  sub_6EB68(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v6 = -1 << *(v5 + 32);
  v37 = v5 + 56;
  result = sub_F0E9C();
  v8 = result;
  v9 = 0;
  v32 = v5 + 64;
  v33 = v2;
  v34 = a2;
  v35 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v37 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    v36 = *(v5 + 36);
    v13 = (*(v5 + 48) + 16 * v8);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 16);

    if (v16)
    {
      result = sub_51FEC(v15, v14);
      if (v17)
      {
        v18 = (*(a2 + 56) + 16 * result);
        v15 = *v18;
        v19 = v18[1];

        v14 = v19;
      }
    }

    v20 = v36;
    v22 = v3[2];
    v21 = v3[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_6EB68((v21 > 1), v22 + 1, 1);
      v20 = v36;
    }

    v3[2] = v22 + 1;
    v23 = &v3[2 * v22];
    v23[4] = v15;
    v23[5] = v14;
    v5 = v35;
    v10 = 1 << *(v35 + 32);
    if (v8 >= v10)
    {
      goto LABEL_26;
    }

    v24 = *(v37 + 8 * v12);
    if ((v24 & (1 << v8)) == 0)
    {
      goto LABEL_27;
    }

    if (v20 != *(v35 + 36))
    {
      goto LABEL_28;
    }

    v25 = v24 & (-2 << (v8 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v11 = v33;
    }

    else
    {
      v26 = v3;
      v27 = v12 << 6;
      v28 = v12 + 1;
      v11 = v33;
      v29 = (v32 + 8 * v12);
      while (v28 < (v10 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_E03E4(v8, v20, 0);
          v10 = __clz(__rbit64(v30)) + v27;
          goto LABEL_22;
        }
      }

      result = sub_E03E4(v8, v20, 0);
LABEL_22:
      v3 = v26;
    }

    ++v9;
    v8 = v10;
    a2 = v34;
    if (v9 == v11)
    {
      return v3;
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
  return result;
}

uint64_t sub_DFE90(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_373E8(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v65 = a2;
  if (v5)
  {
    v6 = v5;
    v67 = *(v5 + 16);
    if (v67)
    {
      v7 = 0;
      v8 = (v5 + 40);
      v9 = &_swiftEmptyDictionarySingleton;
      v66 = v5;
      while (1)
      {
        if (v7 >= *(v6 + 16))
        {
          goto LABEL_50;
        }

        v12 = *(v8 - 1);
        v13 = *v8;
        swift_bridgeObjectRetain_n();
        v14._countAndFlagsBits = v12;
        v14._object = v13;
        RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v72, v14, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        if (v15)
        {

          sub_53D58(v65);
          sub_1EDC(a1);
          return v9;
        }

        v68 = v12;
        countAndFlagsBits = v72.id._countAndFlagsBits;
        object = v72.id._object;

        sub_3CAB8(&v72);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v9;
        v20 = sub_51FEC(countAndFlagsBits, object);
        v21 = v9[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_51;
        }

        v24 = v19;
        if (v9[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_BC80C();
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_BA3A8(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_51FEC(countAndFlagsBits, object);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_53;
          }

          v20 = v25;
          if (v24)
          {
LABEL_4:

            v9 = v70;
            v10 = (v70[7] + 16 * v20);
            v11 = v10[1];
            *v10 = v68;
            v10[1] = v13;

            goto LABEL_5;
          }
        }

        v9 = v70;
        v70[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v9[6] + 16 * v20);
        *v27 = countAndFlagsBits;
        v27[1] = object;
        v28 = (v9[7] + 16 * v20);
        *v28 = v68;
        v28[1] = v13;

        v29 = v9[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_52;
        }

        v9[2] = v31;
LABEL_5:
        ++v7;
        v8 += 2;
        v6 = v66;
        if (v67 == v7)
        {
          goto LABEL_21;
        }
      }
    }

    v9 = &_swiftEmptyDictionarySingleton;
LABEL_21:

    a2 = v65;
  }

  else
  {
    v9 = sub_E7CB4(_swiftEmptyArrayStorage);
  }

  v32 = *(a2 + 40);
  v33 = *(v32 + 16);
  v34 = _swiftEmptyArrayStorage;
  v69 = v9;
  if (v33)
  {
    v70 = _swiftEmptyArrayStorage;
    sub_6EB68(0, v33, 0);
    v34 = _swiftEmptyArrayStorage;
    v35 = (v32 + 56);
    do
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      v70 = v34;
      v39 = v34[2];
      v38 = v34[3];

      if (v39 >= v38 >> 1)
      {
        sub_6EB68((v38 > 1), v39 + 1, 1);
        v34 = v70;
      }

      v34[2] = v39 + 1;
      v40 = &v34[2 * v39];
      v40[4] = v37;
      v40[5] = v36;
      v35 += 8;
      --v33;
    }

    while (v33);
    a2 = v65;
  }

  v73 = sub_DF114(v41);

  v43 = sub_70080(v42);

  v71 = v43;
  v44 = v34[2];
  if (v44)
  {
    v45 = v34 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;

      sub_DF914(v47, v46);

      v45 += 2;
      --v44;
    }

    while (v44);
  }

  v48 = 1 << *(v9 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v9[8];
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  while (v50)
  {
    v53 = v52;
    v54 = v69;
LABEL_40:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = (*(v54 + 48) + ((v53 << 10) | (16 * v55)));
    v58 = *v56;
    v57 = v56[1];

    sub_DF914(v58, v57);
  }

  v54 = v69;
  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v51)
    {

      v59 = v73;

      v9 = sub_DFC14(v59, v69);

      swift_bridgeObjectRelease_n();
      v60 = *(v71 + 16);
      if (!v60)
      {
        goto LABEL_45;
      }

      v61 = sub_9D6B8(*(v71 + 16), 0);
      v62 = sub_BD61C(&v70, v61 + 4, v60, v71);
      sub_66138();
      if (v62 != v60)
      {
        __break(1u);
LABEL_45:
      }

      sub_53D58(a2);
      sub_1EDC(a1);
      return v9;
    }

    v50 = *(v69 + 64 + 8 * v53);
    ++v52;
    if (v50)
    {
      v52 = v53;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_F126C();
  __break(1u);
  return result;
}

uint64_t sub_E03E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_E03F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_B689C(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_F0E9C();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 56) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_B689C((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[4 * v12];
    v14[4] = 0xD000000000000012;
    v14[5] = 0x80000000000FFF10;
    v14[6] = v24;
    v14[7] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_E03E4(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_E03E4(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}