uint64_t sub_100773D58()
{
  v32 = v0;

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.libraryView);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000105AC(v15, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load response for viewType=%{public}s", v14, 0xCu);
    sub_10000959C(v30);
  }

  else
  {
    v19 = v0[12];
    v20 = v0[10];

    (*(v19 + 8))(v10, v20);
  }

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[15];
  v24 = v0[8];
  v25 = v0[6];
  *v21 = v0[25];
  swift_storeEnumTagMultiPayload();
  _s18ResponseControllerC7RequestV11InvalidatorCMa();

  swift_errorRetain();
  swift_allocObject();
  v26 = sub_100774080(v24);
  WitnessTable = swift_getWitnessTable();
  v25(v21, v26, WitnessTable);

  (*(v22 + 8))(v21, v23);

  v28 = v0[1];

  return v28();
}

void *sub_100774080(void *a1)
{
  v2 = v1;
  v39 = a1;
  v42 = *v1;
  v3 = *a1;
  v4 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v4 - 8);
  v41 = &v31 - v5;
  v6 = *(v3 + class metadata base offset for MusicAutoupdatingResponse);
  v7 = *(v6 + 32);
  v43 = *(v6 + 16);
  v44 = v7;
  type metadata accessor for MusicLibrarySectionedResponse();
  type metadata accessor for Optional();
  v8 = type metadata accessor for Published.Publisher();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Publishers.Drop();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100027010();
  v15 = swift_getWitnessTable();
  v35 = v15;
  v34 = sub_1000206BC();
  *&v43 = v11;
  *(&v43 + 1) = v14;
  *&v44 = v15;
  *(&v44 + 1) = v34;
  v38 = type metadata accessor for Publishers.ReceiveOn();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v31 - v16;
  v17 = *(v6 - 8);
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v2[2] = 0;
  v2[3] = 0;
  *(v2 + 32) = 0;
  *(v2 + *(v42 + 120)) = 0;
  dispatch thunk of MusicAutoupdatingResponse.request.getter();
  (*(v17 + 32))(v2 + *(*v2 + 112), v20, v6);
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  Publisher.dropFirst(_:)();
  (*(v36 + 8))(v10, v8);
  v21 = static OS_dispatch_queue.main.getter();
  *&v43 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v23 = v41;
  (*(*(v22 - 8) + 56))(v41, 1, 1, v22);
  v24 = v32;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v23, &qword_101182140);

  (*(v37 + 8))(v13, v11);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v27 = v42;
  v26[2] = *(v42 + 80);
  v26[3] = *(v27 + 88);
  v26[4] = v25;
  v28 = v38;
  swift_getWitnessTable();
  v29 = Publisher<>.sink(receiveValue:)();

  (*(v40 + 8))(v24, v28);
  *(v2 + *(*v2 + 120)) = v29;

  return v2;
}

uint64_t sub_10077460C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s18ResponseControllerC7RequestV11InvalidatorCMa();
    swift_getWitnessTable();
    RequestResponseInvalidatable.invalidate()();
  }

  return result;
}

uint64_t sub_1007746AC()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v9[2] = swift_getAssociatedConformanceWitness();
  v9[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for MusicLibrarySectionedRequest();
  v3 = __chkstk_darwin(v2);
  v9[0] = 0xD000000000000020;
  v9[1] = 0x8000000100E57090;
  (*(v4 + 16))(v9 - v5, &v0[*(v1 + 112)], v2, v3);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9[0];
}

uint64_t *sub_100774894()
{
  sub_100020438(v0[2]);
  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for MusicLibrarySectionedRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100774A00()
{
  sub_100774894();

  return swift_deallocClassInstance();
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_100030444(v1);
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100020438(v5);
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100774C48()
{
  sub_100020438(*(v0 + 16));
  sub_100020438(*(v0 + 32));

  return v0;
}

uint64_t sub_100774C98()
{
  sub_100774C48();

  return swift_deallocClassInstance();
}

uint64_t sub_100774CFC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for MusicLibrarySectionedRequest();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_100774E68(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100774FA4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_100775158(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100775194(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v2[2] = AssociatedTypeWitness;
  v2[3] = v6;
  v2[4] = AssociatedConformanceWitness;
  v2[5] = v8;
  v9 = *(type metadata accessor for MusicLibrarySectionedRequest() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(*(v4 - 8) + 80) + v12 + 8) & ~*(*(v4 - 8) + 80);
  v14 = v1[3];
  v21 = v1[2];
  v15 = (v1 + v11);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v1 + v12);
  v19 = swift_task_alloc();
  v3[6] = v19;
  *v19 = v3;
  v19[1] = sub_1007753B8;

  return sub_1007737B8(a1, v21, v14, v1 + v10, v16, v17, v18, v1 + v13);
}

uint64_t sub_1007753B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_100775500()
{
  Hasher.init(_seed:)();
  sub_10000954C(v0, v0[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100775580()
{
  sub_10000954C(v0, v0[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();
}

Swift::Int sub_1007755F4()
{
  Hasher.init(_seed:)();
  sub_10000954C(v0, v0[3]);
  dispatch thunk of MusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100775670(void *a1, void *a2)
{
  sub_10000954C(a1, a1[3]);
  v3 = dispatch thunk of MusicItem.id.getter();
  v5 = v4;
  sub_10000954C(a2, a2[3]);
  if (v3 == dispatch thunk of MusicItem.id.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10077572C(uint64_t a1)
{
  v55 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v45 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v54 = &v43[-v5];
  v60 = type metadata accessor for MusicLibrary.AddAction();
  v49 = *(v60 - 8);
  __chkstk_darwin(v60);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_10010FC20(&unk_101193E20);
  v48 = *(v59 - 8);
  __chkstk_darwin(v59);
  v9 = &v43[-v8];
  v10 = sub_10010FC20(&qword_1011A1C88);
  __chkstk_darwin(v10 - 8);
  v53 = &v43[-v11];
  v12 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for MusicAuthorization.Status();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v43[-v19];
  type metadata accessor for MusicLibrary();
  v57 = v1;
  v21 = *v1;
  static MusicLibrary.shared.getter();
  v58 = v21;
  v22 = static MusicLibrary.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v15 + 104))(v17, enum case for MusicAuthorization.Status.authorized(_:), v14);
  sub_100779DA0(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v61[0] == v61[9] && v61[1] == v61[10])
  {
    v23 = *(v15 + 8);
    v23(v17, v14);
    v23(v20, v14);
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = *(v15 + 8);
    v24(v17, v14);
    v24(v20, v14);

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v26 = v53;
  sub_100779C48(v57 + *(v25 + 20), v53);
  if ((*(v51 + 48))(v26, 1, v52) != 1)
  {
    v27 = v50;
    sub_10077A484(v26, v50, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    v28 = sub_100775FAC(a1);
    sub_100779CD8(v27, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    if (v28)
    {
      goto LABEL_9;
    }

    return 0;
  }

  sub_1000095E8(v26, &qword_1011A1C88);
LABEL_9:
  v29 = *(a1 + 16);
  if (!v29)
  {
    return 1;
  }

  v30 = a1 + 32;
  v31 = (v49 + 1);
  v32 = (v48 + 88);
  LODWORD(v57) = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  LODWORD(v53) = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v52 = (v48 + 96);
  v50 = (v45 + 32);
  v49 = (v45 + 16);
  v33 = (v45 + 88);
  LODWORD(v48) = enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:);
  v47 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
  v46 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
  v44 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
  v51 = v45 + 8;
  while (1)
  {
    sub_100779D38(v30, v61);
    sub_10000954C(v61, v61[3]);
    static MusicLibraryAction<>.add.getter();
    v34 = v60;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*v31)(v7, v34);
    v35 = v59;
    v36 = (*v32)(v9, v59);
    if (v36 != v57)
    {
      break;
    }

    (*v52)(v9, v35);
    v38 = v54;
    v37 = v55;
    (*v50)(v54, v9, v55);
    v39 = v56;
    (*v49)(v56, v38, v37);
    v40 = (*v33)(v39, v37);
    if (v40 == v48)
    {
      v42 = *v51;
      (*v51)(v38, v37);
      v42(v56, v37);
LABEL_22:
      sub_100779D70(v61);
      return 0;
    }

    if (v40 == v47)
    {
      (*v51)(v38, v37);
      goto LABEL_22;
    }

    if (v40 != v46 && v40 != v44)
    {
      goto LABEL_26;
    }

    (*v51)(v38, v37);
LABEL_12:
    sub_100779D70(v61);
    v30 += 72;
    if (!--v29)
    {
      return 1;
    }
  }

  if (v36 == v53)
  {
    goto LABEL_12;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_26:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_100775FAC(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.EditableComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-1] - v7;
  Playlist.editableComponents.getter();
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000095E8(v8, &unk_10118D240);
    return 0;
  }

  static Playlist.EditableComponents.tracklist.getter();
  sub_100779DA0(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v11 = a1 + 32;
  v12 = *(a1 + 16) + 1;
  do
  {
    v13 = --v12 == 0;
    if (!v12)
    {
      break;
    }

    sub_100779D38(v11, v22);
    sub_10000954C(v22, v22[3]);
    v14 = dispatch thunk of MusicItem.id.getter();
    v16 = v15;
    if (v14 == Playlist.id.getter() && v16 == v17)
    {

      sub_100779D70(v22);
      return v13;
    }

    v11 += 72;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_100779D70(v22);
  }

  while ((v19 & 1) == 0);
  return v13;
}

uint64_t sub_10077624C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v3[17] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v3[18] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0);
  v3[19] = v5;
  v6 = *(v5 - 8);
  v3[20] = v6;
  v3[21] = *(v6 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10077640C, 0, 0);
}

uint64_t sub_10077640C()
{
  v1 = v0[12];
  v0[25] = type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v3 = v0[12];
    v0[27] = 0;
    v0[28] = _swiftEmptyArrayStorage;
    sub_100779D38(v3 + 32, (v0 + 2));
    v4 = v0[5];
    sub_10000954C(v0 + 2, v4);
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_100776798;
    v6 = v0[18];

    return MusicPlaylistAddable.tracks.getter(v6, v4);
  }

  else
  {
    v8 = v0[24];
    v9 = v0[22];
    v25 = v0[21];
    v26 = v8;
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[17];
    v13 = v0[16];
    v23 = v13;
    v24 = v0[15];
    v14 = v0[13];
    v15 = v0[14];
    v27 = v0[11];
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_10077A41C(v14, v13, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v10 + 16))(v9, v8, v11);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = (v24 + *(v10 + 80) + v18) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_10077A484(v23, v20 + v18, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v10 + 32))(v20 + v19, v9, v11);
    *(v20 + ((v25 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = _swiftEmptyArrayStorage;
    sub_1001F4CB8(0, 0, v12, &unk_100EE18B8, v20);

    (*(v10 + 8))(v26, v11);
    v21 = type metadata accessor for Notice(0);
    (*(*(v21 - 8) + 56))(v27, 1, 1, v21);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_100776798()
{

  return _swift_task_switch(sub_100776894, 0, 0);
}

uint64_t sub_100776894()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v3, &unk_1011842D0);
  }

  else
  {
    v4 = v0[23];
    (*(v2 + 32))(v4, v3, v1);
    static MusicItemCollection.+= infix(_:_:)();
    (*(v2 + 8))(v4, v1);
  }

  v5 = v0[8];
  v6 = v0[28];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_100030444(v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_100498F80(0, v6[2] + 1, 1, v0[28]);
    }

    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      v6 = sub_100498F80((v10 > 1), v11 + 1, 1, v6);
    }

    sub_100020438(v5);
    v6[2] = v11 + 1;
    v12 = &v6[2 * v11];
    v12[4] = sub_1004303F0;
    v12[5] = v8;
  }

  v13 = v0[26];
  v14 = v0[27] + 1;
  sub_100779D70((v0 + 2));
  if (v14 == v13)
  {
    v15 = v0[24];
    v16 = v0[22];
    v37 = v0[21];
    v38 = v15;
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[16];
    v35 = v20;
    v36 = v0[15];
    v21 = v0[13];
    v22 = v0[14];
    v39 = v0[11];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    sub_10077A41C(v21, v20, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v18 + 16))(v16, v15, v17);
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = (v36 + *(v18 + 80) + v25) & ~*(v18 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_10077A484(v35, v27 + v25, type metadata accessor for DragDropToPlaylist.Destination);
    (*(v18 + 32))(v27 + v26, v16, v17);
    *(v27 + ((v37 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    sub_1001F4CB8(0, 0, v19, &unk_100EE18B8, v27);

    (*(v18 + 8))(v38, v17);
    v28 = type metadata accessor for Notice(0);
    (*(*(v28 - 8) + 56))(v39, 1, 1, v28);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[27];
    v0[27] = v31 + 1;
    v0[28] = v6;
    sub_100779D38(v0[12] + 72 * v31 + 104, (v0 + 2));
    v32 = v0[5];
    sub_10000954C(v0 + 2, v32);
    v33 = swift_task_alloc();
    v0[29] = v33;
    *v33 = v0;
    v33[1] = sub_100776798;
    v34 = v0[18];

    return MusicPlaylistAddable.tracks.getter(v34, v32);
  }
}

uint64_t sub_100776D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100776E10, v8, v7);
}

uint64_t sub_100776E10()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100776E88(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100776E88(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v57 = type metadata accessor for AppInterfaceContext.Activity(0);
  v58 = *(v57 - 8);
  v3 = *(v58 + 64);
  __chkstk_darwin(v57);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = (&v56 - v5);
  __chkstk_darwin(v6);
  v60 = &v56 - v7;
  v8 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = v9;
  v71 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_1011841D0);
  v68 = *(v10 - 8);
  v62 = *(v68 + 64);
  __chkstk_darwin(v10);
  v69 = &v56 - v11;
  v12 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v12 - 8);
  v70 = &v56 - v13;
  v14 = sub_10010FC20(&qword_1011A1C88);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  v17 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v63 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  sub_10077A680();
  dispatch thunk of Collection.startIndex.getter();
  v66 = v10;
  v67 = a1;
  dispatch thunk of Collection.endIndex.getter();
  if (v74[0] != v74[12])
  {
    v27 = v72;
    sub_100779C48(v72 + *(v8 + 20), v16);
    v28 = v18;
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1000095E8(v16, &qword_1011A1C88);
      sub_10012B7A8(v27 + *(v8 + 24), v74);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10012BA6C(v74);
      if (!Strong)
      {
        return;
      }

      v30 = sub_10003169C();

      if (!v30)
      {
        return;
      }

      v31 = type metadata accessor for Playlist.Folder();
      v32 = v60;
      (*(*(v31 - 8) + 56))(v60, 1, 1, v31);
      v33 = type metadata accessor for PlaylistCreation.Context(0);
      v34 = v33[6];
      v35 = v68;
      v36 = v66;
      (*(v68 + 16))(v32 + v34, v67, v66);
      (*(v35 + 56))(v32 + v34, 0, 1, v36);
      v37 = (v32 + v33[5]);
      *v37 = 0;
      v37[1] = 0;
      v38 = (v32 + v33[7]);
      *v38 = 0;
      v38[1] = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v61;
      sub_10077A41C(v32, v61, type metadata accessor for AppInterfaceContext.Activity);
      v40 = v59;
      sub_10077A41C(v39, v59, type metadata accessor for AppInterfaceContext.Activity);
      v41 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      sub_10077A484(v40, v42 + v41, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v39, sub_100115C18, v42);

      sub_100779CD8(v39, type metadata accessor for AppInterfaceContext.Activity);
      v43 = v32;
      v44 = type metadata accessor for AppInterfaceContext.Activity;
    }

    else
    {
      v61 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination;
      v45 = v22;
      sub_10077A484(v16, v22, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
      v47 = v63;
      sub_10077A41C(v22, v63, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      v48 = v68;
      v49 = v66;
      (*(v68 + 16))(v69, v67, v66);
      sub_10077A41C(v27, v71, type metadata accessor for DragDropToPlaylist.Destination);
      type metadata accessor for MainActor();

      v50 = static MainActor.shared.getter();
      v51 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v52 = (v19 + *(v48 + 80) + v51) & ~*(v48 + 80);
      v53 = (v62 + *(v64 + 80) + v52) & ~*(v64 + 80);
      v54 = (v65 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      *(v55 + 24) = &protocol witness table for MainActor;
      sub_10077A484(v47, v55 + v51, v61);
      (*(v48 + 32))(v55 + v52, v69, v49);
      sub_10077A484(v71, v55 + v53, type metadata accessor for DragDropToPlaylist.Destination);
      *(v55 + v54) = v73;
      sub_1001F4CB8(0, 0, v70, &unk_100EE18D0, v55);

      v44 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination;
      v43 = v45;
    }

    sub_100779CD8(v43, v44);
    return;
  }

  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_1012186C8);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "No tracks to add to playlist.", v26, 2u);
  }
}

uint64_t sub_10077774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_100777844, v10, v9);
}

uint64_t sub_100777844()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0) + 24));
  v3 = *v2;
  v0[12] = *v2;
  if (v3)
  {
    v0[13] = v2[1];

    v15 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_100777A40;
    v5 = v0[3];

    return v15(v5);
  }

  else
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[4];
    v11 = *(type metadata accessor for DragDropToPlaylist.Destination(0) + 24);
    (*(v8 + 104))(v7, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v9);
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_100777C30;
    v13 = v0[8];
    v14 = v0[3];

    return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v14, v13, 0, 1, v10 + v11, 1, 0);
  }
}

uint64_t sub_100777A40()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100777B60, v3, v2);
}

uint64_t sub_100777B60()
{
  v1 = v0[12];

  sub_100020438(v1);
  v2 = v0[5];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_1003C1864(sub_100430418, v4, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100777C30()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100777DB4, v6, v5);
}

uint64_t sub_100777DB4()
{

  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  sub_1003C1864(sub_100430418, v3, v1);

  v4 = v0[1];

  return v4();
}

void sub_100777E74()
{
  v1 = type metadata accessor for IndexPath();
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v18 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011A1C88);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v20[0] = *v0;
  type metadata accessor for MusicLibrary();
  sub_100779DA0(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v13 = type metadata accessor for DragDropToPlaylist.Destination(0);
  sub_100779C48(v0 + *(v13 + 20), v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10077A484(v12, v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    Hasher._combine(_:)(1u);
    Playlist.id.getter();
    String.hash(into:)();

    sub_10077A41C(&v9[*(v6 + 20)], v5, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v14 = v19;
    if ((*(v19 + 48))(v5, 1, v1) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v15 = v18;
      (*(v14 + 32))(v18, v5, v1);
      Hasher._combine(_:)(1uLL);
      sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
      dispatch thunk of Hashable.hash(into:)();
      (*(v14 + 8))(v15, v1);
    }

    sub_100779CD8(v9, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
  }

  sub_10012B7A8(v0 + *(v13 + 24), v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v20);
  if (Strong)
  {
    Hasher._combine(_:)(1u);
    v17 = Strong;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1007782AC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10077A41C(v1, v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_10077849C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10077A41C(v0, v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int sub_100778668()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10077A41C(v1, v8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100778860()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Playlist.id.getter();
  String.hash(into:)();

  v8 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  sub_10077A41C(v0 + *(v8 + 20), v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

id sub_100778A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10077A41C(v2 + *(a2 + 20), v6, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v7 = type metadata accessor for IndexPath();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = objc_allocWithZone(UICollectionViewDropProposal);
  if (v8 == 1)
  {
    return [v9 initWithDropOperation:2 intent:2];
  }

  v11 = [v9 initWithDropOperation:2 intent:1];
  sub_100779CD8(v6, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  return v11;
}

uint64_t sub_100778BC8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_100778C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.id.getter();
  String.hash(into:)();

  sub_10077A41C(v2 + *(a2 + 20), v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int sub_100778E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Playlist.id.getter();
  String.hash(into:)();

  sub_10077A41C(v2 + *(a2 + 20), v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1uLL);
    sub_100779DA0(&qword_10118EB38, &type metadata accessor for IndexPath);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100779094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = Playlist.id.getter();
  v8 = v7;
  if (v6 == Playlist.id.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);

  return sub_1007792AC(a1 + v11, a2 + v11);
}

uint64_t sub_100779178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_10077624C(a1, a2);
}

Swift::Int sub_100779220()
{
  Hasher.init(_seed:)();
  sub_100777E74();
  return Hasher._finalize()();
}

Swift::Int sub_100779264()
{
  Hasher.init(_seed:)();
  sub_100777E74();
  return Hasher._finalize()();
}

uint64_t sub_1007792AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011A1F58);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_10077A41C(a1, &v20 - v12, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  sub_10077A41C(a2, &v13[v15], type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10077A41C(v13, v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = static IndexPath.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_100779CD8(v13, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v13, &qword_1011A1F58);
    v17 = 0;
    return v17 & 1;
  }

  sub_100779CD8(v13, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100779594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_10010FC20(&qword_1011A1C88);
  __chkstk_darwin(v8 - 8);
  v10 = &v31[-v9 - 8];
  v11 = sub_10010FC20(&qword_1011A1F50);
  __chkstk_darwin(v11);
  v13 = &v31[-v12 - 8];
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = type metadata accessor for DragDropToPlaylist.Destination(0);
  v14 = *(v30 + 20);
  v15 = *(v11 + 48);
  sub_100779C48(a1 + v14, v13);
  sub_100779C48(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_100779C48(v13, v10);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
      goto LABEL_7;
    }

    sub_10077A484(&v13[v15], v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    v19 = Playlist.id.getter();
    v21 = v20;
    if (v19 == Playlist.id.getter() && v21 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        sub_100779CD8(v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
        sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
        v17 = &qword_1011A1C88;
        goto LABEL_8;
      }
    }

    v25 = sub_1007792AC(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
    sub_100779CD8(v7, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    sub_100779CD8(v10, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    sub_1000095E8(v13, &qword_1011A1C88);
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_7:
    v17 = &qword_1011A1F50;
LABEL_8:
    sub_1000095E8(v13, v17);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000095E8(v13, &qword_1011A1C88);
LABEL_17:
  v26 = v30;
  sub_10012B7A8(a1 + *(v30 + 24), v32);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v32);
  sub_10012B7A8(a2 + *(v26 + 24), v31);
  v28 = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v31);
  if (Strong)
  {
    if (v28)
    {
      sub_10016F3C8();
      v18 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (!v28)
    {
      v18 = 1;
      return v18 & 1;
    }

    v18 = 0;
    Strong = v28;
  }

  return v18 & 1;
}

id sub_1007799D8()
{
  v1 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011A1C88);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for DragDropToPlaylist.Destination(0);
  sub_100779C48(v0 + *(v7 + 20), v6);
  v8 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000095E8(v6, &qword_1011A1C88);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:2 intent:2];
  }

  else
  {
    sub_10077A41C(&v6[*(v8 + 20)], v3, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v10 = type metadata accessor for IndexPath();
    v11 = (*(*(v10 - 8) + 48))(v3, 1, v10);
    v12 = objc_allocWithZone(UICollectionViewDropProposal);
    if (v11 == 1)
    {
      v13 = [v12 initWithDropOperation:2 intent:2];
    }

    else
    {
      v13 = [v12 initWithDropOperation:2 intent:1];
      sub_100779CD8(v3, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    }

    sub_100779CD8(v6, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
    return v13;
  }
}

uint64_t sub_100779C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A1C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100779CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100779DA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100779E10()
{
  type metadata accessor for MusicLibrary();
  if (v0 <= 0x3F)
  {
    sub_100779E9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100779E9C()
{
  if (!qword_1011A1CF8)
  {
    type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A1CF8);
    }
  }
}

uint64_t sub_100779F1C()
{
  v0 = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_100779F9C()
{
  type metadata accessor for Playlist();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind(319);
    if (v1 <= 0x3F)
    {
      sub_10002EF7C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10077A038(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10077A050(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10077A074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10077A0BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10077A168(uint64_t a1)
{
  result = sub_100779DA0(&qword_1011A1EA8, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10077A250(uint64_t a1)
{
  result = sub_100779DA0(&qword_1011A1EF8, type metadata accessor for DragDropToPlaylist.Destination);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10077A2F4()
{
  result = qword_1011A1F00;
  if (!qword_1011A1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F00);
  }

  return result;
}

unint64_t sub_10077A348(uint64_t a1)
{
  result = sub_10077A370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10077A370()
{
  result = qword_1011A1F40;
  if (!qword_1011A1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F40);
  }

  return result;
}

unint64_t sub_10077A3C8()
{
  result = qword_1011A1F48;
  if (!qword_1011A1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1F48);
  }

  return result;
}

uint64_t sub_10077A41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10077A484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10077A4EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100776D74(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

unint64_t sub_10077A680()
{
  result = qword_1011913B0;
  if (!qword_1011913B0)
  {
    sub_1001109D0(&unk_1011841D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011913B0);
  }

  return result;
}

uint64_t sub_10077A6E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for DragDropToPlaylist.Destination(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002F3F4;

  return sub_10077774C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12, v15);
}

uint64_t sub_10077A8D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10077A91C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NSString sub_10077A980()
{
  result = String._bridgeToObjectiveC()();
  qword_101219538 = result;
  return result;
}

id sub_10077AA14(void *a1, id a2, char a3)
{
  if (a3)
  {
    v4 = [a1 identifiers];
    v5 = [a2 identifiers];
    v6 = [v4 intersectsSet:v5];
    goto LABEL_6;
  }

  result = [a2 results];
  if (result)
  {
    v9 = result;
    v10 = [result firstSection];

    if (!v10)
    {
      return 0;
    }

    v4 = [a1 identifiers];
    v5 = [v10 identifiers];
    v6 = [v4 intersectsSet:v5];

LABEL_6:
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_10077AB38()
{
  result = sub_10010DC6C(_swiftEmptyArrayStorage);
  off_1011A1F60 = result;
  return result;
}

id sub_10077AD48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10077AE00(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v240 = (&v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v254 = &v240 - v7;
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v243 = &v240 - v9;
  v245 = type metadata accessor for Artwork();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v242 = &v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v11 - 8);
  v13 = &v240 - v12;
  v251 = type metadata accessor for SocialProfile();
  v249 = *(v251 - 1);
  __chkstk_darwin(v251);
  v250 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v241 = (&v240 - v20);
  __chkstk_darwin(v21);
  v248 = &v240 - v22;
  __chkstk_darwin(v23);
  v25 = &v240 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v240 - v28;
  v256 = v1;
  if ([v1 isSharedListeningSession])
  {
    v30 = [a1 enqueueingParticipant];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
      v33 = [v31 displayName];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v100 = &v32[OBJC_IVAR___MusicAttributionMetadata_displayName];
      *v100 = v35;
      v100[1] = v37;

      v101 = [v31 modelObject];
      v102 = [v101 artworkCatalog];

      v103 = *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
      *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v102;

      return v32;
    }
  }

  v252 = a1;
  v246 = v3;
  v247 = v4;
  v253 = v16;
  v255 = v15;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v38 = (*qword_101218AC8 + 528);
  v39 = *v38;
  v40 = (*v38)();
  if (v40)
  {
    v41 = v40;
    if ((*((swift_isaMask & *v40) + 0x268))())
    {
      v42 = *((*((swift_isaMask & *v41) + 0x180))() + 16);

      if (v42)
      {
        v43 = [v252 enqueueingParticipant];
        if (v43)
        {
          v44 = v43;
          v45 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v46 = v253;
          v47 = *(v253 + 16);
          v247 = v45;
          v48 = v255;
          v254 = (v253 + 16);
          v246 = v47;
          (v47)(v29);
          v49 = v44;
          v50 = v252;
          v51 = Logger.logObject.getter();
          LODWORD(v44) = static os_log_type_t.default.getter();

          LODWORD(v252) = v44;
          v52 = os_log_type_enabled(v51, v44);
          v256 = v49;
          if (v52)
          {
            v241 = v51;
            v53 = v49;
            v54 = swift_slowAlloc();
            v240 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v257 = v55;
            *v54 = 136446466;
            v56 = [v53 displayName];
            if (v56)
            {
              v57 = v56;
              v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v60 = v59;
            }

            else
            {
              v58 = 0;
              v60 = 0;
            }

            aBlock = v58;
            v259 = v60;
            sub_10010FC20(&qword_1011815E0);
            v105 = String.init<A>(describing:)();
            v107 = sub_1000105AC(v105, v106, &v257);

            *(v54 + 4) = v107;
            *(v54 + 12) = 2114;
            *(v54 + 14) = v50;
            v108 = v240;
            *v240 = v50;
            v109 = v50;
            v110 = v241;
            _os_log_impl(&_mh_execute_header, v241, v252, "[AttributionMetadata] building metadata for %{public}s, item: %{public}@", v54, 0x16u);
            sub_1000095E8(v108, &unk_101183D70);

            sub_10000959C(v55);

            v104 = *(v253 + 8);
            v48 = v255;
            v104(v29, v255);
            v49 = v256;
          }

          else
          {

            v104 = *(v46 + 8);
            v104(v29, v48);
          }

          v32 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
          v111 = [v49 displayName];
          v112 = v249;
          if (v111)
          {
            v113 = v111;
            v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v116 = v115;

            v49 = v256;
          }

          else
          {
            v114 = 0;
            v116 = 0;
          }

          v117 = &v32[OBJC_IVAR___MusicAttributionMetadata_displayName];
          *v117 = v114;
          v117[1] = v116;

          (*((swift_isaMask & *v41) + 0x370))(v49);
          v118 = v251;
          if ((v112[6])(v13, 1, v251) == 1)
          {
            sub_1000095E8(v13, &qword_101186E00);
            v119 = v248;
LABEL_71:
            v170 = [v49 displayName];
            if (v170)
            {
              v171 = v170;
              v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v174 = v173;
            }

            else
            {
              v172 = 0;
              v174 = 0;
            }

            sub_100009F78(0, &qword_1011A1560);
            v175 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v172, v174, 0, 1);

            if (!v175)
            {
              v246(v119, v247, v48);
              v177 = Logger.logObject.getter();
              v178 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v177, v178))
              {
                v179 = swift_slowAlloc();
                *v179 = 0;
                _os_log_impl(&_mh_execute_header, v177, v178, "[AttributionMetadata] failed to get monogram artwork", v179, 2u);
              }

              else
              {
              }

              v104(v119, v48);
              return v32;
            }

            goto LABEL_76;
          }

          (v112[4])(v250, v13, v118);
          v246(v25, v247, v48);
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            *v122 = 0;
            _os_log_impl(&_mh_execute_header, v120, v121, "[AttributionMetadata] found social profile", v122, 2u);
          }

          v104(v25, v48);
          if (qword_10117FCD0 != -1)
          {
            swift_once();
          }

          v123 = SocialProfile.id.getter();
          v125 = v124;
          swift_beginAccess();
          v126 = off_1011A1F60;
          if (*(off_1011A1F60 + 2))
          {
            v127 = sub_100019C10(v123, v125);
            v129 = v128;

            if (v129)
            {
              v130 = *(v126[7] + 8 * v127);
              swift_endAccess();
              v131 = objc_opt_self();
              v132 = v130;
              result = [v131 sharedStoreArtworkDataSource];
              v119 = v248;
              if (result)
              {
                v133 = result;
                v134 = objc_allocWithZone(MPArtworkCatalog);
                v135 = v132;
                v136 = [v134 initWithToken:v135 dataSource:v133];

                (v112)[1](v250, v251);
                v137 = *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
                *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v136;

LABEL_70:
                v49 = v256;
                goto LABEL_71;
              }

              __break(1u);
              goto LABEL_105;
            }
          }

          else
          {
          }

          swift_endAccess();
          v138 = v243;
          v139 = v250;
          SocialProfile.artwork.getter();
          v140 = v244;
          v141 = v245;
          if ((*(v244 + 48))(v138, 1, v245) == 1)
          {
            (v112)[1](v139, v251);
            sub_1000095E8(v138, &unk_101188920);
            goto LABEL_69;
          }

          (*(v140 + 32))(v242, v138, v141);
          type metadata accessor for JSONEncoder();
          swift_allocObject();
          JSONEncoder.init()();
          sub_10077D230(&qword_1011A1FB8, &type metadata accessor for Artwork);
          v142 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v144 = v143;
          v145 = v142;

          v146 = objc_opt_self();
          isa = Data._bridgeToObjectiveC()().super.isa;
          v257 = 0;
          v148 = [v146 JSONObjectWithData:isa options:0 error:&v257];

          v149 = v257;
          v150 = v144;
          if (v148)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_10010FC20(&unk_1011BE660);
            v151 = swift_dynamicCast();
            v152 = v242;
            if (v151)
            {
              v153 = objc_allocWithZone(ICStoreArtworkInfo);
              v154 = Dictionary._bridgeToObjectiveC()().super.isa;
              v155 = [v153 initWithArtworkResponseDictionary:v154];

              if (v155)
              {
                v156 = objc_opt_self();
                v252 = v155;
                v157 = [v156 tokenWithImageArtworkInfo:v155];
                v158 = objc_opt_self();
                v159 = v157;
                result = [v158 sharedStoreArtworkDataSource];
                if (!result)
                {
LABEL_106:
                  __break(1u);
                  goto LABEL_107;
                }

                v160 = result;

                v161 = objc_allocWithZone(MPArtworkCatalog);
                v162 = v159;
                v243 = [v161 initWithToken:v162 dataSource:v160];

                v163 = SocialProfile.id.getter();
                v165 = v164;
                swift_beginAccess();
                v166 = v162;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v257 = off_1011A1F60;
                off_1011A1F60 = 0x8000000000000000;
                sub_1006C7498(v166, v163, v165, isUniquelyReferenced_nonNull_native);

                off_1011A1F60 = v257;
                swift_endAccess();
                sub_10002C064(v145, v150);

                (*(v244 + 8))(v242, v245);
                (v249)[1](v250, v251);
                v168 = *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
                *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v243;
              }

              else
              {
                sub_10002C064(v145, v150);

                (*(v244 + 8))(v152, v245);
                (v249)[1](v250, v251);
              }

              v48 = v255;
LABEL_69:
              v119 = v248;
              goto LABEL_70;
            }

            sub_10002C064(v145, v150);
            (*(v244 + 8))(v152, v245);
          }

          else
          {
            v169 = v149;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_10002C064(v145, v144);

            (*(v244 + 8))(v242, v245);
          }

          (v249)[1](v250, v251);
          goto LABEL_69;
        }
      }
    }
  }

  v61 = v256;
  v62 = [v256 tracklist];
  v63 = [v62 playingItemIndexPath];

  if (!v63)
  {
    goto LABEL_86;
  }

  v65 = v254;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = [v61 tracklist];
  v67 = [v66 items];

  v68 = [v67 sectionAtIndex:IndexPath.section.getter()];
  v69 = [v68 metadataObject];

  if (!v69)
  {
    goto LABEL_85;
  }

  v70 = [v69 flattenedGenericObject];
  if (!v70)
  {
    (*(v247 + 8))(v65, v246);
LABEL_37:

    goto LABEL_86;
  }

  v71 = v70;
  v72 = [v70 anyObject];

  if (!v72)
  {
    (*(v247 + 8))(v254, v246);
    goto LABEL_37;
  }

  objc_opt_self();
  v73 = swift_dynamicCastObjCClass();
  if (!v73)
  {

    goto LABEL_41;
  }

  v74 = v73;
  v75 = v72;
  if ((sub_1004843F8() & 1) != 0 || (v76 = [v252 metadataObject]) == 0 || (v77 = v76, v78 = objc_msgSend(v76, "anyObject"), v77, !v78))
  {

LABEL_41:
    v64 = (*(v247 + 8))(v254, v246);
    goto LABEL_86;
  }

  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  v65 = v254;
  if (!v79)
  {

LABEL_85:
    v64 = (*(v247 + 8))(v65, v246);
LABEL_86:
    v185 = (v39)(v64);
    if (v185)
    {
      v186 = v185;
      v187 = Logger.sharePlayTogether.unsafeMutableAddressor();
      v188 = v253;
      (*(v253 + 16))(v18, v187, v255);
      v189 = v252;
      v190 = v186;
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *v193 = 67240706;
        *(v193 + 4) = (*((swift_isaMask & v190->isa) + 0x268))() & 1;
        *(v193 + 8) = 2112;
        v195 = [v189 enqueueingParticipant];
        *(v193 + 10) = v195;
        *v194 = v195;
        *(v193 + 18) = 2048;
        v188 = v253;
        v196 = *((*((swift_isaMask & v190->isa) + 0x180))() + 16);

        *(v193 + 20) = v196;

        _os_log_impl(&_mh_execute_header, v191, v192, "[AttributionMetadata] we have a session, but didn't build the attribution metadata. isActive: %{BOOL,public}d participant: %@ participant count: %ld", v193, 0x1Cu);
        sub_1000095E8(v194, &unk_101183D70);
      }

      else
      {

        v191 = v190;
      }

      (*(v188 + 8))(v18, v255);
    }

    return 0;
  }

  v251 = v75;
  v80 = byte_1011A1F70;
  v250 = v78;
  if (byte_1011A1F70 == 255)
  {
LABEL_93:
    v197 = v74;
    v198 = Logger.collaboration.unsafeMutableAddressor();
    v199 = v253;
    v200 = v241;
    v201 = v255;
    (*(v253 + 16))(v241, v198, v255);
    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&_mh_execute_header, v202, v203, "Will perform Attribution metadata", v204, 2u);
    }

    (*(v199 + 8))(v200, v201);
    v205 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v206 = String._bridgeToObjectiveC()();
    [v205 setLabel:v206];

    v207 = [objc_opt_self() deviceMediaLibrary];
    [v205 setMediaLibrary:v207];

    sub_100009F78(0, qword_101186D10);
    v208 = static MPModelPlaylistEntry.defaultMusicKind.getter();
    v209 = objc_opt_self();
    v210 = [v209 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v208 options:0];
    [v205 setSectionKind:v210];

    [v205 setItemKind:v208];
    sub_10010FC20(&qword_101183990);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_100EBC6C0;
    v212 = v197;
    *(v211 + 32) = v197;
    sub_100009F78(0, &unk_101186F00);
    v213 = Array._bridgeToObjectiveC()().super.isa;

    [v205 setScopedContainers:v213];

    sub_10010FC20(&qword_101186F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v215;
    sub_10010FC20(&unk_101181640);
    v216 = swift_allocObject();
    *(v216 + 16) = xmmword_100EBDC20;
    *(v216 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v216 + 40) = v217;
    *(v216 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v216 + 56) = v218;
    v219 = Array._bridgeToObjectiveC()().super.isa;

    v220 = [objc_opt_self() propertySetWithProperties:v219];

    *(inited + 48) = v220;
    sub_10000BFA0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101186F18);
    v221 = objc_allocWithZone(MPPropertySet);
    v222 = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &qword_101186F20);
    v223 = Dictionary._bridgeToObjectiveC()().super.isa;

    v224 = [v221 initWithProperties:v222 relationships:v223];

    [v205 setItemProperties:v224];
    v225 = swift_allocObject();
    v226 = v256;
    *(v225 + 16) = v212;
    *(v225 + 24) = v226;
    v262 = sub_10077D220;
    v263 = v225;
    aBlock = _NSConcreteStackBlock;
    v259 = 1107296256;
    v260 = sub_10000B378;
    v261 = &unk_1010BE890;
    v227 = _Block_copy(&aBlock);
    v228 = v251;
    v229 = v226;

    [v205 performWithResponseHandler:v227];

    _Block_release(v227);
    (*(v247 + 8))(v254, v246);
    return 0;
  }

  v81 = qword_1011A1F68;
  if (byte_1011A1F70)
  {
LABEL_83:
    v180 = v81;
    v181 = sub_10077AA14(v74, v81, v80 & 1);
    v182 = v81;
    v183 = v181;
    sub_10004ADFC(v182, v80);
    if (v183)
    {

      v184 = v251;
      goto LABEL_85;
    }

    goto LABEL_93;
  }

  v248 = v79;
  v82 = qword_1011A1F68;
  v249 = v81;
  if ((sub_10077AA14(v74, v81, 0) & 1) == 0)
  {
    goto LABEL_81;
  }

  v245 = v82;
  result = [v82 results];
  if (!result)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v84 = result;
  v248 = [v248 identifiers];
  v85 = [v84 indexPathForItemWithIdentifiersIntersectingSet:v248];

  v86 = v245;
  if (!v85)
  {
LABEL_81:
    sub_10004ADFC(v249, v80);
    v80 = byte_1011A1F70;
    v78 = v250;
    if (byte_1011A1F70 == 255)
    {
      goto LABEL_93;
    }

    v81 = qword_1011A1F68;
    goto LABEL_83;
  }

  v87 = v240;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v86 results];
  if (result)
  {
    v88 = result;
    v89 = IndexPath._bridgeToObjectiveC()().super.isa;
    v90 = [v88 itemAtIndexPath:v89];

    v91 = [v90 socialContributor];
    v92 = v247;
    v93 = v246;
    if (v91)
    {
      v32 = [objc_allocWithZone(type metadata accessor for AttributionMetadata()) init];
      v94 = v91;
      v95 = [v94 name];
      if (v95)
      {
        v96 = v95;
        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;
      }

      else
      {
        v97 = 0;
        v99 = 0;
      }

      v231 = &v32[OBJC_IVAR___MusicAttributionMetadata_displayName];
      *v231 = v97;
      v231[1] = v99;

      v232 = [v94 artworkCatalog];
      v233 = *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog];
      *&v32[OBJC_IVAR___MusicAttributionMetadata_artworkCatalog] = v232;

      v234 = [v94 name];
      if (v234)
      {
        v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v237 = v236;
      }

      else
      {
        v235 = 0;
        v237 = 0;
      }

      v238 = v250;
      sub_100009F78(0, &qword_1011A1560);
      v175 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v235, v237, 0, 1);

      sub_10004ADFC(v249, v80);

      v239 = *(v92 + 8);
      v239(v240, v93);
      v239(v254, v93);
LABEL_76:
      v176 = *&v32[OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog];
      *&v32[OBJC_IVAR___MusicAttributionMetadata_placeholderArtworkCatalog] = v175;

      return v32;
    }

    sub_10004ADFC(v249, v80);
    v230 = *(v92 + 8);
    v230(v87, v93);
    v230(v65, v93);
    return 0;
  }

LABEL_107:
  __break(1u);
  return result;
}

id sub_10077CD94(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v29 = a4;
  v30 = v11;
  v15 = v8;
  v16 = a1;
  result = [v16 results];
  if (result)
  {
    v18 = result;
    v19 = [result firstSection];

    if (v19)
    {

      v20 = qword_1011A1F68;
      qword_1011A1F68 = a1;
      v21 = byte_1011A1F70;
      byte_1011A1F70 = 0;
      sub_10004ADFC(v20, v21);
      v8 = v15;
      a4 = v29;
      v11 = v30;
LABEL_7:
      sub_100009F78(0, &qword_101182960);
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      aBlock[4] = sub_10077D228;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BE8E0;
      v27 = _Block_copy(aBlock);
      v28 = a4;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10077D230(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970);
      sub_10002489C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      (*(v8 + 8))(v10, v7);
      return (*(v12 + 8))(v14, v11);
    }

    v8 = v15;
    a4 = v29;
    v11 = v30;
LABEL_6:
    v22 = qword_1011A1F68;
    qword_1011A1F68 = a3;
    v23 = byte_1011A1F70;
    byte_1011A1F70 = 1;
    sub_10004ADFC(v22, v23);
    v24 = a3;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10077D110(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_10117FCC8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_101219538 object:a1 userInfo:0];
}

uint64_t sub_10077D230(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10077D278()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_timeObserver;
  type metadata accessor for PlaybackTimeObserver();
  swift_allocObject();
  *&v1[v4] = PlaybackTimeObserver.init(name:)(0xD000000000000016, 0x8000000100E572E0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled:0];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView;
  v8 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView];
  v9 = objc_allocWithZone(UIColor);
  v14[4] = sub_10077D480;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10003640C;
  v14[3] = &unk_1010BE908;
  v10 = _Block_copy(v14);
  v11 = v8;
  v12 = [v9 initWithDynamicProvider:v10];
  _Block_release(v10);

  [v11 setBackgroundColor:v12];

  [v5 addSubview:*&v5[v7]];
  return v5;
}

id sub_10077D480(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.24;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
    v3 = 0.25;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

id sub_10077D5E8()
{
  v1 = v0;
  v12[0].receiver = v0;
  v12[0].super_class = swift_getObjectType();
  [(objc_super *)v12 layoutSubviews];
  PlaybackTimeObserver.effectiveElapsedTime.getter();
  v2 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView];
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 bounds];
  CGRectGetWidth(v14);
  sub_100058728(v4, v6, v8, v10, 0.0, 0.0);
  memset(&v12[1], 0, 32);
  v13 = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  return [v2 setFrame:?];
}

void sub_10077D808(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isHidden") != v3)
  {
    v5 = [v2 superview];
    if (v5)
    {

      v8.receiver = v2;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, "alpha");
      if (v6 <= 0.0)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v7.receiver = v2;
        v7.super_class = ObjectType;
        LOBYTE(v5) = objc_msgSendSuper2(&v7, "isHidden") ^ 1;
      }
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v5);
  }
}

void sub_10077D99C(double a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "alpha");
  if (v4 != a1)
  {
    v5 = [v1 superview];
    if (v5)
    {

      v8.receiver = v1;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, "alpha");
      if (v6 <= 0.0)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v7.receiver = v1;
        v7.super_class = ObjectType;
        LOBYTE(v5) = objc_msgSendSuper2(&v7, "isHidden") ^ 1;
      }
    }

    PlaybackTimeObserver.automaticallyUpdates.setter(v5);
  }
}

void sub_10077DDA8()
{
  sub_1000308A0(319, &qword_10118FC40);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &unk_1011A20A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player.NowPlayingObserver(319);
      if (v2 <= 0x3F)
      {
        sub_100238CF4();
        if (v3 <= 0x3F)
        {
          sub_100117C38();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10077DF04()
{
  sub_1000308A0(319, &qword_10118FC40);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &unk_1011A20A0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player.NowPlayingObserver(319);
      if (v2 <= 0x3F)
      {
        sub_100238CF4();
        if (v3 <= 0x3F)
        {
          sub_100117C38();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10077DFF4()
{
  result = qword_1011A2180;
  if (!qword_1011A2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2180);
  }

  return result;
}

uint64_t sub_10077E064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v34 = a2;
  v4 = sub_10010FC20(&qword_1011A2188);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_10010FC20(&qword_1011A2190);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v33 = sub_10010FC20(&qword_1011A2198);
  __chkstk_darwin(v33);
  v11 = &v32 - v10;
  v13 = *v2;
  v12 = *(v2 + 8);
  sub_10012BF2C(*v2, v12);
  v14 = 0;
  if (v15 != -1)
  {
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    sub_10012BF2C(v13, v12);
    if (v16 != 255 && (v16 != 1 || (*(v2 + 17) & 1) == 0))
    {
      if (qword_10117FCD8 != -1)
      {
        swift_once();
      }

      v14 = qword_1011A1FF8;
    }
  }

  v17 = sub_10010FC20(&qword_1011A21A0);
  (*(*(v17 - 8) + 16))(v6, v32, v17);
  v18 = &v6[*(v4 + 36)];
  *v18 = v14;
  v18[8] = 0;
  v19 = static Animation.easeIn.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = &v9[*(v7 + 36)];
  sub_10010FC20(&qword_1011A21A8);
  static Published.subscript.getter();

  *v20 = v19;
  sub_10003D17C(v6, v9, &qword_1011A2188);
  v21 = static Animation.easeIn.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v35;
  sub_1000089F8(v9, v11, &qword_1011A2190);
  v23 = &v11[*(v33 + 36)];
  *v23 = v21;
  v23[8] = v22;
  sub_1000095E8(v9, &qword_1011A2190);
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = sub_10010FC20(&qword_1011A21B0);
  v28 = v34;
  v29 = v34 + *(v27 + 36);
  sub_10077E468(v3, v29);
  v30 = (v29 + *(sub_10010FC20(&qword_1011A21B8) + 36));
  *v30 = v24;
  v30[1] = v26;
  return sub_10003D17C(v11, v28, &qword_1011A2198);
}

uint64_t sub_10077E468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011A21C0);
  v135 = *(v4 - 8);
  v136 = v4;
  __chkstk_darwin(v4);
  v6 = &v98 - v5;
  v113 = type metadata accessor for CircularProgressView.LineStyle();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v115 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10010FC20(&qword_1011A21C8);
  __chkstk_darwin(v114);
  v129 = &v98 - v8;
  v120 = sub_10010FC20(&qword_1011A21D0);
  __chkstk_darwin(v120);
  v122 = &v98 - v9;
  v130 = sub_10010FC20(&qword_1011A21D8);
  __chkstk_darwin(v130);
  v123 = &v98 - v10;
  v11 = sub_10010FC20(&qword_1011A21E0);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v132 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v131 = &v98 - v14;
  v121 = type metadata accessor for DynamicTypeSize();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v110 = &v98 - v17;
  __chkstk_darwin(v18);
  v109 = &v98 - v19;
  __chkstk_darwin(v20);
  v127 = &v98 - v21;
  __chkstk_darwin(v22);
  v112 = &v98 - v23;
  __chkstk_darwin(v24);
  v108 = &v98 - v25;
  v105 = sub_10010FC20(&qword_1011A21E8);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v98 - v26;
  v102 = sub_10010FC20(&qword_1011A21F0);
  __chkstk_darwin(v102);
  v106 = &v98 - v27;
  v126 = sub_10010FC20(&qword_1011A21F8);
  __chkstk_darwin(v126);
  v107 = &v98 - v28;
  v117 = sub_10010FC20(&qword_1011A2200);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v128 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v134 = &v98 - v31;
  v32 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v32 - 8);
  v34 = &v98 - v33;
  v35 = type metadata accessor for PreviewPlaybackController.Context(0);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v133 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v38 = *(a1 + 8);
  sub_10012BF2C(*a1, v38);
  if (v40 == -1)
  {
    goto LABEL_12;
  }

  v101 = v6;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  sub_10012BF2C(v39, v38);
  if (v41 == 255)
  {
    goto LABEL_12;
  }

  if (v41 == 1)
  {
    v42 = 1;
    if ((*(a1 + 17) & 1) != 0 || !v38)
    {
      return (*(v135 + 56))(a2, v42, 1, v136);
    }

    goto LABEL_10;
  }

  if (!v38)
  {
LABEL_12:
    v42 = 1;
    return (*(v135 + 56))(a2, v42, 1, v136);
  }

LABEL_10:
  v100 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1000095E8(v34, &unk_10119E440);
    v42 = 1;
    a2 = v100;
  }

  else
  {
    sub_100780BE4(v34, v133);
    if (qword_10117FCE8 != -1)
    {
      swift_once();
    }

    *&v137 = qword_1011A2008;
    sub_100561980();

    v44 = Color.init<A>(_:)();
    v45 = *(a1 + 16);
    v99 = v44;
    if (v45 == 2)
    {
      Player.NowPlayingObserver.isSharedListeningSession.getter();
    }

    sub_10012BF2C(v39, v38);
    v46 = Image.init(systemName:)();
    v47 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    if (qword_10117FD18 != -1)
    {
      swift_once();
    }

    v49 = qword_101219540;
    v50 = swift_getKeyPath();
    *&v137 = v46;
    *(&v137 + 1) = KeyPath;
    *&v138 = v47;
    *(&v138 + 1) = v50;
    *&v139 = v49;
    v98 = v46;
    v51 = qword_10117FD20;

    if (v51 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_101196750);
    sub_1005963C0();
    v52 = v103;
    View.fontWeight(_:)();

    if (qword_10117FCF0 != -1)
    {
      swift_once();
    }

    v53 = qword_1011A2010;
    v54 = v106;
    (*(v104 + 32))(v106, v52, v105);
    *(v54 + *(v102 + 36)) = v53;
    v104 = v53;

    v55 = static Animation.easeIn.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = v107;
    v57 = &v107[*(v126 + 36)];
    sub_10010FC20(&qword_1011A21A8);
    static Published.subscript.getter();

    *v57 = v55;
    sub_10003D17C(v54, v56, &qword_1011A21F0);
    v58 = type metadata accessor for PreviewOverlay.ArtworkVariant(0);
    v59 = v112;
    v105 = a1 + *(v58 + 36);
    sub_10056CABC(v112);
    v60 = enum case for DynamicTypeSize.accessibility3(_:);
    v61 = v119;
    v63 = v119 + 104;
    v62 = *(v119 + 13);
    v64 = v127;
    v65 = v121;
    (v62)(v127, enum case for DynamicTypeSize.accessibility3(_:), v121);
    v66 = static DynamicTypeSize.< infix(_:_:)();
    v67 = *(v61 + 1);
    v67(v64, v65);
    v67(v59, v65);
    LODWORD(v102) = v60;
    LODWORD(v103) = enum case for DynamicTypeSize.large(_:);
    if (v66)
    {
      v68 = enum case for DynamicTypeSize.large(_:);
    }

    else
    {
      v68 = v60;
    }

    v69 = v108;
    v119 = v62;
    v106 = v63;
    (v62)(v108, v68, v65);
    sub_100780C48();
    View.dynamicTypeSize(_:)();
    v67(v69, v65);
    sub_1000095E8(v56, &qword_1011A21F8);
    if (qword_10117FCE0 != -1)
    {
      swift_once();
    }

    (*(v111 + 104))(v115, enum case for CircularProgressView.LineStyle.round(_:), v113);

    LOBYTE(v137) = 0;
    v70 = v129;
    CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
    *(v70 + *(v114 + 36)) = static Color.white.getter();
    v71 = v109;
    sub_10056CABC(v109);
    v72 = v102;
    v73 = v119;
    (v119)(v59, v102, v65);
    LODWORD(v126) = static DynamicTypeSize.< infix(_:_:)();
    v67(v59, v65);
    v67(v71, v65);
    v74 = v110;
    sub_10056CABC(v110);
    v73(v59, v72, v65);
    v75 = v73;
    static DynamicTypeSize.< infix(_:_:)();
    v67(v59, v65);
    v67(v74, v65);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v76 = v122;
    sub_10003D17C(v129, v122, &qword_1011A21C8);
    v77 = (v76 + *(v120 + 36));
    v78 = v138;
    *v77 = v137;
    v77[1] = v78;
    v77[2] = v139;
    v79 = v123;
    sub_10003D17C(v76, v123, &qword_1011A21D0);
    *(v79 + *(v130 + 36)) = v104;

    sub_10056CABC(v59);
    v80 = v127;
    v81 = v72;
    v82 = v72;
    v83 = v67;
    v75(v127, v81, v65);
    LOBYTE(v76) = static DynamicTypeSize.< infix(_:_:)();
    v67(v80, v65);
    v67(v59, v65);
    if (v76)
    {
      v84 = v103;
    }

    else
    {
      v84 = v82;
    }

    v85 = v118;
    v75(v118, v84, v65);
    sub_100780DF4();
    v86 = v131;
    View.dynamicTypeSize(_:)();
    v83(v85, v65);
    sub_1000095E8(v79, &qword_1011A21D8);
    v87 = v116;
    v130 = *(v116 + 16);
    v88 = v128;
    v89 = v117;
    (v130)(v128, v134, v117);
    v91 = v124;
    v90 = v125;
    v92 = *(v124 + 16);
    v92(v132, v86, v125);
    v93 = v101;
    *v101 = v99;
    v94 = sub_10010FC20(&qword_1011A2240);
    (v130)(v93 + *(v94 + 48), v88, v89);
    v95 = v132;
    v92((v93 + *(v94 + 64)), v132, v90);
    v96 = *(v91 + 8);

    v96(v131, v90);
    v97 = *(v87 + 8);
    v97(v134, v89);
    sub_100132630(v133);
    v96(v95, v90);
    v97(v128, v89);

    a2 = v100;
    sub_10003D17C(v93, v100, &qword_1011A21C0);
    v42 = 0;
  }

  return (*(v135 + 56))(a2, v42, 1, v136);
}

uint64_t sub_10077F65C()
{
  sub_1005954F4();
  UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(235, 235, 245, 0.6);
  result = Color.init(_:)();
  qword_1011A2000 = result;
  return result;
}

uint64_t sub_10077F6AC()
{
  result = static Color.clear.getter();
  qword_1011A2008 = result;
  return result;
}

uint64_t sub_10077F6CC()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn.getter();
  v0 = AnyTransition.animation(_:)();

  qword_1011A2010 = v0;
  return result;
}

uint64_t sub_10077F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v3 = sub_10010FC20(&qword_1011A2248);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v37 = sub_10010FC20(&qword_1011A2250);
  __chkstk_darwin(v37);
  v7 = &v32 - v6;
  v38 = sub_10010FC20(&qword_1011A2258);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v10 = sub_10010FC20(&unk_10119E440);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for PreviewPlaybackController.Context(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 8);
  if (!v18 || (v19 = v17, v34 = *v15, v35 = v15, sub_10012BF2C(v34, v18), v20 == -1))
  {
LABEL_5:
    if (qword_10117FD08 != -1)
    {
      swift_once();
    }

    v21 = qword_1011A2028;
    v22 = sub_10010FC20(&qword_1011A2260);
    (*(*(v22 - 8) + 16))(v5, v36, v22);
    *&v5[*(v3 + 36)] = v21;
    sub_1000089F8(v5, v7, &qword_1011A2248);
    swift_storeEnumTagMultiPayload();
    sub_100781068();
    sub_100781290();

    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v5, &qword_1011A2248);
  }

  v32 = v9;
  v33 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_10119E440);
    v3 = v33;
    goto LABEL_5;
  }

  sub_100780BE4(v12, v19);
  v24 = sub_10010FC20(&qword_1011A2260);
  v25 = v32;
  (*(*(v24 - 8) + 16))(v32, v36, v24);
  *(v25 + *(sub_10010FC20(&qword_1011A2288) + 36)) = 0;
  if (qword_10117FD08 != -1)
  {
    swift_once();
  }

  v26 = qword_1011A2028;
  *(v25 + *(sub_10010FC20(&qword_1011A2278) + 36)) = v26;

  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = (v25 + *(v38 + 36));
  sub_10077FC70(v34, v18, v35, v19, v30);
  v31 = &v30[*(sub_10010FC20(&qword_1011A22A0) + 36)];
  *v31 = v27;
  v31[1] = v29;
  sub_1000A9950(v25, v7);
  swift_storeEnumTagMultiPayload();
  sub_100781068();
  sub_100781290();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v25, &qword_1011A2258);
  return sub_100132630(v19);
}

uint64_t sub_10077FC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v92 = a4;
  v106 = a5;
  v95 = type metadata accessor for CircularProgressView.LineStyle();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = type metadata accessor for CircularProgressView();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v111 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_10010FC20(&qword_1011A22B0);
  __chkstk_darwin(v112);
  v102 = &v82[-v10];
  v11 = sub_10010FC20(&qword_1011A22B8);
  v104 = *(v11 - 8);
  v105 = v11;
  __chkstk_darwin(v11);
  v103 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v113 = &v82[-v14];
  v15 = type metadata accessor for DynamicTypeSize();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v99 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v91 = &v82[-v19];
  __chkstk_darwin(v20);
  v90 = &v82[-v21];
  __chkstk_darwin(v22);
  v24 = &v82[-v23];
  __chkstk_darwin(v25);
  v27 = &v82[-v26];
  __chkstk_darwin(v28);
  v89 = &v82[-v29];
  v107 = sub_10010FC20(&qword_1011A21E8);
  v86 = *(v107 - 8);
  __chkstk_darwin(v107);
  v84 = &v82[-v30];
  v109 = sub_10010FC20(&qword_1011A22C0);
  __chkstk_darwin(v109);
  v87 = &v82[-v31];
  v98 = sub_10010FC20(&qword_1011A22C8);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v82[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v34 = *(a3 + 16);
  v110 = v24;
  v114 = &v82[-v35];
  v108 = a3;
  v85 = v27;
  if (v34 == 2)
  {
    Player.NowPlayingObserver.isSharedListeningSession.getter();
  }

  v88 = v15;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  sub_10012BF2C(a1, a2);
  v36 = Image.init(systemName:)();
  v37 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  if (qword_10117FD18 != -1)
  {
    swift_once();
  }

  v39 = qword_101219540;
  v40 = swift_getKeyPath();
  *&v115 = v36;
  *(&v115 + 1) = KeyPath;
  *&v116 = v37;
  *(&v116 + 1) = v40;
  *&v117 = v39;
  v41 = qword_10117FD20;

  if (v41 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_101196750);
  sub_1005963C0();
  v42 = v84;
  View.fontWeight(_:)();

  v43 = static Animation.easeIn.getter();
  v44 = v108;
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v87;
  v46 = &v87[*(v109 + 36)];
  sub_10010FC20(&qword_1011A21A8);
  static Published.subscript.getter();

  *v46 = v43;
  (*(v86 + 4))(v45, v42, v107);
  v47 = type metadata accessor for PreviewOverlay.TrackNumberVariant(0);
  v48 = v85;
  v107 = v44 + *(v47 + 32);
  sub_10056CABC(v85);
  v49 = enum case for DynamicTypeSize.accessibility3(_:);
  v50 = *(v16 + 104);
  v51 = v110;
  v52 = v88;
  (v50)(v110, enum case for DynamicTypeSize.accessibility3(_:), v88);
  v53 = static DynamicTypeSize.< infix(_:_:)();
  v54 = *(v16 + 8);
  v54(v51, v52);
  v54(v48, v52);
  LODWORD(v84) = v49;
  v83 = enum case for DynamicTypeSize.large(_:);
  if (v53)
  {
    v55 = enum case for DynamicTypeSize.large(_:);
  }

  else
  {
    v55 = v49;
  }

  v56 = v89;
  v86 = v50;
  v108 = v16 + 104;
  (v50)(v89, v55, v52);
  sub_100781374();
  View.dynamicTypeSize(_:)();
  v54(v56, v52);
  sub_1000095E8(v45, &qword_1011A22C0);
  if (qword_10117FD10 != -1)
  {
    swift_once();
  }

  (*(v93 + 104))(v94, enum case for CircularProgressView.LineStyle.round(_:), v95);

  LOBYTE(v115) = 0;
  CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
  v57 = v90;
  sub_10056CABC(v90);
  v58 = v84;
  v59 = v86;
  v86(v48, v84, v52);
  LODWORD(v109) = static DynamicTypeSize.< infix(_:_:)();
  v54(v48, v52);
  v54(v57, v52);
  v60 = v91;
  sub_10056CABC(v91);
  v59(v48, v58, v52);
  v61 = v59;
  static DynamicTypeSize.< infix(_:_:)();
  v54(v48, v52);
  v54(v60, v52);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v62 = v102;
  (*(v100 + 32))(v102, v111, v101);
  v63 = (v62 + *(v112 + 36));
  v64 = v116;
  *v63 = v115;
  v63[1] = v64;
  v63[2] = v117;
  sub_10056CABC(v48);
  v65 = v110;
  v59(v110, v58, v52);
  LOBYTE(v59) = static DynamicTypeSize.< infix(_:_:)();
  v54(v65, v52);
  v54(v48, v52);
  if (v59)
  {
    v66 = v83;
  }

  else
  {
    v66 = v58;
  }

  v67 = v99;
  v61(v99, v66, v52);
  sub_100781468();
  v68 = v113;
  View.dynamicTypeSize(_:)();
  v54(v67, v52);
  sub_1000095E8(v62, &qword_1011A22B0);
  v69 = v97;
  v70 = *(v97 + 16);
  v71 = v96;
  v72 = v98;
  v70(v96, v114, v98);
  v74 = v103;
  v73 = v104;
  v112 = *(v104 + 16);
  v75 = v68;
  v76 = v105;
  (v112)(v103, v75, v105);
  v77 = v106;
  v70(v106, v71, v72);
  v78 = sub_10010FC20(&qword_1011A22E0);
  (v112)(&v77[*(v78 + 48)], v74, v76);
  v79 = *(v73 + 8);
  v79(v113, v76);
  v80 = *(v69 + 8);
  v80(v114, v72);
  v79(v74, v76);
  return (v80)(v71, v72);
}

uint64_t sub_100780994()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  v0 = AnyTransition.animation(_:)();

  qword_1011A2018 = v0;
  return result;
}

uint64_t sub_100780A14()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  v0 = AnyTransition.animation(_:)();

  qword_1011A2020 = v0;
  return result;
}

uint64_t sub_100780A78()
{
  if (qword_10117FCF8 != -1)
  {
    swift_once();
  }

  v0 = qword_10117FD00;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_1011A2028 = v1;
  return result;
}

uint64_t sub_100780B44()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = Color.init(_:)();
  qword_1011A2030 = result;
  return result;
}

uint64_t sub_100780BA4()
{
  result = static Font.caption.getter();
  qword_101219540 = result;
  return result;
}

uint64_t sub_100780BC4()
{
  result = static Font.Weight.bold.getter();
  qword_101219548 = v1;
  return result;
}

uint64_t sub_100780BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlaybackController.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100780C48()
{
  result = qword_1011A2208;
  if (!qword_1011A2208)
  {
    sub_1001109D0(&qword_1011A21F8);
    sub_100780D00();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2208);
  }

  return result;
}

unint64_t sub_100780D00()
{
  result = qword_1011A2210;
  if (!qword_1011A2210)
  {
    sub_1001109D0(&qword_1011A21F0);
    sub_1001109D0(&qword_101196750);
    sub_1005963C0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2210);
  }

  return result;
}

unint64_t sub_100780DF4()
{
  result = qword_1011A2220;
  if (!qword_1011A2220)
  {
    sub_1001109D0(&qword_1011A21D8);
    sub_100780EAC();
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2220);
  }

  return result;
}

unint64_t sub_100780EAC()
{
  result = qword_1011A2228;
  if (!qword_1011A2228)
  {
    sub_1001109D0(&qword_1011A21D0);
    sub_100780F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2228);
  }

  return result;
}

unint64_t sub_100780F38()
{
  result = qword_1011A2230;
  if (!qword_1011A2230)
  {
    sub_1001109D0(&qword_1011A21C8);
    sub_100781020(&qword_1011A2238, &type metadata accessor for CircularProgressView);
    sub_100020674(&unk_101199EA0, &qword_1011879C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2230);
  }

  return result;
}

uint64_t sub_100781020(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100781068()
{
  result = qword_1011A2268;
  if (!qword_1011A2268)
  {
    sub_1001109D0(&qword_1011A2258);
    sub_100781120();
    sub_100020674(&qword_1011A2298, &qword_1011A22A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2268);
  }

  return result;
}

unint64_t sub_100781120()
{
  result = qword_1011A2270;
  if (!qword_1011A2270)
  {
    sub_1001109D0(&qword_1011A2278);
    sub_1007811D8();
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2270);
  }

  return result;
}

unint64_t sub_1007811D8()
{
  result = qword_1011A2280;
  if (!qword_1011A2280)
  {
    sub_1001109D0(&qword_1011A2288);
    sub_100020674(&qword_1011A2290, &qword_1011A2260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2280);
  }

  return result;
}

unint64_t sub_100781290()
{
  result = qword_1011A22A8;
  if (!qword_1011A22A8)
  {
    sub_1001109D0(&qword_1011A2248);
    sub_100020674(&qword_1011A2290, &qword_1011A2260);
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22A8);
  }

  return result;
}

unint64_t sub_100781374()
{
  result = qword_1011A22D0;
  if (!qword_1011A22D0)
  {
    sub_1001109D0(&qword_1011A22C0);
    sub_1001109D0(&qword_101196750);
    sub_1005963C0();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22D0);
  }

  return result;
}

unint64_t sub_100781468()
{
  result = qword_1011A22D8;
  if (!qword_1011A22D8)
  {
    sub_1001109D0(&qword_1011A22B0);
    sub_100781020(&qword_1011A2238, &type metadata accessor for CircularProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22D8);
  }

  return result;
}

unint64_t sub_100781524()
{
  result = qword_1011A22E8;
  if (!qword_1011A22E8)
  {
    sub_1001109D0(&qword_1011A21B0);
    sub_1007815DC();
    sub_100020674(&qword_1011A2310, &qword_1011A21B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22E8);
  }

  return result;
}

unint64_t sub_1007815DC()
{
  result = qword_1011A22F0;
  if (!qword_1011A22F0)
  {
    sub_1001109D0(&qword_1011A2198);
    sub_100781694();
    sub_100020674(&qword_1011879E0, &qword_1011879E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22F0);
  }

  return result;
}

unint64_t sub_100781694()
{
  result = qword_1011A22F8;
  if (!qword_1011A22F8)
  {
    sub_1001109D0(&qword_1011A2190);
    sub_10078174C();
    sub_100020674(&qword_1011A2218, &qword_1011A21A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A22F8);
  }

  return result;
}

unint64_t sub_10078174C()
{
  result = qword_1011A2300;
  if (!qword_1011A2300)
  {
    sub_1001109D0(&qword_1011A2188);
    sub_100020674(&qword_1011A2308, &qword_1011A21A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2300);
  }

  return result;
}

unint64_t sub_100781804()
{
  result = qword_1011A2318;
  if (!qword_1011A2318)
  {
    sub_1001109D0(&qword_1011A2320);
    sub_100781068();
    sub_100781290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2318);
  }

  return result;
}

void sub_100781890()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText + 8);
  if (v18)
  {
    v43 = v15;
    v44 = v14;
    v46 = v12;
    v19 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText);
    v20 = objc_opt_self();
    v48 = v7;
    v49 = v6;
    v21 = v20;

    v22 = [v21 defaultParagraphStyle];
    [v22 mutableCopy];
    v47 = v9;

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100009F78(0, &qword_101194D60);
    swift_dynamicCast();
    v23 = v50;
    v45 = v2;
    v24 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont);
    [v24 _scaledValueForValue:6.0];
    [v23 setParagraphSpacing:?];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v25 _isNaturallyRTL];

    if (v26)
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }

    [v23 setAlignment:v27];
    AttributeContainer.init()();
    v51 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor);
    v28 = v51;
    sub_1001D29B8();
    v29 = v28;
    AttributeContainer.subscript.setter();
    v51 = v24;
    sub_10016D0B4();
    v30 = v24;
    AttributeContainer.subscript.setter();
    v51 = v23;
    sub_100784C5C();
    v31 = v23;
    AttributeContainer.subscript.setter();
    v51 = v19;
    v52 = v18;
    v32 = v46;
    sub_10010FC20(&qword_10119FB28);
    swift_allocObject();

    MarkupRenderer.init(_:)();
    dispatch thunk of MarkupRenderer.attributedString.getter();

    v33 = v45;
    (*(v3 + 104))(v5, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v45);
    AttributedString.mergeAttributes(_:mergePolicy:)();
    (*(v3 + 8))(v5, v33);
    v34 = sub_100783138();
    [v34 setContentOffset:{0.0, 0.0}];

    v35 = sub_100783210();
    sub_100009F78(0, &unk_101189D70);
    v36 = v48;
    v37 = v49;
    (*(v48 + 16))(v47, v32, v49);
    v38 = NSAttributedString.init(_:)();
    [v35 setAttributedText:v38];

    [*(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setHidden:0];
    LOBYTE(v51) = 6;
    v39 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v39) & 1) != 0 && (v40 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController)) != 0)
    {
      v41 = [v40 view];
      if (!v41)
      {
        __break(1u);
        return;
      }

      v42 = v41;

      [v42 setHidden:1];

      v31 = v42;
    }

    else
    {
    }

    (*(v36 + 8))(v32, v37);
    (*(v43 + 8))(v17, v44);
  }
}

uint64_t sub_100781E38(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  swift_beginAccess();
  sub_100784BEC(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
  if (v7)
  {
    sub_1007848EC(v1 + v6, v5);
    v8 = *((swift_isaMask & *v7) + 0x3A8);
    v9 = v7;
    v8(v5);
  }

  return sub_1000095E8(a1, &qword_101189A18);
}

void sub_100781F6C()
{
  v1 = sub_100783210();
  v2 = [v1 attributedText];

  if (v2)
  {
    v6 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v2];
    v3 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100784020();

    sub_100364270(v4);

    type metadata accessor for Key(0);
    sub_10065AAEC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 setAttributes:isa range:{0, objc_msgSend(v2, "length")}];

    [*(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setAttributedText:v6];
    sub_100783BB0();
  }
}

void sub_1007820F8(char a1)
{
  v2 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton;
  v3 = *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton);
  *(v1 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1007832A4();
    [v5 setHidden:(*(v4 + v2) & 1) == 0];

    sub_100783BB0();
    LOBYTE(v15) = 6;
    v6 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
    {
      v7 = *(v4 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
      if (v7)
      {
        v8 = *(v4 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton);
        UIView.Shadow.init(color:opacity:radius:offset:)(v8, &v12, 20.0, 0.0, 30.0, 0.0);
        v15 = v12;
        v16 = v13;
        v17 = v14;
        v9 = *((swift_isaMask & *v7) + 0x258);
        v10 = v7;
        v11 = v8;
        v9(&v15);
      }
    }
  }
}

void sub_10078223C()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for StaticLyricsContentViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");
  __dst[0] = 6;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    type metadata accessor for SyncedLyricsViewController(0);
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = SyncedLyricsViewController.Specs.static.unsafeMutableAddressor();
    memcpy(__dst, v4, 0x2B0uLL);
    v5 = *((swift_isaMask & *v3) + 0x1E0);
    sub_1002AD8C8(__dst, v67);
    v5(__dst);
    v6 = v3;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 setClipsToBounds:1];

      v9 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
      *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = v3;
      v10 = v6;

      [v1 addChildViewController:v10];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 view];

        if (v13)
        {
          [v12 addSubview:v13];

          v14 = sub_100783210();
          v15 = [objc_opt_self() clearColor];
          [v14 setBackgroundColor:v15];

          v16 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
          [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] setShowsHorizontalScrollIndicator:0];
          [*&v1[v16] setEditable:0];
          [*&v1[v16] setSelectable:0];
          v17 = [*&v1[v16] textContainer];
          [v17 setLineFragmentPadding:0.0];

          [*&v1[v16] setTranslatesAutoresizingMaskIntoConstraints:0];
          v18 = [v1 view];
          if (v18)
          {
            v19 = v18;
            [v18 addSubview:*&v1[v16]];

            return;
          }

          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = sub_100783138();
  [v20 setClipsToBounds:1];

  v21 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] setMultipleTouchEnabled:0];
  [*&v1[v21] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v1 view];
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = v22;
  [v22 addSubview:*&v1[v21]];

  v24 = sub_100783210();
  v25 = [objc_opt_self() clearColor];
  [v24 setBackgroundColor:v25];

  v26 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
  [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] setShowsHorizontalScrollIndicator:0];
  [*&v1[v26] setEditable:0];
  [*&v1[v26] setSelectable:0];
  v27 = [*&v1[v26] textContainer];
  [v27 setLineFragmentPadding:0.0];

  [*&v1[v26] setScrollEnabled:0];
  v28 = *&v1[v21];
  v29 = sub_100783284();
  [v28 addSubview:v29];

  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE90;
  v31 = [*&v1[v21] topAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v30 + 32) = v35;
  v36 = [*&v1[v21] bottomAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v30 + 40) = v40;
  v41 = [*&v1[v21] leadingAnchor];
  v42 = [v1 view];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v30 + 48) = v45;
  v46 = [*&v1[v21] trailingAnchor];
  v47 = [v1 view];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v30 + 56) = v50;
  v51 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView;
  v52 = [*&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] topAnchor];
  v53 = [*&v1[v21] topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v30 + 64) = v54;
  v55 = [*&v1[v51] bottomAnchor];
  v56 = [*&v1[v21] bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v30 + 72) = v57;
  v58 = [*&v1[v51] leadingAnchor];
  v59 = [*&v1[v21] leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v30 + 80) = v60;
  v61 = [*&v1[v51] trailingAnchor];
  v62 = [*&v1[v21] trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v30 + 88) = v63;
  v64 = [*&v1[v51] widthAnchor];
  v65 = [*&v1[v21] widthAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v30 + 96) = v66;
  Array<A>.activate()(v30);

  sub_100783BB0();
}

void sub_100782B08()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for StaticLyricsContentViewController();
  objc_msgSendSuper2(&v27, "viewDidLayoutSubviews");
  sub_100783BB0();
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
    if (v3)
    {
      v4 = [v3 view];
      if (!v4)
      {
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      v5 = v4;
      v6 = [v1 view];
      if (!v6)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 setFrame:{v9, v11, v13, v15}];
    }

    v16 = sub_100783210();
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v16 setFrame:{v20, v22, v24, v26}];
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_100782D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_101189A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v9 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-v10];
  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics) = a1;
    swift_retain_n();

    v30[15] = 6;
    v12 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v12))
    {
      sub_1007848EC(a2, v11);
      sub_100781E38(v11);
      v13 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController;
      v14 = *(v2 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController);
      if (v14)
      {
        v15 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        v16 = *((swift_isaMask & *v14) + 0x4C8);
        v17 = v14;
        v16(a1, a2, v8);

        sub_1000095E8(v8, &unk_101189A00);
      }

      else
      {
      }

      v27 = sub_100783210();
      [v27 setHidden:1];

      v28 = *(v3 + v13);
      if (!v28)
      {
        goto LABEL_11;
      }

      v29 = [v28 view];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v24 = v29;
      [v29 setHidden:0];
    }

    else
    {

      (*(*a1 + 384))(v18);
      v19 = sub_100784020();
      v20 = [objc_allocWithZone(NSMutableAttributedString) init];
      sub_100364270(v19);

      v21 = objc_allocWithZone(NSAttributedString);
      v22 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10065AAEC();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = [v21 initWithString:v22 attributes:isa];

      [v20 appendAttributedString:v24];
      v25 = sub_100783138();
      [v25 setContentOffset:{0.0, 0.0}];

      v26 = sub_100783210();
      [v26 setAttributedText:v20];

      [*(v3 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView) setHidden:0];
      sub_100783BB0();
    }

LABEL_11:
  }
}

id sub_100783138()
{
  v1 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView;
  v2 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView];
LABEL_5:
    v16 = v2;
    return v3;
  }

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [objc_allocWithZone(UIScrollView) initWithFrame:{v7, v9, v11, v13}];
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100783210()
{
  v1 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView);
  }

  else
  {
    v4 = [objc_allocWithZone(UITextView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007832C4(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_100783328()
{
  v0 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_opt_self() buttonWithType:0];
  static UIButton.Configuration.tinted()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  v10 = [objc_opt_self() clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v11 = [v9 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v12 setFont:v13];
  }

  (*(v6 + 16))(v2, v8, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  UIButton.configuration.setter();
  [v9 setHidden:1];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_100009F78(0, &qword_101183A18);
  ControlEventHandling<>.on(_:handler:)(64, sub_100784ACC, v14, v15);

  (*(v6 + 8))(v8, v5);
  return v9;
}

void sub_1007836B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100783704();
  }
}

void sub_100783704()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Lyrics.Translation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier + 8];
  if (v15)
  {
    v32 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
    v16 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
    swift_beginAccess();
    sub_1007848EC(&v1[v16], v14);
    if ((*(v9 + 48))(v14, 1, v8))
    {

      sub_1000095E8(v14, &qword_101189A18);
      v17 = 0;
      v18 = 0;
    }

    else
    {
      sub_100784A0C(v14, v11);

      sub_1000095E8(v14, &qword_101189A18);
      v19 = &v11[*(v8 + 20)];
      v17 = *v19;
      v18 = *(v19 + 1);

      sub_100784A70(v11);
    }

    v20 = v4;
    v39 = v17;
    v40 = v18;
    v41 = 0u;
    v42 = 0u;
    v21 = Lyrics.ReportConcernData.dictionaryRepresentation()();

    v22 = sub_100363D38(v21);

    memset(v36, 0, sizeof(v36));
    v37 = 0;
    v38 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v1, v36, v33);
    v23 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = swift_allocObject();
    v25 = v32;
    *(v24 + 16) = v32;
    *(v24 + 24) = v15;
    *(v24 + 32) = 2;
    *(v24 + 40) = v22;
    sub_10012B828(v33, v24 + 48);
    Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v25, v15, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v34, v24, v7);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
    type metadata accessor for MainActor();

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = &protocol witness table for MainActor;
    v29 = v34[1];
    v30 = v34[2];
    *(v28 + 32) = v34[0];
    *(v28 + 48) = v29;
    *(v28 + 64) = v30;
    *(v28 + 80) = v35;
    sub_10086E3AC(0, 0, v20, &unk_100EE1DB8, v28);
  }
}

void sub_100783BB0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v42[-v6];
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100783210();
  [*&v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont] _bodyLeading];
  v14 = v13;
  v15 = &v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  if (v0[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins + 8])
  {
    v16 = [v0 view];
    if (!v16)
    {
      __break(1u);
      goto LABEL_23;
    }

    v17 = v16;
    [v16 layoutMargins];
    v19 = v18;
  }

  else
  {
    v19 = *v15;
  }

  v20 = sub_1007832A4();
  v21 = [v20 isHidden];

  if (v21)
  {
    v22 = 80.0;
  }

  else
  {
    v22 = 0.0;
  }

  if (v15[1])
  {
    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 layoutMargins];
      v26 = v25;

      v27 = v26;
      goto LABEL_12;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v27 = *v15;
LABEL_12:
  [v12 setTextContainerInset:{48.0 - v14, v19, v22, v27}];

  v42[0] = 6;
  v28 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v28))
  {
    v29 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController];
    if (v29)
    {
      v30 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton];
      v31 = v29;
      v32 = 0;
      if (![v30 isHidden])
      {
LABEL_17:
        v36 = (*((swift_isaMask & *v31) + 0x1E8))(v42);
        *(v37 + 64) = v32;
        v36(v42, 0);

        return;
      }

      v33 = [v1 view];
      if (v33)
      {
        v34 = v33;
        [v33 layoutMargins];
        v32 = v35;

        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v38 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton;
    v39 = *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton];
    UIButton.configuration.getter();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &unk_101183AB0);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      UIButton.Configuration.contentInsets.setter();
      v40 = *&v1[v38];
      (*(v9 + 16))(v4, v11, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      v41 = v40;
      UIButton.configuration.setter();

      (*(v9 + 8))(v11, v8);
    }
  }
}

unint64_t sub_100784020()
{
  v1 = [objc_opt_self() defaultParagraphStyle];
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_101194D60);
  swift_dynamicCast();
  v2 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont);
  [v2 _scaledValueForValue:6.0];
  [v15 setParagraphSpacing:?];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v3 _isNaturallyRTL];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v15 setAlignment:v5];
  sub_10010FC20(&qword_1011A23A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v7 = *(v0 + OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor);
  *(inited + 40) = v7;
  *(inited + 48) = NSFontAttributeName;
  *(inited + 56) = v2;
  *(inited + 64) = NSParagraphStyleAttributeName;
  *(inited + 72) = v15;
  v8 = NSForegroundColorAttributeName;
  v9 = v7;
  v10 = NSFontAttributeName;
  v11 = v2;
  v12 = NSParagraphStyleAttributeName;
  v13 = sub_10010C988(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A23B0);
  swift_arrayDestroy();
  return v13;
}

id sub_10078421C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics] = 0;
  v8 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  v9 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor;
  *&v4[v10] = [objc_opt_self() labelColor];
  v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton] = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont;
  sub_100009F78(0, &qword_101183A00);
  *&v4[v13] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton] = 0;
  if (a2)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for StaticLyricsContentViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v14, a3);

  return v15;
}

id sub_10078445C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyrics] = 0;
  v5 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_translation;
  v6 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor;
  *&v2[v7] = [objc_opt_self() labelColor];
  v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_shouldShowReportConcernButton] = 0;
  v8 = &v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_songIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_contentMargins];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsFont;
  sub_100009F78(0, &qword_101183A00);
  *&v2[v10] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___scrollView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___textView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsViewController] = 0;
  *&v2[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController____lazy_storage___reportConcernButton] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for StaticLyricsContentViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_100784638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticLyricsContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StaticLyricsContentViewController()
{
  result = qword_1011A2390;
  if (!qword_1011A2390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007847B8()
{
  sub_100784894();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100784894()
{
  if (!qword_1011A23A0)
  {
    type metadata accessor for Lyrics.Translation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A23A0);
    }
  }
}

uint64_t sub_1007848EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101189A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10078495C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1001E73E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_100784A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100784A70(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100784AD4()
{
  sub_10010FC20(&qword_101183990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  *(v0 + 32) = sub_100783210();
  *(v0 + 40) = sub_1007832A4();
  v1 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:0];
  [v3 setAxis:1];
  [v3 setSpacing:20.0];
  return v3;
}

uint64_t sub_100784BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101189A18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100784C5C()
{
  result = qword_1011A23B8;
  if (!qword_1011A23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A23B8);
  }

  return result;
}

void sub_100784D64()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor);
}

id sub_100784DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingRepeatButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100784E88(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100784EA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100784EC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100784F0C(uint64_t result, int a2, int a3)
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

uint64_t sub_100784FC4()
{
  result = type metadata accessor for DragDropToQueue.Origin(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100785060()
{
  result = type metadata accessor for GenericMusicItem();
  if (v1 <= 0x3F)
  {
    result = sub_100188C90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007850E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = *(type metadata accessor for DragDropToQueue(0) - 8);
        v11 = *(v10 + 72);
        result = sub_100789D44(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * (v6 + v9 - 1), v8);
        if (a3 + v9 == 1)
        {
          v12 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v11;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v12 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10078525C(uint64_t a1)
{
  result = sub_1007852B4(&qword_1011A2540, type metadata accessor for DragDropToQueue.Origin);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007852B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007852FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 700) = a5;
  *(v5 + 432) = a2;
  *(v5 + 440) = a4;
  *(v5 + 424) = a1;
  *(v5 + 448) = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 472) = swift_task_alloc();
  v6 = type metadata accessor for DragDropToQueue(0);
  *(v5 + 480) = v6;
  *(v5 + 488) = *(v6 - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 512) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 520) = v8;
  *(v5 + 528) = v7;

  return _swift_task_switch(sub_100785468, v8, v7);
}

void sub_100785468()
{
  v100 = v0;
  v1 = *(v0 + 432);
  v2 = *(v1 + 16);
  if (!v2)
  {

    sub_10078A448();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
LABEL_30:

    v56 = *(v0 + 8);
LABEL_31:

    v56();
    return;
  }

  v3 = *(v0 + 488);
  v4 = sub_1003ADD0C(*(v1 + 16), 0);
  v5 = *(v3 + 80);
  *(v0 + 696) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = sub_1007850E4(v99, v4 + v6, v2, v1);

  if (v7 != v2)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (qword_10117F5F8 != -1)
  {
LABEL_51:
    swift_once();
  }

  v8 = (*(*qword_101218AC8 + 432))();
  if (!v8 || (v9 = v8, v10 = [v8 tracklist], v9, v11 = objc_msgSend(v10, "playingItem"), v10, !v11))
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_1012186C8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Nothing playing adding first selected item to playImmediately", v40, 2u);
    }

    if (v4[2])
    {
      sub_100789D44(v4 + v6, *(v0 + 504));
      v41 = v4[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 416) = v4;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v4[3] >> 1)
        {
          v4 = sub_100498EE8(isUniquelyReferenced_nonNull_native, v41, 1, v4);
          *(v0 + 416) = v4;
        }

        *(v0 + 536) = v4;
        v43 = *(v0 + 504);
        v45 = *(v0 + 464);
        v44 = *(v0 + 472);
        v46 = *(v0 + 456);
        sub_1003BB984(0, 1, 0);
        v47 = *(v43 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
        *v46 = v47;
        swift_storeEnumTagMultiPayload();
        v98 = 0;
        memset(v97, 0, sizeof(v97));
        sub_10010FC20(&unk_101183930);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_100EBDC20;
        *(v48 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v48 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v48 + 32) = 0x706F724467617244;
        *(v48 + 40) = 0xEA00000000006F54;
        *(v48 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v48 + 104) = &off_10109DFB0;
        *(v48 + 72) = 3;
        v49 = v47;
        v50 = static Player.CommandIssuer<>.combining(_:)();
        v52 = v51;

        v99[3] = &type metadata for Player.CommandIssuerIdentity;
        v99[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v99[0] = v50;
        v99[1] = v52;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v46, v97, 3, 0, 0, 1, 0, 1, v44, 0, v99);
        *(v44 + *(v45 + 20)) = 5;
        if (qword_10117F608 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_54;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_54:
    swift_once();
LABEL_26:
    v53 = swift_task_alloc();
    *(v0 + 544) = v53;
    *v53 = v0;
    v53[1] = sub_100786164;
    v54 = *(v0 + 472);

    PlaybackController.add(_:route:)(v54, 0);
    return;
  }

  *(v0 + 560) = v4;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 568) = qword_101218AD8;
  v12 = v4[2];
  *(v0 + 576) = v12;
  if (!v12)
  {

    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v68 = *(v0 + 424);
    sub_100309AD8(0);
    v69 = type metadata accessor for Notice(0);
    (*(*(v69 - 8) + 56))(v68, v57, 1, v69);

    v56 = *(v0 + 8);
    goto LABEL_31;
  }

  v13 = *(v0 + 696);
  v14 = *(v0 + 440);
  *(v0 + 701) = 0;
  *(v0 + 584) = 0u;
  v15 = *(v0 + 560);
  if (!*(v15 + 16))
  {
    __break(1u);
    return;
  }

  sub_100789D44(v15 + ((v13 + 32) & ~v13), *(v0 + 496));
  v16 = *(v0 + 496);
  if (v14 == 4)
  {
    v17 = *(v0 + 701);
    v18 = *(v16 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v19 = Player.InsertCommand.init(location:playbackIntent:)(2, v18);
    v21 = v20;
    *(v0 + 616) = v19;
    *(v0 + 624) = v20;
    v22 = Player.InsertCommand.init(location:playbackIntent:)(0, v18);
    v24 = v23;
    *(v0 + 632) = v22;
    *(v0 + 640) = v23;
    if (v17 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v19;
      *(v0 + 264) = v21;
      v25 = v18;
      v26 = v19;
      sub_1001DFD48(v21);
      v27 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v27)
      {
        v28 = *(v0 + 496);
        v29 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v26;
        *(v0 + 304) = v21;
        v30 = *(v28 + *(v29 + 20));
        sub_10010FC20(&unk_101183930);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100EBDC20;
        *(v31 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v31 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v31 + 32) = 0x706F724467617244;
        *(v31 + 40) = 0xEA00000000006F54;
        *(v31 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v31 + 104) = &off_10109DFB0;
        *(v31 + 72) = v30;
        v32 = v26;
        sub_1001DFD48(v21);
        v33 = static Player.CommandIssuer<>.combining(_:)();
        v35 = v34;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v33;
        *(v0 + 344) = v35;
        v36 = swift_task_alloc();
        *(v0 + 648) = v36;
        *v36 = v0;
        v36[1] = sub_100787550;

        PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
        return;
      }
    }

    else
    {
      v70 = v18;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v19;
    *(v0 + 24) = v21;
    v71 = v19;
    sub_1001DFD48(v21);
    v72 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v72)
    {
      v73 = *(v0 + 496);
      v74 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v71;
      *(v0 + 184) = v21;
      v75 = *(v73 + *(v74 + 20));
      sub_10010FC20(&unk_101183930);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_100EBDC20;
      *(v76 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v76 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v76 + 32) = 0x706F724467617244;
      *(v76 + 40) = 0xEA00000000006F54;
      *(v76 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v76 + 104) = &off_10109DFB0;
      *(v76 + 72) = v75;
      v77 = v71;
      sub_1001DFD48(v21);
      v78 = static Player.CommandIssuer<>.combining(_:)();
      v80 = v79;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v78;
      *(v0 + 224) = v80;
      v81 = swift_task_alloc();
      *(v0 + 664) = v81;
      *v81 = v0;
      v81[1] = sub_100787F68;
      v82 = v0 + 176;
      v83 = v0 + 216;
LABEL_46:

      PlaybackController.perform(_:route:intent:issuer:)(v82, 0, 0, v83);
      return;
    }

    *(v0 + 80) = &type metadata for Player.InsertCommand;
    *(v0 + 88) = &protocol witness table for Player.InsertCommand;
    *(v0 + 56) = v22;
    *(v0 + 64) = v24;
    v84 = v22;
    sub_1001DFD48(v24);
    v85 = PlaybackController.canPerform(_:)((v0 + 56));
    sub_10000959C(v0 + 56);
    if (v85)
    {
      v86 = *(v0 + 496);
      v87 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v84;
      *(v0 + 104) = v24;
      v88 = *(v86 + *(v87 + 20));
      sub_10010FC20(&unk_101183930);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_100EBDC20;
      *(v89 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v89 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v89 + 32) = 0x706F724467617244;
      *(v89 + 40) = 0xEA00000000006F54;
      *(v89 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v89 + 104) = &off_10109DFB0;
      *(v89 + 72) = v88;
      v90 = v84;
      sub_1001DFD48(v24);
      v91 = static Player.CommandIssuer<>.combining(_:)();
      v93 = v92;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v91;
      *(v0 + 144) = v93;
      v94 = swift_task_alloc();
      *(v0 + 680) = v94;
      *v94 = v0;
      v94[1] = sub_100788970;
      v82 = v0 + 96;
      v83 = v0 + 136;
      goto LABEL_46;
    }

    v95 = *(v0 + 496);

    sub_10078A448();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();
    sub_100309AD8(0);

    sub_100309AD8(v24);
    sub_100309AD8(v21);
    sub_10078A3E8(v95, type metadata accessor for DragDropToQueue);
    goto LABEL_30;
  }

  v58 = *(v0 + 480);
  v59 = *(v0 + 440);
  sub_1001DFD48(v59);
  sub_100309AD8(0);
  v60 = *(v16 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
  v61 = *(v16 + *(v58 + 20));
  sub_10010FC20(&unk_101183930);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100EBDC20;
  *(v62 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v62 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v62 + 32) = 0x706F724467617244;
  *(v62 + 40) = 0xEA00000000006F54;
  *(v62 + 96) = &type metadata for DragDropIntentIdentifier;
  *(v62 + 104) = &off_10109DFB0;
  *(v62 + 72) = v61;
  sub_1001DFD48(v59);
  v63 = static Player.CommandIssuer<>.combining(_:)();
  v65 = v64;

  *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 376) = v63;
  *(v0 + 384) = v65;
  v66 = swift_task_alloc();
  *(v0 + 600) = v66;
  *v66 = v0;
  v66[1] = sub_100786B78;
  v67 = *(v0 + 440);

  PlaybackController.insert(_:location:issuer:)(v60, v67, v0 + 376);
}

uint64_t sub_100786164()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {

    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_10078939C;
  }

  else
  {
    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_100786288;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100786288()
{
  v1 = *(v0 + 504);
  sub_10078A3E8(*(v0 + 472), type metadata accessor for PlaybackIntentDescriptor);
  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);
  result = *(v0 + 536);
  *(v0 + 560) = result;
  if (qword_10117F608 != -1)
  {
    v69 = result;
    swift_once();
    result = v69;
  }

  *(v0 + 568) = qword_101218AD8;
  v3 = *(result + 16);
  *(v0 + 576) = v3;
  if (!v3)
  {

    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v39 = *(v0 + 424);
    sub_100309AD8(2);
    v40 = type metadata accessor for Notice(0);
    (*(*(v40 - 8) + 56))(v39, v28, 1, v40);

    v41 = *(v0 + 8);
LABEL_18:

    return v41();
  }

  v4 = *(v0 + 696);
  v5 = *(v0 + 440);
  *(v0 + 701) = 0;
  *(v0 + 592) = 0;
  *(v0 + 584) = 2;
  v6 = *(v0 + 560);
  if (!*(v6 + 16))
  {
    __break(1u);
    return result;
  }

  sub_100789D44(v6 + ((v4 + 32) & ~v4), *(v0 + 496));
  v7 = *(v0 + 496);
  if (v5 == 4)
  {
    v8 = *(v0 + 701);
    v9 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v10 = Player.InsertCommand.init(location:playbackIntent:)(2, v9);
    v12 = v11;
    *(v0 + 616) = v10;
    *(v0 + 624) = v11;
    v13 = Player.InsertCommand.init(location:playbackIntent:)(0, v9);
    v15 = v14;
    *(v0 + 632) = v13;
    *(v0 + 640) = v14;
    if (v8 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v10;
      *(v0 + 264) = v12;
      v16 = v9;
      v17 = v10;
      sub_1001DFD48(v12);
      v18 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v18)
      {
        v19 = *(v0 + 496);
        v20 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v17;
        *(v0 + 304) = v12;
        v21 = *(v19 + *(v20 + 20));
        sub_10010FC20(&unk_101183930);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100EBDC20;
        *(v22 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v22 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v22 + 32) = 0x706F724467617244;
        *(v22 + 40) = 0xEA00000000006F54;
        *(v22 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v22 + 104) = &off_10109DFB0;
        *(v22 + 72) = v21;
        v23 = v17;
        sub_1001DFD48(v12);
        v24 = static Player.CommandIssuer<>.combining(_:)();
        v26 = v25;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v24;
        *(v0 + 344) = v26;
        v27 = swift_task_alloc();
        *(v0 + 648) = v27;
        *v27 = v0;
        v27[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v42 = v9;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    v43 = v10;
    sub_1001DFD48(v12);
    v44 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v44)
    {
      v45 = *(v0 + 496);
      v46 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v43;
      *(v0 + 184) = v12;
      v47 = *(v45 + *(v46 + 20));
      sub_10010FC20(&unk_101183930);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100EBDC20;
      *(v48 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v48 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v48 + 32) = 0x706F724467617244;
      *(v48 + 40) = 0xEA00000000006F54;
      *(v48 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v48 + 104) = &off_10109DFB0;
      *(v48 + 72) = v47;
      v49 = v43;
      sub_1001DFD48(v12);
      v50 = static Player.CommandIssuer<>.combining(_:)();
      v52 = v51;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v50;
      *(v0 + 224) = v52;
      v53 = swift_task_alloc();
      *(v0 + 664) = v53;
      *v53 = v0;
      v53[1] = sub_100787F68;
      v54 = v0 + 176;
      v55 = v0 + 216;
LABEL_26:

      return PlaybackController.perform(_:route:intent:issuer:)(v54, 0, 0, v55);
    }

    *(v0 + 80) = &type metadata for Player.InsertCommand;
    *(v0 + 88) = &protocol witness table for Player.InsertCommand;
    *(v0 + 56) = v13;
    *(v0 + 64) = v15;
    v56 = v13;
    sub_1001DFD48(v15);
    v57 = PlaybackController.canPerform(_:)((v0 + 56));
    sub_10000959C(v0 + 56);
    if (v57)
    {
      v58 = *(v0 + 496);
      v59 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v56;
      *(v0 + 104) = v15;
      v60 = *(v58 + *(v59 + 20));
      sub_10010FC20(&unk_101183930);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_100EBDC20;
      *(v61 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v61 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v61 + 32) = 0x706F724467617244;
      *(v61 + 40) = 0xEA00000000006F54;
      *(v61 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v61 + 104) = &off_10109DFB0;
      *(v61 + 72) = v60;
      v62 = v56;
      sub_1001DFD48(v15);
      v63 = static Player.CommandIssuer<>.combining(_:)();
      v65 = v64;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v63;
      *(v0 + 144) = v65;
      v66 = swift_task_alloc();
      *(v0 + 680) = v66;
      *v66 = v0;
      v66[1] = sub_100788970;
      v54 = v0 + 96;
      v55 = v0 + 136;
      goto LABEL_26;
    }

    v67 = *(v0 + 496);

    sub_10078A448();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
    sub_100309AD8(2);

    sub_100309AD8(v15);
    sub_100309AD8(v12);
    sub_10078A3E8(v67, type metadata accessor for DragDropToQueue);

    v41 = *(v0 + 8);
    goto LABEL_18;
  }

  v29 = *(v0 + 480);
  v30 = *(v0 + 440);
  sub_1001DFD48(v30);
  sub_100309AD8(2);
  v31 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
  v32 = *(v7 + *(v29 + 20));
  sub_10010FC20(&unk_101183930);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100EBDC20;
  *(v33 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v33 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v33 + 32) = 0x706F724467617244;
  *(v33 + 40) = 0xEA00000000006F54;
  *(v33 + 96) = &type metadata for DragDropIntentIdentifier;
  *(v33 + 104) = &off_10109DFB0;
  *(v33 + 72) = v32;
  sub_1001DFD48(v30);
  v34 = static Player.CommandIssuer<>.combining(_:)();
  v36 = v35;

  *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 376) = v34;
  *(v0 + 384) = v36;
  v37 = swift_task_alloc();
  *(v0 + 600) = v37;
  *v37 = v0;
  v37[1] = sub_100786B78;
  v38 = *(v0 + 440);

  return PlaybackController.insert(_:location:issuer:)(v31, v38, v0 + 376);
}

uint64_t sub_100786B78()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  sub_10078A49C(*(v2 + 440));
  if (v0)
  {

    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_10078946C;
  }

  else
  {
    sub_100440B1C(v2 + 376);
    v3 = *(v2 + 528);
    v4 = *(v2 + 520);
    v5 = sub_100786CB8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100786CB8()
{
  result = sub_10078A3E8(*(v0 + 496), type metadata accessor for DragDropToQueue);
  v2 = *(v0 + 440);
  v3 = *(v0 + 592) + 1;
  if (v3 == *(v0 + 576))
  {

    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v27 = *(v0 + 424);
    sub_100309AD8(v2);
    v28 = type metadata accessor for Notice(0);
    (*(*(v28 - 8) + 56))(v27, v4, 1, v28);

    v29 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 592) = v3;
  *(v0 + 584) = v2;
  v5 = *(v0 + 560);
  if (v3 >= *(v5 + 16))
  {
    __break(1u);
    return result;
  }

  sub_100789D44(v5 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v3, *(v0 + 496));
  if (v2 == 4)
  {
    v6 = *(v0 + 701);
    v7 = *(v0 + 496);
    v8 = *(v7 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v9 = Player.InsertCommand.init(location:playbackIntent:)(2, v8);
    v11 = v10;
    *(v0 + 616) = v9;
    *(v0 + 624) = v10;
    v12 = Player.InsertCommand.init(location:playbackIntent:)(0, v8);
    v14 = v13;
    *(v0 + 632) = v12;
    *(v0 + 640) = v13;
    if (v6 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v9;
      *(v0 + 264) = v11;
      v15 = v8;
      v16 = v9;
      sub_1001DFD48(v11);
      v17 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v17)
      {
        v18 = *(v0 + 496);
        v19 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v16;
        *(v0 + 304) = v11;
        v20 = *(v18 + *(v19 + 20));
        sub_10010FC20(&unk_101183930);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBDC20;
        *(v21 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v21 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v21 + 32) = 0x706F724467617244;
        *(v21 + 40) = 0xEA00000000006F54;
        *(v21 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v21 + 104) = &off_10109DFB0;
        *(v21 + 72) = v20;
        v22 = v16;
        sub_1001DFD48(v11);
        v23 = static Player.CommandIssuer<>.combining(_:)();
        v25 = v24;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v23;
        *(v0 + 344) = v25;
        v26 = swift_task_alloc();
        *(v0 + 648) = v26;
        *v26 = v0;
        v26[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v41 = v8;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v9;
    *(v0 + 24) = v11;
    v42 = v9;
    sub_1001DFD48(v11);
    v43 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v43)
    {
      v44 = *(v0 + 496);
      v45 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v42;
      *(v0 + 184) = v11;
      v46 = *(v44 + *(v45 + 20));
      sub_10010FC20(&unk_101183930);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100EBDC20;
      *(v47 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v47 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v47 + 32) = 0x706F724467617244;
      *(v47 + 40) = 0xEA00000000006F54;
      *(v47 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v47 + 104) = &off_10109DFB0;
      *(v47 + 72) = v46;
      v48 = v42;
      sub_1001DFD48(v11);
      v49 = static Player.CommandIssuer<>.combining(_:)();
      v51 = v50;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v49;
      *(v0 + 224) = v51;
      v52 = swift_task_alloc();
      *(v0 + 664) = v52;
      *v52 = v0;
      v52[1] = sub_100787F68;
      v53 = v0 + 176;
      v54 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v12;
      *(v0 + 64) = v14;
      v55 = v12;
      sub_1001DFD48(v14);
      v56 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C(v0 + 56);
      if (!v56)
      {
        v66 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v67 = 1;
        swift_willThrow();
        sub_100309AD8(4);

        sub_100309AD8(v14);
        sub_100309AD8(v11);
        sub_10078A3E8(v66, type metadata accessor for DragDropToQueue);

        v29 = *(v0 + 8);
LABEL_13:

        return v29();
      }

      v57 = *(v0 + 496);
      v58 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v55;
      *(v0 + 104) = v14;
      v59 = *(v57 + *(v58 + 20));
      sub_10010FC20(&unk_101183930);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100EBDC20;
      *(v60 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v60 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v60 + 32) = 0x706F724467617244;
      *(v60 + 40) = 0xEA00000000006F54;
      *(v60 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v60 + 104) = &off_10109DFB0;
      *(v60 + 72) = v59;
      v61 = v55;
      sub_1001DFD48(v14);
      v62 = static Player.CommandIssuer<>.combining(_:)();
      v64 = v63;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v62;
      *(v0 + 144) = v64;
      v65 = swift_task_alloc();
      *(v0 + 680) = v65;
      *v65 = v0;
      v65[1] = sub_100788970;
      v53 = v0 + 96;
      v54 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v53, 0, 0, v54);
  }

  else
  {
    v30 = *(v0 + 496);
    v31 = *(v0 + 480);
    v32 = *(v0 + 440);
    sub_1001DFD48(v32);
    sub_100309AD8(v2);
    v33 = *(v30 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v34 = *(v30 + *(v31 + 20));
    sub_10010FC20(&unk_101183930);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBDC20;
    *(v35 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v35 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v35 + 32) = 0x706F724467617244;
    *(v35 + 40) = 0xEA00000000006F54;
    *(v35 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v35 + 104) = &off_10109DFB0;
    *(v35 + 72) = v34;
    sub_1001DFD48(v32);
    v36 = static Player.CommandIssuer<>.combining(_:)();
    v38 = v37;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v36;
    *(v0 + 384) = v38;
    v39 = swift_task_alloc();
    *(v0 + 600) = v39;
    *v39 = v0;
    v39[1] = sub_100786B78;
    v40 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v33, v40, v0 + 376);
  }
}

uint64_t sub_100787550(void *a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {

    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_100789534;
  }

  else
  {

    sub_100440B1C(v4 + 336);
    sub_10000959C(v4 + 296);
    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_100787694;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100787694()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = *(v0 + 576);
  v6 = *(v0 + 496);

  sub_100309AD8(v1);
  sub_100309AD8(v2);
  result = sub_10078A3E8(v6, type metadata accessor for DragDropToQueue);
  if (v4 + 1 == v5)
  {

    v8 = *(v0 + 584);
    if (*(v0 + 700))
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v35 = *(v0 + 424);
    sub_100309AD8(v8);
    v36 = type metadata accessor for Notice(0);
    (*(*(v36 - 8) + 56))(v35, v9, 1, v36);

    v37 = *(v0 + 8);
    goto LABEL_13;
  }

  v10 = *(v0 + 584);
  v11 = *(v0 + 592) + 1;
  *(v0 + 701) = 1;
  *(v0 + 592) = v11;
  v12 = *(v0 + 560);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 440);
  sub_100789D44(v12 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v11, *(v0 + 496));
  v14 = *(v0 + 496);
  if (v13 == 4)
  {
    v15 = *(v0 + 701);
    v16 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v17 = Player.InsertCommand.init(location:playbackIntent:)(2, v16);
    v19 = v18;
    *(v0 + 616) = v17;
    *(v0 + 624) = v18;
    v20 = Player.InsertCommand.init(location:playbackIntent:)(0, v16);
    v22 = v21;
    *(v0 + 632) = v20;
    *(v0 + 640) = v21;
    if (v15 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v17;
      *(v0 + 264) = v19;
      v23 = v16;
      v24 = v17;
      sub_1001DFD48(v19);
      v25 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v25)
      {
        v26 = *(v0 + 496);
        v27 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v24;
        *(v0 + 304) = v19;
        v28 = *(v26 + *(v27 + 20));
        sub_10010FC20(&unk_101183930);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100EBDC20;
        *(v29 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v29 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v29 + 32) = 0x706F724467617244;
        *(v29 + 40) = 0xEA00000000006F54;
        *(v29 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v29 + 104) = &off_10109DFB0;
        *(v29 + 72) = v28;
        v30 = v24;
        sub_1001DFD48(v19);
        v31 = static Player.CommandIssuer<>.combining(_:)();
        v33 = v32;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v31;
        *(v0 + 344) = v33;
        v34 = swift_task_alloc();
        *(v0 + 648) = v34;
        *v34 = v0;
        v34[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v48 = v16;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    v49 = v17;
    sub_1001DFD48(v19);
    v50 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v50)
    {
      v51 = *(v0 + 496);
      v52 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v49;
      *(v0 + 184) = v19;
      v53 = *(v51 + *(v52 + 20));
      sub_10010FC20(&unk_101183930);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100EBDC20;
      *(v54 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v54 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v54 + 32) = 0x706F724467617244;
      *(v54 + 40) = 0xEA00000000006F54;
      *(v54 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v54 + 104) = &off_10109DFB0;
      *(v54 + 72) = v53;
      v55 = v49;
      sub_1001DFD48(v19);
      v56 = static Player.CommandIssuer<>.combining(_:)();
      v58 = v57;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v56;
      *(v0 + 224) = v58;
      v59 = swift_task_alloc();
      *(v0 + 664) = v59;
      *v59 = v0;
      v59[1] = sub_100787F68;
      v60 = v0 + 176;
      v61 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v20;
      *(v0 + 64) = v22;
      v62 = v20;
      sub_1001DFD48(v22);
      v63 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C(v0 + 56);
      if (!v63)
      {
        v73 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v74 = 1;
        swift_willThrow();
        sub_100309AD8(v10);

        sub_100309AD8(v22);
        sub_100309AD8(v19);
        sub_10078A3E8(v73, type metadata accessor for DragDropToQueue);

        v37 = *(v0 + 8);
LABEL_13:

        return v37();
      }

      v64 = *(v0 + 496);
      v65 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v62;
      *(v0 + 104) = v22;
      v66 = *(v64 + *(v65 + 20));
      sub_10010FC20(&unk_101183930);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100EBDC20;
      *(v67 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v67 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v67 + 32) = 0x706F724467617244;
      *(v67 + 40) = 0xEA00000000006F54;
      *(v67 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v67 + 104) = &off_10109DFB0;
      *(v67 + 72) = v66;
      v68 = v62;
      sub_1001DFD48(v22);
      v69 = static Player.CommandIssuer<>.combining(_:)();
      v71 = v70;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v69;
      *(v0 + 144) = v71;
      v72 = swift_task_alloc();
      *(v0 + 680) = v72;
      *v72 = v0;
      v72[1] = sub_100788970;
      v60 = v0 + 96;
      v61 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v60, 0, 0, v61);
  }

  else
  {
    v38 = *(v0 + 480);
    v39 = *(v0 + 440);
    sub_1001DFD48(v39);
    sub_100309AD8(v10);
    v40 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v41 = *(v14 + *(v38 + 20));
    sub_10010FC20(&unk_101183930);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100EBDC20;
    *(v42 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v42 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v42 + 32) = 0x706F724467617244;
    *(v42 + 40) = 0xEA00000000006F54;
    *(v42 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v42 + 104) = &off_10109DFB0;
    *(v42 + 72) = v41;
    sub_1001DFD48(v39);
    v43 = static Player.CommandIssuer<>.combining(_:)();
    v45 = v44;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v43;
    *(v0 + 384) = v45;
    v46 = swift_task_alloc();
    *(v0 + 600) = v46;
    *v46 = v0;
    v46[1] = sub_100786B78;
    v47 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v40, v47, v0 + 376);
  }
}

uint64_t sub_100787F68(void *a1)
{
  v4 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {

    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_100789634;
  }

  else
  {

    sub_100440B1C(v4 + 216);
    sub_10000959C(v4 + 176);
    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_1007880AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

void sub_1007880AC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 616);
  v4 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);
  sub_10078A3E8(v4, type metadata accessor for DragDropToQueue);

  v5 = *(v0 + 624);
  v6 = *(v0 + 592) + 1;
  if (v6 == *(v0 + 576))
  {

    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v31 = *(v0 + 424);
    sub_100309AD8(v5);
    v32 = type metadata accessor for Notice(0);
    (*(*(v32 - 8) + 56))(v31, v7, 1, v32);

    v33 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 592) = v6;
  *(v0 + 584) = v5;
  v8 = *(v0 + 560);
  if (v6 >= *(v8 + 16))
  {
    __break(1u);
    return;
  }

  v9 = *(v0 + 440);
  sub_100789D44(v8 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v6, *(v0 + 496));
  if (v9 == 4)
  {
    v10 = *(v0 + 701);
    v11 = *(v0 + 496);
    v12 = *(v11 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v13 = Player.InsertCommand.init(location:playbackIntent:)(2, v12);
    v15 = v14;
    *(v0 + 616) = v13;
    *(v0 + 624) = v14;
    v16 = Player.InsertCommand.init(location:playbackIntent:)(0, v12);
    v18 = v17;
    *(v0 + 632) = v16;
    *(v0 + 640) = v17;
    if (v10 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v13;
      *(v0 + 264) = v15;
      v19 = v12;
      v20 = v13;
      sub_1001DFD48(v15);
      v21 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v21)
      {
        v22 = *(v0 + 496);
        v23 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v20;
        *(v0 + 304) = v15;
        v24 = *(v22 + *(v23 + 20));
        sub_10010FC20(&unk_101183930);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100EBDC20;
        *(v25 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v25 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v25 + 32) = 0x706F724467617244;
        *(v25 + 40) = 0xEA00000000006F54;
        *(v25 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v25 + 104) = &off_10109DFB0;
        *(v25 + 72) = v24;
        v26 = v20;
        sub_1001DFD48(v15);
        v27 = static Player.CommandIssuer<>.combining(_:)();
        v29 = v28;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v27;
        *(v0 + 344) = v29;
        v30 = swift_task_alloc();
        *(v0 + 648) = v30;
        *v30 = v0;
        v30[1] = sub_100787550;

        PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
        return;
      }
    }

    else
    {
      v44 = v12;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v13;
    *(v0 + 24) = v15;
    v45 = v13;
    sub_1001DFD48(v15);
    v46 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v46)
    {
      v47 = *(v0 + 496);
      v48 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v45;
      *(v0 + 184) = v15;
      v49 = *(v47 + *(v48 + 20));
      sub_10010FC20(&unk_101183930);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100EBDC20;
      *(v50 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v50 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v50 + 32) = 0x706F724467617244;
      *(v50 + 40) = 0xEA00000000006F54;
      *(v50 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v50 + 104) = &off_10109DFB0;
      *(v50 + 72) = v49;
      v51 = v45;
      sub_1001DFD48(v15);
      v52 = static Player.CommandIssuer<>.combining(_:)();
      v54 = v53;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v52;
      *(v0 + 224) = v54;
      v55 = swift_task_alloc();
      *(v0 + 664) = v55;
      *v55 = v0;
      v55[1] = sub_100787F68;
      v56 = v0 + 176;
      v57 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v16;
      *(v0 + 64) = v18;
      v58 = v16;
      sub_1001DFD48(v18);
      v59 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C(v0 + 56);
      if (!v59)
      {
        v69 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v70 = 1;
        swift_willThrow();
        sub_100309AD8(v5);

        sub_100309AD8(v18);
        sub_100309AD8(v15);
        sub_10078A3E8(v69, type metadata accessor for DragDropToQueue);

        v33 = *(v0 + 8);
LABEL_13:

        v33();
        return;
      }

      v60 = *(v0 + 496);
      v61 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v58;
      *(v0 + 104) = v18;
      v62 = *(v60 + *(v61 + 20));
      sub_10010FC20(&unk_101183930);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100EBDC20;
      *(v63 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v63 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v63 + 32) = 0x706F724467617244;
      *(v63 + 40) = 0xEA00000000006F54;
      *(v63 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v63 + 104) = &off_10109DFB0;
      *(v63 + 72) = v62;
      v64 = v58;
      sub_1001DFD48(v18);
      v65 = static Player.CommandIssuer<>.combining(_:)();
      v67 = v66;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v65;
      *(v0 + 144) = v67;
      v68 = swift_task_alloc();
      *(v0 + 680) = v68;
      *v68 = v0;
      v68[1] = sub_100788970;
      v56 = v0 + 96;
      v57 = v0 + 136;
    }

    PlaybackController.perform(_:route:intent:issuer:)(v56, 0, 0, v57);
  }

  else
  {
    v34 = *(v0 + 496);
    v35 = *(v0 + 480);
    v36 = *(v0 + 440);
    sub_1001DFD48(v36);
    sub_100309AD8(v5);
    v37 = *(v34 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    LOBYTE(v34) = *(v34 + *(v35 + 20));
    sub_10010FC20(&unk_101183930);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100EBDC20;
    *(v38 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v38 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v38 + 32) = 0x706F724467617244;
    *(v38 + 40) = 0xEA00000000006F54;
    *(v38 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v38 + 104) = &off_10109DFB0;
    *(v38 + 72) = v34;
    sub_1001DFD48(v36);
    v39 = static Player.CommandIssuer<>.combining(_:)();
    v41 = v40;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v39;
    *(v0 + 384) = v41;
    v42 = swift_task_alloc();
    *(v0 + 600) = v42;
    *v42 = v0;
    v42[1] = sub_100786B78;
    v43 = *(v0 + 440);

    PlaybackController.insert(_:location:issuer:)(v37, v43, v0 + 376);
  }
}

uint64_t sub_100788970(void *a1)
{
  v4 = *v2;
  *(*v2 + 688) = v1;

  if (v1)
  {

    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_100789734;
  }

  else
  {

    sub_100440B1C(v4 + 136);
    sub_10000959C(v4 + 96);
    v5 = *(v4 + 528);
    v6 = *(v4 + 520);
    v7 = sub_100788AB4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100788AB4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 496);

  sub_100309AD8(v1);
  sub_100309AD8(v4);

  result = sub_10078A3E8(v6, type metadata accessor for DragDropToQueue);
  if (v3 + 1 == v5)
  {

    v8 = *(v0 + 624);
    if (*(v0 + 700) == 1)
    {
      Player.InsertCommand.Location.notice.getter(*(v0 + 424));
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v34 = *(v0 + 424);
    sub_100309AD8(v8);
    v35 = type metadata accessor for Notice(0);
    (*(*(v35 - 8) + 56))(v34, v9, 1, v35);

    v36 = *(v0 + 8);
    goto LABEL_13;
  }

  v10 = *(v0 + 624);
  v11 = *(v0 + 592) + 1;
  *(v0 + 701) = 1;
  *(v0 + 592) = v11;
  *(v0 + 584) = v10;
  v12 = *(v0 + 560);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 440);
  sub_100789D44(v12 + ((*(v0 + 696) + 32) & ~*(v0 + 696)) + *(*(v0 + 488) + 72) * v11, *(v0 + 496));
  v14 = *(v0 + 496);
  if (v13 == 4)
  {
    v15 = *(v0 + 701);
    v16 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v17 = Player.InsertCommand.init(location:playbackIntent:)(2, v16);
    v19 = v18;
    *(v0 + 616) = v17;
    *(v0 + 624) = v18;
    v20 = Player.InsertCommand.init(location:playbackIntent:)(0, v16);
    *(v0 + 632) = v20;
    v74 = v21;
    *(v0 + 640) = v21;
    if (v15 == 1)
    {
      *(v0 + 280) = &type metadata for Player.InsertCommand;
      *(v0 + 288) = &protocol witness table for Player.InsertCommand;
      *(v0 + 256) = v17;
      *(v0 + 264) = v19;
      v22 = v16;
      v23 = v17;
      sub_1001DFD48(v19);
      v24 = PlaybackController.canPerform(_:)((v0 + 256));
      sub_10000959C(v0 + 256);
      if (!v24)
      {
        v25 = *(v0 + 496);
        v26 = *(v0 + 480);
        *(v0 + 320) = &type metadata for Player.InsertCommand;
        *(v0 + 328) = &protocol witness table for Player.InsertCommand;
        *(v0 + 296) = v23;
        *(v0 + 304) = v19;
        v27 = *(v25 + *(v26 + 20));
        sub_10010FC20(&unk_101183930);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBDC20;
        *(v28 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v28 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v28 + 32) = 0x706F724467617244;
        *(v28 + 40) = 0xEA00000000006F54;
        *(v28 + 96) = &type metadata for DragDropIntentIdentifier;
        *(v28 + 104) = &off_10109DFB0;
        *(v28 + 72) = v27;
        v29 = v23;
        sub_1001DFD48(v19);
        v30 = static Player.CommandIssuer<>.combining(_:)();
        v32 = v31;

        *(v0 + 360) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 368) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 336) = v30;
        *(v0 + 344) = v32;
        v33 = swift_task_alloc();
        *(v0 + 648) = v33;
        *v33 = v0;
        v33[1] = sub_100787550;

        return PlaybackController.performWhenAvailable(_:issuer:timeout:)(v0 + 296, v0 + 336, 1.0);
      }
    }

    else
    {
      v47 = v16;
    }

    *(v0 + 40) = &type metadata for Player.InsertCommand;
    *(v0 + 48) = &protocol witness table for Player.InsertCommand;
    *(v0 + 16) = v17;
    *(v0 + 24) = v19;
    v48 = v17;
    sub_1001DFD48(v19);
    v49 = PlaybackController.canPerform(_:)((v0 + 16));
    sub_10000959C(v0 + 16);
    if (v49)
    {
      v50 = *(v0 + 496);
      v51 = *(v0 + 480);
      *(v0 + 200) = &type metadata for Player.InsertCommand;
      *(v0 + 208) = &protocol witness table for Player.InsertCommand;
      *(v0 + 176) = v48;
      *(v0 + 184) = v19;
      v52 = *(v50 + *(v51 + 20));
      sub_10010FC20(&unk_101183930);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100EBDC20;
      *(v53 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v53 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v53 + 32) = 0x706F724467617244;
      *(v53 + 40) = 0xEA00000000006F54;
      *(v53 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v53 + 104) = &off_10109DFB0;
      *(v53 + 72) = v52;
      v54 = v48;
      sub_1001DFD48(v19);
      v55 = static Player.CommandIssuer<>.combining(_:)();
      v57 = v56;

      *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 216) = v55;
      *(v0 + 224) = v57;
      v58 = swift_task_alloc();
      *(v0 + 664) = v58;
      *v58 = v0;
      v58[1] = sub_100787F68;
      v59 = v0 + 176;
      v60 = v0 + 216;
    }

    else
    {
      *(v0 + 80) = &type metadata for Player.InsertCommand;
      *(v0 + 88) = &protocol witness table for Player.InsertCommand;
      *(v0 + 56) = v20;
      *(v0 + 64) = v74;
      v61 = v20;
      sub_1001DFD48(v74);
      v62 = PlaybackController.canPerform(_:)((v0 + 56));
      sub_10000959C(v0 + 56);
      if (!v62)
      {
        v72 = *(v0 + 496);

        sub_10078A448();
        swift_allocError();
        *v73 = 1;
        swift_willThrow();
        sub_100309AD8(v10);

        sub_100309AD8(v74);
        sub_100309AD8(v19);
        sub_10078A3E8(v72, type metadata accessor for DragDropToQueue);

        v36 = *(v0 + 8);
LABEL_13:

        return v36();
      }

      v63 = *(v0 + 496);
      v64 = *(v0 + 480);
      *(v0 + 120) = &type metadata for Player.InsertCommand;
      *(v0 + 128) = &protocol witness table for Player.InsertCommand;
      *(v0 + 96) = v61;
      *(v0 + 104) = v74;
      v65 = *(v63 + *(v64 + 20));
      sub_10010FC20(&unk_101183930);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100EBDC20;
      *(v66 + 56) = &type metadata for Player.CommandIssuerIdentity;
      *(v66 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v66 + 32) = 0x706F724467617244;
      *(v66 + 40) = 0xEA00000000006F54;
      *(v66 + 96) = &type metadata for DragDropIntentIdentifier;
      *(v66 + 104) = &off_10109DFB0;
      *(v66 + 72) = v65;
      v67 = v61;
      sub_1001DFD48(v74);
      v68 = static Player.CommandIssuer<>.combining(_:)();
      v70 = v69;

      *(v0 + 160) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 168) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 136) = v68;
      *(v0 + 144) = v70;
      v71 = swift_task_alloc();
      *(v0 + 680) = v71;
      *v71 = v0;
      v71[1] = sub_100788970;
      v59 = v0 + 96;
      v60 = v0 + 136;
    }

    return PlaybackController.perform(_:route:intent:issuer:)(v59, 0, 0, v60);
  }

  else
  {
    v37 = *(v0 + 480);
    v38 = *(v0 + 440);
    sub_1001DFD48(v38);
    sub_100309AD8(v10);
    v39 = *(v14 + *(type metadata accessor for DragDropToQueue.Origin(0) + 20));
    v40 = *(v14 + *(v37 + 20));
    sub_10010FC20(&unk_101183930);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBDC20;
    *(v41 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v41 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v41 + 32) = 0x706F724467617244;
    *(v41 + 40) = 0xEA00000000006F54;
    *(v41 + 96) = &type metadata for DragDropIntentIdentifier;
    *(v41 + 104) = &off_10109DFB0;
    *(v41 + 72) = v40;
    sub_1001DFD48(v38);
    v42 = static Player.CommandIssuer<>.combining(_:)();
    v44 = v43;

    *(v0 + 400) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 408) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 376) = v42;
    *(v0 + 384) = v44;
    v45 = swift_task_alloc();
    *(v0 + 600) = v45;
    *v45 = v0;
    v45[1] = sub_100786B78;
    v46 = *(v0 + 440);

    return PlaybackController.insert(_:location:issuer:)(v39, v46, v0 + 376);
  }
}

uint64_t sub_10078939C()
{
  v1 = v0[63];
  v2 = v0[59];

  sub_10078A3E8(v2, type metadata accessor for PlaybackIntentDescriptor);
  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10078946C()
{
  v1 = *(v0 + 496);
  sub_10078A49C(*(v0 + 440));

  sub_10078A3E8(v1, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100789534()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 336);
  sub_10000959C(v0 + 296);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100789634()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 216);
  sub_10000959C(v0 + 176);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100789734()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 496);
  sub_100309AD8(*(v0 + 584));

  sub_100309AD8(v1);

  sub_100309AD8(v3);
  sub_10078A3E8(v5, type metadata accessor for DragDropToQueue);
  sub_100440B1C(v0 + 136);
  sub_10000959C(v0 + 96);

  v6 = *(v0 + 8);

  return v6();
}

Swift::Int sub_100789834(void *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = [a1 tracklist];
  v5 = [v4 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (a2 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Player.InsertCommand.Location.hash(into:)(v7, a2);
  }

  return Hasher._finalize()();
}

id sub_10078990C()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:2 intent:1];
}

uint64_t sub_100789954(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002F3F4;

  return sub_1007852FC(a1, a2, v8, v6, v7);
}

void sub_100789A18(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = [*v1 tracklist];
  v5 = [v4 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v3 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Player.InsertCommand.Location.hash(into:)(a1, v3);
  }
}

Swift::Int sub_100789AF8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = [v2 tracklist];
  v4 = [v3 uniqueIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (v1 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Player.InsertCommand.Location.hash(into:)(v6, v1);
  }

  return Hasher._finalize()();
}

unint64_t sub_100789BE0()
{
  result = qword_1011A2548;
  if (!qword_1011A2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2548);
  }

  return result;
}

unint64_t sub_100789C7C(uint64_t a1)
{
  result = sub_100789CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100789CA4()
{
  result = qword_1011A2588;
  if (!qword_1011A2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A2588);
  }

  return result;
}

uint64_t sub_100789D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropToQueue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100789DA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = [a1 tracklist];
  v8 = [v7 uniqueIdentifier];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [a3 tracklist];
  v13 = [v12 uniqueIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  result = a4 == 4 && a2 == 4;
  if (a2 != 4 && a4 != 4)
  {
    sub_1001DFD48(a4);
    v20 = static Player.InsertCommand.Location.__derived_enum_equals(_:_:)(a2, a4);
    sub_10078A49C(a4);
    return v20 & 1;
  }

  return result;
}

uint64_t sub_100789F0C(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for DragDropToQueue(0) - 8;
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 1;
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v39 = *(v10 + 72);
  v41 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v40 = (v4 + 104);
  v15 = (v4 + 8);
  while (1)
  {
    sub_100789D44(v14, v12);
    sub_100538C48(v12, v8);
    v17 = v42;
    v16 = v43;
    (*v40)(v42, v41, v43);
    v18 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v19 = *v15;
    (*v15)(v17, v16);
    v19(v8, v16);
    if (a2 != 4)
    {
      break;
    }

    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v20 = qword_101218AC8;
    v21 = (*(*qword_101218AC8 + 432))();
    if (v21 && (v22 = v21, v23 = [v21 tracklist], v22, v24 = objc_msgSend(v23, "playingItem"), v23, a2 = 4, v24))
    {

      if ((v18 & 1) == 0)
      {
        goto LABEL_19;
      }

      v25 = *&v12[*(type metadata accessor for DragDropToQueue.Origin(0) + 20)];
      v26 = Player.InsertCommand.init(location:playbackIntent:)(0, v25);
      v46 = &type metadata for Player.InsertCommand;
      v47 = &protocol witness table for Player.InsertCommand;
      v44 = v26;
      v45 = v27;
      v28 = *(*v20 + 760);
      v29 = v25;
      a2 = 4;
      v30 = v28(&v44);
      sub_10078A3E8(v12, type metadata accessor for DragDropToQueue);
      sub_10000959C(&v44);
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_10078A3E8(v12, type metadata accessor for DragDropToQueue);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_4:
    v14 += v39;
    if (!--v13)
    {
      return 1;
    }
  }

  if (v18)
  {
    sub_1001DFD48(a2);
    v31 = a2;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v32 = qword_101218AC8;
    v33 = *&v12[*(type metadata accessor for DragDropToQueue.Origin(0) + 20)];
    v34 = Player.InsertCommand.init(location:playbackIntent:)(v31, v33);
    v46 = &type metadata for Player.InsertCommand;
    v47 = &protocol witness table for Player.InsertCommand;
    v44 = v34;
    v45 = v35;
    v36 = *(*v32 + 760);
    sub_10078A4AC(v31);
    v37 = v33;
    LOBYTE(v32) = v36(&v44);
    sub_10078A49C(v31);
    sub_10078A3E8(v12, type metadata accessor for DragDropToQueue);
    sub_10000959C(&v44);
    a2 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

LABEL_19:
  sub_10078A3E8(v12, type metadata accessor for DragDropToQueue);
  return 0;
}

uint64_t sub_10078A3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10078A448()
{
  result = qword_1011A25D0;
  if (!qword_1011A25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A25D0);
  }

  return result;
}

void sub_10078A49C(id a1)
{
  if (a1 != 4)
  {
    sub_100309AD8(a1);
  }
}

id sub_10078A4AC(id result)
{
  if (result != 4)
  {
    return sub_1001DFD48(result);
  }

  return result;
}

unint64_t sub_10078A4D0()
{
  result = qword_1011A25D8;
  if (!qword_1011A25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A25D8);
  }

  return result;
}

uint64_t sub_10078A524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of AlbumFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10078A56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(a2 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_10078A674(*(a2 + 16 * result + 32), *(a2 + 16 * result + 40), a1, a2, a3);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = result;
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v10 = result;
  if (result >= *(v9 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = type metadata accessor for Track();
  (*(*(v11 - 8) + 16))(a4, v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v10, v11);
}

unint64_t sub_10078A674(Swift::UInt a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 16);
  if (a3)
  {
    result = sub_10079243C(a1, a2 & 1, a4 + 32, v8, (a3 + 16));
    if (v10)
    {
      return 0;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_13:
      if (result < *(a5 + 16))
      {
      }
    }

    __break(1u);
    return result;
  }

  result = 0;
  if (v8)
  {
    for (i = (a4 + 40); ; i += 16)
    {
      if (*i)
      {
        if (a2)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) == 0 && *(i - 1) == a1)
      {
        goto LABEL_13;
      }

      if (v8 == ++result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10078A730@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v41);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  if (qword_10117F5F8 != -1)
  {
    v7 = swift_once();
  }

  v10 = (*qword_101218AC8 + 432);
  v11 = *v10;
  v12 = (*v10)(v7);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 tracklist];

    sub_1001CC118(v9);
  }

  else
  {
    v15 = type metadata accessor for GenericMusicItem();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  v16 = sub_10010FC20(&qword_10119A880);
  sub_1000089F8(v9, v5, &unk_101189DA0);
  State.init(wrappedValue:)();
  v17 = sub_1000095E8(v9, &unk_101189DA0);
  v18 = v11(v17);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 state];

    v21 = v20 != 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = &a3[v16[12]];
  v44 = v21;
  State.init(wrappedValue:)();
  v23 = v46;
  *v22 = v45;
  *(v22 + 1) = v23;
  v24 = &a3[v16[13]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v16[14];
  *&a3[v25] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  v26 = v16[9];
  v27 = type metadata accessor for Playlist.Entry();
  v28 = *(v27 - 8);
  v29 = v43;
  (*(v28 + 16))(&a3[v26], v43, v27);
  v30 = v16[10];
  v31 = type metadata accessor for Playlist();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v34 = &a3[v30];
  v41 = a3;
  v35 = v42;
  v33(v34, v42, v31);
  Player.state<A>(for:)(v29);
  sub_10010FC20(&unk_1011A46E0);
  sub_100020674(&qword_1011A2888, &unk_1011A46E0);
  v36 = ObservedObject.init(wrappedValue:)();
  v38 = v37;
  (*(v32 + 8))(v35, v31);
  result = (*(v28 + 8))(v29, v27);
  v40 = v41;
  *v41 = v36;
  v40[1] = v38;
  return result;
}

uint64_t sub_10078AB60@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v41);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  if (qword_10117F5F8 != -1)
  {
    v7 = swift_once();
  }

  v10 = (*qword_101218AC8 + 432);
  v11 = *v10;
  v12 = (*v10)(v7);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 tracklist];

    sub_1001CC118(v9);
  }

  else
  {
    v15 = type metadata accessor for GenericMusicItem();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  v16 = sub_10010FC20(&qword_1011A2878);
  sub_1000089F8(v9, v5, &unk_101189DA0);
  State.init(wrappedValue:)();
  v17 = sub_1000095E8(v9, &unk_101189DA0);
  v18 = v11(v17);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 state];

    v21 = v20 != 2;
  }

  else
  {
    v21 = 1;
  }

  v22 = &a3[v16[12]];
  v44 = v21;
  State.init(wrappedValue:)();
  v23 = v46;
  *v22 = v45;
  *(v22 + 1) = v23;
  v24 = &a3[v16[13]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v16[14];
  *&a3[v25] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  v26 = v16[9];
  v27 = type metadata accessor for Track();
  v28 = *(v27 - 8);
  v29 = v43;
  (*(v28 + 16))(&a3[v26], v43, v27);
  v30 = v16[10];
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v34 = &a3[v30];
  v41 = a3;
  v35 = v42;
  v33(v34, v42, v31);
  Player.state<A>(for:)(v29);
  sub_10010FC20(&qword_10118A600);
  sub_100020674(&qword_10118A608, &qword_10118A600);
  v36 = ObservedObject.init(wrappedValue:)();
  v38 = v37;
  (*(v32 + 8))(v35, v31);
  result = (*(v28 + 8))(v29, v27);
  v40 = v41;
  *v41 = v36;
  v40[1] = v38;
  return result;
}

uint64_t sub_10078AF90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Track.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Song();
    (*(*(v10 - 8) + 32))(a1, v8, v10);
    v11 = &enum case for GenericMusicItem.song(_:);
LABEL_5:
    v13 = *v11;
    v14 = type metadata accessor for GenericMusicItem();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a1, v13, v14);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }

  if (v9 == enum case for Track.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = type metadata accessor for MusicVideo();
    (*(*(v12 - 8) + 32))(a1, v8, v12);
    v11 = &enum case for GenericMusicItem.musicVideo(_:);
    goto LABEL_5;
  }

  v17 = type metadata accessor for GenericMusicItem();
  (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10078B234(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == enum case for Track.song(_:) || v6 == enum case for Track.musicVideo(_:))
  {
    v8 = v6 != enum case for Track.song(_:);
    (*(v2 + 8))(v5, a1);
    return v8;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10078B3EC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v23 = a1;
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v21 = *(v10 - 8);
  v22 = v10;
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v14 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  v15 = *(v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 16);

  sub_10078A56C(v13, v14, v15, v12);

  v16 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(v2 + v16, v5, &unk_101184730);
  v17 = *(v7 + 48);
  if (v17(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v6);
    v18 = v17(v5, 1, v6);
    if (v18 != 1)
    {
      v18 = sub_1000095E8(v5, &unk_101184730);
    }
  }

  else
  {
    v18 = (*(v7 + 32))(v9, v5, v6);
  }

  __chkstk_darwin(v18);
  *(&v20 - 2) = v12;
  *(&v20 - 1) = v9;
  v24[3] = sub_10010FC20(&qword_1011A2868);
  v24[4] = sub_100020674(&qword_1011A2870, &qword_1011A2868);
  sub_10001C8B8(v24);
  sub_10010FC20(&qword_1011A2878);
  sub_100020674(&qword_1011A2880, &qword_1011A2878);
  UIHostingConfiguration<>.init(content:)();
  UITableViewCell.contentConfiguration.setter();
  (*(v7 + 8))(v9, v6);
  return (*(v21 + 8))(v12, v22);
}

uint64_t sub_10078B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v11 = __chkstk_darwin(v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return sub_10078AB60(v13, v9, a3);
}

uint64_t sub_10078B958(void (*a1)(char *, uint64_t, uint64_t), char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v8 - 8);
  v38 = &v35 - v9;
  v10 = sub_10010FC20(&qword_101199728);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_10010FC20(&qword_10119A800);
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v4 + v17, 1, 1, v18);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = 0xF000000000000007;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_observers) = &_swiftEmptySetSingleton;
  v20 = (v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  *v20 = sub_1007935F0(_swiftEmptyArrayStorage);
  v20[1] = v21;
  v20[2] = v22;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_playActivityFeature) = 0;
  v23 = a1;
  (*(v19 + 16))(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, a1, v18);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_onlyDownloaded) = a2;
  v24 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource;
  v25 = type metadata accessor for MusicPropertySource();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v43 = a3;
  v37 = v25;
  v27(v4 + v24, a3);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v35 = v23;
  v36 = v18;
  v28 = Player.state<A>(for:)(v23);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state) = v28;
  (*(*v28 + 280))();
  sub_100027010();
  v29 = static OS_dispatch_queue.main.getter();
  v44 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = v38;
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  sub_100020674(&qword_101199730, &qword_101199728);
  sub_10079392C(&qword_101184920, sub_100027010);
  v32 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v31, &qword_101182140);

  (*(v40 + 8))(v13, v32);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10119A810, &qword_10119A800);
  v33 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v16, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10078C2A0();
  (*(v26 + 8))(v43, v37);
  (*(v19 + 8))(v35, v36);
  return v4;
}

uint64_t sub_10078BF48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = sub_10028434C();
      if (*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v3 = *(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v5 = (*(v3 + 112))(ObjectType, v3);
      }

      else
      {
        v5 = 1;
      }

      [v2 setHidden:v5 & 1];

      sub_100283D74();
      [*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10078C054(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_10079397C(a1, v1 + v10);
  swift_endAccess();
  v11 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state);
  sub_1000089F8(v1 + v10, v5, &unk_101184730);
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v6);
    if (v12(v5, 1, v6) != 1)
    {
      sub_1000095E8(v5, &unk_101184730);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  (*(*v11 + 224))(v9);
  return sub_1000095E8(a1, &unk_101184730);
}

uint64_t sub_10078C2A0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v35 - v3;
  v5 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v8 = sub_10010FC20(&qword_101192888);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v12 = sub_10010FC20(&qword_101192890);
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_10010FC20(&qword_101188E88);
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  v18 = type metadata accessor for MusicPropertySource();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_preferredSource, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for MusicPropertySource.catalog(_:))
  {
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v26 = static MainActor.shared.getter();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = &protocol witness table for MainActor;
    v27[4] = v25;

    sub_1001F4CB8(0, 0, v4, &unk_100EE2270, v27);
  }

  else if (v23 == enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for Album();
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    swift_getKeyPath();
    LOBYTE(v41) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    sub_100020674(&qword_101192898, &qword_101188E88);
    v29 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v30 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = v29;
    v35[1] = v29;

    sub_1004E6028(v30);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v31 = static OS_dispatch_queue.main.getter();
    v41 = v31;
    v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    sub_100020674(&qword_1011928A0, &qword_101192888);
    sub_10079392C(&qword_101184920, sub_100027010);
    v33 = v36;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v7, &qword_101182140);

    (*(v37 + 8))(v11, v33);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_1011928A8, &qword_101192890);
    v34 = v39;
    Publisher<>.sink(receiveValue:)();

    (*(v38 + 8))(v14, v34);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return (*(v40 + 8))(v17, v15);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10078CA7C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v2 - 8);
  v62 = &v58 - v3;
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10010FC20(&unk_101188900);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_10010FC20(&qword_1011928B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_10010FC20(&qword_1011928B8);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = sub_10010FC20(&qword_1011928C0);
  v64 = *(v19 - 8);
  __chkstk_darwin(v19);
  v63 = &v58 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v34 = swift_unknownObjectWeakLoadStrong();

      if (v34)
      {
        v35 = enum case for MusicPropertySource.library(_:);
        v36 = type metadata accessor for MusicPropertySource();
        (*(*(v36 - 8) + 104))(v12, v35, v36);
        v37 = _s14descr101094081C15DataSourceErrorOMa();
        (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
        sub_10028555C(v12);
        swift_unknownObjectRelease();
        return sub_1000095E8(v12, &unk_101188900);
      }
    }

    return result;
  }

  v22 = Strong;
  v59 = v9;
  v60 = v5;
  v23 = v4;
  sub_1000089F8(a1, v15, &qword_1011928B0);
  v24 = sub_10010FC20(&qword_1011928C8);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {

    sub_1000095E8(v15, &qword_1011928B0);
    (*(v64 + 56))(v18, 1, 1, v19);
LABEL_9:
    sub_1000095E8(v18, &qword_1011928B8);
    goto LABEL_10;
  }

  v26 = MusicLibrarySectionedResponse.sections.getter();
  (*(v25 + 8))(v15, v24);
  v27 = *(v26 + 16);
  v58 = v23;
  if (v27)
  {
    v28 = v64;
    (*(v64 + 16))(v18, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)), v19);
    v29 = 0;
    v30 = v59;
  }

  else
  {
    v29 = 1;
    v30 = v59;
    v28 = v64;
  }

  (*(v28 + 56))(v18, v29, 1, v19);
  v31 = (*(v28 + 48))(v18, 1, v19);
  v32 = v60;
  if (v31 == 1)
  {

    goto LABEL_9;
  }

  v38 = *(v28 + 32);
  v39 = v63;
  v38(v63, v18, v19);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    sub_10028555C(v12);
    swift_unknownObjectRelease();
    sub_1000095E8(v12, &unk_101188900);
  }

  v41 = v30;
  MusicLibrarySection.items.getter();
  v42 = v62;
  MusicLibrarySection.item.getter();
  v43 = type metadata accessor for Album();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_10078C054(v42);
  v44 = v61;
  v45 = v30;
  v46 = v58;
  (*(v32 + 16))(v61, v45, v58);
  v47 = sub_100792B6C(v44);
  v48 = (v22 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  *v48 = v47;
  v48[1] = v49;
  v48[2] = v50;

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = sub_10028434C();
    if (*(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v54 = *(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v56 = (*(v54 + 112))(ObjectType, v54);
    }

    else
    {
      v56 = 1;
    }

    v57 = v64;
    [v53 setHidden:{v56 & 1, v58}];

    sub_100283D74();
    [*(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    swift_unknownObjectRelease();
  }

  else
  {

    v57 = v64;
  }

  (*(v32 + 8))(v41, v46);
  return (*(v57 + 8))(v39, v19);
}

uint64_t sub_10078D278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_10010FC20(&qword_101182140);
  v4[16] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011928F8);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101192900);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101192908);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  sub_10010FC20(&unk_101188900);
  v4[26] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v4[27] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011841D0);
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011815C0);
  v4[32] = v9;
  v4[33] = *(v9 - 8);
  v4[34] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181C50);
  v4[35] = v10;
  v4[36] = *(v10 - 8);
  v4[37] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v11 = type metadata accessor for Album();
  v4[40] = v11;
  v4[41] = *(v11 - 8);
  v4[42] = swift_task_alloc();
  v12 = sub_10010FC20(&unk_101192970);
  v4[43] = v12;
  v4[44] = *(v12 - 8);
  v4[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[46] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[47] = v14;
  v4[48] = v13;

  return _swift_task_switch(sub_10078D73C, v14, v13);
}

uint64_t sub_10078D73C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[49] = Strong;
  if (Strong)
  {
    v2 = Album.catalogID.getter();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      swift_getKeyPath();
      v0[12] = v4;
      v0[13] = v5;
      sub_10079392C(&qword_101192880, &type metadata accessor for Album);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v6 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v6(v0 + 2, 0);
      sub_10010FC20(&qword_101183990);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBE270;
      sub_10010FC20(&qword_101192878);
      *(v7 + 32) = static PartialMusicProperty<A>.tracks.getter();
      *(v7 + 40) = static PartialMusicProperty<A>.tracksPopularity.getter();
      *(v7 + 48) = static PartialMusicProperty<A>.artists.getter();
      MusicCatalogResourceRequest.properties.setter();
      MusicCatalogResourceRequest.prewarmForPlayback.setter();
      v8 = swift_task_alloc();
      v0[50] = v8;
      *v8 = v0;
      v8[1] = sub_10078DA6C;
      v9 = v0[43];
      v10 = v0[37];

      return MusicCatalogResourceRequest.response()(v10, v9);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10078DA6C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {

    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10078E5C4;
  }

  else
  {
    v3 = *(v2 + 376);
    v4 = *(v2 + 384);
    v5 = sub_10078DB94;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10078DB94()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v9 = v0[33];

  MusicCatalogResourceResponse.items.getter();
  (*(v5 + 8))(v4, v6);
  sub_10034DA18(v3);
  (*(v9 + 8))(v7, v8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[39], &unk_101184730);
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = v0[44];
    v11 = v0[45];
    v13 = v0[43];
    if (Strong)
    {
      v14 = v0[26];
      v15 = enum case for MusicPropertySource.catalog(_:);
      v16 = type metadata accessor for MusicPropertySource();
      (*(*(v16 - 8) + 104))(v14, v15, v16);
      v17 = _s14descr101094081C15DataSourceErrorOMa();
      (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
      sub_10028555C(v14);
      swift_unknownObjectRelease();

      sub_1000095E8(v14, &unk_101188900);
    }

    else
    {
    }

    (*(v12 + 8))(v11, v13);
LABEL_23:

    v66 = v0[1];

    return v66();
  }

  v19 = v0[41];
  v18 = v0[42];
  v20 = v0[40];
  v21 = v0[38];
  v22 = v0[28];
  v23 = v0[29];
  v24 = v0[27];
  (*(v19 + 32))(v18, v0[39], v20);
  v80 = *(v19 + 16);
  v80(v21, v18, v20);
  (*(v19 + 56))(v21, 0, 1, v20);
  sub_10078C054(v21);
  Album.tracks.getter();
  v25 = *(v23 + 48);
  if (v25(v24, 1, v22) == 1)
  {
    v27 = v0[27];
    v26 = v0[28];
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v25(v27, 1, v26) != 1)
    {
      sub_1000095E8(v0[27], &unk_1011842D0);
    }
  }

  else
  {
    (*(v0[29] + 32))(v0[31], v0[27], v0[28]);
  }

  v28 = v0[51];
  v29 = v0[30];
  (*(v0[29] + 16))(v29, v0[31], v0[28]);
  v30 = sub_100792B6C(v29);
  if (!v28)
  {
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = v0[49];
    (*(v0[29] + 8))(v0[31], v0[28]);
    v42 = (v41 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
    *v42 = v38;
    v42[1] = v39;
    v42[2] = v40;

    v43 = *(v40 + 16);

    if (!v43 && swift_unknownObjectWeakLoadStrong())
    {
      v44 = v0[26];
      v45 = enum case for MusicPropertySource.catalog(_:);
      v46 = type metadata accessor for MusicPropertySource();
      (*(*(v46 - 8) + 104))(v44, v45, v46);
      v47 = _s14descr101094081C15DataSourceErrorOMa();
      (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
      sub_10028555C(v44);
      swift_unknownObjectRelease();
      sub_1000095E8(v44, &unk_101188900);
    }

    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = v48;
      v50 = sub_10028434C();
      if (*(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v51 = *(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v53 = (*(v51 + 112))(ObjectType, v51);
      }

      else
      {
        v53 = 1;
      }

      [v50 setHidden:v53 & 1];

      sub_100283D74();
      [*(v49 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      swift_unknownObjectRelease();
    }

    v54 = v0[49];
    v79 = v0[45];
    v55 = v0[42];
    v77 = v0[44];
    v78 = v0[43];
    v57 = v0[40];
    v56 = v0[41];
    v58 = v0[25];
    v76 = v0[24];
    v73 = v0[21];
    v74 = v55;
    v71 = v0[23];
    v72 = v0[20];
    v67 = v0[19];
    v70 = v0[18];
    v59 = v0[16];
    v68 = v0[17];
    v69 = v0[22];
    sub_10010FC20(&qword_101192910);
    v75 = v56;
    v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100EBC6B0;
    v80(v61 + v60, v55, v57);
    sub_10079392C(&qword_101192918, &type metadata accessor for Album);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_101192920, &qword_101192908);
    v62 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v63 = *(v54 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse);
    *(v54 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_autoupdatingResponse) = v62 | 0x8000000000000000;

    sub_1004E6028(v63);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v64 = static OS_dispatch_queue.main.getter();
    v0[14] = v64;
    v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v65 - 8) + 56))(v59, 1, 1, v65);
    sub_100020674(&qword_101192928, &qword_1011928F8);
    sub_10079392C(&qword_101184920, sub_100027010);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v59, &qword_101182140);

    (*(v70 + 8))(v67, v68);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_101192930, &qword_101192900);
    Publisher<>.sink(receiveValue:)();

    (*(v73 + 8))(v69, v72);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v76 + 8))(v58, v71);
    (*(v75 + 8))(v74, v57);
    (*(v77 + 8))(v79, v78);
    goto LABEL_23;
  }

  v33 = v0[31];
  v35 = v0 + 28;
  v34 = v0[28];
  v81 = v35[1];

  v36 = *(v81 + 8);

  return v36(v33, v34);
}

uint64_t sub_10078E5C4()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_1000095E8(v0[39], &unk_101184730);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  if (Strong)
  {
    v8 = v0[26];
    v9 = enum case for MusicPropertySource.catalog(_:);
    v10 = type metadata accessor for MusicPropertySource();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    v11 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_10028555C(v8);
    swift_unknownObjectRelease();

    sub_1000095E8(v8, &unk_101188900);
  }

  else
  {
  }

  (*(v6 + 8))(v5, v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10078E82C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v2 - 8);
  v47 = &v43 - v3;
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v43 - v8;
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_10010FC20(&qword_101192938);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_10010FC20(&qword_101192940);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v45 = type metadata accessor for Album();
  v50 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v49 = &v43 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v43 = v5;
    v44 = v4;
    sub_1000089F8(a1, v14, &qword_101192938);
    v25 = sub_10010FC20(&qword_101192948);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v14, 1, v25) == 1)
    {

      return sub_1000095E8(v14, &qword_101192938);
    }

    else
    {
      v27 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v26 + 8))(v14, v25);
      if (*(v27 + 16))
      {
        (*(v16 + 16))(v18, v27 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v16 + 8))(v18, v15);
        v29 = v49;
        v28 = v50;
        v30 = v45;
        (*(v50 + 32))(v49, v20, v45);
        (*(v28 + 16))(v11, v29, v30);
        (*(v28 + 56))(v11, 0, 1, v30);
        sub_10078C054(v11);
        v31 = v47;
        Album.tracks.getter();
        v33 = v43;
        v32 = v44;
        v34 = *(v43 + 48);
        if (v34(v31, 1, v44) == 1)
        {
          type metadata accessor for Track();
          v35 = v48;
          MusicItemCollection.init(arrayLiteral:)();
          if (v34(v31, 1, v32) != 1)
          {
            sub_1000095E8(v31, &unk_1011842D0);
          }
        }

        else
        {
          v35 = v48;
          (*(v33 + 32))(v48, v31, v32);
        }

        v36 = v46;
        (*(v33 + 16))(v46, v35, v32);
        v37 = sub_100792B6C(v36);
        v39 = v38;
        v41 = v40;
        (*(v33 + 8))(v35, v32);
        (*(v50 + 8))(v49, v30);
        v42 = (v24 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
        *v42 = v37;
        v42[1] = v39;
        v42[2] = v41;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10078EE9C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10028434C();
    if (*(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v6 = *(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 112))(ObjectType, v6);
    }

    else
    {
      v8 = 1;
    }

    [v5 setHidden:v8 & 1];

    sub_100283D74();
    [*(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10078EFB4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = sub_10078A674(*(v2 + 16 * result + 32), *(v2 + 16 * result + 40), *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data), v2, *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 16));
  if (!v3)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = v3[2];

  return v4;
}

uint64_t sub_10078F02C(unint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v24[2] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = (v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v9 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data + 8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v24[0] = *v8;
    v24[1] = v4;

    v12 = 0;
    v13 = (v9 + 40);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v9 + 16))
    {
      if ((*v13 & 1) == 0)
      {
        v15 = *(v13 - 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1004995E0(0, *(v14 + 2) + 1, 1, v14);
          v14 = result;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          result = sub_1004995E0((v16 > 1), v17 + 1, 1, v14);
          v14 = result;
        }

        *(v14 + 2) = v17 + 1;
        *&v14[8 * v17 + 32] = v15;
      }

      ++v12;
      v13 += 16;
      if (v10 == v12)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_13:
  v18 = *(v14 + 2);

  if (v18 <= 1)
  {
    return 0;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v8[1];
  if (*(v19 + 16) > v25)
  {
    v20 = v19 + 16 * v25;
    if ((*(v20 + 40) & 1) == 0)
    {
      v21 = *(v20 + 32);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0x2063736944;
      v22._object = 0xE500000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
      v26 = v21;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    return 0;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10078F320()
{
  v83 = type metadata accessor for Date.FormatStyle();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v2 - 8);
  v4 = &v81 - v3;
  v5 = type metadata accessor for MusicFavoriteStatus();
  v90 = *(v5 - 8);
  __chkstk_darwin(v5);
  v89 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v81 - v8;
  v9 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v9);
  v87 = &v81 - v10;
  v86 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v11 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v16 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v16 - 8);
  v18 = &v81 - v17;
  v95 = type metadata accessor for Album();
  v19 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  v21 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
LABEL_42:
    swift_once();
  }

  v91 = v5;
  v92 = v4;
  v22 = sub_1000060E4(v9, qword_101187268);
  sub_1000089F8(v22, v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v23 = sub_10010FC20(&qword_101187768);
  v24 = sub_1000060E4(v23, qword_101187280);
  sub_1000089F8(v24, v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768);
  v25 = (v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable;
  *(v21 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  v93 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  v29 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
  swift_beginAccess();
  sub_1000089F8(&v0[v29], v18, &unk_101184730);
  v30 = *(v19 + 6);
  v31 = v95;
  v32 = v30(v18, 1, v95);
  v84 = v19;
  if (v32 == 1)
  {
    v33 = *(v19 + 2);
    v34 = v94;
    v33(v94, &v0[OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album], v31);
    v35 = v30(v18, 1, v31);
    v36 = v34;
    if (v35 != 1)
    {
      v35 = sub_1000095E8(v18, &unk_101184730);
    }
  }

  else
  {
    v36 = v94;
    v35 = (*(v19 + 4))(v94, v18, v31);
  }

  (*(**&v0[OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_state] + 256))(v35);
  v37 = v85;
  v38 = v86;
  (*(v11 + 104))(v85, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v86);
  v39 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)() & 1;
  v40 = *(v11 + 8);
  v40(v37, v38);
  v40(v15, v38);
  if (v39 == *(v21 + v28))
  {
    v86 = 0;
    *(v21 + v28) = v39;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v81 - 2) = v21;
    *(&v81 - 8) = v39;
    v96 = v21;
    sub_10079392C(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v86 = 0;
  }

  v42 = v91;
  v43 = v92;
  v44 = v90;
  v45 = v89;
  v46 = v87;
  Album.artwork.getter();
  sub_100261718(v46);
  v47 = Album.title.getter();
  sub_100261EE0(v47, v48);
  v49 = v88;
  Album.favoriteStatus.getter();
  (*(v44 + 104))(v45, enum case for MusicFavoriteStatus.favorited(_:), v42);
  v50 = static MusicFavoriteStatus.== infix(_:_:)();
  v51 = *(v44 + 8);
  v51(v45, v42);
  v51(v49, v42);
  if (v50)
  {
    v52 = 0x6C69662E72617473;
  }

  else
  {
    v52 = 0;
  }

  if (v50)
  {
    v53 = 0xE90000000000006CLL;
  }

  else
  {
    v53 = 0;
  }

  v54 = swift_getKeyPath();
  v5 = &v81;
  __chkstk_darwin(v54);
  *(&v81 - 4) = v21;
  *(&v81 - 3) = v52;
  *(&v81 - 2) = v53;
  v96 = v21;
  sub_10079392C(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  v55 = v86;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v18 = v55;

  v99 = Album.artistName.getter();
  v100 = v56;
  v57 = Album.genreNames.getter();
  if (v57[2])
  {
    v59 = v57[4];
    v58 = v57[5];
  }

  else
  {
    v59 = 0;
    v58 = 0;
  }

  v101 = v59;
  v102 = v58;
  Album.releaseDate.getter();
  v60 = type metadata accessor for Date();
  v11 = *(v60 - 8);
  v61 = (*(v11 + 48))(v43, 1, v60);
  v93 = v55;
  if (v61 == 1)
  {
    sub_1000095E8(v43, &qword_101188C20);
    v0 = v36;
    v62 = Album.releaseYearString.getter();
  }

  else
  {
    v5 = v81;
    static FormatStyle<>.musicReleaseYear.getter();
    sub_10079392C(&unk_1011A3900, &type metadata accessor for Date.FormatStyle);
    v64 = v83;
    v0 = v43;
    Date.formatted<A>(_:)();
    (*(v82 + 8))(v5, v64);
    v65 = *(v11 + 8);
    v11 += 8;
    v65(v43, v60);
    v62 = v96;
    v63 = v97;
  }

  v15 = 0;
  v19 = v98;
  v103 = v62;
  v104 = v63;
  v9 = 3;
  v4 = _swiftEmptyArrayStorage;
LABEL_24:
  if (v15 <= 3)
  {
    v66 = 3;
  }

  else
  {
    v66 = v15;
  }

  v67 = v66 + 1;
  v68 = 16 * v15 + 40;
  while (v15 != 3)
  {
    if (v67 == ++v15)
    {
      __break(1u);
      goto LABEL_42;
    }

    v69 = v68 + 16;
    v0 = *&v98[v68];
    v68 += 16;
    if (v0)
    {
      v18 = *(&v95 + v69);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100498B7C(0, *(v4 + 2) + 1, 1, v4);
      }

      v5 = *(v4 + 2);
      v70 = *(v4 + 3);
      v11 = v5 + 1;
      if (v5 >= v70 >> 1)
      {
        v4 = sub_100498B7C((v70 > 1), v5 + 1, 1, v4);
      }

      *(v4 + 2) = v11;
      v71 = &v4[16 * v5];
      *(v71 + 4) = v18;
      *(v71 + 5) = v0;
      goto LABEL_24;
    }
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v96 = v4;
  sub_10010FC20(&qword_101183BC8);
  sub_100020674(&unk_101183BD0, &qword_101183BC8);
  v72 = BidirectionalCollection<>.joined(separator:)();
  v74 = v73;

  v75 = v74;
  v76 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v76 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (!v76)
  {

    v72 = 0;
    v75 = 0;
  }

  v78 = v94;
  v77 = v95;
  v79 = v84;
  sub_100262364(v72, v75);
  v79[1](v78, v77);
  return v21;
}

uint64_t sub_10078FF60(char *a1)
{
  v162 = a1;
  v154 = type metadata accessor for Logger();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v147 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v133 = &v129 - v4;
  v152 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v132 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v156 = &v129 - v7;
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v143 = &v129 - v9;
  v138 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v138);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  v140 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v142 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v12;
  __chkstk_darwin(v13);
  v144 = &v129 - v14;
  v136 = type metadata accessor for MusicPropertySource();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101188910);
  __chkstk_darwin(v16 - 8);
  v137 = &v129 - v17;
  v150 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v19 - 8);
  v155 = (&v129 - v20);
  v160 = type metadata accessor for Album();
  v164 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v145 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v129 - v24;
  v25 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v25 - 8);
  v27 = &v129 - v26;
  v28 = type metadata accessor for GenericMusicItem();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Track();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v161 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v146 = v1;
  v38 = v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data;
  v39 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_data);
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);

  sub_10078A56C(v39, v40, v41, v37);

  v42 = v37;

  sub_10078AF90(v27);
  if ((*(v29 + 6))(v27, 1, v28) == 1)
  {
    sub_1000095E8(v27, &unk_101189DA0);
    v43 = v147;
    Logger.init(subsystem:category:)();
    (*(v33 + 16))(v161, v37, v32);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = v33;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v171 = v164;
      *v47 = 136446210;
      sub_10079392C(&qword_101181A08, &type metadata accessor for Track);
      v162 = v42;
      v48 = v161;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v46 + 8);
      v52(v48, v32);
      v53 = sub_1000105AC(v49, v51, &v171);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "Couldn't get generic music item from item: %{public}s", v47, 0xCu);
      sub_10000959C(v164);

      (*(v153 + 8))(v43, v154);
      return (v52)(v162, v32);
    }

    else
    {

      v72 = *(v33 + 8);
      v72(v161, v32);
      (*(v153 + 8))(v43, v154);
      return (v72)(v42, v32);
    }
  }

  else
  {
    v162 = v37;
    v55 = v32;
    v147 = v29;
    v56 = *(v29 + 4);
    v161 = v28;
    v56(v31, v27, v28);
    v57 = v163;
    v131 = v31;
    sub_100538C48(v31, v163);
    v58 = OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_loadedAlbum;
    v59 = v146;
    swift_beginAccess();
    v60 = v155;
    sub_1000089F8(v59 + v58, v155, &unk_101184730);
    v61 = v164;
    v62 = *(v164 + 48);
    v63 = v160;
    v64 = v62(v60, 1, v160);
    v65 = v61;
    v66 = v57;
    if (v64 == 1)
    {
      v67 = v59;
      v68 = v158;
      (*(v65 + 16))(v158, v59 + OBJC_IVAR____TtCE5MusicV8MusicKit5Album10DataSource_album, v63);
      v69 = v62(v60, 1, v63);
      v70 = v159;
      v71 = v157;
      if (v69 != 1)
      {
        sub_1000095E8(v155, &unk_101184730);
      }
    }

    else
    {
      v67 = v59;
      v68 = v158;
      (*(v65 + 32))(v158, v60, v63);
      v70 = v159;
      v71 = v157;
    }

    v73 = v145;
    (*(v71 + 16))(v145, v66, v70);
    v74 = (*(v71 + 88))(v73, v70);
    if (v74 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      (*(v71 + 96))(v73, v70);
      (*(v151 + 32))(v156, v73, v152);
      Strong = swift_unknownObjectWeakLoadStrong();
      v130 = v33;
      if (Strong)
      {
        v76 = [Strong traitCollection];
        swift_unknownObjectRelease();
      }

      else
      {
        v76 = 0;
      }

      v105 = v156;
      sub_1005384B8(v76, &v165);

      if (v169)
      {
        v171 = v165;
        v172 = v166;
        v173 = v167;
        v174 = v168;
        v175 = v169;
        v176 = v170;
        v106 = Alert.uiAlertController.getter();
        sub_1000095E8(&v165, &qword_10118BFD0);
        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107)
        {
          [v107 presentViewController:v106 animated:1 completion:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v126 = v131;
        v127 = v130;
        (*(v151 + 8))(v156, v152);
        (*(v164 + 8))(v68, v63);
        (*(v71 + 8))(v163, v70);
        (*(v147 + 1))(v126, v161);
        return (*(v127 + 8))(v162, v55);
      }

      else
      {
        v157 = v55;
        v108 = v133;
        Logger.init(subsystem:category:)();
        v109 = v151;
        v110 = v132;
        v111 = v152;
        (*(v151 + 16))(v132, v105, v152);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v155 = v112;
          v115 = v114;
          v116 = swift_slowAlloc();
          *&v171 = v116;
          *v115 = 136446210;
          LODWORD(v150) = v113;
          v117 = MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter();
          v118 = v111;
          v119 = v71;
          v121 = v120;
          v122 = *(v109 + 8);
          v122(v110, v118);
          v123 = sub_1000105AC(v117, v121, &v171);

          v124 = v115;
          *(v115 + 4) = v123;
          v125 = v155;
          _os_log_impl(&_mh_execute_header, v155, v150, "Couldn't create alert controller for reason: %{public}s", v124, 0xCu);
          sub_10000959C(v116);

          (*(v153 + 8))(v133, v154);
          v122(v105, v118);
          (*(v164 + 8))(v158, v160);
          (*(v119 + 8))(v163, v159);
        }

        else
        {

          v128 = *(v109 + 8);
          v128(v110, v111);
          (*(v153 + 8))(v108, v154);
          v128(v105, v111);
          (*(v164 + 8))(v68, v160);
          (*(v71 + 8))(v163, v70);
        }

        (*(v147 + 1))(v131, v161);
        return (*(v130 + 8))(v162, v157);
      }
    }

    else if (v74 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      *(&v172 + 1) = v63;
      *&v173 = &protocol witness table for Album;
      v77 = sub_10001C8B8(&v171);
      (*(v164 + 16))(v77, v68, v63);
      *(&v166 + 1) = v55;
      *&v167 = &protocol witness table for Track;
      v78 = sub_10001C8B8(&v165);
      v79 = *(v33 + 16);
      v80 = v162;
      v79(v78, v162, v55);
      v81 = v135;
      v82 = v134;
      v83 = v136;
      (*(v135 + 104))(v134, enum case for MusicPropertySource.catalog(_:), v136);
      v84 = static MusicPropertySource.== infix(_:_:)();
      (*(v81 + 8))(v82, v83);
      v85 = type metadata accessor for MusicPlaybackSource();
      v86 = *(v85 - 8);
      v87 = &enum case for MusicPlaybackSource.catalog(_:);
      if ((v84 & 1) == 0)
      {
        v87 = &enum case for MusicPlaybackSource.library(_:);
      }

      v88 = v137;
      (*(*(v85 - 8) + 104))(v137, *v87, v85);
      (*(v86 + 56))(v88, 0, 1, v85);
      v89 = v148;
      MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
      v90 = v139;
      (*(v149 + 16))(v139, v89, v150);
      swift_storeEnumTagMultiPayload();
      *(&v172 + 1) = v55;
      *&v173 = &protocol witness table for Track;
      v91 = sub_10001C8B8(&v171);
      v79(v91, v80, v55);
      v92 = swift_unknownObjectWeakLoadStrong();
      *(&v166 + 1) = _s10DataSourceCMa_1();
      *&v167 = &off_1010BEC68;
      *&v165 = v67;

      v93 = v144;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v90, &v171, 3, 1, 0, 1, 0, 1, v144, v92, &v165);
      v94 = type metadata accessor for TaskPriority();
      v95 = v143;
      (*(*(v94 - 8) + 56))(v143, 1, 1, v94);
      v96 = v142;
      sub_1001DFCE4(v93, v142);
      type metadata accessor for MainActor();
      v97 = static MainActor.shared.getter();
      v98 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = v97;
      *(v99 + 24) = &protocol witness table for MainActor;
      sub_1001DFD58(v96, v99 + v98);
      sub_1001F4F78(0, 0, v95, &unk_100EE21F8, v99);

      v100 = swift_unknownObjectWeakLoadStrong();
      v101 = v159;
      v102 = v157;
      if (v100)
      {
        v103 = [v100 navigationController];
        if (v103)
        {
          v104 = v103;
          type metadata accessor for CarPlayRootNavigationController();
          if (swift_dynamicCastClass())
          {
            sub_1001D3268(0, 1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_100188CDC(v93);
      (*(v149 + 8))(v148, v150);
      (*(v164 + 8))(v158, v160);
      (*(v102 + 8))(v163, v101);
      (*(v147 + 1))(v131, v161);
      return (*(v33 + 8))(v80, v55);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}