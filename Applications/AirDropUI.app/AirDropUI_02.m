uint64_t sub_100034D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100034E14, 0, 0);
}

uint64_t sub_100034E14()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[2] + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airdropClient);
  SFAirDrop.NearbySharingInteraction.id.getter();
  v4 = async function pointer to SFAirDropClient.endNearbySharingInteraction(_:)[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100034EC8;
  v6 = v0[6];

  return SFAirDropClient.endNearbySharingInteraction(_:)(v6);
}

uint64_t sub_100034EC8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100035070, 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_100035070()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1000350D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[5] = a2;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v8;
  v6[12] = v7;

  return _swift_task_switch(sub_100035174, v8, v7);
}

uint64_t sub_100035174()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_contactIconProvider);
    v0[14] = v3;
    v4 = *(&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + 1);
    v11 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:));
    v3;
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_1000352A4;
    v7 = v0[6];
    v6 = v0[7];

    return v11(v7, v6);
  }

  else
  {
    v9 = v0[10];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000352A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_100035484;
  }

  else
  {

    *(v4 + 136) = a1;
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_1000353D4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000353D4()
{
  v1 = v0[17];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = v1;
  sub_1000364F8(v1, v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035484()
{
  v20 = v0;
  v1 = v0[14];
  v2 = v0[10];

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = v0[16];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100173A40);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v10 = v0[13];
  if (v8)
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_10003E81C(v12, v11, &v19);
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get contact image for %s: %@", v13, 0x16u);
    sub_1000159AC(v14, &qword_100172EB0, &qword_100119410);

    sub_100007920(v15);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000356B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_100035750, v6, v5);
}

uint64_t sub_100035750()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_appCornerIconProvider);
    v0[12] = v3;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v0[13] = v5;
    v7 = async function pointer to SFUIPeopleSuggestionImageProvider.previewCornerIcon(for:)[1];
    v3;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_100035890;

    return SFUIPeopleSuggestionImageProvider.previewCornerIcon(for:)(v4, v6);
  }

  else
  {
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100035890(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_100035A74;
  }

  else
  {
    v11 = v4[12];
    v10 = v4[13];

    v4[16] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_1000359C4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000359C4()
{
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = v1;
  sub_1000364F8(v1, v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100035A74()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v4 = v0[15];
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100173A40);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v10 = v0[11];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get image for AirDrop: %@", v11, 0xCu);
    sub_1000159AC(v12, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100035C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v10;
  v5[14] = v9;

  return _swift_task_switch(sub_100035D34, v10, v9);
}

uint64_t sub_100035D34()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = SFAirDropReceive.AskRequest.files.getter();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v0[10];
      sub_10000E494(0, v5, 0);
      v7 = *(v6 + 16);
      v6 += 16;
      v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v41 = *(v6 + 56);
      v43 = v7;
      v9 = (v6 - 8);
      do
      {
        v10 = v0[11];
        v11 = v0[9];
        v43(v10, v8, v11);
        v12 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v14 = v13;
        (*v9)(v10, v11);
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000E494((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v16];
        v17[4] = v12;
        v17[5] = v14;
        v8 += v41;
        --v5;
      }

      while (v5);
    }

    v0[16] = _swiftEmptyArrayStorage;
    v22 = v0[6];
    v23 = SFAirDropReceive.AskRequest.files.getter();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v0[10];
      sub_10000E494(0, v24, 0);
      v26 = *(v25 + 16);
      v25 += 16;
      v27 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v42 = *(v25 + 56);
      v44 = v26;
      v28 = (v25 - 8);
      do
      {
        v29 = v0[11];
        v30 = v0[9];
        v44(v29, v27, v30);
        v31 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
        v33 = v32;
        (*v28)(v29, v30);
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_10000E494((v34 > 1), v35 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v35 + 1;
        v36 = &_swiftEmptyArrayStorage[2 * v35];
        v36[4] = v31;
        v36[5] = v33;
        v27 += v42;
        --v24;
      }

      while (v24);
    }

    v0[17] = _swiftEmptyArrayStorage;
    type metadata accessor for SFAirDropUtilities();
    v37 = async function pointer to static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)[1];
    v38 = swift_task_alloc();
    v0[18] = v38;
    *v38 = v0;
    v38[1] = sub_1000360C4;
    v39.n128_u64[0] = 0x405A800000000000;
    v40.n128_u64[0] = 0x405A800000000000;

    return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v39, v40);
  }

  else
  {
    v18 = v0[12];

    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1000360C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_1000362B4;
  }

  else
  {
    v11 = v4[16];
    v10 = v4[17];

    v4[20] = a1;
    v7 = v4[13];
    v8 = v4[14];
    v9 = sub_1000361FC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000361FC()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v1;
  sub_1000364F8(v1, v5, v4);

  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000362B4()
{
  v22 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v4 = v0[19];
  v5 = v0[8];
  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100173A40);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v11 = v0[15];
  if (v9)
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10003E81C(v13, v12, &v21);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get fallback preview image for transfer %s: %@", v14, 0x16u);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    sub_100007920(v16);
  }

  else
  {
  }

  v18 = v0[11];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000364F8(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16[2] && (v6 = sub_10003EEC0(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(v16[7] + 8 * v6);

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = a1;
    v9 = a1;
    static Published.subscript.setter();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16)
  {
    v11 = *(v16 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v12 = *(v16 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v13._countAndFlagsBits = a2;
    v13._object = a3;
    v14 = String.hasPrefix(_:)(v13);

    if (v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = a1;
      return static Published.subscript.setter();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000366D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v6 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v10;
  v5[14] = v9;

  return _swift_task_switch(sub_1000367D0, v10, v9);
}

uint64_t sub_1000367D0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = SFAirDropSend.Request.urls.getter();
    v0[16] = v4;
    v5 = SFAirDropSend.Request.urlsMetadata.getter();
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        v47 = v4;
        v8 = v0[10];
        v9 = v5;
        sub_10000E494(0, v7, 0);
        v6 = _swiftEmptyArrayStorage;
        v10 = *(v8 + 16);
        v8 += 16;
        v11 = v9 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
        v50 = *(v8 + 56);
        v52 = v10;
        v12 = (v8 - 8);
        do
        {
          v13 = v0[11];
          v14 = v0[9];
          v52(v13, v11, v14);
          v15 = SFAirDropSend.ItemMetadata.fileType.getter();
          v17 = v16;
          (*v12)(v13, v14);
          v19 = v6[2];
          v18 = v6[3];
          v20 = v6;
          if (v19 >= v18 >> 1)
          {
            sub_10000E494((v18 > 1), v19 + 1, 1);
            v20 = v6;
          }

          v20[2] = v19 + 1;
          v21 = &v20[2 * v19];
          v21[4] = v15;
          v21[5] = v17;
          v11 += v50;
          --v7;
          v6 = v20;
        }

        while (v7);

        v4 = v47;
      }

      else
      {
      }
    }

    v0[17] = v6;
    v26 = v0[6];
    v27 = SFAirDropSend.Request.urlsMetadata.getter();
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v46 = v6;
        v48 = v4;
        v29 = v0[10];
        v30 = v27;
        sub_10000E494(0, v28, 0);
        v31 = *(v29 + 16);
        v29 += 16;
        v32 = v30 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
        v49 = *(v29 + 56);
        v51 = v31;
        v33 = (v29 - 8);
        do
        {
          v34 = v0[11];
          v35 = v0[9];
          v51(v34, v32, v35);
          v36 = SFAirDropSend.ItemMetadata.fileSubType.getter();
          v38 = v37;
          (*v33)(v34, v35);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_10000E494((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          *(v41 + 4) = v36;
          *(v41 + 5) = v38;
          v32 += v49;
          --v28;
        }

        while (v28);

        v6 = v46;
        v4 = v48;
      }

      else
      {
      }
    }

    v0[18] = _swiftEmptyArrayStorage;
    type metadata accessor for SFAirDropUtilities();
    v42 = async function pointer to static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)[1];
    v43 = swift_task_alloc();
    v0[19] = v43;
    *v43 = v0;
    v43[1] = sub_100036B74;
    v44.n128_u64[0] = 0x405A800000000000;
    v45.n128_u64[0] = 0x405A800000000000;

    return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(v4, v6, _swiftEmptyArrayStorage, v44, v45);
  }

  else
  {
    v22 = v0[12];

    v23 = v0[11];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100036B74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[20] = v1;

  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[16];

  if (v1)
  {

    v10 = v4[13];
    v11 = v4[14];
    v12 = sub_100036DCC;
  }

  else
  {
    v4[21] = a1;

    v10 = v4[13];
    v11 = v4[14];
    v12 = sub_100036D14;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100036D14()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v1;
  sub_1000364F8(v1, v5, v4);

  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100036DCC()
{
  v20 = v0;
  v1 = v0[12];

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = v0[8];
  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100173A40);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[15];
  if (v7)
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10003E81C(v11, v10, &v19);
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get fallback preview image for transfer %s: %@", v12, 0x16u);
    sub_1000159AC(v13, &qword_100172EB0, &qword_100119410);

    sub_100007920(v14);
  }

  else
  {
  }

  v16 = v0[11];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100036FFC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v33 = &v29 - v17;
  v18 = *a1;
  v19 = *a2;
  v20 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
  swift_beginAccess();
  sub_100007BA4(v18 + v20, v11, &unk_100174FA0, &qword_10011A700);
  v21 = v13[6];
  if (v21(v11, 1, v12) == 1)
  {
    v9 = v11;
  }

  else
  {
    v31 = v2;
    v30 = v13[4];
    v30(v33, v11, v12);
    v22 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v19 + v22, v9, &unk_100174FA0, &qword_10011A700);
    if (v21(v9, 1, v12) != 1)
    {
      v24 = v32;
      v30(v32, v9, v12);
      v25 = v33;
      v26 = static Date.< infix(_:_:)();
      v27 = v13[1];
      v27(v24, v12);
      v27(v25, v12);
      v23 = v26;
      return v23 & 1;
    }

    (v13[1])(v33, v12);
  }

  sub_1000159AC(v9, &unk_100174FA0, &qword_10011A700);
  v23 = static Date.< infix(_:_:)();
  return v23 & 1;
}

uint64_t sub_100037314(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003743C, 0, 0);
}

uint64_t sub_10003743C()
{
  (*(v0[7] + 104))(v0[8], enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0[6]);
  v1 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000374FC;
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v3, v4);
}

uint64_t sub_1000374FC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1000376B0, 0, 0);
  }

  else
  {
    v7 = v6[8];
    v8 = v6[5];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1000376B0()
{
  v28 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100173A40);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 136315394;
    v15 = SFAirDrop.AcceptAction.Single.id.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10003E81C(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "AirDrop ReadyForOpen action %s failed with error %@", v14, 0x16u);
    sub_1000159AC(v25, &qword_100172EB0, &qword_100119410);

    sub_100007920(v26);
  }

  else
  {
    v20 = v0[10];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[8];
  v22 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100037940(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v56 = &v55 - v8;
  v57 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v55 = *(v57 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v57);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v58 = &v55 - v14;
  v15 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v55 - v17;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100007D20(v19, qword_100173A40);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10003E81C(a1, a2, v60);
    _os_log_impl(&_mh_execute_header, v20, v21, "Scene session discarded for activity %s", v22, 0xCu);
    sub_100007920(v23);
  }

  result = sub_100026D10(a1, a2);
  if (result)
  {
    v25 = result;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60[0] = v29;
      *v28 = 136315138;
      v30 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v31 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v32 = sub_10003E81C(v30, v31, v60);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Ending transfer %s because scene session was discarded", v28, 0xCu);
      sub_100007920(v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v33 = type metadata accessor for SFAirDropSend.Transfer.State();
    v34 = (*(*(v33 - 8) + 48))(v18, 1, v33);
    sub_1000159AC(v18, &qword_100172FD0, &qword_10011A210);
    if (v34 == 1)
    {
      v35 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v36 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v37 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
      swift_beginAccess();
      v38 = v56;
      sub_100007BA4(v25 + v37, v56, &unk_100173C50, &qword_10011D9D0);
      sub_10004520C(v35, v36, v11, v38);

      sub_1000159AC(v38, &unk_100173C50, &qword_10011D9D0);
      (*(v55 + 8))(v11, v57);
    }

    else
    {
      v39 = type metadata accessor for TaskPriority();
      v40 = v58;
      (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
      v41 = swift_allocObject();
      *(v41 + 16) = v3;
      *(v41 + 24) = v25;

      v42 = v3;
      static Task<>.noThrow(priority:operation:)();

      sub_1000159AC(v40, &qword_100172F50, &qword_10011E500);
    }

    v43 = (v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v44 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v45 = *(v25 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    sub_10002FCDC(v44, v45);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v59)
    {
      v46 = *(v59 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v47 = *(v59 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
      v48 = *v43;
      v49 = v43[1];

      v50._countAndFlagsBits = v48;
      v50._object = v49;
      LOBYTE(v46) = String.hasPrefix(_:)(v50);

      if (v46)
      {
        v51 = type metadata accessor for TaskPriority();
        v52 = v58;
        (*(*(v51 - 8) + 56))(v58, 1, 1, v51);
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        *(v54 + 16) = &unk_10011A2B0;
        *(v54 + 24) = v53;
        sub_1000077C8(&unk_100173C60, &qword_10011D910);
        static Task<>.noThrow(priority:operation:)();

        return sub_1000159AC(v52, &qword_100172F50, &qword_10011E500);
      }
    }
  }

  return result;
}

uint64_t sub_100038148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100038208, 0, 0);
}

uint64_t sub_100038208()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airdropClient);
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier;
  v0[7] = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier;
  v5 = (v1 + v4);
  v6 = *v5;
  v7 = v5[1];

  SFAirDrop.TransferIdentifier.init(_:)();
  v8 = async function pointer to SFAirDropClient.cancelTransfer(_:)[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_100038508;
  v10 = v0[6];

  return SFAirDropClient.cancelTransfer(_:)(v10);
}

uint64_t sub_100038508()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1000386B0, 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1000386B0()
{
  v18 = v0;
  v1 = v0[9];
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = (v0[3] + v0[7]);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    v10 = *v6;
    v11 = v6[1];

    v12 = sub_10003E81C(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to cancel transfer %s: %@", v7, 0x16u);
    sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);

    sub_100007920(v9);
  }

  else
  {
  }

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000388E8(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100038980, v3, v2);
}

uint64_t sub_100038980()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100028718();
  }

  v4 = v0[1];

  return v4(Strong == 0);
}

uint64_t sub_100038A14(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100038B00;

  return v6();
}

uint64_t sub_100038B00(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100038C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100038CD8, 0, 0);
}

uint64_t sub_100038CD8()
{
  (*(v0[6] + 104))(v0[7], enum case for SFAirDropReceive.ItemDestination.noItem(_:), v0[5]);
  v1 = async function pointer to SFAirDrop.AcceptAction.Single.accept(with:)[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  *v2 = v0;
  v2[1] = sub_100038DB0;
  v4 = v0[7];
  v5 = v0[2];

  return SFAirDrop.AcceptAction.Single.accept(with:)(v4, v3);
}

uint64_t sub_100038DB0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_100038F58, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_100038F58()
{
  v18 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10003E81C(v9, v8, &v17);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to decline ask for %s: %@", v10, 0x16u);
    sub_1000159AC(v11, &qword_100172EB0, &qword_100119410);

    sub_100007920(v12);
  }

  else
  {
  }

  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100039174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039214, 0, 0);
}

uint64_t sub_100039214()
{
  v1 = v0[5];
  sub_100007BA4(v0[2], v1, &unk_100173C50, &qword_10011D9D0);
  v2 = type metadata accessor for SFAirDrop.DeclineAction();
  v0[6] = v2;
  v3 = *(v2 - 8);
  v0[7] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000159AC(v0[5], &unk_100173C50, &qword_10011D9D0);
    v4 = v0[5];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_100039374;
    v9 = v0[5];

    return SFAirDrop.DeclineAction.decline()();
  }
}

uint64_t sub_100039374()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000394C8, 0, 0);
  }

  else
  {
    (*(v3[7] + 8))(v3[5], v3[6]);
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000394C8()
{
  v18 = v0;
  (*(v0[7] + 8))(v0[5], v0[6]);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10003E81C(v9, v8, &v17);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to cancel transfer for %s: %@", v10, 0x16u);
    sub_1000159AC(v11, &qword_100172EB0, &qword_100119410);

    sub_100007920(v12);
  }

  else
  {
  }

  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000396FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100039794;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_100039794()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000398C8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000398C8()
{
  v17 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10003E81C(v9, v8, &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to decline ask for %s: %@", v10, 0x16u);
    sub_1000159AC(v11, &qword_100172EB0, &qword_100119410);

    sub_100007920(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100039ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100039B74;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_100039B74()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100039CA8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100039CA8()
{
  v17 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10003E81C(v9, v8, &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to cancel transfer for %s: %@", v10, 0x16u);
    sub_1000159AC(v11, &qword_100172EB0, &qword_100119410);

    sub_100007920(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

void sub_100039EBC(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v62 = a8;
  v66 = a7;
  v64 = a4;
  v60 = a3;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  __chkstk_darwin(v16);
  v65 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100007D20(v19, qword_100173A40);

  v20 = a5;
  v21 = a6;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v63 = v21;
  v61 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69[0] = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_10003E81C(a1, a2, v69);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v20;
    *(v26 + 22) = 2112;
    *(v26 + 24) = v21;
    *v27 = v20;
    v27[1] = v21;
    v29 = v20;
    v30 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Update transfer %s. Completed unit count: %@. Total unit count: %@", v26, 0x20u);
    sub_1000077C8(&qword_100172EB0, &qword_100119410);
    swift_arrayDestroy();

    sub_100007920(v28);

    v16 = v59;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = v69[0];
  if (*(v69[0] + 16) && (v32 = sub_10003EEC0(a1, a2), (v33 & 1) != 0))
  {
    v59 = *(*(v31 + 56) + 8 * v32);

    v34 = [v60 unsignedIntegerValue];
    if (a10 >> 60 == 15)
    {
      v39 = 0;
    }

    else
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000156D8(a9, a10);
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      sub_100015660(a9, a10);
      if (v70)
      {
        sub_1000077C8(&qword_100173D38, &unk_10011A520);
        if (swift_dynamicCast())
        {
          v39 = v68;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        sub_1000159AC(v69, &qword_1001746C0, &qword_10011A510);
        v39 = 0;
      }
    }

    if (a12 >> 60 == 15)
    {
      v41 = 0;
      v40 = v61;
    }

    else
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000156D8(a11, a12);
      static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
      sub_100015660(a11, a12);
      v40 = v61;
      if (v70)
      {
        sub_1000077C8(&qword_100173D30, &qword_10011A518);
        if (swift_dynamicCast())
        {
          v41 = v68;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        sub_1000159AC(v69, &qword_1001746C0, &qword_10011A510);
        v41 = 0;
      }
    }

    v42 = v65;
    *v65 = v34;
    v43 = v67;
    (*(v67 + 104))(v42, enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:), v16);
    v44 = [v64 BOOLValue];
    v45 = [v40 integerValue];
    v46 = [v63 integerValue];
    v47 = v39;
    v48 = v59;
    sub_10007F568(v42, v44, v45, v46, v66, v62, v47, v41);

    (*(v43 + 8))(v42, v16);
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v34 == 3 && (v69[0] & 1) == 0)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Transfer was cancelled by sender. Ending our session locally.", v51, 2u);
      }

      v53 = *(v48 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v52 = *(v48 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v69[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_10003E81C(v53, v52, v69);
        _os_log_impl(&_mh_execute_header, v54, v55, "After opening URLs for transfer %s. Ending session locally.", v56, 0xCu);
        sub_100007920(v57);
      }

      sub_10002FCDC(v53, v52);
    }
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10003E81C(a1, a2, v69);
      _os_log_impl(&_mh_execute_header, v35, v36, "AirDrop transfer session not active for ID: %s, returning", v37, 0xCu);
      sub_100007920(v38);
    }
  }
}

void sub_10003AB68(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_100173A40);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v4;
    v32[0] = v13;
    v14 = v5;
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10003E81C(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v10, v11, "Accept transfer for transfer identifier: %s.", v12, 0xCu);
    sub_100007920(v15);
    v5 = v14;
    v4 = v31;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v32[0];
  if (*(v32[0] + 16) && (v17 = sub_10003EEC0(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    *v8 = 2;
    (*(v5 + 104))(v8, enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:), v4);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v32[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = v32[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = *(v19 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions);
    v23 = v32[0];
    v24 = v32[1];
    v25 = *(v19 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);

    sub_10007F568(v8, 1, v20, v21, v23, v24, v22, v25);

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10003E81C(a1, a2, v32);
      _os_log_impl(&_mh_execute_header, v26, v27, "AirDrop transfer session not active for ID: %s, returning", v28, 0xCu);
      sub_100007920(v29);
    }
  }
}

uint64_t sub_10003B098(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received cancellation request by the AirDropTransfer session", v6, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient);
  if (v9)
  {

    swift_unknownObjectRetain();
    v10 = String._bridgeToObjectiveC()();
    [v9 cancellationWasRequestedForTransferIdentifier:v10];

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Notified AirDropUIClient of cancellation. Ending session locally for faster feedback to the user.", v13, 2u);
    }

    sub_10002FCDC(v8, v7);

    return swift_unknownObjectRelease();
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDropUIClient is nil. Ending session locally.", v17, 2u);
    }

    sub_10002FCDC(v8, v7);
  }
}

void sub_10003B32C(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received accepted request by the AirDropTransfer session", v6, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v9 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient);
  if (v9)
  {

    swift_unknownObjectRetain();
    v10 = String._bridgeToObjectiveC()();

    [v9 acceptWasRequestedForTransferIdentifier:v10];

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Notified AirDropUIClient of transfer accept.", v12, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "AirDropUIClient is nil, accepting local session.", v15, 2u);
    }

    sub_10003AB68(v8, v7);
  }
}

uint64_t sub_10003B5B4(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = type metadata accessor for SFInterventionWorkflow();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for SFInterventionResponse();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10003B6D0, 0, 0);
}

uint64_t sub_10003B6D0()
{
  (*(v0[8] + 104))(v0[9], enum case for SFInterventionWorkflow.moreInfo(_:), v0[7]);
  v1 = async function pointer to SFAirDropClient.showIntervention(workflow:)[1];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10003B794;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[6];

  return SFAirDropClient.showIntervention(workflow:)(v3, v4);
}

uint64_t sub_10003B794()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_10003B990;
  }

  else
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v7 = sub_10003B924;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003B924()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003B990()
{
  v20 = v0;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_10003E81C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to show more info {error: %s}", v7, 0xCu);
    sub_100007920(v8);
  }

  else
  {
  }

  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

void sub_10003BB64(uint64_t a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received request from AirDropTransfer session to show a user notification for completed URLs", v5, 2u);
  }

  sub_10003BC60(a1);
}

void sub_10003BC60(uint64_t a1)
{
  v3 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v59 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v59[4] = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v61 = v59 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v59 - v15;
  __chkstk_darwin(v14);
  v64 = v59 - v17;
  v18 = type metadata accessor for Locale();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = type metadata accessor for String.LocalizationValue();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs);
  v23 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v65 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  if (*(v22 + 16))
  {
    v63 = v1;
    v24 = v23;
    v25 = objc_allocWithZone(UNMutableNotificationContent);

    v60 = v24;

    v62 = [v25 init];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v67)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    v26 = String._bridgeToObjectiveC()();

    v27 = v62;
    [v62 setBody:v26];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = aBlock;
    v29 = v63;
    if (aBlock)
    {
      sub_10003C934(aBlock, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1000159AC(v6, &qword_100172EE0, &qword_10011B220);
        if (!*(v22 + 16))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v39 = v64;
      (*(v8 + 32))(v64, v6, v7);
      sub_1000165C4(0, &unk_100173D20, UNNotificationAttachment_ptr);
      (*(v8 + 16))(v16, v39, v7);
      v40 = sub_10003D13C(0xD000000000000015, 0x80000001001234C0, v16, 0);
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100118700;
      *(v41 + 32) = v40;
      v42 = v40;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = v62;
      [v62 setAttachments:isa];

      (*(v8 + 8))(v64, v7);
      v29 = v63;
    }

    if (!*(v22 + 16))
    {
LABEL_18:

      v47 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v44 = v61;
    (*(v8 + 16))(v61, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    (*(v8 + 8))(v44, v7);
LABEL_19:
    [v27 setDefaultActionURL:{v47, v59[0]}];

    [v27 setShouldBackgroundDefaultAction:1];
    v48 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.1];
    v49 = v27;
    v50 = v48;
    v51 = String._bridgeToObjectiveC()();
    v52 = [objc_opt_self() requestWithIdentifier:v51 content:v49 trigger:v50];

    v53 = *(v29 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter);
    v70 = sub_10003D2F8;
    v71 = 0;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10003D4AC;
    v69 = &unk_10015DE08;
    v54 = _Block_copy(&aBlock);
    [v53 addNotificationRequest:v52 withCompletionHandler:v54];
    _Block_release(v54);
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100007D20(v55, qword_100173A40);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Notification hopefully shown for transfer. Ending session.", v58, 2u);
    }

    sub_10002FCDC(v65, v60);

    return;
  }

  v30 = qword_100172148;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100007D20(v31, qword_100173A40);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v65;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = v23;
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v36 = 136315138;
    *(v36 + 4) = sub_10003E81C(v35, v37, &aBlock);
    _os_log_impl(&_mh_execute_header, v32, v33, "AirDropTransfer %s has no completed URLs, so nothing to present to user. Ending session.", v36, 0xCu);
    sub_100007920(v38);
    v23 = v37;
  }

  sub_10002FCDC(v35, v23);
}

uint64_t sub_10003C81C()
{
  v1 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airdropClient);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v4, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10003C934@<X0>(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = type metadata accessor for UUID();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v63);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v58 - v14;
  v15 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v58 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v64 = &v58 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - v22;
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  v66 = v9[7];
  v66(&v58 - v24, 1, 1, v8);
  v26 = UIImageJPEGRepresentation(a1, 1.0);
  if (!v26)
  {
    goto LABEL_10;
  }

  v59 = a2;
  v27 = v26;
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v29;
  v61 = v28;

  v30 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v9 + 7;

  URL.init(fileURLWithPath:)();

  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v67 = 0xD000000000000017;
  v68 = 0x80000001001234E0;
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v4 + 8))(v7, v63);
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35 = v62;
  URL.appendingPathComponent(_:)();

  v36 = v9[1];
  v36(v13, v8);
  URL.appendingPathExtension(_:)();
  v36(v35, v8);
  v66(v23, 0, 1, v8);
  sub_1000478DC(v23, v25, &qword_100172EE0, &qword_10011B220);
  v63 = v25;
  v37 = v64;
  sub_100007BA4(v25, v64, &qword_100172EE0, &qword_10011B220);
  v40 = v9[6];
  v39 = (v9 + 6);
  v38 = v40;
  result = v40(v37, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v42 = v60;
    v43 = v61;
    Data.write(to:options:)();
    v66 = v39;
    v36(v37, v8);
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100007D20(v44, qword_100173A40);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      v56 = v43;
      v57 = v42;
      goto LABEL_9;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v67 = v48;
    *v47 = 136315138;
    v49 = v63;
    swift_beginAccess();
    v50 = v49;
    v51 = v58;
    sub_100007BA4(v50, v58, &qword_100172EE0, &qword_10011B220);
    result = v38(v51, 1, v8);
    if (result != 1)
    {
      v52 = URL.absoluteString.getter();
      v54 = v53;
      v36(v51, v8);
      v55 = sub_10003E81C(v52, v54, &v67);

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Saved temporary image URL to: %s", v47, 0xCu);
      sub_100007920(v48);

      v57 = v60;
      v56 = v61;
LABEL_9:
      sub_10001546C(v56, v57);

      a2 = v59;
      v25 = v63;
LABEL_10:
      swift_beginAccess();
      sub_100007BA4(v25, a2, &qword_100172EE0, &qword_10011B220);
      return sub_1000159AC(v25, &qword_100172EE0, &qword_10011B220);
    }
  }

  __break(1u);
  return result;
}

id sub_10003D13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  if (a4)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v9 options:v10.super.isa error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a3, v13);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  return v11;
}

void sub_10003D2F8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100007D20(v1, qword_100173A40);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10003E81C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Couldn't post notification: %s", v4, 0xCu);
      sub_100007920(v5);
    }

    else
    {
    }
  }
}

void sub_10003D4AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10003D5B0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceLockState();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v40 - v10;
  __chkstk_darwin(v9);
  v13 = v40 - v12;
  if (qword_100172148 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v14 = type metadata accessor for Logger();
  sub_100007D20(v14, qword_100173A40);
  v40[0] = v5[2];
  v40[1] = v5 + 2;
  (v40[0])(v13, a1, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v45 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    KeyPath = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v2;
    v21 = v20;
    v48 = v20;
    *v19 = 136315138;
    sub_100047F70(&qword_100173C48, &type metadata accessor for DeviceLockState);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v47 = *(KeyPath + 8);
    v47(v13, v4);
    v25 = sub_10003E81C(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Lock state changed to %s", v19, 0xCu);
    sub_100007920(v21);

    v5 = KeyPath;
  }

  else
  {

    v47 = v5[1];
    v47(v13, v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v48)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100047F70(&qword_100173C40, &type metadata accessor for DeviceLockState);
    v26 = v45;
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v47(v11, v4);
    if (v27)
    {
    }

    else
    {
      v28 = v40[0];
      (v40[0])(v11, v26, v4);
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v28(v41, v11, v4);
      static Published.subscript.setter();
      v47(v11, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = 0;
  v31 = v48 + 64;
  v30 = *(v48 + 64);
  KeyPath = v48;
  v32 = 1 << *(v48 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  a1 = v33 & v30;
  v2 = (v32 + 63) >> 6;
  v44 = v4;
  if ((v33 & v30) != 0)
  {
    while (2)
    {
      v13 = v29;
LABEL_18:
      v36 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v5 = *(*(KeyPath + 56) + ((v13 << 9) | (8 * v36)));
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      sub_100047F70(&qword_100173C40, &type metadata accessor for DeviceLockState);
      v37 = v45;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47(v11, v4);
      if (v38)
      {

        v29 = v13;
        if (a1)
        {
          continue;
        }
      }

      else
      {
        v34 = v37;
        v35 = v40[0];
        (v40[0])(v11, v34, v4);
        v43 = swift_getKeyPath();
        v42 = swift_getKeyPath();
        v35(v41, v11, v44);
        v4 = v44;
        static Published.subscript.setter();
        v47(v11, v4);
        v29 = v13;
        if (a1)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v13 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= v2)
    {
    }

    a1 = *(v31 + 8 * v13);
    ++v29;
    if (a1)
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_10003DC88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000167E4;

  return sub_10003B5B4(a1, v1);
}

uint64_t sub_10003DD24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10003DDA4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10003DE1C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10003DE98(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DeviceLockState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_10003E008(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10003E054(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000167E4;

  return v7();
}

uint64_t sub_10003E13C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000BCF0;

  return v8();
}

uint64_t sub_10003E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100007BA4(a3, v25 - v11, &qword_100172F50, &qword_10011E500);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000159AC(v12, &qword_100172F50, &qword_10011E500);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
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

    sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);

    return v23;
  }

LABEL_8:
  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
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

uint64_t sub_10003E520(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003E618;

  return v7(a1);
}

uint64_t sub_10003E618()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10003E710(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10003E7C0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10003E81C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10003E81C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003E8E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100015A30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007920(v11);
  return v7;
}

unint64_t sub_10003E8E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003E9F4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10003E9F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003EA40(a1, a2);
  sub_10003EB70(&off_10015C8F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003EA40(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10003EC5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003EC5C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003EB70(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003ECD0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003EC5C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000077C8(&qword_100173C38, &qword_10011A120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003ECD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000077C8(&qword_100173C38, &qword_10011A120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10003EDC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_10003EDEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003F19C(a1, v5, &type metadata accessor for UUID, &qword_100175DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10003EEC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10003F0E4(a1, a2, v6);
}

unint64_t sub_10003EF38(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10003F19C(a1, v5, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100173C88, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
}

unint64_t sub_10003F00C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003F33C(a1, v4);
}

unint64_t sub_10003F050(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10003F404(a1, v4);
}

unint64_t sub_10003F0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003F19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100047F70(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10003F33C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046E14(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100046E70(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10003F404(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10003F508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10003EEC0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100041DCC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100040A74(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_10003F5A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10003F848(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10003FAF0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10003FECC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000077C8(&qword_100173CE8, &unk_10011A380);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000402A8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1000077C8(&unk_100173D10, &qword_10011A398);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100040698(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_1000077C8(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_100040A74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100040C24(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100047F70(&qword_100173C80, &type metadata accessor for SFAirDrop.TransferIdentifier);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void sub_100040F48(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_100047F70(&unk_100173CF0, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_100041268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003EEC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003F5A0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10003EEC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100041C5C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1000413E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003EEC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10003F848(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10003EEC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100041DCC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_100041560(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10003EF38(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100041F3C();
      goto LABEL_7;
    }

    sub_10003FAF0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10003EF38(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100041AE8(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

void sub_10004172C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10003EDEC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1000421BC();
      goto LABEL_7;
    }

    sub_10003FECC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10003EDEC(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_100041BA0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10004190C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_10003EDEC(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_1000426C4(v30, v31);
      goto LABEL_7;
    }

    sub_100040698(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_10003EDEC(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_100041BA0(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_100041AE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100041BA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100041C5C()
{
  v1 = v0;
  sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100041DCC()
{
  v1 = v0;
  sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_100041F3C()
{
  v1 = v0;
  v34 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1000421BC()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&qword_100173CE8, &unk_10011A380);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100042430()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(&unk_100173D10, &qword_10011A398);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000426C4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077C8(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void sub_10004293C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AirDropTransferSession();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100042A20(uint64_t *a1)
{
  v3 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v55 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v43 - v7;
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v56);
  v49 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v43 - v12;
  v14 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1000446B8(v14);
    *a1 = v14;
  }

  v16 = *(v14 + 16);
  v45 = (v14 + 32);
  v59[0] = v14 + 32;
  v59[1] = v16;
  v17 = _minimumMergeRunLength(_:)(v16);
  if (v17 >= v16)
  {
    if (v16 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v54 = v13;
    v43[0] = a1;
    v43[1] = v1;
    v53 = (v8 + 48);
    v20 = (v8 + 32);
    v51 = (v8 + 8);
    v21 = -1;
    v22 = 1;
    v23 = v45;
    v44 = v16;
    v52 = v20;
LABEL_9:
    v47 = v22;
    v48 = v21;
    v24 = v45[v22];
    v46 = v23;
    while (1)
    {
      v30 = *v23;
      v31 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v32 = v60;
      sub_100007BA4(v24 + v31, v60, &unk_100174FA0, &qword_10011A700);
      v33 = *v53;
      if ((*v53)(v32, 1, v56) == 1)
      {

        v34 = v60;
      }

      else
      {
        v35 = v56;
        v36 = *v20;
        (*v20)(v54, v60, v56);
        v37 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v38 = v30 + v37;
        v39 = v55;
        sub_100007BA4(v38, v55, &unk_100174FA0, &qword_10011A700);
        if (v33(v39, 1, v35) != 1)
        {
          v25 = v49;
          v36(v49, v55, v35);

          v26 = v54;
          v50 = static Date.< infix(_:_:)();
          v27 = *v51;
          (*v51)(v25, v35);
          v27(v26, v35);

          v20 = v52;
          if ((v50 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_11;
        }

        v40 = *v51;

        v40(v54, v35);
        v34 = v55;
        v20 = v52;
      }

      sub_1000159AC(v34, &unk_100174FA0, &qword_10011A700);
      v41 = static Date.< infix(_:_:)();

      if ((v41 & 1) == 0)
      {
LABEL_8:
        v22 = v47 + 1;
        v23 = v46 + 1;
        v21 = v48 - 1;
        if (v47 + 1 == v44)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_9;
      }

LABEL_11:
      v28 = *v23;
      v24 = v23[1];
      *v23 = v24;
      v23[1] = v28;
      --v23;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v18 = v17;
  if (v16 >= 2)
  {
    type metadata accessor for AirDropTransferSession();
    v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16 >> 1;
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  v58[0] = ((v19 & 0xFFFFFFFFFFFFFF8) + 32);
  v58[1] = (v16 >> 1);
  sub_100042F04(v58, v57, v59, v18);
  *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100042F04(char **a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v135 = a1;
  v6 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v131 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v131 - v15;
  __chkstk_darwin(v14);
  v141 = &v131 - v17;
  v155 = type metadata accessor for Date();
  v18 = *(*(v155 - 8) + 64);
  v19 = __chkstk_darwin(v155);
  v145 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v154 = &v131 - v22;
  v23 = __chkstk_darwin(v21);
  v136 = &v131 - v24;
  result = __chkstk_darwin(v23);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_102:
    a4 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v146;
    if (result)
    {
LABEL_104:
      v158 = v30;
      v127 = *(v30 + 2);
      if (v127 >= 2)
      {
        while (*a3)
        {
          v128 = *&v30[16 * v127];
          v129 = *&v30[16 * v127 + 24];
          sub_100043C64((*a3 + 8 * v128), (*a3 + 8 * *&v30[16 * v127 + 16]), (*a3 + 8 * v129), a4);
          if (v13)
          {
          }

          if (v129 < v128)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1000445A0(v30);
          }

          if (v127 - 2 >= *(v30 + 2))
          {
            goto LABEL_129;
          }

          v130 = &v30[16 * v127];
          *v130 = v128;
          *(v130 + 1) = v129;
          v158 = v30;
          result = sub_100044514(v127 - 1);
          v30 = v158;
          v127 = *(v158 + 2);
          if (v127 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_1000445A0(v30);
    v30 = result;
    goto LABEL_104;
  }

  v140 = &v131 - v27;
  v137 = v16;
  v132 = a4;
  v29 = 0;
  v153 = (v26 + 48);
  v149 = (v26 + 32);
  v148 = (v26 + 8);
  v30 = &_swiftEmptyArrayStorage;
  v133 = a3;
  v147 = v10;
  v150 = v13;
LABEL_4:
  v31 = v29;
  if (v29 + 1 >= v28)
  {
    v28 = v29 + 1;
    goto LABEL_25;
  }

  v32 = *a3;
  v33 = *&v32[8 * v29 + 8];
  a4 = *&v32[8 * v29];
  v156 = a4;
  v157 = v33;

  v34 = v146;
  LODWORD(v143) = sub_100036FFC(&v157, &v156);
  v146 = v34;
  if (v34)
  {
  }

  v35 = v31;
  v36 = v31 + 2;
  v134 = v35;
  v151 = (8 * v35);
  v37 = &v32[8 * v35 + 16];
  v142 = v30;
  v144 = v28;
  while (v28 != v36)
  {
    a4 = *v37;
    v152 = *(v37 - 1);
    v45 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    v46 = a4 + v45;
    v47 = v141;
    sub_100007BA4(v46, v141, &unk_100174FA0, &qword_10011A700);
    v48 = *v153;
    if ((*v153)(v47, 1, v155) == 1)
    {

LABEL_14:
      sub_1000159AC(v47, &unk_100174FA0, &qword_10011A700);
      v40 = static Date.< infix(_:_:)();
      goto LABEL_8;
    }

    v49 = v155;
    v139 = *v149;
    (v139)(v140, v47, v155);
    v50 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    v51 = v152;
    swift_beginAccess();
    v52 = &v51[v50];
    v47 = v137;
    sub_100007BA4(v52, v137, &unk_100174FA0, &qword_10011A700);
    if (v48(v47, 1, v49) == 1)
    {
      v53 = *v148;

      v53(v140, v155);
      v28 = v144;
      goto LABEL_14;
    }

    v38 = v136;
    (v139)(v136, v47, v155);

    v39 = v140;
    v40 = static Date.< infix(_:_:)();
    v41 = *v148;
    v42 = v38;
    v43 = v155;
    (*v148)(v42, v155);
    v41(v39, v43);
    v28 = v144;
LABEL_8:

    v44 = v143 ^ v40;
    ++v36;
    ++v37;
    v30 = v142;
    v13 = v150;
    if (v44)
    {
      v28 = v36 - 1;
      break;
    }
  }

  a3 = v133;
  v31 = v134;
  if ((v143 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v28 < v134)
  {
    goto LABEL_134;
  }

  if (v134 < v28)
  {
    v54 = 8 * v28 - 8;
    v55 = v28;
    v56 = v134;
    do
    {
      if (v56 != --v55)
      {
        v57 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v58 = *&v151[v57];
        *&v151[v57] = *&v57[v54];
        *&v57[v54] = v58;
      }

      ++v56;
      v54 -= 8;
      v151 += 8;
    }

    while (v56 < v55);
  }

LABEL_25:
  v59 = *(a3 + 8);
  if (v28 >= v59)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(v28, v31))
  {
    goto LABEL_131;
  }

  if (v28 - v31 >= v132)
  {
LABEL_34:
    a4 = v28;
    if (v28 < v31)
    {
      goto LABEL_130;
    }

    goto LABEL_35;
  }

  if (__OFADD__(v31, v132))
  {
    goto LABEL_132;
  }

  if (v31 + v132 >= v59)
  {
    a4 = *(a3 + 8);
  }

  else
  {
    a4 = v31 + v132;
  }

  if (a4 < v31)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v28 == a4)
  {
    goto LABEL_34;
  }

  v142 = v30;
  v107 = v28;
  v152 = *a3;
  v108 = &v152[8 * v28 - 8];
  v134 = v31;
  v109 = (v31 - v28);
  v138 = a4;
LABEL_86:
  v144 = v107;
  v110 = *&v152[8 * v107];
  v139 = v109;
  v143 = v108;
  while (2)
  {
    v111 = *v108;
    v112 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v110 + v112, v13, &unk_100174FA0, &qword_10011A700);
    v113 = *v153;
    if ((*v153)(v13, 1, v155) == 1)
    {

      v114 = v13;
LABEL_91:
      sub_1000159AC(v114, &unk_100174FA0, &qword_10011A700);
      v120 = static Date.< infix(_:_:)();

      if ((v120 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v115 = v155;
      v151 = *v149;
      (v151)(v154, v13, v155);
      v116 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v117 = v111 + v116;
      v118 = v147;
      sub_100007BA4(v117, v147, &unk_100174FA0, &qword_10011A700);
      if (v113(v118, 1, v115) == 1)
      {
        v119 = *v148;

        v119(v154, v155);
        v114 = v118;
        v13 = v150;
        goto LABEL_91;
      }

      v121 = v155;
      v122 = v145;
      (v151)(v145, v118, v155);

      v123 = static Date.< infix(_:_:)();
      v124 = *v148;
      (*v148)(v122, v121);
      v124(v154, v121);

      v13 = v150;
      if ((v123 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    if (v152)
    {
      v125 = *v108;
      v110 = *(v108 + 1);
      *v108 = v110;
      *(v108 + 1) = v125;
      v108 -= 8;
      if (!__CFADD__(v109++, 1))
      {
        continue;
      }

LABEL_85:
      v107 = v144 + 1;
      v108 = v143 + 8;
      v109 = v139 - 1;
      a4 = v138;
      if ((v144 + 1) != v138)
      {
        goto LABEL_86;
      }

      a3 = v133;
      v30 = v142;
      v31 = v134;
      if (v138 < v134)
      {
        goto LABEL_130;
      }

LABEL_35:
      result = swift_isUniquelyReferenced_nonNull_native();
      v138 = a4;
      if ((result & 1) == 0)
      {
        result = sub_1000445B4(0, *(v30 + 2) + 1, 1, v30);
        v30 = result;
      }

      a4 = *(v30 + 2);
      v60 = *(v30 + 3);
      v61 = a4 + 1;
      if (a4 >= v60 >> 1)
      {
        result = sub_1000445B4((v60 > 1), a4 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 2) = v61;
      v62 = &v30[16 * a4];
      v63 = v138;
      *(v62 + 4) = v31;
      *(v62 + 5) = v63;
      v152 = *v135;
      if (!v152)
      {
        goto LABEL_140;
      }

      if (a4)
      {
        while (2)
        {
          a4 = v61 - 1;
          if (v61 >= 4)
          {
            v68 = &v30[16 * v61 + 32];
            v69 = *(v68 - 64);
            v70 = *(v68 - 56);
            v74 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            if (v74)
            {
              goto LABEL_117;
            }

            v73 = *(v68 - 48);
            v72 = *(v68 - 40);
            v74 = __OFSUB__(v72, v73);
            v66 = v72 - v73;
            v67 = v74;
            if (v74)
            {
              goto LABEL_118;
            }

            v75 = &v30[16 * v61];
            v77 = *v75;
            v76 = *(v75 + 1);
            v74 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v74)
            {
              goto LABEL_120;
            }

            v74 = __OFADD__(v66, v78);
            v79 = v66 + v78;
            if (v74)
            {
              goto LABEL_123;
            }

            if (v79 >= v71)
            {
              v97 = &v30[16 * a4 + 32];
              v99 = *v97;
              v98 = *(v97 + 1);
              v74 = __OFSUB__(v98, v99);
              v100 = v98 - v99;
              if (v74)
              {
                goto LABEL_127;
              }

              if (v66 < v100)
              {
                a4 = v61 - 2;
              }
            }

            else
            {
LABEL_54:
              if (v67)
              {
                goto LABEL_119;
              }

              v80 = &v30[16 * v61];
              v82 = *v80;
              v81 = *(v80 + 1);
              v83 = __OFSUB__(v81, v82);
              v84 = v81 - v82;
              v85 = v83;
              if (v83)
              {
                goto LABEL_122;
              }

              v86 = &v30[16 * a4 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v74 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v74)
              {
                goto LABEL_125;
              }

              if (__OFADD__(v84, v89))
              {
                goto LABEL_126;
              }

              if (v84 + v89 < v66)
              {
                goto LABEL_68;
              }

              if (v66 < v89)
              {
                a4 = v61 - 2;
              }
            }
          }

          else
          {
            if (v61 == 3)
            {
              v64 = *(v30 + 4);
              v65 = *(v30 + 5);
              v74 = __OFSUB__(v65, v64);
              v66 = v65 - v64;
              v67 = v74;
              goto LABEL_54;
            }

            v90 = &v30[16 * v61];
            v92 = *v90;
            v91 = *(v90 + 1);
            v74 = __OFSUB__(v91, v92);
            v84 = v91 - v92;
            v85 = v74;
LABEL_68:
            if (v85)
            {
              goto LABEL_121;
            }

            v93 = &v30[16 * a4];
            v95 = *(v93 + 4);
            v94 = *(v93 + 5);
            v74 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v74)
            {
              goto LABEL_124;
            }

            if (v96 < v84)
            {
              break;
            }
          }

          v101 = a4 - 1;
          if (a4 - 1 >= v61)
          {
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
            goto LABEL_133;
          }

          v102 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v103 = a3;
          v104 = *&v30[16 * v101 + 32];
          a3 = *&v30[16 * a4 + 40];
          v105 = v146;
          sub_100043C64(&v102[8 * v104], &v102[8 * *&v30[16 * a4 + 32]], &v102[8 * a3], v152);
          v146 = v105;
          if (v105)
          {
          }

          if (a3 < v104)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1000445A0(v30);
          }

          if (v101 >= *(v30 + 2))
          {
            goto LABEL_116;
          }

          v106 = &v30[16 * v101];
          *(v106 + 4) = v104;
          *(v106 + 5) = a3;
          v158 = v30;
          result = sub_100044514(a4);
          v30 = v158;
          v61 = *(v158 + 2);
          a3 = v103;
          if (v61 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v28 = *(a3 + 8);
      v29 = v138;
      if (v138 >= v28)
      {
        goto LABEL_102;
      }

      goto LABEL_4;
    }

    break;
  }

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
  return result;
}

uint64_t sub_100043C64(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v79 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v80 = &v75[-v13];
  v14 = __chkstk_darwin(v12);
  v82 = &v75[-v15];
  __chkstk_darwin(v14);
  v85 = &v75[-v16];
  v90 = type metadata accessor for Date();
  v17 = *(v90 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v90);
  v76 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v78 = &v75[-v23];
  __chkstk_darwin(v22);
  v91 = a1;
  v26 = a2 - a1;
  v27 = v26 / 8;
  v28 = a3;
  v29 = a3 - a2;
  v30 = v29 / 8;
  if (v26 / 8 >= v29 / 8)
  {
    v84 = v25;
    if (a4 != a2 || &a2[8 * v30] <= a4)
    {
      memmove(a4, a2, 8 * v30);
    }

    v31 = &a4[8 * v30];
    if (v29 < 8)
    {
      v54 = a2;
      goto LABEL_46;
    }

    v54 = a2;
    if (a2 <= v91)
    {
      goto LABEL_46;
    }

    v77 = (v17 + 8);
    v55 = v80;
    v88 = a4;
    v82 = (v17 + 48);
    v78 = (v17 + 32);
LABEL_28:
    v89 = v54;
    v56 = v54 - 8;
    v57 = v31;
    v83 = v54 - 8;
    while (1)
    {
      v58 = *(v57 - 1);
      v85 = v57 - 8;
      v86 = v28;
      v59 = *v56;
      v60 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      sub_100007BA4(v58 + v60, v55, &unk_100174FA0, &qword_10011A700);
      v61 = *v82;
      if ((*v82)(v55, 1, v90) == 1)
      {

        v62 = v55;
      }

      else
      {
        v87 = v31;
        v63 = v90;
        v81 = *v78;
        (v81)(v84, v55, v90);
        v64 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v65 = v59 + v64;
        v66 = v79;
        sub_100007BA4(v65, v79, &unk_100174FA0, &qword_10011A700);
        if (v61(v66, 1, v63) != 1)
        {
          v70 = v76;
          (v81)(v76, v66, v63);

          v71 = v84;
          LODWORD(v81) = static Date.< infix(_:_:)();
          v72 = *v77;
          (*v77)(v70, v63);
          v72(v71, v63);

          v68 = v86;
          v31 = v87;
          v28 = v86 - 8;
          v55 = v80;
          if (v81)
          {
LABEL_39:
            v73 = v83;
            if (v68 != v89)
            {
              *v28 = *v83;
            }

            a4 = v88;
            if (v31 <= v88 || (v54 = v73, v73 <= v91))
            {
              v54 = v73;
              goto LABEL_46;
            }

            goto LABEL_28;
          }

          goto LABEL_37;
        }

        v67 = *v77;

        v67(v84, v63);
        v62 = v66;
        v31 = v87;
        v55 = v80;
      }

      v68 = v86;
      sub_1000159AC(v62, &unk_100174FA0, &qword_10011A700);
      v69 = static Date.< infix(_:_:)();

      v28 = v68 - 8;
      if (v69)
      {
        goto LABEL_39;
      }

LABEL_37:
      v56 = v83;
      v57 = v85;
      if (v31 != v68)
      {
        *v28 = *v85;
      }

      v31 = v57;
      a4 = v88;
      if (v57 <= v88)
      {
        v31 = v57;
        v54 = v89;
        goto LABEL_46;
      }
    }
  }

  v84 = &v75[-v24];
  if (a4 != v91 || &v91[8 * v27] <= a4)
  {
    memmove(a4, v91, 8 * v27);
  }

  v31 = &a4[8 * v27];
  if (v26 >= 8)
  {
    v32 = a2;
    if (a2 < v28)
    {
      v86 = (v17 + 48);
      v83 = (v17 + 32);
      v80 = (v17 + 8);
      v87 = v31;
      v81 = v28;
      while (1)
      {
        v89 = v32;
        v33 = *v32;
        v34 = *a4;
        v35 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v36 = v85;
        sub_100007BA4(v33 + v35, v85, &unk_100174FA0, &qword_10011A700);
        v37 = *v86;
        if ((*v86)(v36, 1, v90) == 1)
        {
          break;
        }

        v88 = a4;
        v39 = v36;
        v40 = *v83;
        v41 = v90;
        (*v83)(v84, v39, v90);
        v42 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v43 = v34 + v42;
        v44 = v82;
        sub_100007BA4(v43, v82, &unk_100174FA0, &qword_10011A700);
        if (v37(v44, 1, v41) == 1)
        {
          v45 = *v80;

          v45(v84, v90);
          v38 = v44;
          a4 = v88;
          v32 = v89;
          v28 = v81;
LABEL_12:
          sub_1000159AC(v38, &unk_100174FA0, &qword_10011A700);
          v46 = static Date.< infix(_:_:)();

          if ((v46 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

        v49 = v78;
        v50 = v90;
        v40(v78, v44, v90);

        v51 = v84;
        v52 = static Date.< infix(_:_:)();
        v53 = *v80;
        (*v80)(v49, v50);
        v53(v51, v50);

        a4 = v88;
        v32 = v89;
        v28 = v81;
        if ((v52 & 1) == 0)
        {
LABEL_17:
          v47 = a4;
          v48 = v91 == a4;
          a4 += 8;
          if (v48)
          {
            goto LABEL_19;
          }

LABEL_18:
          *v91 = *v47;
          goto LABEL_19;
        }

LABEL_13:
        v47 = v32;
        v48 = v91 == v32;
        v32 += 8;
        if (!v48)
        {
          goto LABEL_18;
        }

LABEL_19:
        v91 += 8;
        v31 = v87;
        if (a4 >= v87 || v32 >= v28)
        {
          goto LABEL_21;
        }
      }

      v38 = v36;
      v32 = v89;
      goto LABEL_12;
    }
  }

LABEL_21:
  v54 = v91;
LABEL_46:
  if (v54 != a4 || v54 >= &a4[(v31 - a4 + (v31 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v54, a4, 8 * ((v31 - a4) / 8));
  }

  return 1;
}

uint64_t sub_100044514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000445A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1000445B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000077C8(&unk_100173E60, &qword_10011A720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000446CC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003E710(v3, 0);
  sub_100044760(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100044760(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000199C8(&qword_100173E58, &qword_100173E50, &qword_10011A718);
          for (i = 0; i != v6; ++i)
          {
            sub_1000077C8(&qword_100173E50, &qword_10011A718);
            v9 = sub_1000FE4C8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AirDropTransferSession();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100044918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

id sub_1000449C8()
{
  v0 = SFAirDropSend.Request.itemPreviewData.getter();
  if (v1 >> 60 == 15)
  {
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_100173A40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing preview image data", v5, 2u);
    }

    return 0;
  }

  v7 = v0;
  v8 = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_100003C74(isa);

  if (v10)
  {
    v11 = objc_allocWithZone(UIImage);
LABEL_11:
    v13 = [v11 initWithCGImage:v10];

    sub_100015660(v7, v8);
    return v13;
  }

  v12 = Data._bridgeToObjectiveC()().super.isa;
  v10 = SFCreateCGImageFromData();

  v11 = objc_allocWithZone(UIImage);
  if (v10)
  {
    goto LABEL_11;
  }

  v14 = v11;
  sub_1000156D8(v7, v8);
  v15 = Data._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithData:v15];

  sub_100015660(v7, v8);
  if (!v16)
  {
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100007D20(v17, qword_100173A40);
    sub_1000156D8(v7, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_100015660(v7, v8);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      sub_1000156D8(v7, v8);
      v22 = Data.description.getter();
      v24 = v23;
      sub_100015660(v7, v8);
      v25 = sub_10003E81C(v22, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create image from preview image data: %s", v20, 0xCu);
      sub_100007920(v21);

      sub_100015660(v7, v8);
    }

    else
    {

      sub_100015660(v7, v8);
    }

    return 0;
  }

  sub_100015660(v7, v8);
  return v16;
}

uint64_t sub_100044D28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = sub_100044918(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v15 = *(v6 + v12 + 48);
      v16 = *(v6 + v12 + 56);
      if (v15 != a2 || v16 != a3)
      {
        v18 = *(v6 + v12 + 48);
        v19 = *(v6 + v12 + 56);
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v20 = (v6 + 32 + 16 * v9);
            v21 = v20[1];
            v24 = *v20;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_100044904(v6);
            }

            v22 = v6 + 16 * v9;
            v23 = *(v22 + 40);
            *(v22 + 32) = v15;
            *(v22 + 40) = v16;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            v14 = *(v6 + v12 + 56);
            *(v13 + 48) = v24;
            *(v13 + 56) = v21;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100044EA0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100173A40);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "AirDropTransferSessionsController received a connection! %@", v9, 0xCu);
    sub_1000159AC(v10, &qword_100172EB0, &qword_100119410);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = ObjectType;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100047570;
  *(v13 + 24) = v12;
  v25 = sub_100047588;
  v26 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v24 = sub_10005A770;
  *(&v24 + 1) = &unk_10015DF48;
  v14 = _Block_copy(&aBlock);
  v15 = v2;

  [v6 configureConnection:v14];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    [v6 activate];
    v17 = *&v15[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection];
    *&v15[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = v6;
    v18 = v6;

    if ([v18 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    aBlock = v21;
    v24 = v22;
    if (*(&v22 + 1))
    {
      sub_1000077C8(&qword_100173D88, &qword_10011A648);
      if (swift_dynamicCast())
      {
        v19 = *&v15[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient];
        *&v15[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = v20;

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1000159AC(&aBlock, &qword_1001746C0, &qword_10011A510);
    }
  }

  return result;
}

uint64_t sub_10004520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v151 = a3;
  v148 = a1;
  v149 = a2;
  v4 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v138 = *(v4 - 8);
  v139 = *(v138 + 64);
  __chkstk_darwin(v4 - 8);
  v140 = &v127 - v5;
  v127 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v130 = *(v127 - 8);
  v6 = *(v130 + 64);
  __chkstk_darwin(v127);
  v129 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v7;
  __chkstk_darwin(v8);
  v135 = &v127 - v9;
  v133 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v136 = *(v133 - 8);
  v10 = *(v136 + 64);
  __chkstk_darwin(v133);
  v132 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v127 - v13;
  __chkstk_darwin(v14);
  v134 = &v127 - v15;
  v16 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v150 = &v127 - v18;
  v144 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v19 = *(v144 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v144);
  v137 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v127 - v23;
  v25 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SFAirDrop.DeclineAction();
  v146 = *(v30 - 8);
  v147 = v30;
  v31 = *(v146 + 64);
  __chkstk_darwin(v30);
  v145 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v143 = &v127 - v33;
  __chkstk_darwin(v34);
  v36 = &v127 - v35;
  v37 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v142 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v41);
  v44 = &v127 - v43;
  (*(v26 + 16))(v29, v151, v25, v42);
  v45 = (*(v26 + 88))(v29, v25);
  if (v45 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v26 + 96))(v29, v25);
    (*(v38 + 32))(v44, v29, v37);
    goto LABEL_3;
  }

  if (v45 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v26 + 96))(v29, v25);
    v63 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v64 = v63[12];
    v65 = *&v29[v63[16] + 8];

    v66 = v63[20];
    v67 = v146;
    v68 = v147;
    v69 = *(v146 + 32);
    v69(v36, &v29[v66], v147);
    v70 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v70 - 8) + 8))(&v29[v64], v70);
LABEL_10:
    v74 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v74 - 8) + 8))(v29, v74);
    v75 = type metadata accessor for TaskPriority();
    v76 = v150;
    (*(*(v75 - 8) + 56))(v150, 1, 1, v75);
    v77 = v145;
    v69(v145, v36, v68);
    v78 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v79 = swift_allocObject();
    v69((v79 + v78), v77, v68);
    v80 = (v79 + ((v31 + v78 + 7) & 0xFFFFFFFFFFFFFFF8));
    v81 = v149;
    *v80 = v148;
    v80[1] = v81;

    static Task<>.noThrow(priority:operation:)();

    return sub_1000159AC(v76, &qword_100172F50, &qword_10011E500);
  }

  if (v45 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v26 + 96))(v29, v25);
    v71 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    v72 = *&v29[*(v71 + 48)];

    v73 = *(v71 + 80);
    v67 = v146;
    v68 = v147;
    v69 = *(v146 + 32);
    v69(v36, &v29[v73], v147);
    goto LABEL_10;
  }

  if (v45 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v26 + 96))(v29, v25);
    v82 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v83 = *&v29[*(v82 + 48)];

    (*(v38 + 32))(v44, &v29[*(v82 + 64)], v37);
    v84 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v84 - 8) + 8))(v29, v84);
LABEL_3:
    SFAirDrop.PermissionRequest.style.getter();
    (*(v38 + 8))(v44, v37);
    v46 = v144;
    if ((*(v19 + 88))(v24, v144) != enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
    {
      return (*(v19 + 8))(v24, v46);
    }

    (*(v19 + 96))(v24, v46);
    v47 = *(v24 + 1);

    v48 = *(v24 + 3);

    v49 = *(v24 + 4);

    v50 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
    v51 = v146;
    v52 = v147;
    v53 = *(v146 + 32);
    v54 = v143;
    v53(v143, &v24[*(v50 + 80)], v147);
    v55 = type metadata accessor for TaskPriority();
    v56 = v150;
    (*(*(v55 - 8) + 56))(v150, 1, 1, v55);
    v57 = v145;
    (*(v51 + 16))(v145, v54, v52);
    v58 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v59 = swift_allocObject();
    v53((v59 + v58), v57, v52);
    v60 = (v59 + ((v31 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
    v61 = v149;
    *v60 = v148;
    v60[1] = v61;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v56, &qword_100172F50, &qword_10011E500);
    return (*(v51 + 8))(v143, v52);
  }

  if (v45 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v26 + 96))(v29, v25);
    v85 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v86 = *&v29[v85[12]];

    v87 = *&v29[v85[16]];

    v88 = &v29[v85[20]];
    v89 = v142;
    v90 = v37;
    (*(v38 + 32))(v142, v88, v37);
    v91 = v137;
    SFAirDrop.PermissionRequest.style.getter();
    v92 = v144;
    if ((*(v19 + 88))(v91, v144) == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
    {
      (*(v19 + 96))(v91, v92);
      v93 = *(v91 + 1);

      v94 = *(v91 + 3);

      v95 = *(v91 + 4);
      v96 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
      (*(v146 + 8))(&v91[*(v96 + 80)], v147);
      if (*(v95 + 16))
      {
        v97 = v136;
        v98 = *(v136 + 16);
        v99 = v131;
        v100 = v133;
        v98(v131, v95 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v133);

        v101 = v134;
        (*(v97 + 32))(v134, v99, v100);
        v102 = v132;
        v98(v132, v101, v100);
        if ((*(v97 + 88))(v102, v100) == enum case for SFAirDrop.AcceptAction.single<A>(_:))
        {
          (*(v97 + 96))(v102, v100);
          v151 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
          v103 = v102;
          v104 = v130;
          v147 = *(v130 + 32);
          v105 = v127;
          v147(v135, v103, v127);
          v106 = type metadata accessor for UUID();
          (*(*(v106 - 8) + 8))(&v103[v151], v106);
          v107 = type metadata accessor for TaskPriority();
          v108 = *(*(v107 - 8) + 56);
          v151 = v90;
          v108(v150, 1, 1, v107);
          v109 = v129;
          v110 = v105;
          (*(v104 + 16))(v129, v135, v105);
          v111 = (*(v104 + 80) + 16) & ~*(v104 + 80);
          v112 = (v128 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
          v113 = swift_allocObject();
          v147(v113 + v111, v109, v110);
          v114 = (v113 + v112);
          v115 = v149;
          *v114 = v148;
          v114[1] = v115;

          v116 = v150;
          static Task<>.noThrow(priority:operation:)();

          sub_1000159AC(v116, &qword_100172F50, &qword_10011E500);
          (*(v104 + 8))(v135, v110);
          (*(v136 + 8))(v134, v100);
          (*(v38 + 8))(v142, v151);
        }

        else
        {
          v125 = *(v97 + 8);
          v125(v101, v100);
          (*(v38 + 8))(v142, v90);
          v125(v102, v100);
        }
      }

      else
      {

        (*(v38 + 8))(v89, v90);
      }
    }

    else
    {
      (*(v38 + 8))(v89, v90);
      (*(v19 + 8))(v91, v92);
    }

    v126 = type metadata accessor for SFAirDropReceive.ItemDestination();
    return (*(*(v126 - 8) + 8))(v29, v126);
  }

  else
  {
    v117 = type metadata accessor for TaskPriority();
    v118 = v150;
    (*(*(v117 - 8) + 56))(v150, 1, 1, v117);
    v119 = v140;
    sub_100007BA4(v141, v140, &unk_100173C50, &qword_10011D9D0);
    v120 = (*(v138 + 80) + 16) & ~*(v138 + 80);
    v121 = (v139 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
    v122 = swift_allocObject();
    sub_100046794(v119, v122 + v120);
    v123 = (v122 + v121);
    v124 = v149;
    *v123 = v148;
    v123[1] = v124;

    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v118, &qword_100172F50, &qword_10011E500);
    return (*(v26 + 8))(v29, v25);
  }
}

uint64_t sub_1000462FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046334()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000463C4;

  return sub_1000388E8(v0);
}

uint64_t sub_1000463C4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000464C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100038A14(a1, v5);
}

uint64_t sub_100046578()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000465B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100038148(a1, v5, v4);
}

uint64_t sub_100046664()
{
  v1 = *(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SFAirDrop.DeclineAction();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v2 | 7);
}

uint64_t sub_100046794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046804(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100039174(a1, v1 + v5, v7, v8);
}

uint64_t sub_10004692C()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000469D8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100038C14(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046B04(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100039ADC(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046C20()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100046CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_1000396FC(a1, v1 + v5, v7, v8);
}

uint64_t sub_100046DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046EC4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 actionIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return (*(a2 + 16))(a2);
    }
  }

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100007D20(v16, qword_100173A40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Notification was tapped, they navigated to the completed url", v19, 2u);
  }

  v20 = [a1 notification];
  v21 = [v20 request];

  v22 = [v21 content];
  v23 = [v22 defaultActionURL];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 8))(v8, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10004718C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000471CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000167E4;

  return sub_100032AC4(v2, v3);
}

uint64_t sub_10004727C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000167E4;

  return sub_10003E054(v2, v3, v5);
}

uint64_t sub_10004733C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004737C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000167E4;

  return sub_10003E13C(a1, v4, v5, v7);
}

uint64_t sub_100047448()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047480(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_10003E520(a1, v5);
}

uint64_t sub_100047538()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047598()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000281C0(a1);
}

uint64_t sub_1000476B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000167E4;

  return sub_100028260(v0);
}

uint64_t sub_100047748(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_1000F9778(a1, v5);
}

uint64_t sub_100047808(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100028E70(a1, v5);
}

uint64_t sub_1000478DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100047944()
{
  v1 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000479D8(uint64_t a1)
{
  v4 = *(sub_1000077C8(&unk_100173C98, &unk_10011A300) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000167E4;

  return sub_100037314(a1, v1 + v5);
}

uint64_t sub_100047AC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100047AEC(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropSend.Request() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000167E4;

  return sub_1000366D8(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_100047C30(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6 + 8);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_100047D14(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000167E4;

  return sub_100035C3C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_100047E64(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_100047EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000356B4(a1, v4, v5, v6);
}

uint64_t sub_100047F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100047FB8()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048084(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_100034D54(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004817C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000481C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_1000350D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100048310(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v4 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v5 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState + 8);
  *v3 = result;
  v3[1] = a2;
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v5 || (v4 == result ? (v6 = v5 == a2) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
LABEL_10:
    if (*(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState) == 1)
    {
      sub_1000489B8(1);
    }
  }
}

void sub_1000483A8()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_hasSetInitialState] = 0;
  v2 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
  v3 = type metadata accessor for SFShockwaveEffectState();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = &v1[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState];
  sub_1000194DC();
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = static NSUserDefaults.airdrop.getter();
  SFAirDropUserDefaults.shockwaveEffectVariant.getter();

  v6 = type metadata accessor for ShockwaveEffectViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithPackageName:v10 inBundle:v8];

  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v1[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView] = v11;
  v68.receiver = v1;
  v68.super_class = v6;
  v12 = objc_msgSendSuper2(&v68, "initWithNibName:bundle:", 0, 0);
  v13 = [v12 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor:v16];

  v17 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView;
  v18 = *&v12[OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView];
  v19 = [v15 clearColor];
  [v18 setBackgroundColor:v19];

  [*&v12[v17] setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = *&v12[v17];
  v21 = [v12 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  [v21 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = [v12 view];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v31;
  [v31 addSubview:*&v12[v17]];

  [*&v12[v17] sizeThatFits:{0.0, 0.0}];
  v34 = v33;
  v36 = v35;
  v37 = [v12 view];
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v37;
  [v37 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v69.origin.x = v40;
  v69.origin.y = v42;
  v69.size.width = v44;
  v69.size.height = v46;
  Height = CGRectGetHeight(v69);
  v48 = *&v12[v17];
  [v48 transform];
  v64 = *&v67.c;
  v65 = *&v67.a;
  tx = v67.tx;
  ty = v67.ty;
  v51 = [v12 view];
  if (!v51)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v52 = v51;
  v53 = v34 / v36 * Height;
  [v51 frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v70.origin.x = v55;
  v70.origin.y = v57;
  v70.size.width = v59;
  v70.size.height = v61;
  Width = CGRectGetWidth(v70);
  *&v67.a = v65;
  *&v67.c = v64;
  v67.tx = tx;
  v67.ty = ty;
  CGAffineTransformScale(&v66, &v67, Width / v53 * 1.003, 1.0);
  v67 = v66;
  [v48 setTransform:&v67];

  v63 = [v12 view];
  if (v63)
  {
    [v63 setUserInteractionEnabled:0];

    [*&v12[v17] bs_setHitTestingDisabled:1];
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1000489B8(char a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v98[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v102 = &v98[-v9];
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000077C8(&qword_100173F38, &qword_10011E770);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v98[-v17];
  v19 = type metadata accessor for SFNearbySharingInteraction();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v26 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState + 8);
  if (!v26)
  {
    return;
  }

  v100 = v25;
  v103 = &v98[-v23];
  v104 = v24;
  v105 = v22;
  v27 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_assetState);
  v28 = *(v2 + OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectAssetView);

  v101 = v27;
  v29 = String._bridgeToObjectiveC()();
  [v28 setState:v29 animated:a1 & 1 transitionSpeed:0 completion:0.7];

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v30 = *(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
  sub_100096D04(v18);

  v32 = v104;
  v31 = v105;
  if ((*(v104 + 48))(v18, 1, v105) != 1)
  {
    (*(v32 + 32))(v103, v18, v31);
    SFNearbySharingInteraction.state.getter();
    v39 = (*(v11 + 88))(v14, v10);
    v40 = v39;
    v41 = enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
    v42 = v39 != enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:) && v39 == enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:);
    v43 = !v42;
    if (!v42)
    {
      (*(v11 + 8))(v14, v10);
    }

    v44 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
    swift_beginAccess();
    v45 = v102;
    sub_100049E10(v2 + v44, v102);
    v46 = type metadata accessor for SFShockwaveEffectState();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      goto LABEL_18;
    }

    sub_100049E10(v45, v8);
    v54 = (*(v47 + 88))(v8, v46);
    if (v54 == enum case for SFShockwaveEffectState.connectionHint(_:))
    {
      v55 = v43 ^ 1;
      sub_1000194DC();
      v56 = static NSUserDefaults.airdrop.getter();
      v57 = SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.getter();

      v58 = (v40 == v41) & v57 | v55;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      v60 = sub_100007D20(v59, qword_10017F350);

      v100 = v60;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v99 = v40 == v41;
        v63 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v63 = 136316162;
        v64 = sub_10003E81C(v101, v26, &v106);

        *(v63 + 4) = v64;
        *(v63 + 12) = 2080;
        if (v58)
        {
          v65 = 5457241;
        }

        else
        {
          v65 = 20302;
        }

        if (v58)
        {
          v66 = 0xE300000000000000;
        }

        else
        {
          v66 = 0xE200000000000000;
        }

        v67 = v58;
        v68 = sub_10003E81C(v65, v66, &v106);

        *(v63 + 14) = v68;
        *(v63 + 22) = 1024;
        v69 = static NSUserDefaults.airdrop.getter();
        LOBYTE(v68) = SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.getter();

        *(v63 + 24) = v68 & 1;
        *(v63 + 28) = 1024;
        *(v63 + 30) = v99;
        *(v63 + 34) = 1024;
        *(v63 + 36) = v55;
        _os_log_impl(&_mh_execute_header, v61, v62, "Should play haptics for SFShockwaveEffectState: %s? %s , shockwaveHapticsPlayerStartsEarly:%{BOOL}d, isInteractionStatePresenceDetected:%{BOOL}d, isInteractionStateConnecting:%{BOOL}d", v63, 0x28u);
        swift_arrayDestroy();
        v45 = v102;
      }

      else
      {

        v67 = v58;
      }

      v83 = v105;
      if (v67)
      {
        if (SFNearbySharingInteraction.isInitiator.getter())
        {
          v84 = 1;
        }

        else
        {
          v84 = SFNearbySharingInteraction.isInitiatorRoleExpected.getter();
        }

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v106 = v94;
          *v93 = 136315138;
          if (v84)
          {
            v95 = 0x6F74616974696E69;
          }

          else
          {
            v95 = 0x7265766965636572;
          }

          if (v84)
          {
            v96 = 0xE900000000000072;
          }

          else
          {
            v96 = 0xE800000000000000;
          }

          v97 = sub_10003E81C(v95, v96, &v106);

          *(v93 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v91, v92, "Playing hinting haptics as %s", v93, 0xCu);
          sub_100007920(v94);
          v83 = v105;
        }

        if (v84)
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7B34();
        }

        else
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7DF4();
        }
      }
    }

    else
    {
      if (v54 == enum case for SFShockwaveEffectState.shockwave(_:))
      {
        v70 = v105;
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100007D20(v71, qword_10017F350);
        v72 = v104;
        v73 = v100;
        (*(v104 + 16))(v100, v103, v70);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *v76 = 136315394;
          v77 = SFNearbySharingInteraction.isInitiator.getter();
          if (v77)
          {
            v78 = 0x6F74616974696E69;
          }

          else
          {
            v78 = 0x7265766965636572;
          }

          if (v77)
          {
            v79 = 0xE900000000000072;
          }

          else
          {
            v79 = 0xE800000000000000;
          }

          v80 = *(v72 + 8);
          v80(v73, v105);
          v81 = sub_10003E81C(v78, v79, &v106);
          v70 = v105;

          *(v76 + 4) = v81;
          *(v76 + 12) = 2080;
          v82 = sub_10003E81C(v101, v26, &v106);

          *(v76 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v74, v75, "Playing shockwave haptics as %s for SFShockwaveEffectState: %s", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v80 = *(v72 + 8);
          v80(v73, v70);
        }

        if (SFNearbySharingInteraction.isInitiator.getter())
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7C94();
        }

        else
        {
          if (qword_100172240 != -1)
          {
            swift_once();
          }

          sub_1000F7F54();
        }

        v80(v103, v70);
        goto LABEL_88;
      }

      v83 = v105;
      if (v54 != enum case for SFShockwaveEffectState.cleaningUp(_:))
      {
        (*(v47 + 8))(v8, v46);
LABEL_18:
        if (qword_100172218 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100007D20(v48, qword_10017F350);

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v106 = v52;
          *v51 = 136315138;
          v53 = sub_10003E81C(v101, v26, &v106);

          *(v51 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v49, v50, "Not playing haptics for SFShockwaveEffectState: %s", v51, 0xCu);
          sub_100007920(v52);
        }

        else
        {
        }

        (*(v104 + 8))(v103, v105);
        goto LABEL_88;
      }

      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_100007D20(v85, qword_10017F350);

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v106 = v89;
        *v88 = 136315138;
        v90 = sub_10003E81C(v101, v26, &v106);

        *(v88 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v86, v87, "Cleaning up haptics for SFShockwaveEffectState: %s", v88, 0xCu);
        sub_100007920(v89);

        v83 = v105;
      }

      else
      {
      }

      if (qword_100172240 != -1)
      {
        swift_once();
      }

      sub_1000F80B4();
    }

    (*(v104 + 8))(v103, v83);
LABEL_88:
    sub_1000159AC(v45, &qword_100173F30, &unk_10011A930);
    return;
  }

  sub_1000159AC(v18, &qword_100173F38, &qword_10011E770);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100007D20(v33, qword_10017F350);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v107 = v37;
    *v36 = 136315138;
    v38 = sub_10003E81C(v101, v26, &v107);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "Skipping playing Haptics with ShockwaveEffectView's state change to %s, currentNearbyInteraction was nil", v36, 0xCu);
    sub_100007920(v37);
  }

  else
  {
  }
}

id sub_1000498F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShockwaveEffectViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShockwaveEffectViewController()
{
  result = qword_100173F18;
  if (!qword_100173F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000499F4()
{
  sub_100049AA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100049AA4()
{
  if (!qword_100173F28)
  {
    type metadata accessor for SFShockwaveEffectState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100173F28);
    }
  }
}

id sub_100049AFC()
{
  v0 = objc_allocWithZone(type metadata accessor for ShockwaveEffectViewController());

  return [v0 init];
}

uint64_t sub_100049B34(uint64_t a1)
{
  v3 = type metadata accessor for SFShockwaveEffectState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = *(v1 + 8);
  dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
  (*(v4 + 56))(v11, 0, 1, v3);
  v13 = OBJC_IVAR____TtC9AirDropUI29ShockwaveEffectViewController_effectState;
  swift_beginAccess();
  sub_10004A0E0(v11, a1 + v13);
  swift_endAccess();
  dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
  v14 = SFShockwaveEffectState.assetState.getter();
  v16 = v15;
  (*(v4 + 8))(v7, v3);
  return sub_100048310(v14, v16);
}

uint64_t sub_100049D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A08C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100049D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A08C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100049DE8()
{
  sub_10004A08C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100049E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100049FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004A02C()
{
  result = qword_100177090;
  if (!qword_100177090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177090);
  }

  return result;
}

unint64_t sub_10004A08C()
{
  result = qword_100173F40;
  if (!qword_100173F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173F40);
  }

  return result;
}

uint64_t sub_10004A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100173F30, &unk_10011A930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A150(uint64_t a1)
{
  v1 = *(a1 + 32) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10004A16C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10004A1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10004A22C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -64;
  }

  return result;
}

uint64_t sub_10004A280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000077C8(&qword_100173F48, qword_10011AAE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10004A36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000077C8(&qword_100173F48, qword_10011AAE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AirDropDescriptionView()
{
  result = qword_100173FA8;
  if (!qword_100173FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A480()
{
  sub_10004A51C();
  if (v0 <= 0x3F)
  {
    sub_10004A5CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004A51C()
{
  if (!qword_100173FB8)
  {
    sub_10004A578();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_100173FB8);
    }
  }
}

unint64_t sub_10004A578()
{
  result = qword_100173FC0;
  if (!qword_100173FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173FC0);
  }

  return result;
}

void sub_10004A5CC()
{
  if (!qword_100173FC8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100173FC8);
    }
  }
}

uint64_t sub_10004A638()
{
  v1 = sub_1000077C8(&qword_100177A70, &qword_10011AC50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = v0 + *(type metadata accessor for AirDropDescriptionView() + 24);
  if (*(v5 + 32) <= 0x3Fu && (v6 = *(v5 + 16)) != 0)
  {
    v7 = *(v5 + 16);
  }

  else
  {
    sub_1000077C8(&qword_100173F48, qword_10011AAE0);
    ScaledMetric.wrappedValue.getter();
    v8 = type metadata accessor for Font.Design();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v6 = static Font.system(size:weight:design:)();
    sub_1000159AC(v4, &qword_100177A70, &qword_10011AC50);
  }

  return v6;
}

uint64_t sub_10004A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_100174008, &qword_10011AB70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_1000077C8(&qword_100174010, &qword_10011AB78);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  if (qword_1001721B0 != -1)
  {
    swift_once();
  }

  sub_10004AA18(v17);
  v18 = sub_10004A638();
  v19 = type metadata accessor for AirDropDescriptionView();
  v20 = a1 + *(v19 + 24);
  v21 = *(v20 + 32);
  if ((v21 >> 6) - 1 >= 2)
  {
    if (v21 >> 6)
    {
      v22 = 0;
      LOBYTE(v21) = 1;
    }

    else
    {
      v22 = *(v20 + 24);
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v22 = 1;
  }

  sub_10004ADBC(v18, v22, v21 & 1, v10, *(a1 + *(v19 + 28)));

  sub_100007BA4(v17, v15, &qword_100174010, &qword_10011AB78);
  sub_100007BA4(v10, v8, &qword_100174008, &qword_10011AB70);
  sub_100007BA4(v15, a2, &qword_100174010, &qword_10011AB78);
  v23 = sub_1000077C8(&qword_100174018, &qword_10011AB80);
  sub_100007BA4(v8, a2 + *(v23 + 48), &qword_100174008, &qword_10011AB70);
  sub_1000159AC(v10, &qword_100174008, &qword_10011AB70);
  sub_1000159AC(v17, &qword_100174010, &qword_10011AB78);
  sub_1000159AC(v8, &qword_100174008, &qword_10011AB70);
  return sub_1000159AC(v15, &qword_100174010, &qword_10011AB78);
}

__n128 sub_10004AA18@<Q0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_1000077C8(&qword_100174070, &qword_10011ABB8);
  v2 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v4 = &v39 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = (v1 + *(type metadata accessor for AirDropDescriptionView() + 20));
  v10 = *v9;
  if (v9[1])
  {
    v11 = v9[1];
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v10 = String.init(localized:table:bundle:locale:comment:)();
  }

  *&v41 = v10;
  *(&v41 + 1) = v11;
  sub_10004BB74();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  sub_10004BBC8(v12, v14, v16 & 1);

  static Color.primary.getter();
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10004BBC8(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = &v4[*(v39 + 36)];
  v31 = *(sub_1000077C8(&qword_1001740A0, &qword_10011ABD0) + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = type metadata accessor for Text.TruncationMode();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v4 = v22;
  *(v4 + 1) = v24;
  v4[16] = v26 & 1;
  *(v4 + 3) = v28;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 1;
  v4[48] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v40;
  sub_100021A84(v4, v40, &qword_100174070, &qword_10011ABB8);
  v35 = v34 + *(sub_1000077C8(&qword_100174010, &qword_10011AB78) + 36);
  v36 = v46;
  *(v35 + 64) = v45;
  *(v35 + 80) = v36;
  *(v35 + 96) = v47;
  v37 = v42;
  *v35 = v41;
  *(v35 + 16) = v37;
  result = v44;
  *(v35 + 32) = v43;
  *(v35 + 48) = result;
  return result;
}

uint64_t sub_10004ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v87 = a2;
  v90 = a1;
  v91 = sub_1000077C8(&qword_100174020, &qword_10011AB88);
  v9 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v11 = &v86 - v10;
  v86 = sub_1000077C8(&qword_100174028, &qword_10011AB90);
  v12 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v14 = &v86 - v13;
  v92 = sub_1000077C8(&qword_100174030, &qword_10011AB98);
  v15 = *(*(v92 - 8) + 64);
  v16 = __chkstk_darwin(v92);
  v88 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v86 - v18;
  v97 = sub_1000077C8(&qword_100174038, &qword_10011ABA0);
  v19 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v93 = &v86 - v20;
  v95 = sub_1000077C8(&qword_100174040, &qword_10011ABA8);
  v21 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v86 - v22;
  v23 = v5 + *(type metadata accessor for AirDropDescriptionView() + 24);
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v28 = *(v23 + 32);
  v29 = v28 >> 6;
  v94 = a4;
  if (v28 >> 6 <= 1)
  {
    if (!v29)
    {

      goto LABEL_8;
    }

    v30 = sub_10004B6B8(v25, v24);
LABEL_7:
    v32 = v30;
    v33 = a3;
    v34 = v31;
    sub_10004BB08(v25, v24, v26, v27, v28);
    v25 = v32;
    v24 = v34;
    a3 = v33;
    goto LABEL_8;
  }

  if (v29 == 2)
  {

    v30 = sub_10004B8BC(v25, v24);
    goto LABEL_7;
  }

  v85 = v24 | v25;
  v24 = 0xE000000000000000;
  v25 = 0;
  if (!(v85 | v26 | v27) && v28 == 192)
  {
    swift_storeEnumTagMultiPayload();
    sub_10004BF94();
    return _ConditionalContent<>.init(storage:)();
  }

LABEL_8:
  *&v99 = v25;
  *(&v99 + 1) = v24;
  sub_10004BB74();
  if (a3)
  {
    v35 = Text.init<A>(_:)();
    v37 = v36;
    v39 = v38;
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;
    sub_10004BBC8(v35, v37, v39 & 1);

    static Color.primary.getter();
    v45 = Text.foregroundColor(_:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    sub_10004BBC8(v40, v42, v44 & 1);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(v11 + 4) = a5;
    v52 = v101;
    *(v11 + 88) = v102;
    v53 = v104;
    *(v11 + 104) = v103;
    *(v11 + 120) = v53;
    *(v11 + 136) = v105;
    v54 = v100;
    *(v11 + 40) = v99;
    *(v11 + 56) = v54;
    v98 = v49 & 1;
    *v11 = v45;
    *(v11 + 1) = v47;
    v11[16] = v49 & 1;
    *(v11 + 3) = v51;
    *(v11 + 72) = v52;
    *(v11 + 76) = 256;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    v55 = v93;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v56 = Text.init<A>(_:)();
    v58 = v57;
    v60 = v59;
    v61 = Text.font(_:)();
    v63 = v62;
    v65 = v64;
    sub_10004BBC8(v56, v58, v60 & 1);

    static Color.primary.getter();
    v66 = Text.foregroundColor(_:)();
    v68 = v67;
    v70 = v69;
    v90 = v71;

    sub_10004BBC8(v61, v63, v65 & 1);

    KeyPath = swift_getKeyPath();
    v73 = &v14[*(sub_1000077C8(&qword_100174070, &qword_10011ABB8) + 36)];
    v74 = *(sub_1000077C8(&qword_1001740A0, &qword_10011ABD0) + 28);
    v75 = enum case for Text.TruncationMode.tail(_:);
    v76 = type metadata accessor for Text.TruncationMode();
    (*(*(v76 - 8) + 104))(v73 + v74, v75, v76);
    *v73 = swift_getKeyPath();
    *v14 = v66;
    *(v14 + 1) = v68;
    v14[16] = v70 & 1;
    *(v14 + 3) = v90;
    *(v14 + 4) = KeyPath;
    *(v14 + 5) = v87;
    v14[48] = 0;
    *&v14[*(v86 + 36)] = a5;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v77 = v14;
    v78 = v88;
    sub_100021A84(v77, v88, &qword_100174028, &qword_10011AB90);
    v79 = (v78 + *(v92 + 36));
    v80 = v104;
    v79[4] = v103;
    v79[5] = v80;
    v79[6] = v105;
    v81 = v100;
    *v79 = v99;
    v79[1] = v81;
    v82 = v102;
    v79[2] = v101;
    v79[3] = v82;
    v83 = v89;
    sub_100021A84(v78, v89, &qword_100174030, &qword_10011AB98);
    sub_100007BA4(v83, v11, &qword_100174030, &qword_10011AB98);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100174050, &qword_10011ABB0);
    sub_10004BE8C(&qword_100174058, &qword_100174030, &qword_10011AB98, sub_10004BBD8);
    sub_10004BDD4();
    v55 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v83, &qword_100174030, &qword_10011AB98);
  }

  sub_100007BA4(v55, v96, &qword_100174038, &qword_10011ABA0);
  swift_storeEnumTagMultiPayload();
  sub_10004BF94();
  _ConditionalContent<>.init(storage:)();
  return sub_1000159AC(v55, &qword_100174038, &qword_10011ABA0);
}