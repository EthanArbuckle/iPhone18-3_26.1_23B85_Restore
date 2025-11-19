uint64_t specialized static Actions.Queue.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    outlined init with copy of Player.InsertCommand.Location(&v11, v9);
    outlined init with copy of TaskPriority?(&v10, v9, &_sSSSgMd);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = closure #1 in static Actions.Queue.action(context:);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &async function pointer to closure #2 in static Actions.Queue.action(context:);
    *(a2 + 112) = 0;
    *(a2 + 120) = &async function pointer to closure #3 in static Actions.Queue.action(context:);
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_10009BD88()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10009BF0C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      outlined consume of Data._Representation(v10[2], v11);
    }
  }

  v12 = v6 + v2[7];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)((v0 + v3), v4, v1);
}

uint64_t sub_10009C208()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      outlined consume of Data._Representation(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = v11 + v5[7];
  if (*(v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = type metadata accessor for URL();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t partial apply for closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

char *specialized MusicItemState.init(item:musicKitItemState:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a3;
  v82 = a2;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v9 - 8);
  v81 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v60 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd);
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v60 - v13;
  v63 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v62 = *(v63 - 8);
  v14 = __chkstk_darwin(v63);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd);
  v19 = *(v61 - 1);
  __chkstk_darwin(v61);
  v21 = &v60 - v20;
  v22 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  *(v4 + 4) = &_swiftEmptyArrayStorage;
  v66 = v4 + 32;
  v29 = *(*v4 + 128);
  (*(v23 + 104))(&v60 - v27, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v22);
  (*(v23 + 16))(v26, v28, v22);
  Published.init(initialValue:)();
  (*(v23 + 8))(v28, v22);
  (*(v19 + 32))(&v4[v29], v21, v61);
  v30 = *(*v4 + 136);
  v31 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v32 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v32 - 8) + 104))(v18, v31, v32);
  v33 = v62;
  v34 = v63;
  (*(v62 + 104))(v18, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v63);
  v61 = *(v33 + 16);
  v61(v16, v18, v34);
  v35 = v64;
  Published.init(initialValue:)();
  v62 = *(v33 + 8);
  (v62)(v18, v34);
  (*(v65 + 32))(&v4[v30], v35, v72);
  v36 = *(*v4 + 120);
  v37 = type metadata accessor for Song();
  v72 = *(v37 - 8);
  (*(v72 + 16))(&v4[v36], v83, v37);
  v38 = v74;
  *(v4 + 2) = v82;
  *(v4 + 3) = v38;

  specialized MusicItemState.updatePlayabilityStatus()();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  v86 = v37;
  v87 = &protocol witness table for Song;
  swift_getKeyPath();
  v74 = v37;
  v84 = v37;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v61(v16, v18, v34);

  static Published.subscript.setter();
  (v62)(v18, v34);
  v39 = v67;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  type metadata accessor for OS_dispatch_queue();
  v40 = static OS_dispatch_queue.main.getter();
  v88 = v40;
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = *(v41 - 8);
  v43 = v81;
  v65 = *(v42 + 56);
  v64 = (v42 + 56);
  (v65)(v81, 1, 1, v41);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PlayabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd);
  v44 = lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v45 = v68;
  v46 = v43;
  v47 = v69;
  v63 = v44;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v70 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PlayabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd);

  v48 = v71;
  Publisher<>.sink(receiveValue:)();

  v49 = v66;
  (*(v73 + 8))(v45, v48);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v50 = v75;
  v51 = v82;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v52 = static OS_dispatch_queue.main.getter();
  v88 = v52;
  v53 = v81;
  (v65)(v81, 1, 1, v41);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PreviewCapabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd);
  v54 = v77;
  v55 = v78;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v53, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v76 + 8))(v50, v54);
  v56 = swift_allocObject();
  swift_weakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PreviewCapabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd);

  v58 = v80;
  Publisher<>.sink(receiveValue:)();

  (*(v79 + 8))(v55, v58);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v72 + 8))(v83, v74);
  return v4;
}

uint64_t specialized static Actions.Playback.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.Playback.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.Playback.action(context:);
  *(a2 + 112) = 0;
}

uint64_t sub_10009D718()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      outlined consume of Data._Representation(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = v9 + v2[7];
  if (*(v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  v17 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v9 = *(v0 + ((*(*(v1 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_10009DBA4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext();
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      outlined consume of Data._Representation(v15[2], v16);
    }
  }

  v17 = v11 + v7[7];
  if (*(v17 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_10009E094()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC13InsertCommandV8LocationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Actions.Queue.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for Actions.Queue.Context(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10009E62C()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of Actions.PlaybackContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of MusicItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Player.CommandIssuer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Actions.PlaybackContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Actions.PlaybackContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10009E890(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009E944()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009E984()
{

  return swift_deallocObject();
}

void outlined consume of Player.InsertCommand.Location(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, a1);
}

{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<MusicVideo> and conformance MusicItemCollection<A>, &type metadata accessor for MusicVideo, a1);
}

{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, a1);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  lazy protocol witness table accessor for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  outlined init with copy of String(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &async function pointer to closure #2 in static Actions.Share.action(context:);
  *(a2 + 104) = 0;
  *(a2 + 112) = &async function pointer to closure #3 in static Actions.Share.action(context:);
  *(a2 + 120) = 0;
  return result;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.Share@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &async function pointer to closure #2 in static Actions.Share.action(context:);
  *(a2 + 104) = 0;
  *(a2 + 112) = &async function pointer to closure #3 in static Actions.Share.action(context:);
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004C6AB0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004C6AB0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10009EF7C()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004C6AD0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004C6AD0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Share.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004C6AB0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004C6AB0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Share.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004C6AD0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004C6AD0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v45 = a6;
  v37 = a5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v35 = *(v18 - 8);
  v19 = *(v35 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v34 - v20;
  outlined init with copy of ActionPerforming(a1, v47);
  v22 = swift_allocObject();
  outlined init with take of ActionPerforming(v47, v22 + 16);
  *(v22 + 56) = a2;
  *(v22 + 64) = a3;
  v23 = swift_allocObject();
  v24 = v37;
  v38 = v23;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  outlined init with copy of TaskPriority?(v45, v21, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v40 = a1;
  outlined init with copy of ActionPerforming(a1, v46);
  v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  outlined init with take of URL?(v21, v27 + v25, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined init with take of ActionPerforming(v46, v27 + v26);

  String.LocalizationValue.init(stringLiteral:)();
  (*(v43 + 16))();
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v28 = static NSBundle.module;
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;

  outlined destroy of TaskPriority?(v45, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  result = (*(v43 + 8))(v17, v44);
  *a7 = partial apply for closure #1 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[1] = v22;
  v33 = v38;
  a7[2] = &async function pointer to partial apply for closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[3] = v33;
  a7[4] = &async function pointer to partial apply for closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[5] = v27;
  a7[6] = v29;
  a7[7] = v31;
  return result;
}

unint64_t closure #1 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for MusicLibrary.ShareAction();
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMd);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  outlined init with copy of ActionPerforming(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore09ShareableA4Item_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A17LibraryActionable_pMd);
  if (swift_dynamicCast())
  {
    outlined init with take of ActionPerforming(v37, v40);
    __swift_project_boxed_opaque_existential_0Tm(v40, v40[3]);
    static MusicLibraryAction<>.share.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v25 + 8))(v9, v7);
    v14 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    return v14;
  }

  memset(v37, 0, sizeof(v37));
  v38 = 0;
  outlined destroy of TaskPriority?(v37, &_s16MusicKitInternal0A17LibraryActionable_pSgMd);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v36[7] = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;
  outlined destroy of ApplicationCapabilities(v36);
  if ((BYTE1(v36[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v16);
  (*(v17 + 16))(v16, v17);
  v18 = type metadata accessor for URL();
  v19 = (*(*(v18 - 8) + 48))(v6, 1, v18);
  outlined destroy of TaskPriority?(v6, &_s10Foundation3URLVSgMd);
  if (v19 != 1)
  {
    return 0;
  }

  outlined init with copy of ActionPerforming(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd);
  if (swift_dynamicCast())
  {
    v20 = *(&v29 + 1);
    v21 = v30;
    __swift_project_boxed_opaque_existential_0Tm(&v28, *(&v29 + 1));
    (*(v21 + 8))(v20, v21);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    if (v23)
    {

      return 0;
    }
  }

  else
  {
    *&v30 = 0;
    v28 = 0u;
    v29 = 0u;
    outlined destroy of TaskPriority?(&v28, &_s9MusicCore18CatalogIDProviding_pSgMd);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_10009FA3C()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return swift_deallocObject();
}

unint64_t MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter()
{
  v1 = type metadata accessor for MusicLibrary.ShareAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v29 = &v26 - v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v0;
  v16(&v26 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v29;
    v18(v29, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v8, v1);
      return v21;
    }

    if (v20 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v20 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v30 = 0x206E776F6E6B6E55;
        v31 = 0xEF206E6F73616572;
        v18(v27, v8, v1);
        v24._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v24);

        v21 = v30;
        v25 = *(v2 + 8);
        v25(v8, v1);
        v25(v29, v1);
        return v21;
      }

      v21 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v8, v1);
  }

  else if (v17 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v30 = 0xD000000000000019;
    v31 = 0x80000001004C6D20;
    v16(v13, v28, v9);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v21 = v30;
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  return 0;
}

uint64_t closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(int *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:);

  return v5();
}

uint64_t sub_1000A0044()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v2);
}

uint64_t closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 200), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), v20, v19);
  }
}

{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 176), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  outlined init with take of URL?(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 96), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.ShareLyrics.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.ShareLyrics.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.ShareLyrics@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.ShareLyrics.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.ShareLyrics.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  outlined init with take of URL?(a6, v17 + v15, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = outlined init with take of ActionPerforming(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &async function pointer to partial apply for closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:);
  a7[5] = v17;
  return result;
}

uint64_t closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 200), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v14 = v7[3];
    __swift_project_boxed_opaque_existential_0Tm(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), v20, v19);
  }
}

{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12805;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 176), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  outlined init with take of URL?(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 96), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

id implicit closure #1 in Actions.ShareLyrics.Context.menuItemImage.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ShareableMusicItem.shareURL.getter, 0, 0);
}

uint64_t ShareableMusicItem.shareURL.getter()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t specialized ShareableMusicItem.augmentMetadata(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

uint64_t specialized ShareableMusicItem.augmentMetadata(_:)()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    URL._bridgeToObjectiveC()(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Curator.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  EditorialItem.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Genre.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RadioShow.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RecordLabel.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  SocialProfile.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

uint64_t ShareableMusicItem.augmentMetadata(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = ShareableMusicItem.augmentMetadata(_:);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

{

  return _swift_task_switch(ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Album.shareURL.getter, 0, 0);
}

uint64_t Album.shareURL.getter()
{
  v1 = v0[16];
  Album.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = Album.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Album();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Album.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Album.shareURL.getter;
  }

  else
  {

    v2 = Album.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit5AlbumVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Album.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MusicOffer.Kind();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMd);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMd);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(Album.augmentMetadata(_:), 0, 0);
}

uint64_t Album.augmentMetadata(_:)()
{
  v1 = Album.catalogID.getter();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 216) = v5;
    v6 = [v5 specialization];
    *(v0 + 224) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 232) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 240) = type metadata accessor for Album();
        lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1004F2F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMd);
        *(v9 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = Album.augmentMetadata(_:);
        v11 = *(v0 + 168);
        v12 = *(v0 + 176);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = Album.augmentMetadata(_:);
  }

  else
  {

    v2 = Album.augmentMetadata(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  outlined init with copy of TaskPriority?(v2, v3, &_s8MusicKit5AlbumVSgMd);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s8MusicKit5AlbumVSgMd);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    Album.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  outlined init with copy of TaskPriority?(v21, v22, &_s8MusicKit5AlbumVSgMd);
  if (v8(v22, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s8MusicKit5AlbumVSgMd);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = Album.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v40 + 1);
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  outlined destroy of TaskPriority?(v49, &_s8MusicKit5AlbumVSgMd);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

{
  v22 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Album(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Album.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Album(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA6ArtistVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA6ArtistVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Artist.shareURL.getter, 0, 0);
}

uint64_t Artist.shareURL.getter()
{
  v1 = v0[16];
  Artist.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = Artist.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Artist();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Artist and conformance Artist, &type metadata accessor for Artist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Artist.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Artist.shareURL.getter;
  }

  else
  {

    v2 = Artist.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Artist> and conformance MusicItemCollection<A>, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit6ArtistVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Artist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Artist(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Artist.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Artist.shareURL.getter(v2);
}

{

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist, 0, 0);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Composer.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Composer()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Composer(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Curator.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Curator()
{
  Curator.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Curator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance EditorialItem()
{
  EditorialItem.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance EditorialItem(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Genre.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Genre()
{
  Genre.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Genre(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t MusicMovie.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t MusicMovie.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A5MovieVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal0A5MovieVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal0A5MovieVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(MusicMovie.shareURL.getter, 0, 0);
}

uint64_t MusicMovie.shareURL.getter()
{
  v1 = v0[16];
  MusicMovie.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = MusicMovie.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicMovie();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = MusicMovie.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = MusicMovie.shareURL.getter;
  }

  else
  {

    v2 = MusicMovie.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A5MovieVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<MusicMovie> and conformance MusicItemCollection<A>, &type metadata accessor for MusicMovie, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal0A5MovieVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    MusicMovie.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music movie catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance MusicMovie(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicMovie.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicMovie()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return MusicMovie.shareURL.getter(v2);
}

uint64_t MusicVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A5VideoVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA0A5VideoVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA0A5VideoVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(MusicVideo.shareURL.getter, 0, 0);
}

uint64_t MusicVideo.shareURL.getter()
{
  v1 = v0[16];
  MusicVideo.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = MusicVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for MusicVideo();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicVideo and conformance MusicVideo, &type metadata accessor for MusicVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = MusicVideo.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = MusicVideo.shareURL.getter;
  }

  else
  {

    v2 = MusicVideo.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<MusicVideo> and conformance MusicItemCollection<A>, &type metadata accessor for MusicVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit0A5VideoVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    MusicVideo.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for music video catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance MusicVideo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicVideo.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance MusicVideo()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return MusicVideo.shareURL.getter(v2);
}

uint64_t Playlist.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Playlist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA8PlaylistVGMd);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA8PlaylistVGMd);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(Playlist.shareURL.getter, 0, 0);
}

uint64_t Playlist.shareURL.getter()
{
  v1 = v0[17];
  Playlist.url.getter();
  v2 = type metadata accessor for URL();
  v0[18] = v2;
  v3 = *(v2 - 8);
  v0[19] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[17], &_s10Foundation3URLVSgMd);
    v4 = Playlist.catalogID.getter();
    v0[20] = v4;
    v0[21] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[22] = type metadata accessor for Playlist();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      v8[1] = Playlist.shareURL.getter;
      v9 = v0[13];
      v10 = v0[14];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = Playlist.shareURL.getter;
      v14 = v0[9];

      return Playlist.publish()(v14);
    }
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[17], v2);
    (*(v3 + 56))(v11, 0, 1, v2);

    v12 = v0[1];

    return v12();
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = Playlist.shareURL.getter;
  }

  else
  {

    v2 = Playlist.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>, &type metadata accessor for Playlist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit8PlaylistVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[22];
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    v21 = v0[10];
    Playlist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{

  return _swift_task_switch(Playlist.shareURL.getter, 0, 0);
}

{
  v1 = v0[9];
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[4];
    outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistVSgMd);
    (*(v5 + 56))(v6, 1, 1, v4);
  }

  else
  {
    Playlist.url.getter();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[15];
    v18 = v0[14];
    v19 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for playlist catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[19] + 56))(v0[4], 1, 1, v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t Playlist.publish()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VGMd);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestV16CompletionPolicyOy0aB00E0V_GMd);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7CuratorVSgMd);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VGMd);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(Playlist.publish(), 0, 0);
}

uint64_t Playlist.publish()()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = type metadata accessor for Curator();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:)();
  outlined destroy of TaskPriority?(v1, &_s8MusicKit7CuratorVSgMd);
  (*(v3 + 104))(v2, enum case for MusicLibraryPlaylistRequest.CompletionPolicy.afterCloudLibraryChanges<A>(_:), v4);
  MusicLibraryPlaylistRequest.completionPolicy.setter();
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = Playlist.publish();
  v7 = v0[10];

  return MusicLibraryPlaylistRequest.response<>()(v7);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = Playlist.publish();
  }

  else
  {
    v2 = Playlist.publish();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v8 + 56))(v9, 0, 1, v7);

  v10 = v0[1];

  return v10();
}

{
  v30 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.sharing);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v8)
  {
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v16 = 136446466;
    lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist);
    v27 = v12;
    v28 = v10;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v29);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v26, "Failed to make playlist=%{public}s public with error=%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v28, v27);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  (*(v0[6] + 56))(v0[3], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Playlist(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Playlist.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Playlist()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Playlist.shareURL.getter(v2);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RadioShow()
{
  RadioShow.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance RadioShow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t RecordLabel.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance RecordLabel()
{
  RecordLabel.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance RecordLabel(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t SocialProfile.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance SocialProfile()
{
  SocialProfile.url.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance SocialProfile(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized ShareableMusicItem.augmentMetadata(_:)(a1);
}

uint64_t Song.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Song.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Song.shareURL.getter, 0, 0);
}

uint64_t Song.shareURL.getter()
{
  v1 = v0[16];
  Song.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = Song.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Song();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Song.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Song.shareURL.getter;
  }

  else
  {

    v2 = Song.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit4SongVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Song.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t key path getter for MusicVideoFilter.id : MusicVideoFilter@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t Song.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for PreviewAsset();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer.Kind();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for MusicOffer();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA4SongVGMd);
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA4SongVGMd);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(Song.augmentMetadata(_:), 0, 0);
}

uint64_t Song.augmentMetadata(_:)()
{
  v1 = Song.catalogID.getter();
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = **(v0 + 32);
    *(v0 + 256) = v5;
    v6 = [v5 specialization];
    *(v0 + 264) = v6;
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      *(v0 + 272) = v8;
      if (v8)
      {
        swift_getKeyPath();
        *(v0 + 16) = v3;
        *(v0 + 24) = v4;
        *(v0 + 280) = type metadata accessor for Song();
        lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1004F2F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd);
        *(v9 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v10 = swift_task_alloc();
        *(v0 + 288) = v10;
        *v10 = v0;
        v10[1] = Song.augmentMetadata(_:);
        v11 = *(v0 + 208);
        v12 = *(v0 + 216);

        return MusicCatalogResourceRequest.response()(v11, v12);
      }
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = Song.augmentMetadata(_:);
  }

  else
  {

    v2 = Song.augmentMetadata(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 176);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, v2);
  (*(v5 + 8))(v4, v6);
  outlined init with copy of TaskPriority?(v2, v3, &_s8MusicKit4SongVSgMd);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 128);
    outlined destroy of TaskPriority?(*(v0 + 176), &_s8MusicKit4SongVSgMd);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 280);
    v13 = *(v0 + 176);
    v14 = *(v0 + 128);
    Song.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 128);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 280);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  [*(v0 + 256) setOriginalURL:v11];

  outlined init with copy of TaskPriority?(v21, v22, &_s8MusicKit4SongVSgMd);
  if (v8(v22, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s8MusicKit4SongVSgMd);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 168);
    v26 = Song.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v71 = v8;
        v72 = v7;
        v28 = *(v0 + 104);
        v29 = *(v0 + 80);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v70 = v26;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v75 = *(v28 + 56);
        v76 = v30;
        v77 = v0;
        v73 = (v28 - 8);
        v74 = (v29 + 8);
        do
        {
          v32 = *(v0 + 112);
          v33 = *(v0 + 88);
          v34 = *(v0 + 96);
          v35 = *(v0 + 72);
          v76(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v74)(v33, v35);
          (*v73)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = (v40 + 1);
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v75;
          --v27;
          v0 = v77;
        }

        while (v27);

        v7 = v72;
        v8 = v71;
      }

      else
      {
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 280);
  v43 = *(v0 + 184);
  v44 = *(v0 + 160);
  [*(v0 + 272) setOffers:{isa, v70}];

  outlined init with copy of TaskPriority?(v43, v44, &_s8MusicKit4SongVSgMd);
  if (v8(v44, 1, v42) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s8MusicKit4SongVSgMd);
LABEL_24:
    v58 = *(v0 + 120);
    v59 = type metadata accessor for URL();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    v55 = 0;
    goto LABEL_25;
  }

  v45 = *(v0 + 280);
  v46 = *(v0 + 160);
  v47 = Song.previewAssets.getter();
  (*(v7 + 8))(v46, v45);
  if (!v47)
  {
    goto LABEL_24;
  }

  if (!*(v47 + 16))
  {

    goto LABEL_24;
  }

  v48 = *(v0 + 120);
  v50 = *(v0 + 56);
  v49 = *(v0 + 64);
  v51 = *(v0 + 48);
  (*(v50 + 16))(v49, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v51);

  PreviewAsset.url.getter();
  (*(v50 + 8))(v49, v51);
  v52 = type metadata accessor for URL();
  v53 = *(v52 - 8);
  v55 = 0;
  if ((*(v53 + 48))(v48, 1, v52) != 1)
  {
    v56 = *(v0 + 120);
    URL._bridgeToObjectiveC()(v54);
    v55 = v57;
    (*(v53 + 8))(v56, v52);
  }

LABEL_25:
  v60 = *(v0 + 264);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 184);
  [*(v0 + 272) setPreviewURL:v55];

  outlined destroy of TaskPriority?(v67, &_s8MusicKit4SongVSgMd);
  (*(v66 + 8))(v64, v65);
  (*(v61 + 8))(v62, v63);

  v68 = *(v0 + 8);

  return v68();
}

{
  v22 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 224);
    v19 = *(v0 + 216);
    v20 = *(v0 + 232);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for song catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 216);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Song(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Song.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Song(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Song.augmentMetadata(_:)(a1);
}

uint64_t Station.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t Station.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA7StationVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA7StationVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Station.shareURL.getter, 0, 0);
}

uint64_t Station.shareURL.getter()
{
  v1 = v0[16];
  Station.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = Station.id.getter();
    v6 = v5;
    v0[19] = v4;
    v0[20] = v5;
    swift_getKeyPath();
    v0[2] = v4;
    v0[3] = v6;
    v0[21] = type metadata accessor for Station();
    lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Station and conformance Station, &type metadata accessor for Station);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = Station.shareURL.getter;
    v8 = v0[12];
    v9 = v0[13];

    return MusicCatalogResourceRequest.response()(v8, v9);
  }

  else
  {
    v10 = v0[4];
    (*(v3 + 32))(v10, v0[16], v2);
    (*(v3 + 56))(v10, 0, 1, v2);

    v11 = v0[1];

    return v11();
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Station.shareURL.getter;
  }

  else
  {

    v2 = Station.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA7StationVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<Station> and conformance MusicItemCollection<A>, &type metadata accessor for Station, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7StationVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Station.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for station catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Station(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Station.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Station()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Station.shareURL.getter(v2);
}

uint64_t Track.failureMessage.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Track.song(_:) || v13 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v6, v8, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = Track.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t Track.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Song();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MusicVideo();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

uint64_t Track.shareURL.getter()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Track.song(_:))
  {
    v5 = v0[12];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    (*(v0[11] + 96))(v5, v0[10]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = Track.shareURL.getter;
    v10 = v0[2];

    return Song.shareURL.getter(v10);
  }

  else if (v4 == enum case for Track.musicVideo(_:))
  {
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    (*(v0[11] + 96))(v12, v0[10]);
    (*(v15 + 32))(v13, v12, v14);
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = Track.shareURL.getter;
    v17 = v0[2];

    return MusicVideo.shareURL.getter(v17);
  }

  else
  {
    v18 = v0[2];
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v0[11] + 8))(v0[12], v0[10]);

    v20 = v0[1];

    return v20();
  }
}

{

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(Track.shareURL.getter, 0, 0);
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Track(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Track.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Track()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return Track.shareURL.getter(v2);
}

uint64_t TVEpisode.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVEpisode.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal9TVEpisodeVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal9TVEpisodeVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal9TVEpisodeVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVEpisode.shareURL.getter, 0, 0);
}

uint64_t TVEpisode.shareURL.getter()
{
  v1 = v0[16];
  TVEpisode.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = TVEpisode.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVEpisode();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVEpisode.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = TVEpisode.shareURL.getter;
  }

  else
  {

    v2 = TVEpisode.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal9TVEpisodeVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<TVEpisode> and conformance MusicItemCollection<A>, &type metadata accessor for TVEpisode, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal9TVEpisodeVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVEpisode.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVEpisode catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVEpisode(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVEpisode.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVEpisode()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVEpisode.shareURL.getter(v2);
}

uint64_t TVSeason.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVSeason.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal8TVSeasonVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal8TVSeasonVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVSeason.shareURL.getter, 0, 0);
}

uint64_t TVSeason.shareURL.getter()
{
  v1 = v0[16];
  TVSeason.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = TVSeason.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVSeason();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVSeason.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = TVSeason.shareURL.getter;
  }

  else
  {

    v2 = TVSeason.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal8TVSeasonVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<TVSeason> and conformance MusicItemCollection<A>, &type metadata accessor for TVSeason, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal8TVSeasonVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVSeason.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVSeason catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVSeason(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVSeason.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVSeason()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVSeason.shareURL.getter(v2);
}

uint64_t RadioShow.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t TVShow.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal6TVShowVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal6TVShowVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(TVShow.shareURL.getter, 0, 0);
}

uint64_t TVShow.shareURL.getter()
{
  v1 = v0[16];
  TVShow.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = TVShow.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for TVShow();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = TVShow.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = TVShow.shareURL.getter;
  }

  else
  {

    v2 = TVShow.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal6TVShowVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<TVShow> and conformance MusicItemCollection<A>, &type metadata accessor for TVShow, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal6TVShowVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    TVShow.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for TVShow catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance TVShow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return TVShow.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance TVShow()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return TVShow.shareURL.getter(v2);
}

uint64_t UploadedAudio.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13UploadedAudioVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedAudioVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedAudioVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(UploadedAudio.shareURL.getter, 0, 0);
}

uint64_t UploadedAudio.shareURL.getter()
{
  v1 = v0[16];
  UploadedAudio.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = UploadedAudio.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedAudio();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = UploadedAudio.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = UploadedAudio.shareURL.getter;
  }

  else
  {

    v2 = UploadedAudio.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedAudioVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<UploadedAudio> and conformance MusicItemCollection<A>, &type metadata accessor for UploadedAudio, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13UploadedAudioVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    UploadedAudio.postURL.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded audio catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance UploadedAudio(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UploadedAudio.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedAudio()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return UploadedAudio.shareURL.getter(v2);
}

uint64_t MusicVideo.failureMessage.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t UploadedVideo.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMd);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13UploadedVideoVSgMd);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13UploadedVideoVGMd);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13UploadedVideoVGMd);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(UploadedVideo.shareURL.getter, 0, 0);
}

uint64_t UploadedVideo.shareURL.getter()
{
  v1 = v0[16];
  UploadedVideo.postURL.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd);
    v4 = UploadedVideo.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for UploadedVideo();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo);
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = UploadedVideo.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = UploadedVideo.shareURL.getter;
  }

  else
  {

    v2 = UploadedVideo.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13UploadedVideoVGMd, &lazy protocol witness table cache variable for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>, &type metadata accessor for UploadedVideo, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s16MusicKitInternal13UploadedVideoVSgMd);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    UploadedVideo.postURL.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for uploaded video catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance UploadedVideo(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UploadedVideo.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance UploadedVideo()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Artist;
  v2 = *(v0 + 32);

  return UploadedVideo.shareURL.getter(v2);
}

uint64_t GenericMusicItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v54 = type metadata accessor for UploadedVideo();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UploadedAudio();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TVShow();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TVSeason();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TVEpisode();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Station();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Song();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SocialProfile();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RecordLabel();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RadioShow();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v82 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v89 = *(v16 - 8);
  v90 = v16;
  __chkstk_darwin(v16);
  v88 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v92 = *(v18 - 8);
  v93 = v18;
  __chkstk_darwin(v18);
  v91 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v94 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v97 = *(v22 - 8);
  v98 = v22;
  __chkstk_darwin(v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Artist();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GenericMusicItem();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v36, v99, v33);
  v37 = (*(v34 + 88))(v36, v33);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v30 + 32))(v32, v36, v29);
    Album.url.getter();
    return (*(v30 + 8))(v32, v29);
  }

  v39 = v100;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v34 + 96))(v36, v33);
    (*(v26 + 32))(v28, v36, v25);
    Artist.url.getter();
    return (*(v26 + 8))(v28, v25);
  }

  if (v37 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v34 + 8))(v36, v33);
    v40 = type metadata accessor for URL();
    return (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  }

  v41 = v100;
  if (v37 == enum case for GenericMusicItem.creditArtist(_:))
  {
    goto LABEL_8;
  }

  if (v37 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v34 + 96))(v36, v33);
    v44 = v97;
    v43 = v98;
    (*(v97 + 32))(v24, v36, v98);
    Curator.url.getter();
    return (*(v44 + 8))(v24, v43);
  }

  if (v37 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v94;
    v46 = v95;
    v47 = v96;
    (*(v95 + 32))(v94, v36, v96);
    EditorialItem.url.getter();
  }

  else if (v37 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v91;
    v46 = v92;
    v47 = v93;
    (*(v92 + 32))(v91, v36, v93);
    Genre.url.getter();
  }

  else if (v37 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v88;
    v46 = v89;
    v47 = v90;
    (*(v89 + 32))(v88, v36, v90);
    MusicMovie.url.getter();
  }

  else if (v37 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v85;
    v46 = v86;
    v47 = v87;
    (*(v86 + 32))(v85, v36, v87);
    MusicVideo.url.getter();
  }

  else if (v37 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v34 + 96))(v36, v33);
    v45 = v82;
    v46 = v83;
    v47 = v84;
    (*(v83 + 32))(v82, v36, v84);
    Playlist.url.getter();
  }

  else
  {
    if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
    {
LABEL_8:
      (*(v34 + 8))(v36, v33);
      v42 = type metadata accessor for URL();
      return (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    }

    if (v37 == enum case for GenericMusicItem.radioShow(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v80;
      v47 = v81;
      v45 = v79;
      (*(v80 + 32))(v79, v36, v81);
      RadioShow.url.getter();
    }

    else if (v37 == enum case for GenericMusicItem.recordLabel(_:))
    {
      (*(v34 + 96))(v36, v33);
      v46 = v77;
      v45 = v76;
      v47 = v78;
      (*(v77 + 32))(v76, v36, v78);
      RecordLabel.url.getter();
    }

    else
    {
      if (v37 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v37 == enum case for GenericMusicItem.song(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v71;
          v49 = v70;
          v50 = v72;
          (*(v71 + 32))(v70, v36, v72);
          Song.url.getter();
        }

        else if (v37 == enum case for GenericMusicItem.station(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v68;
          v49 = v67;
          v50 = v69;
          (*(v68 + 32))(v67, v36, v69);
          Station.url.getter();
        }

        else if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v65;
          v49 = v64;
          v50 = v66;
          (*(v65 + 32))(v64, v36, v66);
          TVEpisode.url.getter();
        }

        else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v62;
          v49 = v61;
          v50 = v63;
          (*(v62 + 32))(v61, v36, v63);
          TVSeason.url.getter();
        }

        else if (v37 == enum case for GenericMusicItem.tvShow(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v59;
          v49 = v58;
          v50 = v60;
          (*(v59 + 32))(v58, v36, v60);
          TVShow.url.getter();
        }

        else if (v37 == enum case for GenericMusicItem.uploadedAudio(_:))
        {
          (*(v34 + 96))(v36, v33);
          v48 = v56;
          v49 = v55;
          v50 = v57;
          (*(v56 + 32))(v55, v36, v57);
          UploadedAudio.postURL.getter();
        }

        else
        {
          if (v37 != enum case for GenericMusicItem.uploadedVideo(_:))
          {
            v41 = v100;
            if (v37 != enum case for GenericMusicItem.other(_:))
            {
              v51 = type metadata accessor for URL();
              (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
              return (*(v34 + 8))(v36, v33);
            }

            goto LABEL_8;
          }

          (*(v34 + 96))(v36, v33);
          v48 = v53;
          v49 = v52;
          v50 = v54;
          (*(v53 + 32))(v52, v36, v54);
          UploadedVideo.postURL.getter();
        }

        return (*(v48 + 8))(v49, v50);
      }

      (*(v34 + 96))(v36, v33);
      v46 = v74;
      v45 = v73;
      v47 = v75;
      (*(v74 + 32))(v73, v36, v75);
      SocialProfile.url.getter();
    }
  }

  return (*(v46 + 8))(v45, v47);
}

uint64_t GenericMusicItem.shareURL.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UploadedVideo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UploadedAudio();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for TVShow();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for TVSeason();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for TVEpisode();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = type metadata accessor for MusicVideo();
  v2[25] = v10;
  v2[26] = *(v10 - 8);
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for MusicMovie();
  v2[28] = v11;
  v2[29] = *(v11 - 8);
  v2[30] = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  v2[31] = v12;
  v2[32] = *(v12 - 8);
  v2[33] = swift_task_alloc();
  v13 = type metadata accessor for Album();
  v2[34] = v13;
  v2[35] = *(v13 - 8);
  v2[36] = swift_task_alloc();
  v14 = type metadata accessor for GenericMusicItem();
  v2[37] = v14;
  v2[38] = *(v14 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

uint64_t GenericMusicItem.shareURL.getter()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[34];
    v8 = v0[35];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = GenericMusicItem.shareURL.getter;
    v10 = v0[2];

    return Album.shareURL.getter(v10);
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v12 = v0[39];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    (*(v0[38] + 96))(v12, v0[37]);
    (*(v14 + 32))(v13, v12, v15);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = GenericMusicItem.shareURL.getter;
    v17 = v0[2];

    return Artist.shareURL.getter(v17);
  }

  if (v4 == enum case for GenericMusicItem.composer(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.creditArtist(_:))
  {
LABEL_12:
    v19 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  if (v4 == enum case for GenericMusicItem.curator(_:) || v4 == enum case for GenericMusicItem.editorialItem(_:) || v4 == enum case for GenericMusicItem.genre(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v24 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[28];
    (*(v0[38] + 96))(v24, v0[37]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = swift_task_alloc();
    v0[42] = v28;
    *v28 = v0;
    v28[1] = GenericMusicItem.shareURL.getter;
    v29 = v0[2];

    return MusicMovie.shareURL.getter(v29);
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v30 = v0[39];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    (*(v0[38] + 96))(v30, v0[37]);
    (*(v32 + 32))(v31, v30, v33);
    v34 = swift_task_alloc();
    v0[43] = v34;
    *v34 = v0;
    v34[1] = GenericMusicItem.shareURL.getter;
    v35 = v0[2];

    return MusicVideo.shareURL.getter(v35);
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v36 = v0[39];
    v38 = v0[23];
    v37 = v0[24];
    v39 = v0[22];
    (*(v0[38] + 96))(v36, v0[37]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[44] = v40;
    *v40 = v0;
    v40[1] = GenericMusicItem.shareURL.getter;
    v41 = v0[2];

    return Playlist.shareURL.getter(v41);
  }

  if (v4 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.radioShow(_:) || v4 == enum case for GenericMusicItem.recordLabel(_:) || v4 == enum case for GenericMusicItem.socialProfile(_:))
  {
    goto LABEL_10;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v42 = v0[39];
    v44 = v0[20];
    v43 = v0[21];
    v45 = v0[19];
    (*(v0[38] + 96))(v42, v0[37]);
    (*(v44 + 32))(v43, v42, v45);
    v46 = swift_task_alloc();
    v0[45] = v46;
    *v46 = v0;
    v46[1] = GenericMusicItem.shareURL.getter;
    v47 = v0[2];

    return Song.shareURL.getter(v47);
  }

  if (v4 == enum case for GenericMusicItem.station(_:))
  {
LABEL_10:
    v18 = v0[2];
    (*(v0[38] + 8))(v0[39], v0[37]);
    GenericMusicItem.url.getter(v18);
LABEL_13:

    v21 = v0[1];

    return v21();
  }

  if (v4 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v48 = v0[39];
    v50 = v0[17];
    v49 = v0[18];
    v51 = v0[16];
    (*(v0[38] + 96))(v48, v0[37]);
    (*(v50 + 32))(v49, v48, v51);
    v52 = swift_task_alloc();
    v0[46] = v52;
    *v52 = v0;
    v52[1] = GenericMusicItem.shareURL.getter;
    v53 = v0[2];

    return TVEpisode.shareURL.getter(v53);
  }

  else if (v4 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v54 = v0[39];
    v56 = v0[14];
    v55 = v0[15];
    v57 = v0[13];
    (*(v0[38] + 96))(v54, v0[37]);
    (*(v56 + 32))(v55, v54, v57);
    v58 = swift_task_alloc();
    v0[47] = v58;
    *v58 = v0;
    v58[1] = GenericMusicItem.shareURL.getter;
    v59 = v0[2];

    return TVSeason.shareURL.getter(v59);
  }

  else if (v4 == enum case for GenericMusicItem.tvShow(_:))
  {
    v60 = v0[39];
    v62 = v0[11];
    v61 = v0[12];
    v63 = v0[10];
    (*(v0[38] + 96))(v60, v0[37]);
    (*(v62 + 32))(v61, v60, v63);
    v64 = swift_task_alloc();
    v0[48] = v64;
    *v64 = v0;
    v64[1] = GenericMusicItem.shareURL.getter;
    v65 = v0[2];

    return TVShow.shareURL.getter(v65);
  }

  else if (v4 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v66 = v0[39];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    (*(v0[38] + 96))(v66, v0[37]);
    (*(v68 + 32))(v67, v66, v69);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = GenericMusicItem.shareURL.getter;
    v71 = v0[2];

    return UploadedAudio.shareURL.getter(v71);
  }

  else
  {
    if (v4 != enum case for GenericMusicItem.uploadedVideo(_:))
    {
      if (v4 != enum case for GenericMusicItem.other(_:))
      {
        v79 = v0[38];
        v78 = v0[39];
        v80 = v0[37];
        GenericMusicItem.url.getter(v0[2]);
        (*(v79 + 8))(v78, v80);
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v72 = v0[39];
    v74 = v0[5];
    v73 = v0[6];
    v75 = v0[4];
    (*(v0[38] + 96))(v72, v0[37]);
    (*(v74 + 32))(v73, v72, v75);
    v76 = swift_task_alloc();
    v0[50] = v76;
    *v76 = v0;
    v76[1] = GenericMusicItem.shareURL.getter;
    v77 = v0[2];

    return UploadedVideo.shareURL.getter(v77);
  }
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{

  return _swift_task_switch(GenericMusicItem.shareURL.getter, 0, 0);
}

{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t GenericMusicItem.failureMessage.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = type metadata accessor for GenericMusicItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v0, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for GenericMusicItem.album(_:) || v13 == enum case for GenericMusicItem.artist(_:) || v13 == enum case for GenericMusicItem.composer(_:) || v13 == enum case for GenericMusicItem.curator(_:) || v13 == enum case for GenericMusicItem.genre(_:) || v13 == enum case for GenericMusicItem.musicMovie(_:) || v13 == enum case for GenericMusicItem.musicVideo(_:) || v13 == enum case for GenericMusicItem.playlist(_:) || v13 == enum case for GenericMusicItem.radioShow(_:) || v13 == enum case for GenericMusicItem.recordLabel(_:) || v13 == enum case for GenericMusicItem.socialProfile(_:) || v13 == enum case for GenericMusicItem.song(_:) || v13 == enum case for GenericMusicItem.station(_:) || v13 == enum case for GenericMusicItem.tvEpisode(_:) || v13 == enum case for GenericMusicItem.tvSeason(_:) || v13 == enum case for GenericMusicItem.tvShow(_:) || v13 == enum case for GenericMusicItem.uploadedAudio(_:) || v13 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v10 + 8))(v12, v9);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v6, v8, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v15 = GenericMusicItem.failureMessage.getter();
    (*(v10 + 8))(v12, v9);
  }

  return v15;
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance GenericMusicItem(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return GenericMusicItem.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem, 0, 0);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem()
{
  *(v0 + 40) = **(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem;
  v2 = *(v0 + 32);

  return GenericMusicItem.shareURL.getter(v2);
}

{

  return _swift_task_switch(protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance GenericMusicItem, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 40) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t one-time initialization function for sharing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharing);
  __swift_project_value_buffer(v0, static Logger.sharing);
  return Logger.init(subsystem:category:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Composer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Composer and conformance Composer, &type metadata accessor for Composer);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EditorialItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type EditorialItem and conformance EditorialItem, &type metadata accessor for EditorialItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MusicMovie(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SocialProfile(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVEpisode(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode, &type metadata accessor for TVEpisode);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVSeason(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TVShow(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UploadedAudio(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio, &type metadata accessor for UploadedAudio);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UploadedVideo(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo, &type metadata accessor for UploadedVideo);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for GenericMusicItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Album and conformance Album(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Actions.Share.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Actions.Share.Context(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  outlined init with take of URL?(v50, v27 + v26, &_s9MusicCore18PresentationSourceVSgMd);
  outlined init with take of ActionPerforming(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  outlined init with take of URL?(v55, v36 + v34, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = partial apply for closure #1 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[1] = v41;
  v40[2] = &async function pointer to partial apply for closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[3] = v27;
  v40[4] = &async function pointer to partial apply for closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[5] = v36;
  return result;
}

uint64_t Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v55 = a6;
  v56 = a9;
  v50 = a5;
  v48 = a4;
  v52 = a3;
  v12 = *(a10 - 8);
  v13 = v12;
  v58 = a1;
  v59 = v12;
  v14 = *(v12 + 64);
  v57 = a11;
  v15 = __chkstk_darwin(a1);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v49 = v14;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v43 = *(v13 + 16);
  v43(&v42 - v19);
  v46 = *(v13 + 80);
  v21 = (v46 + 40) & ~v46;
  v22 = v21 + v14;
  v44 = v46 | 7;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v45 = a2;
  *(v23 + 4) = a2;
  v24 = *(v59 + 32);
  v59 += 32;
  v24(v23 + v21, v20, a10);
  (v43)(v18, v58, a10);
  v25 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v57;
  *(v27 + 2) = a10;
  *(v27 + 3) = v28;
  *(v27 + 4) = a2;
  v24(v27 + v21, v18, a10);
  v29 = v27 + v25;
  v30 = v48;
  v31 = v48[1];
  *v29 = *v48;
  *(v29 + 1) = v31;
  *(v29 + 4) = *(v30 + 4);
  outlined init with take of URL?(v50, v27 + v26, &_s9MusicCore18PresentationSourceVSgMd);
  outlined init with take of ActionPerforming(v52, v27 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8));
  v32 = v47;
  v24(v47, v58, a10);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v34 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v57;
  *(v36 + 2) = a10;
  *(v36 + 3) = v37;
  v38 = v54;
  *(v36 + 4) = v53;
  *(v36 + 5) = v38;
  outlined init with take of URL?(v55, v36 + v34, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v24(v36 + v35, v32, a10);

  v40 = v56;
  v41 = v51;
  *v56 = partial apply for closure #1 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[1] = v41;
  v40[2] = &async function pointer to partial apply for closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[3] = v27;
  v40[4] = &async function pointer to partial apply for closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v40[5] = v36;
  return result;
}

uint64_t Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v49 = a4;
  v50 = a7;
  v47 = a3;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v41 = v39 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = v39 - v17;
  v40 = *(v10 + 16);
  v40(v39 - v17);
  v44 = *(v10 + 80);
  v19 = (v44 + 40) & ~v44;
  v20 = swift_allocObject();
  v48 = v20;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  v42 = a6;
  v43 = a2;
  v21 = a2;
  *(v20 + 4) = a2;
  v22 = *(v10 + 32);
  v39[1] = v10 + 32;
  v22(v20 + v19, v18, a5);
  v23 = v41;
  (v40)(v41, v51, a5);
  v24 = swift_allocObject();
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  *(v24 + 4) = v21;
  v25 = v23;
  v26 = v22;
  v22(v24 + v19, v25, a5);
  v27 = v24 + ((v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = v47;
  v29 = v47[1];
  *v27 = *v47;
  *(v27 + 1) = v29;
  *(v27 + 4) = *(v28 + 4);
  v30 = v45;
  v22(v45, v51, a5);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = (*(v31 + 64) + v44 + v32) & ~v44;
  v34 = swift_allocObject();
  v35 = v42;
  *(v34 + 16) = a5;
  *(v34 + 24) = v35;
  outlined init with take of URL?(v49, v34 + v32, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v26(v34 + v33, v30, a5);

  v37 = v50;
  v38 = v48;
  *v50 = partial apply for closure #1 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v37[1] = v38;
  v37[2] = &async function pointer to partial apply for closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v37[3] = v24;
  v37[4] = &async function pointer to partial apply for closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v37[5] = v34;
  return result;
}

uint64_t Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)()@<X8>)
{
  v42 = a3;
  v43 = a6;
  v39 = a2;
  v35 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v37 = &v33 - v13;
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  outlined destroy of TaskPriority?(v16, &_s9MusicCore16NoticePresenting_pSgMd);
  v36 = *(v9 + 16);
  v36(v15, a1, a4);
  v38 = *(v9 + 80);
  v17 = (v38 + 40) & ~v38;
  v18 = swift_allocObject();
  v40 = v18;
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  v19 = v39;
  *(v18 + 4) = v39;
  v34 = *(v9 + 32);
  v44 = v9 + 32;
  v34(v18 + v17, v15, a4);
  v20 = v37;
  v21 = v35;
  v36(v37, v35, a4);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v19;
  v23 = v20;
  v24 = v34;
  v34(v22 + v17, v23, a4);
  v25 = v41;
  v24(v41, v21, a4);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = (*(v26 + 64) + v38 + v27) & ~v38;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  outlined init with take of URL?(v42, v29 + v27, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v24((v29 + v28), v25, a4);

  v31 = v43;
  v32 = v40;
  *v43 = partial apply for closure #1 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v31[1] = v32;
  v31[2] = &async function pointer to partial apply for closure #2 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v31[3] = v22;
  v31[4] = &async function pointer to partial apply for closure #3 in Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);
  v31[5] = v29;
  return result;
}

uint64_t closure #1 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v0 = type metadata accessor for MusicLibrary.FavoriteAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.FavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.FavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14FavoriteActionVGMd);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  static MusicLibraryAction<>.favorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      outlined init with copy of TaskPriority?(v0[52], (v0 + 14), &_s9MusicCore18PresentationSourceVSgMd);
      if (v0[22] != 1)
      {
        outlined init with take of PresentationSource((v0 + 14), (v0 + 2));
        v0[81] = type metadata accessor for MainActor();
        v0[82] = static MainActor.shared.getter();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v33;
        v0[83] = v32;
        v0[84] = v33;
        v26 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      outlined destroy of TaskPriority?((v0 + 14), &_s9MusicCore18PresentationSourceVSgMd);
      v14 = v13[3];
      v0[76] = v14;
      v0[77] = v13[4];
      v0[78] = __swift_project_boxed_opaque_existential_0Tm(v13, v14);
      type metadata accessor for MainActor();
      v0[79] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      v18 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.FavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[88] = v24;
      v0[89] = v23[4];
      v0[90] = __swift_project_boxed_opaque_existential_0Tm(v23, v24);
      type metadata accessor for MainActor();
      v0[91] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v25;
      v18 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.favorite<A>(_:)(v22, v20, v21);
}

{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v2 = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[51], (v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_0Tm(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd);
    v4 = swift_task_alloc();
    v0[75] = v4;
    *v4 = v0;
    v4[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
    v5 = v0[52];

    return specialized static AppReview.requestReview(in:)(v5);
  }
}

{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 352);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = *(v0 + 416);

  return specialized static AppReview.requestReview(in:)(v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[77];

  specialized static Alert.enableCloudLibraryAlert(context:)(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[77];
  v3 = v0[76];

  return v5(v0 + 35, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 280);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = static MainActor.shared.getter();
  v0[85] = v1;
  v2 = swift_task_alloc();
  v0[86] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 93, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)partial apply, v2, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 672);
  v3 = *(v1 + 664);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v6 = v0[89];

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[92] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[89];
  v3 = v0[88];

  return v5(v0 + 26, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 208);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t partial apply for closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(2);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  outlined init with copy of TaskPriority?(*(v0 + 88), v4, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 232), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v19, v18);
  }
}

{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5637;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 208), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  outlined init with take of URL?(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t closure #1 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v0 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v8 = type metadata accessor for MusicLibrary.UndoFavoriteAction.UnsupportedReason();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = type metadata accessor for Notice.Variant(0);
  v7[61] = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.UndoFavoriteAction();
  v7[62] = v9;
  v7[63] = *(v9 - 8);
  v7[64] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE18UndoFavoriteActionVGMd);
  v7[65] = v10;
  v7[66] = *(v10 - 8);
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = v0[68];
  v2 = v0[66];
  v36 = v0[65];
  v37 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  static MusicLibraryAction<>.undoFavorite.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v37, v1, v36);
  v6 = (*(v2 + 88))(v37, v36);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[67];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[56];
    v11 = v0[57];
    (*(v0[66] + 96))(v7, v0[65]);
    (*(v11 + 32))(v8, v7, v10);
    (*(v11 + 16))(v9, v8, v10);
    v12 = (*(v11 + 88))(v9, v10);
    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      outlined init with copy of TaskPriority?(v0[52], (v0 + 14), &_s9MusicCore18PresentationSourceVSgMd);
      if (v0[22] != 1)
      {
        outlined init with take of PresentationSource((v0 + 14), (v0 + 2));
        v0[80] = type metadata accessor for MainActor();
        v0[81] = static MainActor.shared.getter();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v33;
        v0[82] = v32;
        v0[83] = v33;
        v26 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
        v27 = v32;
        goto LABEL_14;
      }

      v13 = v0[53];
      outlined destroy of TaskPriority?((v0 + 14), &_s9MusicCore18PresentationSourceVSgMd);
      v14 = v13[3];
      v0[75] = v14;
      v0[76] = v13[4];
      v0[77] = __swift_project_boxed_opaque_existential_0Tm(v13, v14);
      type metadata accessor for MainActor();
      v0[78] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      v18 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
LABEL_11:
      v26 = v18;
      v27 = v15;
      v28 = v17;
LABEL_14:

      return _swift_task_switch(v26, v27, v28);
    }

    if (v12 == enum case for MusicLibrary.UndoFavoriteAction.UnsupportedReason.explicitContentRestricted(_:))
    {
      v23 = v0[53];
      v24 = v23[3];
      v0[87] = v24;
      v0[88] = v23[4];
      v0[89] = __swift_project_boxed_opaque_existential_0Tm(v23, v24);
      type metadata accessor for MainActor();
      v0[90] = static MainActor.shared.getter();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v25;
      v18 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
      goto LABEL_11;
    }

    v29 = v0 + 59;
    v30 = v0 + 57;
    v31 = v0 + 56;
    (*(v0[57] + 8))(v0[58], v0[56]);
    goto LABEL_18;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 67;
    v30 = v0 + 66;
    v31 = v0 + 65;
LABEL_18:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v34 = v0[1];

    return v34();
  }

  v19 = swift_task_alloc();
  v0[69] = v19;
  *v19 = v0;
  v19[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v20 = v0[54];
  v21 = v0[55];
  v22 = v0[50];

  return MusicLibrary.undoFavorite<A>(_:)(v22, v20, v21);
}

{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v2 = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[51], (v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd);
  v1 = v0[47];
  v0[71] = v1;
  if (v1)
  {
    v0[72] = v0[48];
    v0[73] = __swift_project_boxed_opaque_existential_0Tm(v0 + 44, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[74] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 44), &_s9MusicCore16NoticePresenting_pSgMd);
    (*(v0[66] + 8))(v0[68], v0[65]);

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[61];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 44));
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[76];

  specialized static Alert.enableCloudLibraryAlert(context:)(5u, (v0 + 35));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[76];
  v3 = v0[75];

  return v5(v0 + 35, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 280);

  return _swift_task_switch(closure #2 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = static MainActor.shared.getter();
  v0[84] = v1;
  v2 = swift_task_alloc();
  v0[85] = v2;
  *(v2 + 16) = 5;
  *(v2 + 24) = v0 + 2;
  *(v2 + 32) = 0;
  v3 = swift_task_alloc();
  v0[86] = v3;
  *v3 = v0;
  v3[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 92, v1, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v2, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 664);
  v3 = *(v1 + 656);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  outlined destroy of PresentationSource((v0 + 2));
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  v6 = v0[88];

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, (v0 + 26));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[91] = v1;
  *v1 = v0;
  v1[1] = closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:);
  v2 = v0[88];
  v3 = v0[87];

  return v5(v0 + 26, v3, v2);
}

{
  v1 = *v0;

  outlined destroy of Alert(v1 + 208);

  return _swift_task_switch(closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[66] + 8))(v0[68], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v4);
  }

  v6 = v0 + v5;
  if (*(v0 + v5 + 64) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v7 = *(v6 + 48);
    if (v7 != 255)
    {
      outlined consume of PresentationSource.Position.Source(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
    }

    if (*(v6 + 64))
    {
    }

    if (*(v6 + 80))
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v6, v0 + v4, v0 + v5, v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), v0 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8), v2, v3);
}

uint64_t closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(3);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  outlined init with copy of TaskPriority?(*(v0 + 88), v4, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 232), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), v19, v18);
  }
}

{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 5893;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 208), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  outlined init with take of URL?(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(*(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  if (*(v0 + 32))
  {
  }

  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t Actions.Favorite.Context.menuItemTitle.getter()
{
  return Actions.Favorite.Context.menuItemTitle.getter();
}

{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.Favorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*Actions.Favorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.Favorite.Context()
{
  return protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.Favorite.Context();
}

{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Favorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1918989427;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1918989427;
  *(v1 + 24) = 0xE400000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Favorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69662E72617473;
  *(v0 + 24) = 0xE90000000000006CLL;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69662E72617473;
  *(v1 + 24) = 0xE90000000000006CLL;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*Actions.UndoFavorite.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.UndoFavorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEA00000000006873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEA00000000006873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.UndoFavorite.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x616C732E72617473;
  *(v0 + 24) = 0xEF6C6C69662E6873;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x616C732E72617473;
  *(v1 + 24) = 0xEF6C6C69662E6873;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #1 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v0 = type metadata accessor for MusicLibrary.DislikeAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE13DislikeActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.dislike.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a3;
  v5[8] = type metadata accessor for Notice.Variant(0);
  v5[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:);

  return MusicLibrary.new_dislike<A>(_:)(a2, a4, a5);
}

uint64_t closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
  }
}

{
  outlined init with copy of TaskPriority?(v0[7], (v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd);
  v1 = v0[5];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = v0[6];
    v0[13] = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v1);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), v3, v2);
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd);

    v4 = v0[1];

    return v4();
  }
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  NoticePresenting.present(_:internalOnly:)(v3, 0, v2, v1);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v3, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BFFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 6149;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}