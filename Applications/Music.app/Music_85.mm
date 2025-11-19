uint64_t sub_10096D2E8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10096D9D4;
  }

  else
  {
    v5 = sub_10096D424;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096D424()
{
  v47 = v0;
  v1 = v0[5];

  Playlist.collaboration.getter();
  v2 = type metadata accessor for Playlist.Collaboration();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_1000095E8(v0[5], &qword_1011AA600);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    Playlist.Collaboration.invitationURL.getter();
    (*(v3 + 8))(v6, v2);
    v8 = type metadata accessor for URL();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_1000095E8(v43, &qword_1011A77F0);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_1000095E8(v0[6], &qword_1011A77F0);
  v9(v10, v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_100010678(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    sub_10000959C(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_10097507C();
  v29 = swift_allocError();
  *v30 = xmmword_100EE94C0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v35 = String.init<A>(describing:)();
    v37 = sub_100010678(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    sub_10000959C(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

uint64_t sub_10096D9D4()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Playlist();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_10096DDAC, v8, v7);
}

uint64_t sub_10096DDAC()
{
  v29 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10097576C(&qword_1011AA648, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100010678(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    sub_10000959C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_10096E088;
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

uint64_t sub_10096E088()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096E27C;
  }

  else
  {
    v5 = sub_10096E1C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096E1C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096E27C()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v12 = v0[21];
  sub_10097507C();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_10096E648, v7, v6);
}

uint64_t sub_10096E648()
{
  v29 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10097576C(&qword_1011AA648, &type metadata accessor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100010678(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    sub_10000959C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_10096E924;
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

uint64_t sub_10096E924()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10096EB1C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10096EA50;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10096EA50()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096EB1C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.EndCollaborationRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_10096EE80, v6, v5);
}

uint64_t sub_10096EE80()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_10096F018;
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

uint64_t sub_10096F018()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10096F154;
  }

  else
  {
    v5 = sub_1009757C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096F154()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_10096F508, v8, v7);
}

uint64_t sub_10096F508()
{
  v44 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000060E4(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = String.init<A>(describing:)();
    v23 = sub_100010678(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    sub_10097576C(&unk_1011AA650, &type metadata accessor for Playlist.Collaborator);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = sub_100010678(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = sub_100010678(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_10096FBA0;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_10096F998;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_10096F998()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096FCDC;
  }

  else
  {
    v5 = sub_10096FAD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096FAD4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096FBA0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096FEEC;
  }

  else
  {
    v5 = sub_1009757B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096FCDC()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10096FEEC()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_1009702C4, v8, v7);
}

uint64_t sub_1009702C4()
{
  v39 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  v0[20] = sub_1000060E4(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    sub_10097576C(&unk_1011AA650, &type metadata accessor for Playlist.Collaborator);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_100010678(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = sub_100010678(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_1009706A8;
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

uint64_t sub_1009706A8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1009708B0;
  }

  else
  {
    v5 = sub_1009707E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009707E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1009708B0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.ResetInvitationLinkRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_100970C14, v6, v5);
}

uint64_t sub_100970C14()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100970DAC;
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

uint64_t sub_100970DAC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100970F84;
  }

  else
  {
    v5 = sub_100970EE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100970EE8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100970F84()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  updated = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  *(v2 + 56) = updated;
  *(v2 + 64) = *(updated - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_10010FC20(&qword_1011AA600);
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for Playlist.Collaboration();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_100971364, v7, v6);
}

uint64_t sub_100971364()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  Playlist.collaboration.getter();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_1000095E8(v9, &qword_1011AA600);
    sub_10097507C();
    swift_allocError();
    *v10 = xmmword_100EE94E0;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 168);
    (*(v16 + 32))(v14, *(v0 + 80), v15);
    (*(v16 + 16))(v13, v14, v15);
    v21 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v20)
    {
      v21 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v18 + 104))(v17, *v21, v19);
    MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(collaboration:updatedInvitationMode:)();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_10097167C;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

uint64_t sub_10097167C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1009718A4;
  }

  else
  {
    v5 = sub_1009717B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009717B8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1009718A4()
{
  v20 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_10097507C();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_1000095E8(v8, &qword_1011A9120);
  }

  swift_beginAccess();
  sub_100008FE4(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  sub_10000954C(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return sub_10000959C(v13);
}

uint64_t Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    Playlist.name.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setName:v10];

    Playlist.curatorName.getter();
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    Playlist.catalogID.getter();
    if (v13)
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_100972020();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    sub_10010FC20(&qword_1011AA660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6C0;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009F78(0, &qword_1011AA668);
    v19 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_1009750D0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100972450;
    aBlock[3] = &unk_1010D3660;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100972020()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_1009755A4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100974A8C;
  aBlock[3] = &unk_1010D3990;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100972358@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = sub_100009F78(0, &qword_1011AA8C8);
  *a2 = a1;

  return a1;
}

id sub_100972450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    v8 = sub_10000954C(v14, v15);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_10000959C(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  sub_10000959C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100972668()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.collaboration);
  sub_1000060E4(v0, static Logger.collaboration);
  sub_100009F78(0, &qword_1011AFB00);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011AA670);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_10010FC20(&qword_1011AA678);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  Playlist.Collaboration.invitationMode.getter();
  (*(v1 + 104))(v13, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000089F8(v15, v6, &qword_1011AA678);
  sub_1000089F8(v13, &v6[v16], &qword_1011AA678);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1000089F8(v6, v10, &qword_1011AA678);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_10097576C(&qword_1011AA680, &type metadata accessor for Playlist.Collaboration.InvitationMode);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_1000095E8(v13, &qword_1011AA678);
      sub_1000095E8(v15, &qword_1011AA678);
      v21(v10, v0);
      sub_1000095E8(v6, &qword_1011AA678);
      return v18 & 1;
    }

    sub_1000095E8(v13, &qword_1011AA678);
    sub_1000095E8(v15, &qword_1011AA678);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_1000095E8(v13, &qword_1011AA678);
  sub_1000095E8(v15, &qword_1011AA678);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000095E8(v6, &qword_1011AA670);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000095E8(v6, &qword_1011AA678);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = type metadata accessor for Playlist.Collaborator.Role();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011AA688);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_10010FC20(&qword_1011AA690);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  Playlist.Collaborator.role.getter();
  (*(v1 + 104))(v12, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000089F8(v15, v6, &qword_1011AA690);
  sub_1000089F8(v12, &v6[v16], &qword_1011AA690);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1000089F8(v6, v9, &qword_1011AA690);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_10097576C(&qword_1011AA698, &type metadata accessor for Playlist.Collaborator.Role);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_1000095E8(v12, &qword_1011AA690);
      sub_1000095E8(v15, &qword_1011AA690);
      v21(v9, v0);
      sub_1000095E8(v6, &qword_1011AA690);
      return v18 & 1;
    }

    sub_1000095E8(v12, &qword_1011AA690);
    sub_1000095E8(v15, &qword_1011AA690);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_1000095E8(v12, &qword_1011AA690);
  sub_1000095E8(v15, &qword_1011AA690);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000095E8(v6, &qword_1011AA688);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000095E8(v6, &qword_1011AA690);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  v0 = sub_10010FC20(&qword_1011AA600);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_10010FC20(&qword_1011AA608);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  Playlist.collaboration.getter();
  v9 = type metadata accessor for Playlist.Collaboration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_1000095E8(v2, &qword_1011AA600);
    v11 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v10 + 8))(v2, v9);
  v12 = type metadata accessor for Playlist.Collaborator.Status();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  sub_1000089F8(v8, v6, &qword_1011AA608);
  v14 = (*(v13 + 88))(v6, v12);
  if (v14 != enum case for Playlist.Collaborator.Status.host(_:) && v14 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v13 + 8))(v6, v12);
    goto LABEL_10;
  }

  v16 = 1;
LABEL_11:
  sub_1000095E8(v8, &qword_1011AA608);
  return v16;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_10010FC20(&unk_1011AA6A0);
  v1[13] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8888);
  v1[14] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011AA6B0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011AA6B8);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA6C0);
  v1[22] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011AA6C8);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1009735FC, 0, 0);
}

uint64_t sub_1009735FC()
{
  v1 = v0[22];
  v2 = v0[7];
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10097576C(&qword_1011AA6D0, &type metadata accessor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_1000095E8(v1, &qword_1011AA6C0);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1009737C4;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_1009737C4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100973D10;
  }

  else
  {
    v2 = sub_1009738D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009738D8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  MusicLibraryResponse.items.getter();
  (*(v2 + 16))(v3, v1, v4);
  sub_100020674(&qword_1011AA6D8, &qword_1011AA6B0);
  dispatch thunk of Sequence.makeIterator()();
  v7 = *(v5 + 36);
  sub_100020674(&qword_1011AA6E0, &qword_1011AA6B0);
  dispatch thunk of Collection.endIndex.getter();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    sub_1000095E8(v47[13], &unk_1011AA6A0);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = dispatch thunk of Collection.subscript.read();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      dispatch thunk of Collection.formIndex(after:)();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      Playlist.Entry.catalogID.getter();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    sub_1000095E8(v47[13], &unk_1011AA6A0);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_1000095E8(v38, &qword_1011A8888);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_100973D10()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = sub_10010FC20(&qword_1011A91C0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011AA6F0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100973F34, 0, 0);
}

uint64_t sub_100973F34()
{
  static MusicLibraryPlaylistRequest.duplicatingPlaylist<>(_:)();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100973FDC;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100973FDC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100974190;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_100974108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100974108()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100974190()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100974218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_10010FC20(&qword_1011A7F00);
  result = __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  if (a1)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    (*(v9 + 32))(v17 + v16, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a1;
    v18[1] = a2;

    sub_100969440(0, 0, v14, &unk_100EF28F0, v17);
  }

  return result;
}

uint64_t sub_100974418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&qword_1011AA930);
  v6[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA938);
  v6[6] = swift_task_alloc();
  sub_10010FC20(&unk_1011AA940);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100974528, 0, 0);
}

uint64_t sub_100974528()
{
  v1 = *(v0 + 56);
  Playlist.artwork.getter();
  v2 = type metadata accessor for Artwork();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 56), &unk_1011AA940);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = type metadata accessor for Artwork.CropStyle();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_100974748;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_100974748(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_1000095E8(v4, &qword_1011AA930);
    sub_1000095E8(v5, &qword_1011AA938);
    v7 = sub_1009749EC;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_1000095E8(v3[5], &qword_1011AA930);
    sub_1000095E8(v11, &qword_1011AA938);
    (*(v9 + 8))(v10, v8);
    v7 = sub_1009748F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1009748F8()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002C064(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1009749EC()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100974A8C(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_100446558;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_100020438(v7);
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100974DA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_10096BD24(a1, v4, v5, v1 + 32);
}

uint64_t sub_100974E58()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v10;
  *v18 = v11;
  v19 = v12;
  v20 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  v16 = v9;
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v14[0]) != 1)
    {
      sub_10097507C();
      swift_allocError();
      v4 = xmmword_100EC78D0;
      goto LABEL_13;
    }

    if ((sub_10096C0E4() & 1) == 0)
    {
      sub_10097507C();
      swift_allocError();
      v4 = xmmword_100EE94F0;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_10048BBDC(3, v15) & 1) == 0)
  {
    sub_10097507C();
    swift_allocError();
    v4 = xmmword_100EE9500;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return sub_100014984(v14);
    }

    sub_10097507C();
    swift_allocError();
    v4 = xmmword_100EE94D0;
    goto LABEL_13;
  }

  sub_10097507C();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_100014984(v14);
}

unint64_t sub_10097507C()
{
  result = qword_1011AA630;
  if (!qword_1011AA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA630);
  }

  return result;
}

unint64_t sub_1009750E0()
{
  result = qword_1011AA6F8;
  if (!qword_1011AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA6F8);
  }

  return result;
}

unint64_t sub_100975138()
{
  result = qword_1011AA700;
  if (!qword_1011AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA700);
  }

  return result;
}

uint64_t sub_1009751AC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1009751C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100975234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1009752EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1009753A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_10097545C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_100975514(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1009755A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Playlist() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_100974218(a1, a2, a3, a4, v10);
}

uint64_t sub_10097563C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100974418(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10097576C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10097F360(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000954C(a1, v5);
  sub_100978308(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10098066C(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100980138(a1, a2, a3, a4, v8);
  v6 = v8[3];
  *(a5 + 32) = v8[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = v9;
  result = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_10097FEA0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_100980BA4(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v52 = a7;
  v53 = a8;
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v13 = type metadata accessor for UUID();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = sub_10010FC20(&qword_1011A77F0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v28 = &v44 - v27;
  if (qword_1011A70E8 != -1)
  {
    result = swift_once();
  }

  v29 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1009AC87C(a1, a2, v48, v49, v50, v51, v52, v53, v28, a10 & 1);
    sub_10093F768(v28, v25);
    if ((*(v16 + 48))(v25, 1, v15) == 1)
    {
      sub_100028B08(v28);
      v30 = v25;
LABEL_10:
      result = sub_100028B08(v30);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v29 = 0uLL;
      goto LABEL_11;
    }

    v52 = *(v16 + 32);
    v53 = v16 + 32;
    v52(v21, v25, v15);
    v36 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v40 = [v36 canOpenURL:v38];

    if (!v40)
    {
      (*(v16 + 8))(v21, v15);
      v30 = v28;
      goto LABEL_10;
    }

    (*(v16 + 16))(v19, v21, v15);
    v41 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v35 = swift_allocObject();
    v52((v35 + v41), v19, v15);
    v42 = v45;
    UUID.init()();
    v31 = UUID.uuidString.getter();
    v32 = v43;
    (*(v46 + 8))(v42, v47);
    (*(v16 + 8))(v21, v15);
    result = sub_100028B08(v28);
    v29 = xmmword_100EE9510;
    v34 = &unk_100EF4AC0;
    v33 = 2;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

LABEL_11:
  *a9 = v31;
  *(a9 + 8) = v32;
  *(a9 + 16) = v29;
  *(a9 + 32) = v33;
  *(a9 + 40) = v34;
  *(a9 + 48) = v35;
  return result;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100980DD0(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

id sub_100975E70()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100975F24()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100981C90(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = type metadata accessor for UUID();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v14 = qword_101219808;
  v15 = qword_101219808;
  static Locale.current.getter();
  v58 = v15;
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  String.LocalizationValue.init(stringLiteral:)();
  v13(v9, v12, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v52 = v13;
    v13(v9, v12, v6);
    v22 = v58;
    static Locale.current.getter();
    v51 = v14;
    v23 = String.init(localized:table:bundle:locale:comment:)();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    UUID.init()();
    v26 = UUID.uuidString.getter();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_10089CAD0((v28 > 1), v29 + 1, 1, v21);
    }

    *(v21 + 2) = v29 + 1;
    v30 = &v21[56 * v29];
    v31 = v47;
    *(v30 + 4) = v48;
    *(v30 + 5) = v31;
    v32 = v49;
    *(v30 + 6) = v50;
    *(v30 + 7) = v32;
    v30[64] = 2;
    *(v30 + 9) = &unk_100EF2938;
    *(v30 + 10) = 0;
    v13 = v52;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v13(v9, v12, v6);
  v33 = v58;
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10089CAD0(0, *(v21 + 2) + 1, 1, v21);
    v21 = result;
  }

  v43 = *(v21 + 2);
  v42 = *(v21 + 3);
  if (v43 >= v42 >> 1)
  {
    result = sub_10089CAD0((v42 > 1), v43 + 1, 1, v21);
    v21 = result;
  }

  *(v21 + 2) = v43 + 1;
  v44 = &v21[56 * v43];
  *(v44 + 4) = v38;
  *(v44 + 5) = v40;
  *(v44 + 6) = v34;
  *(v44 + 7) = v36;
  v44[64] = 2;
  *(v44 + 9) = 0;
  *(v44 + 10) = 0;
  v45 = v56;
  *a2 = v57;
  *(a2 + 8) = v45;
  v46 = v54;
  *(a2 + 16) = v55;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 33) = v63[0];
  *(a2 + 36) = *(v63 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v62;
  *(a2 + 52) = *&v62[3];
  *(a2 + 56) = v21;
  *(a2 + 64) = 0;
  return result;
}

id sub_100976608()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v3 = type metadata accessor for UUID();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v14 = qword_101219808;
  v15 = qword_101219808;
  static Locale.current.getter();
  v58 = v15;
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  String.LocalizationValue.init(stringLiteral:)();
  v13(v9, v12, v6);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v52 = v13;
    v13(v9, v12, v6);
    v22 = v58;
    static Locale.current.getter();
    v51 = v14;
    v23 = String.init(localized:table:bundle:locale:comment:)();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    UUID.init()();
    v26 = UUID.uuidString.getter();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_10089CAD0((v28 > 1), v29 + 1, 1, v21);
    }

    *(v21 + 2) = v29 + 1;
    v30 = &v21[56 * v29];
    v31 = v47;
    *(v30 + 4) = v48;
    *(v30 + 5) = v31;
    v32 = v49;
    *(v30 + 6) = v50;
    *(v30 + 7) = v32;
    v30[64] = 2;
    *(v30 + 9) = &unk_100EF2940;
    *(v30 + 10) = 0;
    v13 = v52;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v13(v9, v12, v6);
  v33 = v58;
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10089CAD0(0, *(v21 + 2) + 1, 1, v21);
    v21 = result;
  }

  v43 = *(v21 + 2);
  v42 = *(v21 + 3);
  if (v43 >= v42 >> 1)
  {
    result = sub_10089CAD0((v42 > 1), v43 + 1, 1, v21);
    v21 = result;
  }

  *(v21 + 2) = v43 + 1;
  v44 = &v21[56 * v43];
  *(v44 + 4) = v38;
  *(v44 + 5) = v40;
  *(v44 + 6) = v34;
  *(v44 + 7) = v36;
  v44[64] = 2;
  *(v44 + 9) = 0;
  *(v44 + 10) = 0;
  v45 = v56;
  *a2 = v57;
  *(a2 + 8) = v45;
  v46 = v54;
  *(a2 + 16) = v55;
  *(a2 + 24) = v46;
  *(a2 + 32) = 0;
  *(a2 + 33) = v63[0];
  *(a2 + 36) = *(v63 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v62;
  *(a2 + 52) = *&v62[3];
  *(a2 + 56) = v21;
  *(a2 + 64) = 0;
  return result;
}

id sub_100976C70()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100014984(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100976E04()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v16;
  v29 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v17(v11, v5);
  v21 = v30;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v31 + 8))(v21, v32);
  sub_10010FC20(&qword_1011A7C00);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_100EBC6B0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v27 = v28;
  *(a1 + 16) = v29;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v34;
  *(a1 + 36) = *&v34[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v33;
  *(a1 + 52) = *&v33[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v16;
  v34 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v19;
  v32 = v18;
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v17(v11, v5);
  v23 = v35;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v36 + 8))(v23, v37);
  sub_10010FC20(&qword_1011A7C00);
  v27 = swift_allocObject();
  *&result = 1;
  *(v27 + 16) = xmmword_100EBC6B0;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  *(v27 + 48) = v20;
  *(v27 + 56) = v22;
  *(v27 + 64) = 2;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  v29 = v33;
  *a1 = v34;
  *(a1 + 8) = v29;
  v30 = v31;
  *(a1 + 16) = v32;
  *(a1 + 24) = v30;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v39;
  *(a1 + 36) = *&v39[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v38;
  *(a1 + 52) = *&v38[3];
  *(a1 + 56) = v27;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  sub_1009823E4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10097768C()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10097772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10097774C, 0, 0);
}

uint64_t sub_10097774C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009777BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1009777DC, 0, 0);
}

id sub_1009777DC()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10097788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_1009778AC, 0, 0);
}

uint64_t sub_1009778AC()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_10000954C(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100977968;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_100977968()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100977A9C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100977A9C()
{
  v14 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v8 = String.init<A>(describing:)();
    v10 = sub_100010678(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100977C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100977C8C, 0, 0);
}

uint64_t sub_100977C8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100977DB8;

  return v5(1);
}

uint64_t sub_100977DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100977EAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002F3F4;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1009826E8(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_100977FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100978008, 0, 0);
}

uint64_t sub_100978008()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100978070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100978090, 0, 0);
}

id sub_100978090()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10097813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009781D4, v5, v4);
}

uint64_t sub_1009781D4()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_1009831C8(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100978308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v9 = type metadata accessor for UUID();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v39[3] = a3;
  v39[4] = a4;
  v38 = a4;
  v20 = sub_10001C8B8(v39);
  (*(*(a3 - 8) + 16))(v20, a1, a3);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v14 + 16))(v16, v19, v13);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v21 = qword_101219808;
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  (*(v14 + 8))(v19, v13);
  sub_100008FE4(v39, v40);
  v24 = swift_allocObject();
  sub_100059A8C(v40, v24 + 16);
  *(v24 + 56) = v35;

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v36 + 8))(v11, v37);
  v28 = sub_10097DDF0(v20, a3, v38);
  v30 = v29;
  sub_10010FC20(&qword_1011A7C00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBDC20;
  *(v31 + 32) = v25;
  *(v31 + 40) = v27;
  *(v31 + 48) = v34;
  *(v31 + 56) = v23;
  *(v31 + 64) = 1;
  *(v31 + 72) = &unk_100EF29D8;
  *(v31 + 80) = v24;

  sub_10097FEA0(v40);
  v32 = v40[1];
  *(v31 + 88) = v40[0];
  *(v31 + 104) = v32;
  *(v31 + 120) = v40[2];
  *(v31 + 136) = v41;

  result = sub_10000959C(v39);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v28;
  *(a5 + 24) = v30;
  *(a5 + 32) = 1;
  *(a5 + 33) = v40[0];
  *(a5 + 36) = *(v40 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v39[0];
  *(a5 + 52) = *(v39 + 3);
  *(a5 + 56) = v31;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_100978730(uint64_t a1)
{
  v124 = a1;
  v103 = type metadata accessor for Track();
  v97 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v96 = &v91 - v3;
  __chkstk_darwin(v4);
  v98 = &v91 - v5;
  v100 = type metadata accessor for Playlist.Entry.InternalItem();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Playlist.Entry();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v102 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v91 - v9;
  v109 = type metadata accessor for TVEpisode();
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v91 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v91 - v12;
  v111 = type metadata accessor for TVSeason();
  v108 = *(v111 - 8);
  __chkstk_darwin(v111);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MusicMovie();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v94 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v91 - v16;
  v17 = type metadata accessor for Song();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v118 = &v91 - v21;
  v120 = type metadata accessor for Playlist();
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicVideo();
  v121 = *(v23 - 8);
  __chkstk_darwin(v23);
  v92 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v91 - v26;
  v28 = type metadata accessor for Locale();
  __chkstk_darwin(v28 - 8);
  v123 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for String.LocalizationValue();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v91 - v35;
  v37 = type metadata accessor for Album();
  v122 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v17;
  v126[4] = &protocol witness table for Song;
  v40 = sub_10001C8B8(v126);
  v114 = v18;
  v41 = *(v18 + 16);
  v42 = v124;
  v124 = v17;
  v41(v40, v42, v17);
  sub_100008FE4(v126, v125);
  sub_10010FC20(&qword_1011AA9C8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v122 + 8);
    v46 = v39;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v48 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    (*(v121 + 8))(v27, v23);
    goto LABEL_15;
  }

  v50 = v119;
  v49 = v120;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v51 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v117 + 8);
    v46 = v50;
    v47 = v49;
    goto LABEL_14;
  }

  v37 = v124;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v53 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v114 + 8);
    v46 = v118;
    goto LABEL_5;
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v54 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v112 + 8);
    v46 = v116;
    goto LABEL_5;
  }

  v37 = v111;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v55 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v108 + 8);
    v56 = &v128;
LABEL_33:
    v46 = *(v56 - 32);
LABEL_5:
    v47 = v37;
LABEL_14:
    v45(v46, v47);
LABEL_15:
    sub_10000959C(v125);
LABEL_16:
    sub_10000959C(v126);
    return v44;
  }

  v37 = v109;
  v57 = v31;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v31 + 16))(v33, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v58 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v31 + 8))(v36, v30);
    v45 = *(v106 + 8);
    v56 = &v127;
    goto LABEL_33;
  }

  v59 = v105;
  v60 = v107;
  if (!swift_dynamicCast())
  {
    v72 = v98;
    v73 = v103;
    v74 = swift_dynamicCast();
    v75 = v33;
    v76 = v124;
    if (v74)
    {
      v77 = v97;
      v78 = v96;
      (*(v97 + 32))(v96, v72, v73);
      v79 = v95;
      (*(v77 + 16))(v95, v78, v73);
      v80 = (*(v77 + 88))(v79, v73);
      if (v80 == enum case for Track.song(_:))
      {
        (*(v77 + 96))(v79, v73);
        v81 = v114;
        v82 = v93;
        (*(v114 + 32))(v93, v79, v76);
        v83 = sub_100978730(v82);
        v84 = v76;
        v44 = v83;
        (*(v81 + 8))(v82, v84);
LABEL_46:
        (*(v77 + 8))(v78, v73);
        goto LABEL_15;
      }

      if (v80 == enum case for Track.musicVideo(_:))
      {
        (*(v77 + 96))(v79, v73);
        v87 = v121;
        v88 = v92;
        (*(v121 + 32))(v92, v79, v23);
        v44 = sub_100979C78(v88);
        (*(v87 + 8))(v88, v23);
        goto LABEL_46;
      }

      v89 = *(v77 + 8);
      v89(v78, v73);
      v89(v79, v73);
    }

LABEL_55:
    sub_10000959C(v125);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v57 + 16))(v75, v36, v30);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v90 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v57 + 8))(v36, v30);
    goto LABEL_16;
  }

  v61 = v104;
  v62 = v102;
  (*(v104 + 32))(v102, v59, v60);
  v63 = v101;
  Playlist.Entry.internalItem.getter();
  v64 = v99;
  v65 = v100;
  v66 = (*(v99 + 88))(v63, v100);
  if (v66 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v112;
    v68 = v94;
    v69 = v115;
    (*(v112 + 32))(v94, v63, v115);
    v70 = sub_10097B244(v68);
LABEL_37:
    v71 = v69;
    v44 = v70;
    (*(v67 + 8))(v68, v71);
LABEL_43:
    (*(v61 + 8))(v62, v107);
    goto LABEL_15;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v64 + 96))(v63, v65);
    v85 = v121;
    v86 = v92;
    (*(v121 + 32))(v92, v63, v23);
    v44 = sub_100979C78(v86);
    (*(v85 + 8))(v86, v23);
    goto LABEL_43;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v114;
    v68 = v93;
    v69 = v124;
    (*(v114 + 32))(v93, v63, v124);
    v70 = sub_100978730(v68);
    goto LABEL_37;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v106;
    v68 = v91;
    v69 = v109;
    (*(v106 + 32))(v91, v63, v109);
    v70 = sub_10097C7FC(v68);
    goto LABEL_37;
  }

  if (v66 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v66 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v61 + 8))(v62, v107);
    (*(v64 + 8))(v63, v65);
    v75 = v33;
    goto LABEL_55;
  }

  (*(v64 + 8))(v63, v65);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100979C78(uint64_t a1)
{
  v129 = a1;
  v106 = type metadata accessor for Track();
  v102 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v101 = &v96 - v3;
  __chkstk_darwin(v4);
  v103 = &v96 - v5;
  v104 = type metadata accessor for Playlist.Entry.InternalItem();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Playlist.Entry();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v96 - v9;
  v115 = type metadata accessor for TVEpisode();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v96 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v96 - v12;
  v116 = type metadata accessor for TVSeason();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v118 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for MusicMovie();
  v117 = *(v121 - 8);
  __chkstk_darwin(v121);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v96 - v16;
  v124 = type metadata accessor for Song();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v98 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v96 - v19;
  v127 = type metadata accessor for Playlist();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MusicVideo();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v97 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v96 - v25;
  v27 = type metadata accessor for Locale();
  __chkstk_darwin(v27 - 8);
  v128 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for String.LocalizationValue();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v96 - v34;
  v36 = type metadata accessor for Album();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131[3] = v21;
  v131[4] = &protocol witness table for MusicVideo;
  v40 = sub_10001C8B8(v131);
  v125 = v22;
  (*(v22 + 16))(v40, v129, v21);
  sub_100008FE4(v131, v130);
  sub_10010FC20(&qword_1011AA9C8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v41 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v125 + 8))(v26, v21);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v44 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v122 + 8))(v126, v127);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v45 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v119 + 8))(v123, v124);
    goto LABEL_29;
  }

  v46 = v35;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v47 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v117 + 8))(v120, v121);
    goto LABEL_29;
  }

  v48 = v116;
  v49 = v29;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v46, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v50 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v46, v29);
    (*(v113 + 8))(v118, v48);
    goto LABEL_29;
  }

  v51 = v114;
  v52 = v115;
  v53 = v30;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v46, v49);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v54 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v46, v49);
    (*(v111 + 8))(v51, v52);
    goto LABEL_29;
  }

  v56 = v110;
  v57 = v112;
  if (!swift_dynamicCast())
  {
    v69 = v103;
    v70 = v106;
    v71 = v32;
    if (swift_dynamicCast())
    {
      v72 = v69;
      v73 = v102;
      v74 = v101;
      (*(v102 + 32))(v101, v72, v70);
      v75 = v100;
      (*(v73 + 16))(v100, v74, v70);
      v76 = (*(v73 + 88))(v75, v70);
      if (v76 == enum case for Track.song(_:))
      {
        (*(v73 + 96))(v75, v70);
        v77 = v119;
        v78 = v98;
        v79 = v124;
        (*(v119 + 32))(v98, v75, v124);
        v80 = sub_100978730(v78);
        v81 = v79;
        v42 = v80;
        (*(v77 + 8))(v78, v81);
LABEL_42:
        (*(v73 + 8))(v74, v70);
        goto LABEL_29;
      }

      if (v76 == enum case for Track.musicVideo(_:))
      {
        (*(v73 + 96))(v75, v70);
        v85 = v125;
        v86 = v97;
        (*(v125 + 32))(v97, v75, v21);
        v87 = sub_100979C78(v86);
        (*(v85 + 8))(v86, v21);
        v42 = v87;
        goto LABEL_42;
      }

      v93 = *(v73 + 8);
      v93(v74, v70);
      v93(v75, v70);
    }

LABEL_52:
    sub_10000959C(v130);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v53 + 16))(v71, v46, v49);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v95 = qword_101219808;
    static Locale.current.getter();
    v42 = String.init(localized:table:bundle:locale:comment:)();
    (*(v53 + 8))(v46, v49);
    goto LABEL_30;
  }

  v58 = v107;
  v59 = v109;
  (*(v107 + 32))(v109, v56, v57);
  v60 = v105;
  Playlist.Entry.internalItem.getter();
  v61 = v108;
  v62 = v104;
  v63 = (*(v108 + 88))(v60, v104);
  if (v63 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v61 + 96))(v60, v62);
    v64 = v117;
    v65 = v99;
    v66 = v121;
    (*(v117 + 32))(v99, v60, v121);
    v67 = sub_10097B244(v65);
LABEL_34:
    v68 = v66;
    v42 = v67;
    (*(v64 + 8))(v65, v68);
    (*(v58 + 8))(v59, v112);
LABEL_29:
    sub_10000959C(v130);
LABEL_30:
    sub_10000959C(v131);
    return v42;
  }

  if (v63 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v108 + 96))(v60, v62);
    v82 = v125;
    v83 = v97;
    (*(v125 + 32))(v97, v60, v21);
    v84 = sub_100979C78(v83);
    (*(v82 + 8))(v83, v21);
    v42 = v84;
LABEL_45:
    (*(v58 + 8))(v109, v112);
    goto LABEL_29;
  }

  if (v63 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v108 + 96))(v60, v62);
    v88 = v119;
    v89 = v98;
    v90 = v124;
    (*(v119 + 32))(v98, v60, v124);
    v91 = sub_100978730(v89);
    v92 = v90;
    v42 = v91;
    (*(v88 + 8))(v89, v92);
    goto LABEL_45;
  }

  v94 = v108;
  v59 = v109;
  if (v63 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v108 + 96))(v60, v62);
    v64 = v111;
    v65 = v96;
    v66 = v115;
    (*(v111 + 32))(v96, v60, v115);
    v67 = sub_10097C7FC(v65);
    goto LABEL_34;
  }

  if (v63 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v63 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v58 + 8))(v109, v112);
    (*(v94 + 8))(v60, v62);
    v71 = v32;
    goto LABEL_52;
  }

  (*(v108 + 8))(v60, v62);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097B244(uint64_t a1)
{
  v123 = a1;
  v103 = type metadata accessor for Track();
  v98 = *(v103 - 8);
  __chkstk_darwin(v103);
  v96 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v97 = &v91 - v3;
  __chkstk_darwin(v4);
  v99 = &v91 - v5;
  v101 = type metadata accessor for Playlist.Entry.InternalItem();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Playlist.Entry();
  v104 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v91 - v9;
  v110 = type metadata accessor for TVEpisode();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v91 - v12;
  v112 = type metadata accessor for TVSeason();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v124 = *(v14 - 8);
  __chkstk_darwin(v14);
  v95 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v115 = &v91 - v17;
  v118 = type metadata accessor for Song();
  v114 = *(v118 - 8);
  __chkstk_darwin(v118);
  v94 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v91 - v20;
  v119 = type metadata accessor for Playlist();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v121 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MusicVideo();
  v120 = *(v22 - 8);
  __chkstk_darwin(v22);
  v93 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v91 - v25;
  v27 = type metadata accessor for Locale();
  __chkstk_darwin(v27 - 8);
  v122 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for String.LocalizationValue();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v91 - v34;
  v36 = type metadata accessor for Album();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v14;
  v126[4] = sub_1009831C8(&qword_1011AA9D0, &type metadata accessor for MusicMovie);
  v40 = sub_10001C8B8(v126);
  v41 = v123;
  v42 = *(v124 + 16);
  v123 = v14;
  v42(v40, v41, v14);
  sub_100008FE4(v126, v125);
  sub_10010FC20(&qword_1011AA9C8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_16;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v120 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_15:
    v47(v48, v49);
LABEL_16:
    sub_10000959C(v125);
LABEL_17:
    sub_10000959C(v126);
    return v44;
  }

  v50 = v119;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v51 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v116 + 8);
    v48 = v121;
    goto LABEL_14;
  }

  v53 = v45;
  v54 = v117;
  v45 = v118;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v55 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v114 + 8);
    v48 = v54;
    goto LABEL_9;
  }

  v50 = v123;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v56 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v124 + 8);
    v48 = v115;
    goto LABEL_14;
  }

  v50 = v112;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v57 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v109 + 8);
    v58 = &v128;
LABEL_34:
    v48 = *(v58 - 32);
LABEL_14:
    v49 = v50;
    goto LABEL_15;
  }

  v50 = v110;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v59 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v107 + 8);
    v58 = &v127;
    goto LABEL_34;
  }

  v60 = v106;
  v61 = v108;
  if (!swift_dynamicCast())
  {
    v72 = v103;
    v73 = v35;
    if (swift_dynamicCast())
    {
      v124 = v29;
      v74 = v98;
      v75 = v97;
      (*(v98 + 32))();
      v76 = v96;
      (*(v74 + 16))(v96, v75, v72);
      v77 = (*(v74 + 88))(v76, v72);
      if (v77 == enum case for Track.song(_:))
      {
        (*(v74 + 96))(v76, v72);
        v78 = v114;
        v79 = v94;
        (*(v114 + 32))(v94, v76, v45);
        v44 = sub_100978730(v79);
        (*(v78 + 8))(v79, v45);
        (*(v74 + 8))(v75, v72);
        goto LABEL_16;
      }

      if (v77 == enum case for Track.musicVideo(_:))
      {
        (*(v74 + 96))(v76, v72);
        v82 = v120;
        v83 = v75;
        v84 = v93;
        (*(v120 + 32))(v93, v76, v53);
        v44 = sub_100979C78(v84);
        (*(v82 + 8))(v84, v53);
        (*(v74 + 8))(v83, v72);
        goto LABEL_16;
      }

      v89 = *(v74 + 8);
      v89(v75, v72);
      v89(v76, v72);
      v29 = v124;
    }

LABEL_55:
    sub_10000959C(v125);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v73, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v90 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v73, v29);
    goto LABEL_17;
  }

  v62 = v61;
  v63 = v104;
  v64 = v105;
  (*(v104 + 32))(v105, v60, v62);
  v65 = v102;
  Playlist.Entry.internalItem.getter();
  v66 = v100;
  v67 = v101;
  v68 = (*(v100 + 88))(v65, v101);
  if (v68 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v123;
    v70 = v124;
    v71 = v95;
    (*(v124 + 32))(v95, v65, v123);
    v44 = sub_10097B244(v71);
    (*(v70 + 8))(v71, v69);
    (*(v63 + 8))(v64, v108);
    goto LABEL_16;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v66 + 96))(v65, v67);
    v80 = v120;
    v81 = v93;
    (*(v120 + 32))(v93, v65, v53);
    v44 = sub_100979C78(v81);
    (*(v80 + 8))(v81, v53);
LABEL_51:
    (*(v63 + 8))(v105, v108);
    goto LABEL_16;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v66 + 96))(v65, v67);
    v85 = v114;
    v86 = v94;
    v87 = v118;
    (*(v114 + 32))(v94, v65, v118);
    v88 = sub_100978730(v86);
LABEL_50:
    v44 = v88;
    (*(v85 + 8))(v86, v87);
    goto LABEL_51;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v66 + 96))(v65, v67);
    v85 = v107;
    v86 = v92;
    v87 = v110;
    (*(v107 + 32))(v92, v65, v110);
    v88 = sub_10097C7FC(v86);
    goto LABEL_50;
  }

  if (v68 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v68 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v63 + 8))(v105, v108);
    (*(v66 + 8))(v65, v67);
    v73 = v35;
    goto LABEL_55;
  }

  (*(v66 + 8))(v65, v67);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097C7FC(uint64_t a1)
{
  v134 = a1;
  v114 = type metadata accessor for Track();
  v109 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v108 = &v102 - v3;
  __chkstk_darwin(v4);
  v110 = &v102 - v5;
  v112 = type metadata accessor for Playlist.Entry.InternalItem();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Playlist.Entry();
  v115 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v102 - v9;
  v10 = type metadata accessor for TVEpisode();
  v135 = *(v10 - 8);
  __chkstk_darwin(v10);
  v103 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = &v102 - v13;
  v123 = type metadata accessor for TVSeason();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for MusicMovie();
  v121 = *(v126 - 8);
  __chkstk_darwin(v126);
  v106 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v125 = &v102 - v17;
  v128 = type metadata accessor for Song();
  v124 = *(v128 - 8);
  __chkstk_darwin(v128);
  v105 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v129 = &v102 - v20;
  v131 = type metadata accessor for Playlist();
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MusicVideo();
  v132 = *(v22 - 8);
  __chkstk_darwin(v22);
  v104 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  v27 = type metadata accessor for Locale();
  __chkstk_darwin(v27 - 8);
  v133 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for String.LocalizationValue();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v102 - v34;
  v36 = type metadata accessor for Album();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137[3] = v10;
  v137[4] = sub_1009831C8(&qword_1011AA9D8, &type metadata accessor for TVEpisode);
  v40 = sub_10001C8B8(v137);
  v41 = v134;
  v42 = *(v135 + 16);
  v134 = v10;
  v42(v40, v41, v10);
  sub_100008FE4(v137, v136);
  sub_10010FC20(&qword_1011AA9C8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_27;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v132 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_26:
    v47(v48, v49);
LABEL_27:
    sub_10000959C(v136);
LABEL_28:
    sub_10000959C(v137);
    return v44;
  }

  v51 = v130;
  v50 = v131;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v52 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v127 + 8))(v51, v50);
    goto LABEL_27;
  }

  v53 = v128;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v54 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v124 + 8))(v129, v53);
    goto LABEL_27;
  }

  v55 = v32;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v56 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    (*(v121 + 8))(v125, v126);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v57 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v119 + 8);
    v48 = v122;
    v49 = v123;
    goto LABEL_26;
  }

  v131 = v45;
  v45 = v134;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v32, v35, v29);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v59 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v35, v29);
    v47 = *(v135 + 8);
    v48 = v120;
    goto LABEL_9;
  }

  v60 = v117;
  v61 = v118;
  if (!swift_dynamicCast())
  {
    v74 = v110;
    v75 = v114;
    v76 = v29;
    v77 = v35;
    if (swift_dynamicCast())
    {
      v78 = v109;
      v79 = v108;
      (*(v109 + 32))(v108, v74, v75);
      v80 = v107;
      (*(v78 + 16))(v107, v79, v75);
      v81 = (*(v78 + 88))(v80, v75);
      if (v81 == enum case for Track.song(_:))
      {
        (*(v78 + 96))(v80, v75);
        v82 = v124;
        v83 = v105;
        (*(v124 + 32))(v105, v80, v53);
        v84 = sub_100978730(v83);
        (*(v82 + 8))(v83, v53);
        v44 = v84;
LABEL_43:
        (*(v78 + 8))(v79, v75);
        goto LABEL_27;
      }

      if (v81 == enum case for Track.musicVideo(_:))
      {
        (*(v78 + 96))(v80, v75);
        v90 = v131;
        v91 = v132;
        v92 = v104;
        (*(v132 + 32))(v104, v80, v131);
        v93 = sub_100979C78(v92);
        v94 = v90;
        v44 = v93;
        (*(v91 + 8))(v92, v94);
        goto LABEL_43;
      }

      v99 = *(v78 + 8);
      v99(v79, v75);
      v99(v80, v75);
    }

LABEL_54:
    sub_10000959C(v136);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v30 + 16))(v55, v77, v76);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v101 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v30 + 8))(v77, v76);
    goto LABEL_28;
  }

  v62 = v115;
  v63 = v116;
  (*(v115 + 32))(v116, v60, v61);
  v64 = v113;
  Playlist.Entry.internalItem.getter();
  v65 = v111;
  v66 = v112;
  v67 = (*(v111 + 88))(v64, v112);
  if (v67 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v65 + 96))(v64, v66);
    v68 = v121;
    v69 = v106;
    v70 = v126;
    (*(v121 + 32))(v106, v64, v126);
    v71 = sub_10097B244(v69);
    (*(v68 + 8))(v69, v70);
    v72 = *(v62 + 8);
    v73 = v63;
LABEL_50:
    v100 = v61;
    v44 = v71;
    v72(v73, v100);
    goto LABEL_27;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v65 + 96))(v64, v66);
    v85 = v131;
    v86 = v132;
    v87 = v104;
    (*(v132 + 32))(v104, v64, v131);
    v88 = sub_100979C78(v87);
    (*(v86 + 8))(v87, v85);
    v89 = v61;
    v44 = v88;
    (*(v62 + 8))(v116, v89);
    goto LABEL_27;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v65 + 96))(v64, v66);
    v95 = v124;
    v96 = v105;
    v97 = v128;
    (*(v124 + 32))(v105, v64, v128);
    v98 = sub_100978730(v96);
LABEL_49:
    v71 = v98;
    (*(v95 + 8))(v96, v97);
    v72 = *(v62 + 8);
    v73 = v116;
    goto LABEL_50;
  }

  if (v67 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v65 + 96))(v64, v66);
    v97 = v134;
    v95 = v135;
    v96 = v103;
    (*(v135 + 32))(v103, v64, v134);
    v98 = sub_10097C7FC(v96);
    goto LABEL_49;
  }

  if (v67 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v67 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v62 + 8))(v116, v61);
    (*(v65 + 8))(v64, v66);
    v76 = v29;
    v77 = v35;
    goto LABEL_54;
  }

  (*(v65 + 8))(v64, v66);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097DDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v121 = a1;
  v99 = type metadata accessor for Track();
  v93 = *(v99 - 8);
  __chkstk_darwin(v99);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v92 = &v86 - v6;
  __chkstk_darwin(v7);
  v94 = &v86 - v8;
  v96 = type metadata accessor for Playlist.Entry.InternalItem();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Playlist.Entry();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v86 - v12;
  v105 = type metadata accessor for TVEpisode();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v87 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v106 = &v86 - v15;
  v109 = type metadata accessor for TVSeason();
  v104 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MusicMovie();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v90 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v111 = &v86 - v19;
  v114 = type metadata accessor for Song();
  v110 = *(v114 - 8);
  __chkstk_darwin(v114);
  v89 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v115 = &v86 - v22;
  v117 = type metadata accessor for Playlist();
  v113 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MusicVideo();
  v118 = *(v24 - 8);
  __chkstk_darwin(v24);
  v88 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v86 - v27;
  v29 = type metadata accessor for Locale();
  __chkstk_darwin(v29 - 8);
  v119 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for String.LocalizationValue();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v86 - v36;
  v38 = type metadata accessor for Album();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123[3] = a2;
  v123[4] = v120;
  v42 = sub_10001C8B8(v123);
  (*(*(a2 - 8) + 16))(v42, v121, a2);
  sub_100008FE4(v123, v122);
  sub_10010FC20(&qword_1011AA9C8);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v39 + 8))(v41, v38);
    goto LABEL_29;
  }

  v45 = v24;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v118 + 8))(v28, v24);
    goto LABEL_29;
  }

  v48 = v116;
  v47 = v117;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v49 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v113 + 8))(v48, v47);
    goto LABEL_29;
  }

  v50 = v114;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v51 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v110 + 8))(v115, v50);
    goto LABEL_29;
  }

  v52 = v37;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v53 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v107 + 8))(v111, v112);
    goto LABEL_29;
  }

  v54 = v31;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v31);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v55 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v31);
    (*(v104 + 8))(v108, v109);
    goto LABEL_29;
  }

  v56 = v105;
  v57 = v32;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v32 + 16))(v34, v37, v54);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v58 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v32 + 8))(v37, v54);
    (*(v103 + 8))(v106, v56);
    goto LABEL_29;
  }

  v60 = v101;
  v61 = v102;
  if (!swift_dynamicCast())
  {
    v73 = v94;
    v74 = v99;
    if (swift_dynamicCast())
    {
      v121 = v45;
      v75 = v93;
      v76 = v92;
      (*(v93 + 32))(v92, v73, v74);
      v77 = v91;
      (*(v75 + 16))(v91, v76, v74);
      v78 = (*(v75 + 88))(v77, v74);
      if (v78 == enum case for Track.song(_:))
      {
        (*(v75 + 96))(v77, v74);
        v79 = v110;
        v80 = v89;
        (*(v110 + 32))(v89, v77, v50);
        v44 = sub_100978730(v80);
        (*(v79 + 8))(v80, v50);
LABEL_41:
        (*(v75 + 8))(v76, v74);
LABEL_29:
        sub_10000959C(v122);
LABEL_30:
        sub_10000959C(v123);
        return v44;
      }

      if (v78 == enum case for Track.musicVideo(_:))
      {
        (*(v75 + 96))(v77, v74);
        v81 = v118;
        v82 = v88;
        v83 = v121;
        (*(v118 + 32))(v88, v77, v121);
        v44 = sub_100979C78(v82);
        (*(v81 + 8))(v82, v83);
        goto LABEL_41;
      }

      v84 = *(v75 + 8);
      v84(v76, v74);
      v84(v77, v74);
    }

LABEL_51:
    sub_10000959C(v122);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v57 + 16))(v34, v52, v54);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v85 = qword_101219808;
    static Locale.current.getter();
    v44 = String.init(localized:table:bundle:locale:comment:)();
    (*(v57 + 8))(v52, v54);
    goto LABEL_30;
  }

  v121 = v45;
  v62 = v60;
  v63 = v100;
  v64 = v98;
  (*(v100 + 32))(v98, v62, v61);
  v65 = v97;
  Playlist.Entry.internalItem.getter();
  v66 = v95;
  v67 = v96;
  v68 = (*(v95 + 88))(v65, v96);
  if (v68 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v107;
    v70 = v90;
    v71 = v112;
    (*(v107 + 32))(v90, v65, v112);
    v72 = sub_10097B244(v70);
LABEL_47:
    v44 = v72;
    (*(v69 + 8))(v70, v71);
    (*(v63 + 8))(v64, v61);
    goto LABEL_29;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v118;
    v70 = v88;
    v71 = v121;
    (*(v118 + 32))(v88, v65, v121);
    v72 = sub_100979C78(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v110;
    v70 = v89;
    v71 = v114;
    (*(v110 + 32))(v89, v65, v114);
    v72 = sub_100978730(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v103;
    v70 = v87;
    v71 = v105;
    (*(v103 + 32))(v87, v65, v105);
    v72 = sub_10097C7FC(v70);
    goto LABEL_47;
  }

  if (v68 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v68 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v63 + 8))(v64, v61);
    (*(v66 + 8))(v65, v67);
    goto LABEL_51;
  }

  (*(v66 + 8))(v65, v67);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097F360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = type metadata accessor for UUID();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicRestrictions();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for String.LocalizationValue();
  v10 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v89 - v13;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v116[4] = v112;
  v116[5] = v113;
  v116[6] = v114;
  v116[7] = v115;
  v116[0] = v108;
  v116[1] = v109;
  v116[2] = v110;
  v116[3] = v111;
  v15 = *(&v110 + 1);

  sub_100014984(v116);
  LODWORD(v96) = sub_10048BBDC(7, v15);

  v16 = [objc_opt_self() allowAccountModifications];
  v102 = v9;
  if (v16)
  {
    if (a1)
    {
      v17 = [a1 userInterfaceIdiom] != 3;
    }

    else
    {
      v17 = 1;
    }

    LODWORD(v97) = v17;
  }

  else
  {
    LODWORD(v97) = 0;
  }

  v18 = v104;
  v19 = v105;
  String.LocalizationValue.init(stringLiteral:)();
  v106 = *(v10 + 16);
  v107 = v10 + 16;
  v106(v19, v14, v18);
  v20 = v14;
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v21 = qword_101219808;
  v22 = qword_101219808;
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v98 = v24;
  v99 = v23;
  v25 = v10 + 8;
  v26 = *(v10 + 8);
  v26(v20, v18);
  if (v97)
  {
    v27 = v22;
    v94 = v25;
    v95 = v26;
    v89[1] = v21;
    v90 = a2;
    if ((v96 & 1) != 0 || (v28 = v91, static MusicRestrictions.current.getter(), v29 = MusicRestrictions.allowsMusicVideos.getter(), (*(v92 + 8))(v28, v93), (v29 & 1) == 0))
    {
      v66 = v20;
      String.LocalizationValue.init(stringLiteral:)();
      v68 = v104;
      v67 = v105;
      v106(v105, v66, v104);
      v69 = v27;
      static Locale.current.getter();
      v70 = v69;
      v96 = String.init(localized:table:bundle:locale:comment:)();
      v97 = v71;
      v72 = v95;
      v95(v66, v68);
      sub_10010FC20(&qword_1011A7C00);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100EBDC20;
      String.LocalizationValue.init(stringLiteral:)();
      v106(v67, v66, v68);
      static Locale.current.getter();
      v73 = String.init(localized:table:bundle:locale:comment:)();
      v92 = v74;
      v93 = v73;
      v72(v66, v68);
      v75 = v100;
      UUID.init()();
      v76 = UUID.uuidString.getter();
      v78 = v77;
      v101 = *(v101 + 8);
      (v101)(v75, v103);
      *(v38 + 32) = v76;
      *(v38 + 40) = v78;
      v79 = v92;
      *(v38 + 48) = v93;
      *(v38 + 56) = v79;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_100EF2A30;
      *(v38 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v80 = v68;
      v106(v67, v66, v68);
      static Locale.current.getter();
      v81 = String.init(localized:table:bundle:locale:comment:)();
      v83 = v82;
      v95(v66, v80);
      UUID.init()();
      v84 = UUID.uuidString.getter();
      v86 = v85;
      result = (v101)(v75, v103);
      *(v38 + 88) = v84;
      *(v38 + 96) = v86;
      *(v38 + 104) = v81;
      *(v38 + 112) = v83;
      v53 = (v38 + 128);
      *(v38 + 120) = 2;
      v34 = v96;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v30 = v105;
      v31 = v104;
      (v106)(v105, v20);
      v32 = v27;
      static Locale.current.getter();
      v33 = v32;
      v34 = String.init(localized:table:bundle:locale:comment:)();
      v97 = v35;
      v36 = v31;
      v37 = v95;
      v95(v20, v31);
      sub_10010FC20(&qword_1011A7C00);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100EBDC20;
      String.LocalizationValue.init(stringLiteral:)();
      v106(v30, v20, v36);
      static Locale.current.getter();
      v96 = String.init(localized:table:bundle:locale:comment:)();
      v93 = v39;
      v37(v20, v36);
      v40 = v100;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      v101 = *(v101 + 8);
      (v101)(v40, v103);
      *(v38 + 32) = v41;
      *(v38 + 40) = v43;
      v44 = v93;
      *(v38 + 48) = v96;
      *(v38 + 56) = v44;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_100EF2A38;
      *(v38 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v45 = v104;
      v106(v30, v20, v104);
      static Locale.current.getter();
      v46 = String.init(localized:table:bundle:locale:comment:)();
      v48 = v47;
      v95(v20, v45);
      UUID.init()();
      v49 = UUID.uuidString.getter();
      v51 = v50;
      result = (v101)(v40, v103);
      *(v38 + 88) = v49;
      *(v38 + 96) = v51;
      *(v38 + 104) = v46;
      *(v38 + 112) = v48;
      v53 = (v38 + 128);
      *(v38 + 120) = 2;
    }

    a2 = v90;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v106(v19, v20, v18);
    v54 = v22;
    static Locale.current.getter();
    v55 = v54;
    v56 = v105;
    v96 = String.init(localized:table:bundle:locale:comment:)();
    v97 = v57;
    v58 = v18;
    v26(v20, v18);
    sub_10010FC20(&qword_1011A7C00);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    v106(v56, v20, v58);
    static Locale.current.getter();
    v34 = v96;
    v59 = String.init(localized:table:bundle:locale:comment:)();
    v61 = v60;
    v26(v20, v58);
    v62 = v100;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v65 = v64;
    result = (*(v101 + 8))(v62, v103);
    *(v38 + 32) = v63;
    *(v38 + 40) = v65;
    *(v38 + 48) = v59;
    *(v38 + 56) = v61;
    v53 = (v38 + 72);
    *(v38 + 64) = 2;
  }

  *v53 = 0;
  v53[1] = 0;
  v87 = v98;
  *a2 = v99;
  *(a2 + 8) = v87;
  v88 = v97;
  *(a2 + 16) = v34;
  *(a2 + 24) = v88;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v38;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_10097FEA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v22[-v12];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v14 = qword_101219808;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_100980138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v62 = a1;
  v63 = a2;
  v68 = type metadata accessor for UUID();
  v61 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = v11;
  v18 = *(v11 + 16);
  v67 = v11 + 16;
  v60 = v18;
  v18(v13, v16, v10);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v19 = qword_101219808;
  v20 = qword_101219808;
  v66 = v19;
  v21 = v20;
  static Locale.current.getter();
  v53 = v21;
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v23;
  v59 = v22;
  v24 = *(v17 + 8);
  v64 = v17 + 8;
  v65 = v24;
  v24(v16, v10);
  v25 = swift_allocObject();
  v56 = v25;
  v26 = v57;
  *(v25 + 16) = v57;
  *(v25 + 24) = a4;

  UUID.init()();
  v27 = v13;
  v28 = v8;
  v29 = UUID.uuidString.getter();
  v54 = v30;
  v55 = v29;
  v31 = v26;
  v50 = *(v61 + 8);
  v50(v28, v68);
  String.LocalizationValue.init(stringLiteral:)();
  v32 = v60;
  v60(v27, v16, v10);
  static Locale.current.getter();
  v33 = v53;
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v53 = v34;
  v65(v16, v10);
  v35 = swift_allocObject();
  v52 = v35;
  *(v35 + 16) = v31;
  *(v35 + 24) = a4;

  UUID.init()();
  v57 = UUID.uuidString.getter();
  v51 = v36;
  v50(v28, v68);
  String.LocalizationValue.init(stringLiteral:)();
  v32(v27, v16, v10);
  static Locale.current.getter();
  v37 = String.init(localized:table:bundle:locale:comment:)();
  v39 = v38;
  v65(v16, v10);
  sub_10010FC20(&qword_1011A7C00);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBDC20;
  v41 = v54;
  *(v40 + 32) = v55;
  *(v40 + 40) = v41;
  v42 = v58;
  *(v40 + 48) = v59;
  *(v40 + 56) = v42;
  *(v40 + 64) = 2;
  v43 = v56;
  v44 = v57;
  *(v40 + 72) = &unk_100EF2998;
  *(v40 + 80) = v43;
  v45 = v51;
  *(v40 + 88) = v44;
  *(v40 + 96) = v45;
  v46 = v52;
  v47 = v53;
  *(v40 + 104) = v61;
  *(v40 + 112) = v47;
  *(v40 + 120) = 0;
  *(v40 + 128) = &unk_100EF29A8;
  *(v40 + 136) = v46;

  *a5 = v37;
  *(a5 + 8) = v39;
  *(a5 + 16) = v62;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  *(a5 + 33) = v70[0];
  *(a5 + 36) = *(v70 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v69;
  *(a5 + 52) = *&v69[3];
  *(a5 + 56) = v40;
  *(a5 + 64) = 0;
  return result;
}

id sub_10098066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v47 = a1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v42 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = v6;
  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v15(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v53 = v13;
  v16 = qword_101219808;
  v51 = qword_101219808;
  static Locale.current.getter();
  v52 = v16;
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v18;
  v49 = v17;
  v46 = *(v12 + 8);
  v19 = v12 + 8;
  v46(v11, v5);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v21 = result;
    MobileGestalt_get_wapiCapability();

    v43 = a3;
    String.LocalizationValue.init(stringLiteral:)();
    v22 = v53;
    v53(v8, v11, v5);
    v23 = v51;
    static Locale.current.getter();
    v42[1] = v14;
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v44 = v25;
    v45 = v24;
    v26 = v46;
    v42[2] = v19;
    v46(v11, v5);
    sub_10010FC20(&qword_1011A7C00);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100EBDC20;
    String.LocalizationValue.init(stringLiteral:)();
    v22(v8, v11, v5);
    static Locale.current.getter();
    v28 = v51;
    v29 = String.init(localized:table:bundle:locale:comment:)();
    v31 = v30;
    v26(v11, v5);
    v32 = swift_allocObject();
    v33 = v47;
    v34 = v50;
    *(v32 + 16) = v47;
    *(v32 + 24) = v34;
    *(v27 + 32) = 0x6C65636E6163;
    *(v27 + 40) = 0xE600000000000000;
    *(v27 + 48) = v29;
    *(v27 + 56) = v31;
    *(v27 + 64) = 0;
    *(v27 + 72) = &unk_100EF29B8;
    *(v27 + 80) = v32;
    sub_100030444(v33);
    String.LocalizationValue.init(stringLiteral:)();
    v53(v8, v11, v5);
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    v37 = v36;
    v26(v11, v5);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    *(v38 + 24) = v34;
    *(v27 + 88) = 0x6E4F6E727574;
    *(v27 + 96) = 0xE600000000000000;
    *(v27 + 104) = v35;
    *(v27 + 112) = v37;
    *(v27 + 120) = 2;
    *(v27 + 128) = &unk_100EF29C8;
    *(v27 + 136) = v38;
    result = sub_100030444(v33);
    v39 = v48;
    v40 = v43;
    *v43 = v49;
    v40[1] = v39;
    v41 = v44;
    v40[2] = v45;
    v40[3] = v41;
    *(v40 + 32) = 0;
    *(v40 + 33) = v55[0];
    *(v40 + 9) = *(v55 + 3);
    v40[5] = 0;
    *(v40 + 48) = 1;
    *(v40 + 49) = *v54;
    *(v40 + 13) = *&v54[3];
    v40[7] = v27;
    v40[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100980BA4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v9 = static CloudLibrary.EnablementContext.action;
  v8 = *algn_101219BD8;

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = CloudLibrary.EnablementContext.title.getter(a1);
  v15 = v14;
  v16 = CloudLibrary.EnablementContext.message.getter(a1);
  v18 = v17;
  sub_10010FC20(&qword_1011A7C00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC20;
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  *(v19 + 48) = v9;
  *(v19 + 56) = v8;
  *(v19 + 64) = 2;
  *(v19 + 72) = &unk_100EF2988;
  *(v19 + 80) = 0;

  sub_10097FEA0(v23);
  v20 = v23[1];
  *(v19 + 88) = v23[0];
  *(v19 + 104) = v20;
  *(v19 + 120) = v23[2];
  *(v19 + 136) = v24;

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = 0;
  *(a2 + 33) = v23[0];
  *(a2 + 36) = *(v23 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v25;
  *(a2 + 52) = *&v25[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_100980DD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for String.LocalizationValue();
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v83 - v13;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v91 = v7;
  v92 = v5;
  v93 = v4;
  v94 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v18 = v11;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v11, v14, v95);
      v22 = v11;
      if (qword_1011A6740 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v11, v14, v95);
      v22 = v11;
      if (qword_1011A6740 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v23 = v95;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    String.LocalizationValue.init(stringLiteral:)();
    v24 = v97;
    v25 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v18, v14, v23);
    v26 = v18;
    if (qword_1011A6740 == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
LABEL_38:
    v21 = v95;
    v18 = v11;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v28 = v27;
  v29 = MPModelRelationshipMediaClipStaticAssets;
  v30 = a1;
  if (![v28 hasLoadedValueForKey:v29])
  {

    goto LABEL_38;
  }

  v31 = [v28 staticAssets];
  v21 = v95;
  if (!v31)
  {

    v18 = v11;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      String.LocalizationValue.init(stringLiteral:)();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v18, v14, v21);
      v22 = v18;
      if (qword_1011A6740 == -1)
      {
LABEL_43:
        v57 = qword_101219808;
        static Locale.current.getter();
        v58 = v57;
        v59 = String.init(localized:table:bundle:locale:comment:)();
        v89 = v60;
        v90 = v59;
        v61 = *(v19 + 8);
        v61(v14, v21);
        String.LocalizationValue.init(stringLiteral:)();
        v20(v22, v14, v21);
        static Locale.current.getter();
        v62 = String.init(localized:table:bundle:locale:comment:)();
        v87 = v63;
        v88 = v62;
        v61(v14, v21);
        v48 = v61;
        String.LocalizationValue.init(stringLiteral:)();
        v51 = v14;
        v64 = v14;
        v53 = v21;
        v20(v22, v64, v21);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v54 = v20;
        v84 = v58;
        static Locale.current.getter();
        v65 = String.init(localized:table:bundle:locale:comment:)();
        v95 = v66;
        v85 = v65;
        v86 = &unk_100EF2978;
        v50 = v22;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    String.LocalizationValue.init(stringLiteral:)();
    v19 = v97;
    v20 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v18, v14, v21);
    v22 = v18;
    if (qword_1011A6740 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v32 = v31;
  v89 = v30;
  sub_100982E0C();
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v33 >> 62)
  {
LABEL_56:
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v33;
  v18 = v11;
  if (!v34)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v36 = 0;
  v96 = MPModelPropertyStaticAssetMediaType;
  v90 = v33 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v90 + 16))
      {
        goto LABEL_55;
      }

      v37 = *(v35 + 8 * v36 + 32);
    }

    v21 = v37;
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v37 hasLoadedValueForKey:v96])
    {
      break;
    }

LABEL_23:
    ++v36;
    v21 = v95;
    v35 = v33;
    if (v38 == v34)
    {
      goto LABEL_41;
    }
  }

  v39 = [v21 mediaType];

  v40 = v39 == 2;
  v18 = v11;
  if (!v40)
  {
    goto LABEL_23;
  }

  v23 = v95;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  String.LocalizationValue.init(stringLiteral:)();
  v24 = v97;
  v25 = *(v97 + 16);
  v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v18, v14, v23);
  v26 = v18;
  if (qword_1011A6740 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v41 = qword_101219808;
  static Locale.current.getter();
  v42 = v41;
  v43 = String.init(localized:table:bundle:locale:comment:)();
  v89 = v44;
  v90 = v43;
  v45 = *(v24 + 8);
  v45(v14, v23);
  String.LocalizationValue.init(stringLiteral:)();
  v25(v26, v14, v23);
  static Locale.current.getter();
  v46 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v47;
  v88 = v46;
  v45(v14, v23);
  v48 = v45;
  v49 = v23;
  v50 = v26;
  String.LocalizationValue.init(stringLiteral:)();
  v51 = v14;
  v52 = v14;
  v53 = v49;
  v25(v26, v52, v49);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v54 = v25;
  v84 = v42;
  static Locale.current.getter();
  v55 = String.init(localized:table:bundle:locale:comment:)();
  v95 = v56;
  v85 = v55;
  v86 = &unk_100EF2980;
LABEL_46:
  v83 = v48;
  v48(v51, v53);
  v67 = v91;
  UUID.init()();
  v97 = UUID.uuidString.getter();
  v69 = v68;
  v70 = v93;
  v71 = *(v92 + 8);
  v71(v67, v93);

  String.LocalizationValue.init(stringLiteral:)();
  v54(v50, v51, v53);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  static Locale.current.getter();
  v72 = String.init(localized:table:bundle:locale:comment:)();
  v98 = v73;
  v83(v51, v53);
  UUID.init()();
  v74 = UUID.uuidString.getter();
  v76 = v75;
  v71(v67, v70);
  sub_10010FC20(&qword_1011A7C00);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100EBDC20;
  *(v77 + 32) = v97;
  *(v77 + 40) = v69;
  v78 = v86;
  *(v77 + 48) = v85;
  *(v77 + 56) = v95;
  *(v77 + 64) = 2;
  *(v77 + 72) = v78;
  *(v77 + 80) = 0;
  *(v77 + 88) = v74;
  *(v77 + 96) = v76;
  v79 = v98;
  *(v77 + 104) = v72;
  *(v77 + 112) = v79;
  *(v77 + 120) = 0;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;

  result = sub_100020438(v78);
  v80 = v94;
  v81 = v89;
  *v94 = v90;
  v80[1] = v81;
  v82 = v87;
  v80[2] = v88;
  v80[3] = v82;
  *(v80 + 32) = 0;
  *(v80 + 33) = v100[0];
  *(v80 + 9) = *(v100 + 3);
  v80[5] = 0;
  *(v80 + 48) = 1;
  *(v80 + 49) = *v99;
  *(v80 + 13) = *&v99[3];
  v80[7] = v77;
  v80[8] = 0;
  return result;
}

id sub_100981C90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for String.LocalizationValue();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v16 = result;
    MobileGestalt_get_wapiCapability();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v17 = result;
      MobileGestalt_get_cellularDataCapability();

      v60 = v10;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v18 = v65;
        v19 = v62;
        v20 = v61;
      }

      else
      {
        v18 = v65;
        v20 = v61;
        v19 = v62;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v59 = *(v20 + 16);
      v59(v19, v14, v18);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v58 = qword_101219808;
      static Locale.current.getter();
      v21 = String.init(localized:table:bundle:locale:comment:)();
      v54 = v22;
      v55 = v21;
      v23 = *(v20 + 8);
      v23(v14, v18);
      v56 = v6;
      v57 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v24 = _swiftEmptyArrayStorage;
      }

      else
      {
        v53 = a3;
        String.LocalizationValue.init(stringLiteral:)();
        v59(v19, v14, v18);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v25 = v58;
        static Locale.current.getter();
        v26 = String.init(localized:table:bundle:locale:comment:)();
        v28 = v27;
        v23(v14, v18);
        v29 = v63;
        UUID.init()();
        v30 = UUID.uuidString.getter();
        v32 = v31;
        (*(v64 + 8))(v29, v6);
        v24 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
        v34 = *(v24 + 2);
        v33 = *(v24 + 3);
        if (v34 >= v33 >> 1)
        {
          v24 = sub_10089CAD0((v33 > 1), v34 + 1, 1, v24);
        }

        *(v24 + 2) = v34 + 1;
        v35 = &v24[56 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        *(v35 + 6) = v26;
        *(v35 + 7) = v28;
        v35[64] = 2;
        *(v35 + 9) = &unk_100EF2970;
        *(v35 + 10) = 0;
        a3 = v53;
        v18 = v65;
        v19 = v62;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v59(v19, v14, v18);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v36 = v58;
      static Locale.current.getter();
      v37 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v38;
      v23(v14, v18);
      v40 = v63;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      (*(v64 + 8))(v40, v56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_10089CAD0(0, *(v24 + 2) + 1, 1, v24);
      }

      v45 = v54;
      v44 = v55;
      v47 = *(v24 + 2);
      v46 = *(v24 + 3);
      if (v47 >= v46 >> 1)
      {
        v24 = sub_10089CAD0((v46 > 1), v47 + 1, 1, v24);
      }

      *(v24 + 2) = v47 + 1;
      v48 = &v24[56 * v47];
      *(v48 + 4) = v41;
      *(v48 + 5) = v43;
      *(v48 + 6) = v37;
      *(v48 + 7) = v39;
      v48[64] = 2;
      *(v48 + 9) = 0;
      *(v48 + 10) = 0;
      if (v57)
      {
        v49 = [v57 userInterfaceIdiom];

        if (v49 == 3)
        {
          v50 = 0;
          v51 = v45;
          v45 = 0;
LABEL_27:
          v66 = 1;
          *a3 = v50;
          *(a3 + 8) = v45;
          *(a3 + 16) = v44;
          *(a3 + 24) = v51;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v24;
          *(a3 + 64) = 0;
          return result;
        }
      }

      else
      {
      }

      v51 = 0;
      v50 = v44;
      v44 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1009823E4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v14;
  v26 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v15(v9, v3);
  sub_10010FC20(&qword_1011A7C00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6B0;
  sub_10097FEA0(v27);
  result = *v27;
  v21 = v27[1];
  v22 = v27[2];
  *(v19 + 32) = v27[0];
  *(v19 + 48) = v21;
  *(v19 + 64) = v22;
  *(v19 + 80) = v28;
  v23 = v25;
  *a1 = v26;
  *(a1 + 8) = v23;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 33) = v27[0];
  *(a1 + 36) = *(v27 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v29;
  *(a1 + 52) = *&v29[3];
  *(a1 + 56) = v19;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1009826E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v58 = a1;
  v55 = a3;
  v59 = type metadata accessor for UUID();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  v14 = qword_101219808;
  static Locale.current.getter();
  v15 = v14;
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v53 = v17;
  v54 = v16;
  v18 = *(v6 + 8);
  v45 = v6 + 8;
  v18(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  v47 = v12;
  v49 = v6 + 16;
  static Locale.current.getter();
  v46 = v13;
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v51 = v20;
  v52 = v19;
  v21 = v18;
  v48 = v18;
  v18(v11, v5);
  sub_10010FC20(&qword_1011A7C00);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBDC20;
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v43 = v24;
  v44 = v23;
  v21(v11, v5);
  v25 = swift_allocObject();
  *(v25 + 16) = v58;
  *(v25 + 24) = v57;

  v26 = v50;
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v56 = *(v56 + 8);
  (v56)(v26, v59);
  *(v22 + 32) = v27;
  *(v22 + 40) = v29;
  v30 = v43;
  *(v22 + 48) = v44;
  *(v22 + 56) = v30;
  *(v22 + 64) = 2;
  *(v22 + 72) = &unk_100EF2958;
  *(v22 + 80) = v25;
  String.LocalizationValue.init(stringLiteral:)();
  v47(v8, v11, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v48(v11, v5);
  v34 = swift_allocObject();
  *(v34 + 16) = v58;
  *(v34 + 24) = v57;

  UUID.init()();
  v35 = UUID.uuidString.getter();
  v37 = v36;
  result = (v56)(v26, v59);
  *(v22 + 88) = v35;
  *(v22 + 96) = v37;
  *(v22 + 104) = v31;
  *(v22 + 112) = v33;
  *(v22 + 120) = 2;
  *(v22 + 128) = &unk_100EF2968;
  *(v22 + 136) = v34;
  v39 = v55;
  v40 = v52;
  v41 = v53;
  *v55 = v54;
  v39[1] = v41;
  v39[2] = v40;
  v39[3] = v51;
  *(v39 + 32) = 0;
  *(v39 + 33) = v61[0];
  *(v39 + 9) = *(v61 + 3);
  v39[5] = 1;
  *(v39 + 48) = 0;
  *(v39 + 49) = *v60;
  *(v39 + 13) = *&v60[3];
  v39[7] = v22;
  v39[8] = 0;
  return result;
}

uint64_t sub_100982CAC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100977FE8(a1, a2, v7, v6);
}

uint64_t sub_100982D5C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_100978070(a1, a2, v7, v6);
}

unint64_t sub_100982E0C()
{
  result = qword_1011AA9C0;
  if (!qword_1011AA9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AA9C0);
  }

  return result;
}

uint64_t sub_100982E58(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100977C6C(a1, a2, v7, v6);
}

uint64_t sub_100982F08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100977EAC(a1, a2, v6);
}

uint64_t sub_100982FB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_10097772C(a1, a2, v7, v6);
}

uint64_t sub_100983068(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_1009777BC(a1, a2, v7, v6);
}

uint64_t sub_100983118(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_10097788C(a1, a2, v2 + 16, v6);
}

uint64_t sub_1009831C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == noErr.getter() || !outPropertyData)
  {
    if (qword_1011A6938 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, static Logger.audioFormat);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    countAndFlagsBits = String.init(_:)(outPropertyData)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

void *sub_1009833D0()
{
  result = sub_1009833F0();
  static Datavault.music = result;
  return result;
}

void *sub_1009833F0()
{
  v0 = sub_10010FC20(&qword_1011AA9F8);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (!v15)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:isDirectory:)();
  type metadata accessor for Datavault();
  (*(v4 + 16))(v6, v9, v3);
  v17 = Datavault.__allocating_init(url:storageClass:)(v6, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_1011A6910 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000060E4(v18, qword_1011AA9E0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v2, v19, v18);
  v21 = *(v4 + 8);
  v21(v9, v3);
  v21(v12, v3);
  (*(v20 + 56))(v2, 0, 1, v18);
  v22 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_100983D38(v2, v17 + v22);
  swift_endAccess();
  return v17;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

uint64_t static Datavault.music.getter()
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Datavault.music.setter(uint64_t a1)
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;
}

uint64_t (*static Datavault.music.modify())()
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_100983C54()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AA9E0);
  sub_1000060E4(v0, qword_1011AA9E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100983CD0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A9120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100983D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA9F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  v0 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    (*(v11 + 8))(v13, v10);
    sub_100984258(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v15 = Date.lastUpdatedDateString(relativeTo:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)()
{
  v0 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateComponents.date.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100984258(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = Date.lastUpdatedDateString(relativeTo:)();
    (*(v4 + 8))(v6, v3);
    return v8;
  }
}

uint64_t sub_100984258(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  v0 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    sub_100984258(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = Date.lastUpdatedDateString(relativeTo:)();
    v12 = *(v4 + 8);
    v12(v6, v3);
    v12(v9, v3);
    return v11;
  }
}

uint64_t Date.lastUpdatedDateString(relativeTo:)()
{
  v0 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  result = Date.timeIntervalSince(_:)();
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v10 < 3600.0)
  {
    v11 = v10 / 60.0;
    if (*&v11 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v12 = v11;
        if (!v11)
        {
          String.LocalizationValue.init(stringLiteral:)();
          goto LABEL_21;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v13._countAndFlagsBits = 0x2064657461647055;
        v13._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
        v29 = v12;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v14 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= 86400.0)
  {
    if (v10 < 604800.0)
    {
      v20 = v10 / 86400.0;
      if (*&v20 >> 52 <= 0x7FEuLL)
      {
        if (v20 > -9.22337204e18)
        {
          if (v20 < 9.22337204e18)
          {
            v21 = v20;
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v22._countAndFlagsBits = 0x2064657461647055;
            v22._object = 0xE800000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
            v29 = v21;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v15 = 0x6F67612064;
            goto LABEL_19;
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < 2592000.0)
    {
      v25 = v10 / 604800.0;
      if (*&v25 >> 52 <= 0x7FEuLL)
      {
        if (v25 > -9.22337204e18)
        {
          if (v25 < 9.22337204e18)
          {
            v26 = v25;
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v27._countAndFlagsBits = 0x2064657461647055;
            v27._object = 0xE800000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
            v29 = v26;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v14 = 19;
LABEL_8:
            v15 = v14 | 0x6F67612064;
LABEL_19:
            v19 = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return result;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    return 0;
  }

  v16 = v10 / 3600.0;
  if (*&v16 >> 52 > 0x7FEuLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = v16;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2064657461647055;
  v18._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  v29 = v17;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v15 = 0x6F6761207268;
  v19 = 0xE600000000000000;
LABEL_20:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v15);
  String.LocalizationValue.init(stringInterpolation:)();
LABEL_21:
  (*(v3 + 16))(v5, v8, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v23 = qword_101219808;
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v8, v2);
  return v24;
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v4 = Date.lastUpdatedDateString(relativeTo:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v72 = a2;
  v71 = a1;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v63 - v13;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Calendar();
  __chkstk_darwin(v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v11;
  if ((a4 & 1) != 0 || (v24 = *&a3, *&a3 <= 0.0))
  {
    v40 = 0;
    v42 = 0;
    if ((v72 & 1) == 0)
    {
LABEL_13:
      if (v42)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
        v77 = v71;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v44._countAndFlagsBits = 0x297328676E6F7320;
        v44._object = 0xEA0000000000202CLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
        v45._countAndFlagsBits = v40;
        v45._object = v42;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v45);

        v46 = 0;
        v47 = 0xE000000000000000;
LABEL_17:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v46);
        v50 = v69;
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v9 + 16))(v68, v50, v8);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v51 = qword_101219808;
        static Locale.current.getter();
        v40 = String.init(localized:table:bundle:locale:comment:)();
        (*(v9 + 8))(v50, v8);
        return v40;
      }

      v48 = v71;
      if (v71 >= 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v49._countAndFlagsBits = 0;
        v49._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
        v77 = v48;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v46 = 0x297328676E6F7320;
        v47 = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v42)
    {
      return v40;
    }

    return 0;
  }

  v64 = v21;
  v65 = v8;
  v66 = v20;
  v67 = v9;
  static Calendar.current.getter();
  v25 = *(v16 + 104);
  v25(v18, enum case for Calendar.Component.second(_:), v15);
  Calendar.maximumRange(of:)();
  v63 = v26;
  v28 = v27;
  v29 = *(v16 + 8);
  v29(v18, v15);
  if (v28 & 1) != 0 || (v25(v18, enum case for Calendar.Component.minute(_:), v15), Calendar.maximumRange(of:)(), v31 = v30, v33 = v32, result = (v29)(v18, v15), (v33))
  {
    v9 = v67;
    goto LABEL_6;
  }

  v52 = v63 * v31;
  v9 = v67;
  if ((v63 * v31) >> 64 != (v63 * v31) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v52)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v53 = *&a3;
  if (*&a3 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_53;
  }

  v54 = v53 / v52 * v52;
  if ((v53 / v52 * v52) >> 64 != v54 >> 63)
  {
    goto LABEL_47;
  }

  v55 = v53 % v52;
  if (__OFSUB__(v53, v54))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v63)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v55 == 0x8000000000000000 && v63 == -1)
  {
    goto LABEL_54;
  }

  v57 = v55 / v63;
  v58 = v55 / v63 * v63;
  if ((v57 * v63) >> 64 != v58 >> 63)
  {
    goto LABEL_50;
  }

  v59 = __OFADD__(v54, v58);
  v60 = v54 + v58;
  if (v59)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v59 = __OFSUB__(v53, v60);
  v61 = v53 - v60;
  if (v59)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v61 < v63 / 2)
  {
    goto LABEL_6;
  }

  v59 = __OFSUB__(v63, v61);
  v62 = v63 - v61;
  if (!v59)
  {
    v24 = *&a3 + v62;
LABEL_6:
    v35 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v24];
    if (v35)
    {
      v36 = v35;
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v77 = v37;
      v78 = v39;
      v75 = 44;
      v76 = 0xE100000000000000;
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_10000988C();
      v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v42 = v41;

      (*(v64 + 8))(v23, v66);
    }

    else
    {
      (*(v64 + 8))(v23, v66);
      v40 = 0;
      v42 = 0;
    }

    v8 = v65;
    if ((v72 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v1 openSensitiveURL:v12 withOptions:isa];

    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &qword_1011A77F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v7 - 8);
  v49 = v41 - v8;
  v50 = type metadata accessor for URL();
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v41 - v13;
  v14 = sub_10010FC20(&qword_1011AA638);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v41 - v19;
  v21 = *(v5 + 56);
  v21(v41 - v19, 1, 1, v4, v18);
  if (a1)
  {
    v22 = [a1 universalStore];
    if (v22)
    {
      v45 = a2;
      v44 = [v22 adamID];
      swift_unknownObjectRelease();
      if (qword_1011A68E8 != -1)
      {
        swift_once();
      }

      sub_10010FC20(&qword_1011A9F70);
      UnfairLock.locked<A>(_:)(sub_10000E338);
      v23 = v52;
      a2 = v45;
      if (v52)
      {
        v43 = v5;
        v24 = String._bridgeToObjectiveC()();
        v25 = v23;
        v26 = [v23 urlForBagKey:v24];

        if (v26)
        {
          v42 = v25;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v9 + 32))(v47, v11, v50);
          URLComponents.init(url:resolvingAgainstBaseURL:)();
          sub_1009874D4(v16, v20);
          v5 = v43;
          v27 = *(v43 + 48);
          v41[1] = v43 + 48;
          if (v27(v20, 1, v4) || (v28 = URLComponents.queryItems.getter()) == 0)
          {

            v28 = _swiftEmptyArrayStorage;
          }

          v52 = v28;
          sub_10010FC20(&qword_1011A7D38);
          type metadata accessor for URLQueryItem();
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_100EBDC20;
          v51 = v44;
          dispatch thunk of CustomStringConvertible.description.getter();
          URLQueryItem.init(name:value:)();

          URLQueryItem.init(name:value:)();
          sub_1008A6464(v40);
          if (v27(v20, 1, v4))
          {
          }

          else
          {
            URLComponents.queryItems.setter();
          }

          a2 = v45;
          v31 = v49;
          v30 = v50;
          (*(v9 + 8))(v47, v50);
          goto LABEL_15;
        }

        a2 = v45;
        v5 = v43;
      }
    }
  }

  URLComponents.init()();
  (v21)(v16, 0, 1, v4);
  sub_1009874D4(v16, v20);
  v27 = *(v5 + 48);
  if (!v27(v20, 1, v4))
  {
    URLComponents.scheme.setter();
  }

  v29 = v27(v20, 1, v4);
  v30 = v50;
  if (!v29)
  {
    URLComponents.host.setter();
  }

  v31 = v49;
LABEL_15:
  if (v27(v20, 1, v4))
  {
    (*(v9 + 56))(v31, 1, 1, v30);
  }

  else
  {
    v32 = v48;
    (*(v5 + 16))(v48, v20, v4);
    URLComponents.url.getter();
    (*(v5 + 8))(v32, v4);
    if ((*(v9 + 48))(v31, 1, v30) != 1)
    {
      (*(v9 + 32))(a2, v31, v30);
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      sub_1008BC8D8(_swiftEmptyArrayStorage);
      v38 = a2;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v46 openSensitiveURL:v37 withOptions:isa];

      a2 = v38;
      v33 = 0;
      goto LABEL_19;
    }
  }

  sub_1000095E8(v31, &qword_1011A77F0);
  v33 = 1;
LABEL_19:
  (*(v9 + 56))(a2, v33, 1, v30);
  return sub_1000095E8(v20, &qword_1011AA638);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v5 - 8);
  v46 = v41 - v6;
  v7 = type metadata accessor for URL();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = v41 - v11;
  v12 = sub_10010FC20(&qword_1011AA638);
  __chkstk_darwin(v12 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = *(v3 + 56);
  v19(v41 - v17, 1, 1, v2, v16);
  v20 = Album.catalogID.getter();
  v45 = v3;
  if (v21)
  {
    v41[1] = v20;
    v42 = a1;
    if (qword_1011A68E8 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_1011A9F70);
    UnfairLock.locked<A>(_:)(sub_100011404);
    v22 = v49;
    if (v49)
    {
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 urlForBagKey:v23];

      if (v24)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v47 + 32))(v44, v9, v48);
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        sub_1009874D4(v14, v18);
        v25 = *(v45 + 48);
        if (v25(v18, 1, v2) || (v26 = URLComponents.queryItems.getter()) == 0)
        {

          v26 = _swiftEmptyArrayStorage;
        }

        v49 = v26;
        sub_10010FC20(&qword_1011A7D38);
        type metadata accessor for URLQueryItem();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100EBDC20;
        URLQueryItem.init(name:value:)();

        URLQueryItem.init(name:value:)();
        sub_1008A6464(v31);
        if (v25(v18, 1, v2))
        {
        }

        else
        {
          URLComponents.queryItems.setter();
        }

        v29 = v47;
        v28 = v48;
        v30 = v46;
        (*(v47 + 8))(v44, v48);
        a1 = v42;
        goto LABEL_20;
      }

      v3 = v45;
    }

    a1 = v42;
  }

  URLComponents.init()();
  (v19)(v14, 0, 1, v2);
  sub_1009874D4(v14, v18);
  v25 = *(v3 + 48);
  if (!v25(v18, 1, v2))
  {
    URLComponents.scheme.setter();
  }

  v27 = v25(v18, 1, v2);
  v29 = v47;
  v28 = v48;
  if (!v27)
  {
    URLComponents.host.setter();
  }

  v30 = v46;
LABEL_20:
  if (v25(v18, 1, v2))
  {
    (*(v29 + 56))(v30, 1, 1, v28);
  }

  else
  {
    v32 = v45;
    v33 = v43;
    (*(v45 + 16))(v43, v18, v2);
    URLComponents.url.getter();
    (*(v32 + 8))(v33, v2);
    if ((*(v29 + 48))(v30, 1, v28) != 1)
    {
      (*(v29 + 32))(a1, v30, v28);
      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      sub_1008BC8D8(_swiftEmptyArrayStorage);
      v39 = a1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v41[2] openSensitiveURL:v38 withOptions:isa];

      a1 = v39;
      v34 = 0;
      goto LABEL_24;
    }
  }

  sub_1000095E8(v30, &qword_1011A77F0);
  v34 = 1;
LABEL_24:
  (*(v29 + 56))(a1, v34, 1, v28);
  return sub_1000095E8(v18, &qword_1011AA638);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  v4 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0x2F2F3A636973756DLL;
  v27 = 0xE800000000000000;
  if (value != 7)
  {
    v11 = 0x7972617262696CLL;
    v25._countAndFlagsBits = 0x6261743F2F626174;
    v25._object = 0xE90000000000003DLL;
    v12 = 0xE600000000000000;
    v13 = 0x736F65646976;
    if (value != 5)
    {
      v13 = 0x7473696C79616C70;
      v12 = 0xE900000000000073;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6F69646172;
    if (value != 3)
    {
      v15 = 0x686372616573;
      v14 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE900000000000077;
    v17 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v17 = 0x6573776F7262;
      v16 = 0xE600000000000000;
    }

    if (value)
    {
      v11 = v17;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (value <= 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    v20 = v19;
    String.append(_:)(*&v18);

    String.append(contentsOf:)(v25);
  }

  URL.init(string:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_1011A77F0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v23 withOptions:isa];

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1009874D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id sub_1009875C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v5, &v6);
  if (!v7)
  {
    sub_100011E58(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v5[0];

  if (v1)
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v9, "showAllTVShows");
  v9[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v9, &v10);
  if (!v11)
  {
    sub_100011E58(&v10);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v9[0];

  if ((v1 & 1) == 0)
  {
LABEL_7:
    v2 = 2;
    goto LABEL_8;
  }

  v2 = 3;
LABEL_8:
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [objc_opt_self() kindWithVariants:v2];
  v6 = [v4 kindWithEpisodeKind:v5];

  v7 = [v3 kindWithSeasonKind:v6];
  return v7;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v7, "showAllTVShows");
  v7[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v7, &v8);
  if (!v9)
  {
    sub_100011E58(&v8);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v1 = v7[0];

  if ((v1 & 1) == 0)
  {
LABEL_7:
    v2 = 2;
    goto LABEL_8;
  }

  v2 = 3;
LABEL_8:
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v2];
  v5 = [v3 kindWithEpisodeKind:v4];

  return v5;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v12, "showAllTVShows");
  v12[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v12, &v13);
  if (!v14)
  {
    sub_100011E58(&v13);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v3 = v12[0];

  if (v3)
  {
    v4 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v4];
  v5 = [v1 standardUserDefaults];
  strcpy(v12, "showAllTVShows");
  v12[15] = -18;
  NSUserDefaults.subscript.getter(v12, &v13);
  if (!v14)
  {
    sub_100011E58(&v13);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v6 = v12[0];

  if ((v6 & 1) == 0)
  {
LABEL_14:
    v7 = 2;
    goto LABEL_15;
  }

  v7 = 3;
LABEL_15:
  v8 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v7];
  sub_10010FC20(&unk_1011AAA00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 kindWithKinds:isa];

  return v10;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}

id MPModelStoreBrowseContentItem.innermostModelObject.getter()
{
  v1 = [v0 innerObject];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_100988284(uint64_t a1, unint64_t a2, int a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    v24 = *&a1;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v17._countAndFlagsBits = 0x2F7469622DLL;
    v17._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    v24 = a2 / 1000.0;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v18._countAndFlagsBits = 0x207A486B20;
    v18._object = 0xE500000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
    v19._countAndFlagsBits = UInt32.formatName.getter(a3);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v8 + 16))(v10, v13, v7);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v21 = qword_101219808;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    (*(v8 + 8))(v13, v7);
    return v22;
  }

  return result;
}

uint64_t _sSo20MPCPlayerAudioFormatC9MusicCoreE12inputDetailsSSSgvg_0()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return sub_100988284(v1, v2, v3);
}

uint64_t MPModelObject.bestIdentifier(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v7 = [v8 innerObject]) == 0)
  {
LABEL_6:
    v7 = v3;
  }

LABEL_7:
  v9 = v7;
  if (a2 == 1)
  {
    v10 = [v7 identifiers];
    if (a1 == 2)
    {
      ObjectType = swift_getObjectType();
      v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, v10);
    }

    else if (a1 == 1 || (v11 = swift_getObjectType(), v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, 2, 1u, v10), !v13))
    {
      v12 = sub_10098A274(v9);
    }

    v16 = v12;
  }

  else
  {
    v14 = swift_getObjectType();
    v15 = [v9 identifiers];
    v16 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v14, a1, a2, v15);
  }

  return v16;
}

uint64_t sub_1009887D0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1009888EC;
  v2 = swift_continuation_init();
  v0[17] = sub_10010FC20(&qword_1011AAA10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100988A84;
  v0[13] = &unk_1010D3B98;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1009888EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100988A18;
  }

  else
  {
    v2 = sub_1009889FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100988A18()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100988A84(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011AB640);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MPArtworkCatalog.requestImage(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10098A6BC;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000B378;
  v7[3] = &unk_1010D3BE8;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void sub_100988C3C(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    sub_10098F554();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  [a1 setDestinationScale:0.0];
  [a1 setFittingSize:{a2, a3}];
  v11 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10098A6C4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10098F5FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010D3C88;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int sub_100988F7C(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    sub_10010FC20(&qword_1011AB640);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v5 = a1;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = v4;

  return OS_dispatch_semaphore.signal()();
}

uint64_t MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = sub_10098A6D0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100989224;
  v14[3] = &unk_1010D3CD8;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_100989124(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000DD18(v9, v13);
  swift_dynamicCast();
  a3(v11, a2);
  return (*(v8 + 8))(v11, a5);
}

uint64_t sub_100989224(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return sub_10000959C(v8);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_1011AAA18);
  if (swift_dynamicCast())
  {
    v2 = [v7 imageArtworkInfo];
    if (v2)
    {
      v3 = v2;
      [v2 originalSize];
      v5 = v4;

      return v5;
    }
  }

  return 0;
}

uint64_t MPArtworkCatalog.expectedRatio.getter()
{
  v0 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
  if ((v2 & 1) != 0 || v1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v0 / v1;
  }

  return result;
}

id static MPArtworkCatalog.monogram(for:layoutDirection:)(uint64_t a1, uint64_t a2, id a3, char a4)
{
  sub_10010FC20(&unk_1011AAA20);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(a1, a2, a3);
}

id static MPMediaLibrary.device.getter()
{
  result = [swift_getObjCClassFromMetadata() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void MPMediaPickerConfiguration.musicTypeIdentifiers.getter()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = NSBundle.exportedTypeDeclarations.getter();

  if (!v3)
  {
    return;
  }

  v4 = [v1 typeIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      sub_1009899CC(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    sub_10098E99C(v11);

    return;
  }

  v9 = 0;
  v10 = v3 + 32;
  v11 = _swiftEmptyArrayStorage;
  v44 = v3 + 32;
  v45 = v3;
  v42 = v8;
  while (2)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_52;
    }

    v46 = v11;
    v47 = v9;
    v12 = *(v3 + 16);

    if (!v12)
    {
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_23;
    }

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v16 = *(v10 + 8 * v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_10:
        if (v12 == ++v15)
        {
          goto LABEL_23;
        }
      }

      v17 = sub_100019C28(0xD000000000000010, 0x8000000100E5EBD0);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      sub_10000DD18(*(v16 + 56) + 32 * v17, v49);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v19 = v50;
      if (!v50)
      {
        goto LABEL_10;
      }

      v20 = v49[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10089C4F8(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_10089C4F8((v21 > 1), v22 + 1, 1, v14);
      }

      v13 = v15 + 1;
      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      v10 = v44;
      v3 = v45;
    }

    while (v12 - 1 != v15);
LABEL_23:
    v24 = *(v14 + 2);
    if (!v24)
    {
      v48 = _swiftEmptyArrayStorage;
LABEL_37:

      v11 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10089C2BC(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = sub_10089C2BC((v39 > 1), v40 + 1, 1, v11);
      }

      v9 = v47 + 1;
      v11[2] = v40 + 1;
      v11[v40 + 4] = v48;
      v8 = v42;
      if (v47 + 1 == v43)
      {
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  v25 = 0;
  v26 = v14 + 40;
  v48 = _swiftEmptyArrayStorage;
LABEL_25:
  v27 = &v26[16 * v25];
  v28 = v25;
  while (v28 < *(v14 + 2))
  {
    v30 = *(v27 - 1);
    v29 = *v27;
    v25 = v28 + 1;

    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100015C24(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_100015C24((v36 > 1), v37 + 1, 1);
        v34 = v49[0];
      }

      v34[2] = v37 + 1;
      v48 = v34;
      v38 = &v34[2 * v37];
      v38[4] = v30;
      v38[5] = v29;
      v26 = v14 + 40;
      if (v24 - 1 != v28)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    v27 += 16;
    ++v28;
    if (v24 == v25)
    {
      goto LABEL_37;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

char *sub_1009899CC(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    result = _swiftEmptyArrayStorage;
    if ((a1 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_10089C4F8((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x8000000100E5EE60;
  if ((a1 & 0x800) != 0)
  {
LABEL_7:
    v6 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v6;
    }

    else
    {
      result = sub_10089C4F8(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_10089C4F8((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x8000000100E5EE40;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100014984(v10);
  if (BYTE8(v10[0]))
  {
    return [v0 showsCatalogContent];
  }

  else
  {
    return 0;
  }
}

id MPMediaPickerConfiguration.supportsCloudLibrary.getter()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100014984(v10);
  if (BYTE9(v10[0]))
  {
    return [v0 showsCloudItems];
  }

  else
  {
    return 0;
  }
}

unint64_t MPIdentifierSet.publicLoggingDescription.getter()
{
  v1 = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v2)
  {
    String.append(_:)(*&v1);

    v3._countAndFlagsBits = 59;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = sub_10089C4F8(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10089C4F8((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 0x507972617262696CLL;
    *(v7 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = [v0 universalStore];
  if (v8)
  {
    v9 = [v8 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      _StringGuts.grow(_:)(20);

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 59;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10089C4F8(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_10089C4F8((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = 0xD000000000000011;
      *(v17 + 5) = 0x8000000100E5EC10;
    }
  }

  v18 = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v19)
  {
    String.append(_:)(*&v18);

    v20._countAndFlagsBits = 59;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10089C4F8(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    if (v22 >= v21 >> 1)
    {
      v4 = sub_10089C4F8((v21 > 1), v22 + 1, 1, v4);
    }

    *(v4 + 2) = v22 + 1;
    v23 = &v4[16 * v22];
    *(v23 + 4) = 0x3D65726F7473;
    *(v23 + 5) = 0xE600000000000000;
  }

  _StringGuts.grow(_:)(19);

  sub_10010FC20(&unk_1011A9FA0);
  sub_1008B2E78();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = Int64._bridgeToObjectiveC()().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id MPIdentifierSet.bestStoreIdentifier.getter()
{
  result = [v0 universalStore];
  if (result)
  {
    v2 = result;
    v3 = [result subscriptionAdamID];
    v4 = [v2 purchasedAdamID];
    v5 = [v2 adamID];
    if ((v3 || v4 || v5) && (isa = Int64._bridgeToObjectiveC()().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id static MPIdentifierSet.bestPlayabilityIdentifier<A>(for:options:identifiers:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return sub_10098A668(a1, a3);
  }

  if (a2 != 1)
  {
    v6 = a1;
    result = sub_10098A668(a1, a3);
    if (v8)
    {
      return result;
    }

    a1 = v6;
  }

  return sub_10098A428(a1, a3, a4);
}

uint64_t sub_10098A274(void *a1)
{
  v10 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10098F5A8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1001D3174;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D4530;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 performWithoutEnforcement:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v10 == 2 || (v10 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  return result;
}

uint64_t sub_10098A428(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v13;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10098F548;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001D3174;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D44B8;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  [v5 performWithoutEnforcement:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if (v13 == 2 || (v13 & 1) == 0)
  {

    return 0;
  }

  else
  {
    v11 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v11;
  }

  return result;
}

uint64_t sub_10098A5E4(char *a1, uint64_t a2)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v5 = 2;
  if (result && a2)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    result = (*(v6 + 8))(ObjectType, v6);
    v5 = result & 1;
  }

  *a1 = v5;
  return result;
}

id sub_10098A668(uint64_t a1, void *a2)
{
  sub_100009F78(0, &unk_1011AAC90);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10098ECA4;
  *(v6 + 24) = v5;
  v10[4] = sub_1002CF914;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10006BD7C;
  v10[3] = &unk_1010D3D50;
  v7 = _Block_copy(v10);

  v8 = [v4 initWithModelKind:a1 block:v7];

  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_10098A850(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceMediaLibrary];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1002CF96C;
    *(v8 + 24) = v7;
    v11[4] = sub_1002D0E14;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1002B8A68;
    v11[3] = &unk_1010D4440;
    v9 = _Block_copy(v11);

    [a1 setLibraryIdentifiersWithDatabaseID:v6 block:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }
}

uint64_t LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return 1;
  }

  else
  {
    return [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  }
}

BOOL LibraryAddable.isUserLibraryAddable.getter()
{
  v1 = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  [v1 configureWithModelObject:v0];
  v2 = [v1 currentStatus];

  return (v2 - 1) < 3;
}

BOOL PlaylistAddable.isPlaylistAddEligible.getter(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  return (!v4 || ([v4 isArtistUploadedContent] & 1) == 0) && ((*(*(a2 + 8) + 16))(a1) & 1) != 0;
}

Swift::String_optional __swiftcall MPModelObject.genericModelRelationshipKey()()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t MPModelObject.MediaKitPlayableKind.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6F6D2D636973756DLL;
    v5 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v5 = 0x736D75626C61;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x736E6F6974617473;
    if (a1 != 5)
    {
      v6 = 0x69762D636973756DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73676E6F73;
    v2 = 0x73776F68732D7674;
    if (a1 != 2)
    {
      v2 = 0x646564616F6C7075;
    }

    if (a1)
    {
      v1 = 0x6F736970652D7674;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10098AF40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MPModelObject.MediaKitPlayableKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MPModelObject.MediaKitPlayableKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}