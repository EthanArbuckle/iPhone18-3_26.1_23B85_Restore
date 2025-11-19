uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = sub_AB4BA0();
  v6 = sub_AB9F50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_12E1C(v8, &qword_E0F560);
  }

  swift_beginAccess();
  sub_E8BA0(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  sub_AB30F0(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    sub_AB30F0(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    sub_AB8D30();
    v10 = sub_AB9260();

    [v9 setName:v10];

    sub_AB8CF0();
    if (v11)
    {
      v12 = sub_AB9260();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    sub_AB8CE0();
    if (v13)
    {
      v14 = sub_AB9260();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_5F1620();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF82B0;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_13C80(0, &qword_E10AA8);
    v19 = v4;
    isa = sub_AB9740().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_5F4748;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5F1A50;
    aBlock[3] = &block_descriptor_182;
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
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

void sub_5F1620()
{
  v0 = sub_AB8E20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = sub_AB4A70();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  sub_AB4A50();
  sub_AB4A40();
  (*(v4 + 8))(v6, v3);
  v8 = sub_AB9260();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_5F4D44;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5F4054;
  aBlock[3] = &block_descriptor_89_0;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = sub_AB9260();
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

id sub_5F1958@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = sub_AB92A0();
  v5 = v4;
  if (v3 == sub_AB92A0() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_ABB3C0();

    if ((v8 & 1) == 0)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = sub_13C80(0, &qword_E10D08);
  *a2 = a1;

  return a1;
}

id sub_5F1A50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_ABB3A0();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_5F1C30()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.collaboration);
  __swift_project_value_buffer(v0, static Logger.collaboration);
  sub_13C80(0, &qword_E15F40);
  sub_ABA9A0();
  return sub_AB4BD0();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CD40 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = sub_AB8B90();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AB0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_AB8BA0();
  (*(v1 + 104))(v12, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_15F84(v15, v6, &qword_E10AB8);
  sub_15F84(v12, &v6[v16], &qword_E10AB8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_15F84(v6, v9, &qword_E10AB8);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_5F5020(&qword_E10AC0, &type metadata accessor for Playlist.Collaboration.InvitationMode);
      v18 = sub_AB91C0();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_12E1C(v12, &qword_E10AB8);
      sub_12E1C(v15, &qword_E10AB8);
      v21(v9, v0);
      sub_12E1C(v6, &qword_E10AB8);
      return v18 & 1;
    }

    sub_12E1C(v12, &qword_E10AB8);
    sub_12E1C(v15, &qword_E10AB8);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_12E1C(v12, &qword_E10AB8);
  sub_12E1C(v15, &qword_E10AB8);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_12E1C(v6, &qword_E10AB0);
    v18 = 0;
    return v18 & 1;
  }

  sub_12E1C(v6, &qword_E10AB8);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = sub_AB8B00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AC8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_AB8B20();
  (*(v1 + 104))(v12, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_15F84(v15, v6, &qword_E10AD0);
  sub_15F84(v12, &v6[v16], &qword_E10AD0);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_15F84(v6, v9, &qword_E10AD0);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_5F5020(&qword_E10AD8, &type metadata accessor for Playlist.Collaborator.Role);
      v18 = sub_AB91C0();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_12E1C(v12, &qword_E10AD0);
      sub_12E1C(v15, &qword_E10AD0);
      v21(v9, v0);
      sub_12E1C(v6, &qword_E10AD0);
      return v18 & 1;
    }

    sub_12E1C(v12, &qword_E10AD0);
    sub_12E1C(v15, &qword_E10AD0);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_12E1C(v12, &qword_E10AD0);
  sub_12E1C(v15, &qword_E10AD0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_12E1C(v6, &qword_E10AC8);
    v18 = 0;
    return v18 & 1;
  }

  sub_12E1C(v6, &qword_E10AD0);
  v18 = 1;
  return v18 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A48);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  sub_AB8BF0();
  v9 = sub_AB8BE0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {
    sub_12E1C(v2, &qword_E10A40);
    v11 = sub_AB8B30();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  sub_AB8BB0();
  (*(v10 + 8))(v2, v9);
  v12 = sub_AB8B30();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  sub_15F84(v8, v6, &qword_E10A48);
  v14 = (*(v13 + 88))(v6, v12);
  if (v14 != enum case for Playlist.Collaborator.Status.host(_:) && v14 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v13 + 8))(v6, v12);
    goto LABEL_10;
  }

  v16 = 1;
LABEL_11:
  sub_12E1C(v8, &qword_E10A48);
  return v16;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = sub_AB8DE0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10AE0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECC8);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF8);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  v1[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B08);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_5F2BC4, 0, 0);
}

uint64_t sub_5F2BC4()
{
  v1 = v0[22];
  v2 = v0[7];
  sub_AB7E60();
  swift_getKeyPath();
  v3 = sub_AB8E20();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_5F5020(&qword_E10B10, &type metadata accessor for Playlist);
  sub_AB7E20();

  sub_12E1C(v1, &qword_E10B00);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_5F2D8C;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_5F2D8C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_5F32D8;
  }

  else
  {
    v2 = sub_5F2EA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5F2EA0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_AB7EB0();
  (*(v2 + 16))(v3, v1, v4);
  sub_36A00(&qword_E10B18, &qword_E10AF0);
  sub_AB95A0();
  v7 = *(v5 + 36);
  sub_36A00(&qword_E10B20, &qword_E10AF0);
  sub_AB9CA0();
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
    sub_12E1C(v47[13], &unk_E10AE0);
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
      v13 = sub_AB9D80();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      sub_AB9CB0();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      sub_AB8D80();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      sub_AB9CA0();
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
    sub_12E1C(v47[13], &unk_E10AE0);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_12E1C(v38, &qword_E0ECC8);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_5F32D8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F600);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B30);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_5F34FC, 0, 0);
}

uint64_t sub_5F34FC()
{
  sub_AB4310();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_5F35A4;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_5F35A4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_5F3758;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_5F36D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5F36D0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5F3758()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_5F37E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_AB8E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = sub_AB9990();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    sub_5E89D8(0, 0, v13, &unk_B1D030, v16);
  }
}

uint64_t sub_5F39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10D70);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10D78);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D80);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_5F3AF0, 0, 0);
}

uint64_t sub_5F3AF0()
{
  v1 = *(v0 + 56);
  sub_AB8E00();
  v2 = sub_AB8A60();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 56), &unk_E10D80);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = sub_AB89C0();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_AB8920();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_5F3D10;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_5F3D10(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_12E1C(v4, &qword_E10D70);
    sub_12E1C(v5, &qword_E10D78);
    v7 = sub_5F3FB4;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_12E1C(v3[5], &qword_E10D70);
    sub_12E1C(v11, &qword_E10D78);
    (*(v9 + 8))(v10, v8);
    v7 = sub_5F3EC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_5F3EC0()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB3260();
    v5 = v4;

    v6.super.isa = sub_AB3250().super.isa;
    sub_466B8(v3, v5);
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

uint64_t sub_5F3FB4()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5F4054(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_AACD4;
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
    a4 = sub_AB8FF0();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_17654(v7);
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_5F4388()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5F43E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_5EB324(a1, v4, v5, v1 + 32);
}

uint64_t sub_5F4490()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

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
      sub_5F46BC();
      swift_allocError();
      v4 = xmmword_AF8620;
      goto LABEL_13;
    }

    if ((sub_5EB6E4() & 1) == 0)
    {
      sub_5F46BC();
      swift_allocError();
      v4 = xmmword_AF8610;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_472A84(3, v15) & 1) == 0)
  {
    sub_5F46BC();
    swift_allocError();
    v4 = xmmword_B13C50;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return sub_70C54(v14);
    }

    sub_5F46BC();
    swift_allocError();
    v4 = xmmword_B13C40;
    goto LABEL_13;
  }

  sub_5F46BC();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_70C54(v14);
}

unint64_t sub_5F46BC()
{
  result = qword_E10A70;
  if (!qword_E10A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10A70);
  }

  return result;
}

uint64_t sub_5F4710()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_182(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_5F47B8()
{
  result = qword_E10B38;
  if (!qword_E10B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10B38);
  }

  return result;
}

unint64_t sub_5F4810()
{
  result = qword_E10B40;
  if (!qword_E10B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10B40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore13CollaborationO5ErrorO(uint64_t a1)
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

uint64_t sub_5F48A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_5F48E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_5F492C(uint64_t result, unsigned int a2)
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

uint64_t sub_5F49BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4A74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4B2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E065C(a1, v4);
}

uint64_t sub_5F4BE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t objectdestroyTm_16(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_5F4D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_AB8E20() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_5F37E0(a1, a2, a3, a4, v10);
}

uint64_t sub_5F4DDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_5F4E14()
{
  v1 = sub_AB8E20();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_5F4EF0(uint64_t a1)
{
  v4 = *(sub_AB8E20() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_5F39E0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_5F5020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5F5068()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_5FEC68(a1, v5);
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
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_5F7C10(v7, a2, v5, v6, v10);
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
  sub_5FFF74(a1, a2, v6);
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
  sub_5FFA40(a1, a2, a3, a4, v8);
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
  sub_5FF7A8(v4);
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
  sub_6004AC(a1, v5);
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
  v13 = sub_AB3470();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB31C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v28 = &v44 - v27;
  if (qword_E0D528 != -1)
  {
    result = swift_once();
  }

  v29 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_62DE74(a1, a2, v48, v49, v50, v51, v52, v53, v28, a10 & 1);
    sub_5B513C(v28, v25);
    if ((*(v16 + 48))(v25, 1, v15) == 1)
    {
      sub_4FE5BC(v28);
      v30 = v25;
LABEL_10:
      result = sub_4FE5BC(v30);
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
    sub_AB30F0(v37);
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
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v31 = sub_AB3440();
    v32 = v43;
    (*(v46 + 8))(v42, v47);
    (*(v16 + 8))(v21, v15);
    result = sub_4FE5BC(v28);
    v29 = xmmword_B13C60;
    v34 = &unk_B1F200;
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
  sub_600760(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

id sub_5F5778()
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

id sub_5F582C()
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
  sub_601620(a1, a2, v6);
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
  v3 = sub_AB3470();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  sub_AB91E0();
  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v14 = qword_E71B20;
  v15 = qword_E71B20;
  sub_AB3550();
  v58 = v15;
  v16 = sub_AB9320();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_AB91E0();
  v13(v10, v12, v6);
  sub_AB3550();
  v19 = sub_AB9320();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == &dword_0 + 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_AB91E0();
    v52 = v13;
    v13(v10, v12, v6);
    v22 = v58;
    sub_AB3550();
    v51 = v14;
    v23 = sub_AB9320();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v26 = sub_AB3440();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_506A20((v28 > 1), v29 + 1, 1, v21);
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
    *(v30 + 9) = &unk_B1D078;
    *(v30 + 10) = 0;
    v13 = v52;
  }

  sub_AB91E0();
  v13(v10, v12, v6);
  v33 = v58;
  sub_AB3550();
  v34 = sub_AB9320();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v38 = sub_AB3440();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_506A20(0, *(v21 + 2) + 1, 1, v21);
    v21 = result;
  }

  v43 = *(v21 + 2);
  v42 = *(v21 + 3);
  if (v43 >= v42 >> 1)
  {
    result = sub_506A20((v42 > 1), v43 + 1, 1, v21);
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

id sub_5F5F10()
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
  v3 = sub_AB3470();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB35C0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  sub_AB91E0();
  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v14 = qword_E71B20;
  v15 = qword_E71B20;
  sub_AB3550();
  v58 = v15;
  v16 = sub_AB9320();
  v56 = v17;
  v57 = v16;
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_AB91E0();
  v13(v10, v12, v6);
  sub_AB3550();
  v19 = sub_AB9320();
  v54 = v20;
  v55 = v19;
  v18(v12, v6);
  v53 = v18;
  if (v52 && [v52 userInterfaceIdiom] == &dword_0 + 3)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_AB91E0();
    v52 = v13;
    v13(v10, v12, v6);
    v22 = v58;
    sub_AB3550();
    v51 = v14;
    v23 = sub_AB9320();
    v49 = v24;
    v50 = v23;
    v18(v12, v6);
    v25 = v59;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v26 = sub_AB3440();
    v47 = v27;
    v48 = v26;
    (*(v60 + 8))(v25, v61);
    v21 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_506A20((v28 > 1), v29 + 1, 1, v21);
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
    *(v30 + 9) = &unk_B1D080;
    *(v30 + 10) = 0;
    v13 = v52;
  }

  sub_AB91E0();
  v13(v10, v12, v6);
  v33 = v58;
  sub_AB3550();
  v34 = sub_AB9320();
  v36 = v35;
  v53(v12, v6);
  v37 = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v38 = sub_AB3440();
  v40 = v39;
  (*(v60 + 8))(v37, v61);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_506A20(0, *(v21 + 2) + 1, 1, v21);
    v21 = result;
  }

  v43 = *(v21 + 2);
  v42 = *(v21 + 3);
  if (v43 >= v42 >> 1)
  {
    result = sub_506A20((v42 > 1), v43 + 1, 1, v21);
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

id sub_5F6578()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

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
  sub_70C54(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    sub_AB92A0();
    v7 = sub_AB9260();

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

uint64_t sub_5F670C()
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
  v2 = sub_AB3470();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_AB91E0();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  sub_AB3550();
  v14 = v13;
  v15 = sub_AB9320();
  v28 = v16;
  v29 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v18 = sub_AB9320();
  v20 = v19;
  v17(v11, v5);
  v21 = v30;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = sub_AB3440();
  v24 = v23;
  (*(v31 + 8))(v21, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_AF4EC0;
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
  v2 = sub_AB3470();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  sub_AB91E0();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  sub_AB3550();
  v14 = v13;
  v15 = sub_AB9320();
  v33 = v16;
  v34 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v18 = sub_AB9320();
  v31 = v19;
  v32 = v18;
  v17(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v20 = sub_AB9320();
  v22 = v21;
  v17(v11, v5);
  v23 = v35;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v24 = sub_AB3440();
  v26 = v25;
  (*(v36 + 8))(v23, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v27 = swift_allocObject();
  *&result = 1;
  *(v27 + 16) = xmmword_AF4EC0;
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
  sub_601D74(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5F6F94()
{
  if (qword_E0CE00 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5F7034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7054, 0, 0);
}

uint64_t sub_5F7054()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5F70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F70E4, 0, 0);
}

id sub_5F70E4()
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

uint64_t sub_5F7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_5F71B4, 0, 0);
}

uint64_t sub_5F71B4()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_5F7270;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_5F7270()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_5F73A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_5F73A4()
{
  v14 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v8 = sub_AB9350();
    v10 = sub_500C84(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_5F7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7594, 0, 0);
}

uint64_t sub_5F7594()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_5F76C0;

  return v5(1);
}

uint64_t sub_5F76C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5F77B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_17BD0;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_602078(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_5F78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7910, 0, 0);
}

uint64_t sub_5F7910()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5F7978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_5F7998, 0, 0);
}

id sub_5F7998()
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

uint64_t sub_5F7A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_AB9940();
  *(v3 + 24) = sub_AB9930();
  v5 = sub_AB98B0();

  return _swift_task_switch(sub_5F7ADC, v5, v4);
}

uint64_t sub_5F7ADC()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_AB30F0(v2);
  v4 = v3;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_602BD4(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0);
  isa = sub_AB8FD0().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_5F7C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v9 = sub_AB3470();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB35C0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_AB9250();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v39[3] = a3;
  v39[4] = a4;
  v38 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_AB91E0();
  (*(v14 + 16))(v17, v19, v13);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v21 = qword_E71B20;
  sub_AB3550();
  v34 = sub_AB9320();
  v23 = v22;
  (*(v14 + 8))(v19, v13);
  sub_E8BA0(v39, v40);
  v24 = swift_allocObject();
  sub_70DF8(v40, v24 + 16);
  *(v24 + 56) = v35;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_AB3440();
  v27 = v26;
  (*(v36 + 8))(v11, v37);
  v28 = sub_5FD6F8(boxed_opaque_existential_0, a3, v38);
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF85F0;
  *(v31 + 32) = v25;
  *(v31 + 40) = v27;
  *(v31 + 48) = v34;
  *(v31 + 56) = v23;
  *(v31 + 64) = 1;
  *(v31 + 72) = &unk_B1D118;
  *(v31 + 80) = v24;

  sub_5FF7A8(v40);
  v32 = v40[1];
  *(v31 + 88) = v40[0];
  *(v31 + 104) = v32;
  *(v31 + 120) = v40[2];
  *(v31 + 136) = v41;

  result = __swift_destroy_boxed_opaque_existential_0(v39);
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

uint64_t sub_5F8038(uint64_t a1)
{
  v124 = a1;
  v103 = sub_AB8860();
  v97 = *(v103 - 8);
  v1 = __chkstk_darwin(v103);
  v95 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v96 = &v91 - v4;
  __chkstk_darwin(v3);
  v98 = &v91 - v5;
  v100 = sub_AB8D50();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_AB8DE0();
  v104 = *(v107 - 8);
  v7 = __chkstk_darwin(v107);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v105 = &v91 - v9;
  v109 = sub_AB4770();
  v106 = *(v109 - 8);
  v10 = __chkstk_darwin(v109);
  v91 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v91 - v12;
  v111 = sub_AB4710();
  v108 = *(v111 - 8);
  __chkstk_darwin(v111);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_AB44B0();
  v112 = *(v115 - 8);
  v14 = __chkstk_darwin(v115);
  v94 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v91 - v16;
  v17 = sub_AB86C0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v93 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v118 = &v91 - v21;
  v120 = sub_AB8E20();
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB8030();
  v121 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v92 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v91 - v26;
  v28 = sub_AB35C0();
  __chkstk_darwin(v28 - 8);
  v123 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_AB9250();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v91 - v35;
  v37 = sub_AB8770();
  v122 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v17;
  v126[4] = &protocol witness table for Song;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
  v114 = v18;
  v41 = *(v18 + 16);
  v42 = v124;
  v124 = v17;
  v41(boxed_opaque_existential_0, v42, v17);
  sub_E8BA0(v126, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v31 + 8))(v36, v30);
    v45 = *(v122 + 8);
    v46 = v39;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v48 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v31 + 8))(v36, v30);
    (*(v121 + 8))(v27, v23);
    goto LABEL_15;
  }

  v50 = v119;
  v49 = v120;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v51 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v31 + 8))(v36, v30);
    v45 = *(v117 + 8);
    v46 = v50;
    v47 = v49;
    goto LABEL_14;
  }

  v37 = v124;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v53 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v31 + 8))(v36, v30);
    v45 = *(v114 + 8);
    v46 = v118;
    goto LABEL_5;
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v54 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v31 + 8))(v36, v30);
    v45 = *(v112 + 8);
    v46 = v116;
    goto LABEL_5;
  }

  v37 = v111;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v55 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
    __swift_destroy_boxed_opaque_existential_0(v125);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v126);
    return v44;
  }

  v37 = v109;
  v57 = v31;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v31 + 16))(v34, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v58 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
    v75 = v34;
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
        v83 = sub_5F8038(v82);
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
        v44 = sub_5F9580(v88);
        (*(v87 + 8))(v88, v23);
        goto LABEL_46;
      }

      v89 = *(v77 + 8);
      v89(v78, v73);
      v89(v79, v73);
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_0(v125);
    sub_AB91E0();
    (*(v57 + 16))(v75, v36, v30);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v90 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v57 + 8))(v36, v30);
    goto LABEL_16;
  }

  v61 = v104;
  v62 = v102;
  (*(v104 + 32))(v102, v59, v60);
  v63 = v101;
  sub_AB8D60();
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
    v70 = sub_5FAB4C(v68);
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
    v44 = sub_5F9580(v86);
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
    v70 = sub_5F8038(v68);
    goto LABEL_37;
  }

  if (v66 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v64 + 96))(v63, v65);
    v67 = v106;
    v68 = v91;
    v69 = v109;
    (*(v106 + 32))(v91, v63, v109);
    v70 = sub_5FC104(v68);
    goto LABEL_37;
  }

  if (v66 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v66 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v61 + 8))(v62, v107);
    (*(v64 + 8))(v63, v65);
    v75 = v34;
    goto LABEL_55;
  }

  (*(v64 + 8))(v63, v65);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5F9580(uint64_t a1)
{
  v129 = a1;
  v106 = sub_AB8860();
  v102 = *(v106 - 8);
  v1 = __chkstk_darwin(v106);
  v100 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v101 = &v96 - v4;
  __chkstk_darwin(v3);
  v103 = &v96 - v5;
  v104 = sub_AB8D50();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_AB8DE0();
  v107 = *(v112 - 8);
  v7 = __chkstk_darwin(v112);
  v109 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v96 - v9;
  v115 = sub_AB4770();
  v111 = *(v115 - 8);
  v10 = __chkstk_darwin(v115);
  v96 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v96 - v12;
  v116 = sub_AB4710();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v118 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_AB44B0();
  v117 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v99 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v96 - v16;
  v124 = sub_AB86C0();
  v119 = *(v124 - 8);
  v17 = __chkstk_darwin(v124);
  v98 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v96 - v19;
  v127 = sub_AB8E20();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB8030();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v97 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v96 - v25;
  v27 = sub_AB35C0();
  __chkstk_darwin(v27 - 8);
  v128 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AB9250();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v96 - v34;
  v36 = sub_AB8770();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131[3] = v21;
  v131[4] = &protocol witness table for MusicVideo;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
  v125 = v22;
  (*(v22 + 16))(boxed_opaque_existential_0, v129, v21);
  sub_E8BA0(v131, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v41 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v125 + 8))(v26, v21);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v44 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v122 + 8))(v126, v127);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v45 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v119 + 8))(v123, v124);
    goto LABEL_29;
  }

  v46 = v35;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v47 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v117 + 8))(v120, v121);
    goto LABEL_29;
  }

  v48 = v116;
  v49 = v29;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v46, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v50 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v30 + 8))(v46, v29);
    (*(v113 + 8))(v118, v48);
    goto LABEL_29;
  }

  v51 = v114;
  v52 = v115;
  v53 = v30;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v46, v49);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v54 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
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
    v71 = v33;
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
        v80 = sub_5F8038(v78);
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
        v87 = sub_5F9580(v86);
        (*(v85 + 8))(v86, v21);
        v42 = v87;
        goto LABEL_42;
      }

      v93 = *(v73 + 8);
      v93(v74, v70);
      v93(v75, v70);
    }

LABEL_52:
    __swift_destroy_boxed_opaque_existential_0(v130);
    sub_AB91E0();
    (*(v53 + 16))(v71, v46, v49);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v95 = qword_E71B20;
    sub_AB3550();
    v42 = sub_AB9320();
    (*(v53 + 8))(v46, v49);
    goto LABEL_30;
  }

  v58 = v107;
  v59 = v109;
  (*(v107 + 32))(v109, v56, v57);
  v60 = v105;
  sub_AB8D60();
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
    v67 = sub_5FAB4C(v65);
LABEL_34:
    v68 = v66;
    v42 = v67;
    (*(v64 + 8))(v65, v68);
    (*(v58 + 8))(v59, v112);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(v130);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0(v131);
    return v42;
  }

  if (v63 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v108 + 96))(v60, v62);
    v82 = v125;
    v83 = v97;
    (*(v125 + 32))(v97, v60, v21);
    v84 = sub_5F9580(v83);
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
    v91 = sub_5F8038(v89);
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
    v67 = sub_5FC104(v65);
    goto LABEL_34;
  }

  if (v63 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v63 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v58 + 8))(v109, v112);
    (*(v94 + 8))(v60, v62);
    v71 = v33;
    goto LABEL_52;
  }

  (*(v108 + 8))(v60, v62);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FAB4C(uint64_t a1)
{
  v123 = a1;
  v103 = sub_AB8860();
  v98 = *(v103 - 8);
  v1 = __chkstk_darwin(v103);
  v96 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v97 = &v91 - v4;
  __chkstk_darwin(v3);
  v99 = &v91 - v5;
  v101 = sub_AB8D50();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_AB8DE0();
  v104 = *(v108 - 8);
  v7 = __chkstk_darwin(v108);
  v105 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v91 - v9;
  v110 = sub_AB4770();
  v107 = *(v110 - 8);
  v10 = __chkstk_darwin(v110);
  v92 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v91 - v12;
  v112 = sub_AB4710();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB44B0();
  v124 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v95 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v91 - v17;
  v118 = sub_AB86C0();
  v114 = *(v118 - 8);
  v18 = __chkstk_darwin(v118);
  v94 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = &v91 - v20;
  v119 = sub_AB8E20();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v121 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB8030();
  v120 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v93 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v91 - v25;
  v27 = sub_AB35C0();
  __chkstk_darwin(v27 - 8);
  v122 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AB9250();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  v36 = sub_AB8770();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126[3] = v14;
  v126[4] = sub_602BD4(&qword_E10E10, &type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v126);
  v41 = v123;
  v42 = *(v124 + 16);
  v123 = v14;
  v42(boxed_opaque_existential_0, v41, v14);
  sub_E8BA0(v126, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_16;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    v47 = *(v120 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_15:
    v47(v48, v49);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v125);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v126);
    return v44;
  }

  v50 = v119;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v51 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v55 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    v47 = *(v114 + 8);
    v48 = v54;
    goto LABEL_9;
  }

  v50 = v123;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v56 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    v47 = *(v124 + 8);
    v48 = v115;
    goto LABEL_14;
  }

  v50 = v112;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v57 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v59 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
        v44 = sub_5F8038(v79);
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
        v44 = sub_5F9580(v84);
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
    __swift_destroy_boxed_opaque_existential_0(v125);
    sub_AB91E0();
    (*(v30 + 16))(v33, v73, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v90 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v73, v29);
    goto LABEL_17;
  }

  v62 = v61;
  v63 = v104;
  v64 = v105;
  (*(v104 + 32))(v105, v60, v62);
  v65 = v102;
  sub_AB8D60();
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
    v44 = sub_5FAB4C(v71);
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
    v44 = sub_5F9580(v81);
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
    v88 = sub_5F8038(v86);
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
    v88 = sub_5FC104(v86);
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
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FC104(uint64_t a1)
{
  v134 = a1;
  v114 = sub_AB8860();
  v109 = *(v114 - 8);
  v1 = __chkstk_darwin(v114);
  v107 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v108 = &v102 - v4;
  __chkstk_darwin(v3);
  v110 = &v102 - v5;
  v112 = sub_AB8D50();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_AB8DE0();
  v115 = *(v118 - 8);
  v7 = __chkstk_darwin(v118);
  v116 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v117 = &v102 - v9;
  v10 = sub_AB4770();
  v135 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v103 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v102 - v13;
  v123 = sub_AB4710();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_AB44B0();
  v121 = *(v126 - 8);
  v15 = __chkstk_darwin(v126);
  v106 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = &v102 - v17;
  v128 = sub_AB86C0();
  v124 = *(v128 - 8);
  v18 = __chkstk_darwin(v128);
  v105 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v129 = &v102 - v20;
  v131 = sub_AB8E20();
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_AB8030();
  v132 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v104 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v27 = sub_AB35C0();
  __chkstk_darwin(v27 - 8);
  v133 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_AB9250();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v102 - v34;
  v36 = sub_AB8770();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137[3] = v10;
  v137[4] = sub_602BD4(&qword_E10E18, &type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v137);
  v41 = v134;
  v42 = *(v135 + 16);
  v134 = v10;
  v42(boxed_opaque_existential_0, v41, v10);
  sub_E8BA0(v137, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v37 + 8))(v39, v36);
    goto LABEL_27;
  }

  v45 = v22;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    v47 = *(v132 + 8);
    v48 = v26;
LABEL_9:
    v49 = v45;
LABEL_26:
    v47(v48, v49);
LABEL_27:
    __swift_destroy_boxed_opaque_existential_0(v136);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_0(v137);
    return v44;
  }

  v51 = v130;
  v50 = v131;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v52 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v127 + 8))(v51, v50);
    goto LABEL_27;
  }

  v53 = v128;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v54 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v124 + 8))(v129, v53);
    goto LABEL_27;
  }

  v55 = v33;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v56 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v35, v29);
    (*(v121 + 8))(v125, v126);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v57 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
    sub_AB91E0();
    (*(v30 + 16))(v33, v35, v29);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v59 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
        v84 = sub_5F8038(v83);
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
        v93 = sub_5F9580(v92);
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
    __swift_destroy_boxed_opaque_existential_0(v136);
    sub_AB91E0();
    (*(v30 + 16))(v55, v77, v76);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v101 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v30 + 8))(v77, v76);
    goto LABEL_28;
  }

  v62 = v115;
  v63 = v116;
  (*(v115 + 32))(v116, v60, v61);
  v64 = v113;
  sub_AB8D60();
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
    v71 = sub_5FAB4C(v69);
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
    v88 = sub_5F9580(v87);
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
    v98 = sub_5F8038(v96);
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
    v98 = sub_5FC104(v96);
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
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v121 = a1;
  v99 = sub_AB8860();
  v93 = *(v99 - 8);
  v4 = __chkstk_darwin(v99);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v92 = &v86 - v7;
  __chkstk_darwin(v6);
  v94 = &v86 - v8;
  v96 = sub_AB8D50();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_AB8DE0();
  v100 = *(v102 - 8);
  v10 = __chkstk_darwin(v102);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v86 - v12;
  v105 = sub_AB4770();
  v103 = *(v105 - 8);
  v13 = __chkstk_darwin(v105);
  v87 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v86 - v15;
  v109 = sub_AB4710();
  v104 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_AB44B0();
  v107 = *(v112 - 8);
  v17 = __chkstk_darwin(v112);
  v90 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v111 = &v86 - v19;
  v114 = sub_AB86C0();
  v110 = *(v114 - 8);
  v20 = __chkstk_darwin(v114);
  v89 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v115 = &v86 - v22;
  v117 = sub_AB8E20();
  v113 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB8030();
  v118 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v88 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = sub_AB35C0();
  __chkstk_darwin(v29 - 8);
  v119 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_AB9250();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v86 - v36;
  v38 = sub_AB8770();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123[3] = a2;
  v123[4] = v120;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v123);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v121, a2);
  sub_E8BA0(v123, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E08);
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v43 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v39 + 8))(v41, v38);
    goto LABEL_29;
  }

  v45 = v24;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v46 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v118 + 8))(v28, v24);
    goto LABEL_29;
  }

  v48 = v116;
  v47 = v117;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v49 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v113 + 8))(v48, v47);
    goto LABEL_29;
  }

  v50 = v114;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v51 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v110 + 8))(v115, v50);
    goto LABEL_29;
  }

  v52 = v37;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v53 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v107 + 8))(v111, v112);
    goto LABEL_29;
  }

  v54 = v31;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v31);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v55 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v32 + 8))(v37, v31);
    (*(v104 + 8))(v108, v109);
    goto LABEL_29;
  }

  v56 = v105;
  v57 = v32;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v32 + 16))(v35, v37, v54);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v58 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
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
        v44 = sub_5F8038(v80);
        (*(v79 + 8))(v80, v50);
LABEL_41:
        (*(v75 + 8))(v76, v74);
LABEL_29:
        __swift_destroy_boxed_opaque_existential_0(v122);
LABEL_30:
        __swift_destroy_boxed_opaque_existential_0(v123);
        return v44;
      }

      if (v78 == enum case for Track.musicVideo(_:))
      {
        (*(v75 + 96))(v77, v74);
        v81 = v118;
        v82 = v88;
        v83 = v121;
        (*(v118 + 32))(v88, v77, v121);
        v44 = sub_5F9580(v82);
        (*(v81 + 8))(v82, v83);
        goto LABEL_41;
      }

      v84 = *(v75 + 8);
      v84(v76, v74);
      v84(v77, v74);
    }

LABEL_51:
    __swift_destroy_boxed_opaque_existential_0(v122);
    sub_AB91E0();
    (*(v57 + 16))(v35, v52, v54);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v85 = qword_E71B20;
    sub_AB3550();
    v44 = sub_AB9320();
    (*(v57 + 8))(v52, v54);
    goto LABEL_30;
  }

  v121 = v45;
  v62 = v60;
  v63 = v100;
  v64 = v98;
  (*(v100 + 32))(v98, v62, v61);
  v65 = v97;
  sub_AB8D60();
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
    v72 = sub_5FAB4C(v70);
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
    v72 = sub_5F9580(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v110;
    v70 = v89;
    v71 = v114;
    (*(v110 + 32))(v89, v65, v114);
    v72 = sub_5F8038(v70);
    goto LABEL_47;
  }

  if (v68 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v66 + 96))(v65, v67);
    v69 = v103;
    v70 = v87;
    v71 = v105;
    (*(v103 + 32))(v87, v65, v105);
    v72 = sub_5FC104(v70);
    goto LABEL_47;
  }

  if (v68 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v68 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v63 + 8))(v64, v61);
    (*(v66 + 8))(v65, v67);
    goto LABEL_51;
  }

  (*(v66 + 8))(v65, v67);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5FEC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = sub_AB3470();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3FC0();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB35C0();
  __chkstk_darwin(v7 - 8);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_AB9250();
  v10 = *(v104 - 8);
  v11 = __chkstk_darwin(v104);
  v105 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v89 - v13;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v116[4] = v112;
  v116[5] = v113;
  v116[6] = v114;
  v116[7] = v115;
  v116[0] = v108;
  v116[1] = v109;
  v116[2] = v110;
  v116[3] = v111;
  v15 = *(&v110 + 1);

  sub_70C54(v116);
  LODWORD(v96) = sub_472A84(7, v15);

  v16 = [objc_opt_self() allowAccountModifications];
  v102 = v9;
  if (v16)
  {
    if (a1)
    {
      v17 = [a1 userInterfaceIdiom] != &dword_0 + 3;
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
  sub_AB91E0();
  v106 = *(v10 + 16);
  v107 = v10 + 16;
  v106(v19, v14, v18);
  v20 = v14;
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v21 = qword_E71B20;
  v22 = qword_E71B20;
  sub_AB3550();
  v23 = sub_AB9320();
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
    if ((v96 & 1) != 0 || (v28 = v91, sub_AB3FB0(), v29 = sub_AB3FA0(), (*(v92 + 8))(v28, v93), (v29 & 1) == 0))
    {
      v66 = v20;
      sub_AB91E0();
      v68 = v104;
      v67 = v105;
      v106(v105, v66, v104);
      v69 = v27;
      sub_AB3550();
      v70 = v69;
      v96 = sub_AB9320();
      v97 = v71;
      v72 = v95;
      v95(v66, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v106(v67, v66, v68);
      sub_AB3550();
      v73 = sub_AB9320();
      v92 = v74;
      v93 = v73;
      v72(v66, v68);
      v75 = v100;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v76 = sub_AB3440();
      v78 = v77;
      v101 = *(v101 + 8);
      (v101)(v75, v103);
      *(v38 + 32) = v76;
      *(v38 + 40) = v78;
      v79 = v92;
      *(v38 + 48) = v93;
      *(v38 + 56) = v79;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_B1D170;
      *(v38 + 80) = 0;
      sub_AB91E0();
      v80 = v68;
      v106(v67, v66, v68);
      sub_AB3550();
      v81 = sub_AB9320();
      v83 = v82;
      v95(v66, v80);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v84 = sub_AB3440();
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
      sub_AB91E0();
      v30 = v105;
      v31 = v104;
      (v106)(v105, v20);
      v32 = v27;
      sub_AB3550();
      v33 = v32;
      v34 = sub_AB9320();
      v97 = v35;
      v36 = v31;
      v37 = v95;
      v95(v20, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_AF85F0;
      sub_AB91E0();
      v106(v30, v20, v36);
      sub_AB3550();
      v96 = sub_AB9320();
      v93 = v39;
      v37(v20, v36);
      v40 = v100;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v41 = sub_AB3440();
      v43 = v42;
      v101 = *(v101 + 8);
      (v101)(v40, v103);
      *(v38 + 32) = v41;
      *(v38 + 40) = v43;
      v44 = v93;
      *(v38 + 48) = v96;
      *(v38 + 56) = v44;
      *(v38 + 64) = 2;
      *(v38 + 72) = &unk_B1D178;
      *(v38 + 80) = 0;
      sub_AB91E0();
      v45 = v104;
      v106(v30, v20, v104);
      sub_AB3550();
      v46 = sub_AB9320();
      v48 = v47;
      v95(v20, v45);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v49 = sub_AB3440();
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
    sub_AB91E0();
    v106(v19, v20, v18);
    v54 = v22;
    sub_AB3550();
    v55 = v54;
    v56 = v105;
    v96 = sub_AB9320();
    v97 = v57;
    v58 = v18;
    v26(v20, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_AF4EC0;
    sub_AB91E0();
    v106(v56, v20, v58);
    sub_AB3550();
    v34 = v96;
    v59 = sub_AB9320();
    v61 = v60;
    v26(v20, v58);
    v62 = v100;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v63 = sub_AB3440();
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

uint64_t sub_5FF7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB3470();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v22[-v12];
  sub_AB91E0();
  (*(v8 + 16))(v11, v13, v7);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v14 = qword_E71B20;
  sub_AB3550();
  v15 = sub_AB9320();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v18 = sub_AB3440();
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

uint64_t sub_5FFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v62 = a1;
  v63 = a2;
  v68 = sub_AB3470();
  v61 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9250();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  sub_AB91E0();
  v17 = v11;
  v18 = *(v11 + 16);
  v67 = v11 + 16;
  v60 = v18;
  v18(v14, v16, v10);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v19 = qword_E71B20;
  v20 = qword_E71B20;
  v66 = v19;
  v21 = v20;
  sub_AB3550();
  v53 = v21;
  v22 = sub_AB9320();
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

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = v14;
  v28 = v8;
  v29 = sub_AB3440();
  v54 = v30;
  v55 = v29;
  v31 = v26;
  v50 = *(v61 + 8);
  v50(v28, v68);
  sub_AB91E0();
  v32 = v60;
  v60(v27, v16, v10);
  sub_AB3550();
  v33 = v53;
  v61 = sub_AB9320();
  v53 = v34;
  v65(v16, v10);
  v35 = swift_allocObject();
  v52 = v35;
  *(v35 + 16) = v31;
  *(v35 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v57 = sub_AB3440();
  v51 = v36;
  v50(v28, v68);
  sub_AB91E0();
  v32(v27, v16, v10);
  sub_AB3550();
  v37 = sub_AB9320();
  v39 = v38;
  v65(v16, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_AF85F0;
  v41 = v54;
  *(v40 + 32) = v55;
  *(v40 + 40) = v41;
  v42 = v58;
  *(v40 + 48) = v59;
  *(v40 + 56) = v42;
  *(v40 + 64) = 2;
  v43 = v56;
  v44 = v57;
  *(v40 + 72) = &unk_B1D0D8;
  *(v40 + 80) = v43;
  v45 = v51;
  *(v40 + 88) = v44;
  *(v40 + 96) = v45;
  v46 = v52;
  v47 = v53;
  *(v40 + 104) = v61;
  *(v40 + 112) = v47;
  *(v40 + 120) = 0;
  *(v40 + 128) = &unk_B1D0E8;
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

id sub_5FFF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v47 = a1;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  sub_AB91E0();
  v12 = v6;
  v15 = *(v6 + 16);
  v14 = v6 + 16;
  v13 = v15;
  v15(v9, v11, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v53 = v13;
  v16 = qword_E71B20;
  v51 = qword_E71B20;
  sub_AB3550();
  v52 = v16;
  v17 = sub_AB9320();
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
    sub_AB91E0();
    v22 = v53;
    v53(v9, v11, v5);
    v23 = v51;
    sub_AB3550();
    v42[1] = v14;
    v24 = sub_AB9320();
    v44 = v25;
    v45 = v24;
    v26 = v46;
    v42[2] = v19;
    v46(v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_AF85F0;
    sub_AB91E0();
    v22(v9, v11, v5);
    sub_AB3550();
    v28 = v51;
    v29 = sub_AB9320();
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
    *(v27 + 72) = &unk_B1D0F8;
    *(v27 + 80) = v32;
    sub_307CC(v33);
    sub_AB91E0();
    v53(v9, v11, v5);
    sub_AB3550();
    v35 = sub_AB9320();
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
    *(v27 + 128) = &unk_B1D108;
    *(v27 + 136) = v38;
    result = sub_307CC(v33);
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

uint64_t sub_6004AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CDF8 != -1)
  {
    swift_once();
  }

  v9 = static CloudLibrary.EnablementContext.action;
  v8 = unk_E71EF0;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = sub_AB3440();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = CloudLibrary.EnablementContext.title.getter(a1);
  v15 = v14;
  v16 = CloudLibrary.EnablementContext.message.getter(a1);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF85F0;
  *(v19 + 32) = v10;
  *(v19 + 40) = v12;
  *(v19 + 48) = v9;
  *(v19 + 56) = v8;
  *(v19 + 64) = 2;
  *(v19 + 72) = &unk_B1D0C8;
  *(v19 + 80) = 0;

  sub_5FF7A8(v23);
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

uint64_t sub_6006D8()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_600760@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_AB9250();
  v97 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
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
  v18 = v12;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      sub_AB91E0();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v12, v14, v95);
      v22 = v12;
      if (qword_E0CB80 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_AB91E0();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v21 = v95;
      v20(v12, v14, v95);
      v22 = v12;
      if (qword_E0CB80 == -1)
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
    sub_AB91E0();
    v24 = v97;
    v25 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v18, v14, v23);
    v26 = v18;
    if (qword_E0CB80 == -1)
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
    v18 = v12;
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

    v18 = v12;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      sub_AB91E0();
      v19 = v97;
      v20 = *(v97 + 16);
      v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v18, v14, v21);
      v22 = v18;
      if (qword_E0CB80 == -1)
      {
LABEL_43:
        v57 = qword_E71B20;
        sub_AB3550();
        v58 = v57;
        v59 = sub_AB9320();
        v89 = v60;
        v90 = v59;
        v61 = *(v19 + 8);
        v61(v14, v21);
        sub_AB91E0();
        v20(v22, v14, v21);
        sub_AB3550();
        v62 = sub_AB9320();
        v87 = v63;
        v88 = v62;
        v61(v14, v21);
        v48 = v61;
        sub_AB91E0();
        v51 = v14;
        v64 = v14;
        v53 = v21;
        v20(v22, v64, v21);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v54 = v20;
        v84 = v58;
        sub_AB3550();
        v65 = sub_AB9320();
        v95 = v66;
        v85 = v65;
        v86 = &unk_B1D0B8;
        v50 = v22;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    sub_AB91E0();
    v19 = v97;
    v20 = *(v97 + 16);
    v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v18, v14, v21);
    v22 = v18;
    if (qword_E0CB80 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v32 = v31;
  v89 = v30;
  sub_60279C();
  v33 = sub_AB9760();

  if (v33 >> 62)
  {
LABEL_56:
    v34 = sub_ABB060();
  }

  else
  {
    v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
  }

  v35 = v33;
  v18 = v12;
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
      v37 = sub_ABAE20();
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

  v40 = v39 == &dword_0 + 2;
  v18 = v12;
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
  sub_AB91E0();
  v24 = v97;
  v25 = *(v97 + 16);
  v96 = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v18, v14, v23);
  v26 = v18;
  if (qword_E0CB80 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v41 = qword_E71B20;
  sub_AB3550();
  v42 = v41;
  v43 = sub_AB9320();
  v89 = v44;
  v90 = v43;
  v45 = *(v24 + 8);
  v45(v14, v23);
  sub_AB91E0();
  v25(v26, v14, v23);
  sub_AB3550();
  v46 = sub_AB9320();
  v87 = v47;
  v88 = v46;
  v45(v14, v23);
  v48 = v45;
  v49 = v23;
  v50 = v26;
  sub_AB91E0();
  v51 = v14;
  v52 = v14;
  v53 = v49;
  v25(v26, v52, v49);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v54 = v25;
  v84 = v42;
  sub_AB3550();
  v55 = sub_AB9320();
  v95 = v56;
  v85 = v55;
  v86 = &unk_B1D0C0;
LABEL_46:
  v83 = v48;
  v48(v51, v53);
  v67 = v91;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v97 = sub_AB3440();
  v69 = v68;
  v70 = v93;
  v71 = *(v92 + 8);
  v71(v67, v93);

  sub_AB91E0();
  v54(v50, v51, v53);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  sub_AB3550();
  v72 = sub_AB9320();
  v98 = v73;
  v83(v51, v53);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v74 = sub_AB3440();
  v76 = v75;
  v71(v67, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_AF85F0;
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

  result = sub_17654(v78);
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

id sub_601620@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB3470();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB35C0();
  __chkstk_darwin(v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_AB9250();
  v61 = *(v65 - 8);
  v11 = __chkstk_darwin(v65);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
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

      sub_AB91E0();
      v59 = *(v20 + 16);
      v59(v19, v14, v18);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v58 = qword_E71B20;
      sub_AB3550();
      v21 = sub_AB9320();
      v54 = v22;
      v55 = v21;
      v23 = *(v20 + 8);
      v23(v14, v18);
      v56 = v6;
      v57 = a2;
      if (a2 && [a2 userInterfaceIdiom] == &dword_0 + 3)
      {
        v24 = _swiftEmptyArrayStorage;
      }

      else
      {
        v53 = a3;
        sub_AB91E0();
        v59(v19, v14, v18);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v25 = v58;
        sub_AB3550();
        v26 = sub_AB9320();
        v28 = v27;
        v23(v14, v18);
        v29 = v63;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v30 = sub_AB3440();
        v32 = v31;
        (*(v64 + 8))(v29, v6);
        v24 = sub_506A20(0, 1, 1, _swiftEmptyArrayStorage);
        v34 = *(v24 + 2);
        v33 = *(v24 + 3);
        if (v34 >= v33 >> 1)
        {
          v24 = sub_506A20((v33 > 1), v34 + 1, 1, v24);
        }

        *(v24 + 2) = v34 + 1;
        v35 = &v24[56 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        *(v35 + 6) = v26;
        *(v35 + 7) = v28;
        v35[64] = 2;
        *(v35 + 9) = &unk_B1D0B0;
        *(v35 + 10) = 0;
        a3 = v53;
        v18 = v65;
        v19 = v62;
      }

      sub_AB91E0();
      v59(v19, v14, v18);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v36 = v58;
      sub_AB3550();
      v37 = sub_AB9320();
      v39 = v38;
      v23(v14, v18);
      v40 = v63;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v41 = sub_AB3440();
      v43 = v42;
      (*(v64 + 8))(v40, v56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_506A20(0, *(v24 + 2) + 1, 1, v24);
      }

      v45 = v54;
      v44 = v55;
      v47 = *(v24 + 2);
      v46 = *(v24 + 3);
      if (v47 >= v46 >> 1)
      {
        v24 = sub_506A20((v46 > 1), v47 + 1, 1, v24);
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

        if (v49 == &dword_0 + 3)
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

double sub_601D74@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  sub_AB91E0();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  sub_AB3550();
  v12 = v11;
  v13 = sub_AB9320();
  v25 = v14;
  v26 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  sub_AB91E0();
  v10(v7, v9, v3);
  sub_AB3550();
  v16 = sub_AB9320();
  v18 = v17;
  v15(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  sub_5FF7A8(v27);
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

uint64_t sub_602078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v58 = a1;
  v55 = a3;
  v59 = sub_AB3470();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  sub_AB91E0();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  v14 = qword_E71B20;
  sub_AB3550();
  v15 = v14;
  v16 = sub_AB9320();
  v53 = v17;
  v54 = v16;
  v18 = *(v6 + 8);
  v45 = v6 + 8;
  v18(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  v47 = v12;
  v49 = v6 + 16;
  sub_AB3550();
  v46 = v13;
  v19 = sub_AB9320();
  v51 = v20;
  v52 = v19;
  v21 = v18;
  v48 = v18;
  v18(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v23 = sub_AB9320();
  v43 = v24;
  v44 = v23;
  v21(v11, v5);
  v25 = swift_allocObject();
  *(v25 + 16) = v58;
  *(v25 + 24) = v57;

  v26 = v50;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = sub_AB3440();
  v29 = v28;
  v56 = *(v56 + 8);
  (v56)(v26, v59);
  *(v22 + 32) = v27;
  *(v22 + 40) = v29;
  v30 = v43;
  *(v22 + 48) = v44;
  *(v22 + 56) = v30;
  *(v22 + 64) = 2;
  *(v22 + 72) = &unk_B1D098;
  *(v22 + 80) = v25;
  sub_AB91E0();
  v47(v9, v11, v5);
  sub_AB3550();
  v31 = sub_AB9320();
  v33 = v32;
  v48(v11, v5);
  v34 = swift_allocObject();
  *(v34 + 16) = v58;
  *(v34 + 24) = v57;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v35 = sub_AB3440();
  v37 = v36;
  result = (v56)(v26, v59);
  *(v22 + 88) = v35;
  *(v22 + 96) = v37;
  *(v22 + 104) = v31;
  *(v22 + 112) = v33;
  *(v22 + 120) = 2;
  *(v22 + 128) = &unk_B1D0A8;
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

uint64_t sub_60263C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F78F0(a1, a2, v7, v6);
}

uint64_t sub_6026EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17BD0;

  return sub_5F7978(a1, a2, v7, v6);
}

unint64_t sub_60279C()
{
  result = qword_E10E00;
  if (!qword_E10E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E10E00);
  }

  return result;
}

uint64_t sub_6027E8()
{

  return swift_deallocObject();
}

uint64_t sub_602820(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F7574(a1, a2, v7, v6);
}

uint64_t sub_6028D0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_5F77B4(a1, a2, v6);
}

uint64_t sub_602984(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F7034(a1, a2, v7, v6);
}

uint64_t sub_602A34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5F70C4(a1, a2, v7, v6);
}

uint64_t sub_602AE4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_602B24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_5F7194(a1, a2, v2 + 16, v6);
}

uint64_t sub_602BD4(unint64_t *a1, void (*a2)(uint64_t))
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
  if (Property == sub_AB53E0() || !outPropertyData)
  {
    if (qword_E0CD78 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, static Logger.audioFormat);
    v5 = sub_AB4BA0();
    v6 = sub_AB9F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&dword_0, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    v3 = sub_AB9330(outPropertyData);

    return v3;
  }
}

void *sub_602DF4()
{
  result = sub_602E14();
  static Datavault.music = result;
  return result;
}

void *sub_602E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E38);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_AB31C0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_AB9260();
  v15 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (!v15)
  {
    return 0;
  }

  sub_AB3150();

  sub_AB3110();
  type metadata accessor for Datavault();
  (*(v4 + 16))(v7, v10, v3);
  v17 = Datavault.__allocating_init(url:storageClass:)(v7, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_E0CD50 != -1)
  {
    swift_once();
  }

  v18 = sub_AB4BC0();
  v19 = __swift_project_value_buffer(v18, qword_E10E20);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v2, v19, v18);
  v21 = *(v4 + 8);
  v21(v10, v3);
  v21(v12, v3);
  (*(v20 + 56))(v2, 0, 1, v18);
  v22 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_60375C(v2, v17 + v22);
  swift_endAccess();
  return v17;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

uint64_t static Datavault.music.getter()
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Datavault.music.setter(uint64_t a1)
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;
}

uint64_t (*static Datavault.music.modify())()
{
  if (qword_E0CD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_603678()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E10E20);
  __swift_project_value_buffer(v0, qword_E10E20);
  return sub_AB4BB0();
}

uint64_t sub_6036F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60375C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = sub_AB2DC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D70();
  sub_AB3400();
  sub_AB2D90();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    (*(v11 + 8))(v13, v10);
    sub_603C7C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v15 = Date.lastUpdatedDateString(relativeTo:)();
    v16 = *(v4 + 8);
    v16(v7, v3);
    v16(v9, v3);
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D90();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_603C7C(v2);
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

uint64_t sub_603C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_AB3400();
  sub_AB2D90();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
    sub_603C7C(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    v11 = Date.lastUpdatedDateString(relativeTo:)();
    v12 = *(v4 + 8);
    v12(v7, v3);
    v12(v9, v3);
    return v11;
  }
}

uint64_t Date.lastUpdatedDateString(relativeTo:)()
{
  v0 = sub_AB9230();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  result = sub_AB3340();
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
          sub_AB91E0();
          goto LABEL_21;
        }

        sub_AB9220();
        v25._countAndFlagsBits = 0x2064657461647055;
        v25._object = 0xE800000000000000;
        sub_AB9210(v25);
        v24 = v12;
        sub_AB91F0();
        v13 = 9;
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
      v17 = v10 / 86400.0;
      if (*&v17 >> 52 <= 0x7FEuLL)
      {
        if (v17 > -9.22337204e18)
        {
          if (v17 < 9.22337204e18)
          {
            v18 = v17;
            sub_AB9220();
            v27._countAndFlagsBits = 0x2064657461647055;
            v27._object = 0xE800000000000000;
            sub_AB9210(v27);
            v24 = v18;
            sub_AB91F0();
            v14._countAndFlagsBits = 0x6F67612064;
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
      v21 = v10 / 604800.0;
      if (*&v21 >> 52 <= 0x7FEuLL)
      {
        if (v21 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            v22 = v21;
            sub_AB9220();
            v28._countAndFlagsBits = 0x2064657461647055;
            v28._object = 0xE800000000000000;
            sub_AB9210(v28);
            v24 = v22;
            sub_AB91F0();
            v13 = 19;
LABEL_8:
            v14._countAndFlagsBits = v13 | 0x6F67612064;
LABEL_19:
            v14._object = 0xE500000000000000;
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

  v15 = v10 / 3600.0;
  if (*&v15 >> 52 > 0x7FEuLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = v15;
  sub_AB9220();
  v26._countAndFlagsBits = 0x2064657461647055;
  v26._object = 0xE800000000000000;
  sub_AB9210(v26);
  v24 = v16;
  sub_AB91F0();
  v14._countAndFlagsBits = 0x6F6761207268;
  v14._object = 0xE600000000000000;
LABEL_20:
  sub_AB9210(v14);
  sub_AB9240();
LABEL_21:
  (*(v3 + 16))(v6, v8, v2);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v19 = qword_E71B20;
  sub_AB3550();
  v20 = sub_AB9320();
  (*(v3 + 8))(v8, v2);
  return v20;
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = sub_AB3430();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3400();
  v4 = Date.lastUpdatedDateString(relativeTo:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v67 = a2;
  v66 = a1;
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB9250();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v58 - v13;
  v14 = sub_AB9230();
  __chkstk_darwin(v14 - 8);
  v15 = sub_AB3690();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_AB36A0();
  v20 = __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v12;
  if ((a4 & 1) != 0 || (v24 = *&a3, *&a3 <= 0.0))
  {
    v40 = 0;
    v42 = 0;
    if ((v67 & 1) == 0)
    {
LABEL_13:
      if (v42)
      {
        sub_AB9220();
        v74._countAndFlagsBits = 0;
        v74._object = 0xE000000000000000;
        sub_AB9210(v74);
        v72 = v66;
        sub_AB91F0();
        v75._countAndFlagsBits = 0x297328676E6F7320;
        v75._object = 0xEA0000000000202CLL;
        sub_AB9210(v75);
        v76._countAndFlagsBits = v40;
        v76._object = v42;
        sub_AB9200(v76);

        v43._countAndFlagsBits = 0;
        v43._object = 0xE000000000000000;
LABEL_17:
        sub_AB9210(v43);
        v45 = v64;
        sub_AB9240();
        (*(v9 + 16))(v63, v45, v8);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v46 = qword_E71B20;
        sub_AB3550();
        v40 = sub_AB9320();
        (*(v9 + 8))(v45, v8);
        return v40;
      }

      v44 = v66;
      if (v66 >= 1)
      {
        sub_AB9220();
        v77._countAndFlagsBits = 0;
        v77._object = 0xE000000000000000;
        sub_AB9210(v77);
        v72 = v44;
        sub_AB91F0();
        v43._countAndFlagsBits = 0x297328676E6F7320;
        v43._object = 0xE800000000000000;
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

  v59 = v21;
  v60 = v8;
  v61 = v20;
  v62 = v9;
  sub_AB3660();
  v25 = *(v16 + 104);
  v25(v18, enum case for Calendar.Component.second(_:), v15);
  sub_AB3600();
  v58 = v26;
  v28 = v27;
  v29 = *(v16 + 8);
  v29(v18, v15);
  if (v28 & 1) != 0 || (v25(v18, enum case for Calendar.Component.minute(_:), v15), sub_AB3600(), v31 = v30, v33 = v32, result = (v29)(v18, v15), (v33))
  {
    v9 = v62;
    goto LABEL_6;
  }

  v47 = v58 * v31;
  v9 = v62;
  if ((v58 * v31) >> 64 != (v58 * v31) >> 63)
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

  if (!v47)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48 = *&a3;
  if (*&a3 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_53;
  }

  v49 = v48 / v47 * v47;
  if ((v48 / v47 * v47) >> 64 != v49 >> 63)
  {
    goto LABEL_47;
  }

  v50 = v48 % v47;
  if (__OFSUB__(v48, v49))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v58)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v50 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_54;
  }

  v52 = v50 / v58;
  v53 = v50 / v58 * v58;
  if ((v52 * v58) >> 64 != v53 >> 63)
  {
    goto LABEL_50;
  }

  v54 = __OFADD__(v49, v53);
  v55 = v49 + v53;
  if (v54)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v54 = __OFSUB__(v48, v55);
  v56 = v48 - v55;
  if (v54)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v56 < v58 / 2)
  {
    goto LABEL_6;
  }

  v54 = __OFSUB__(v58, v56);
  v57 = v58 - v56;
  if (!v54)
  {
    v24 = *&a3 + v57;
LABEL_6:
    v35 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v24];
    if (v35)
    {
      v36 = v35;
      v37 = sub_AB92A0();
      v39 = v38;

      v72 = v37;
      v73 = v39;
      v70 = 44;
      v71 = 0xE100000000000000;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_4FD6CC();
      v40 = sub_ABAAB0();
      v42 = v41;

      (*(v59 + 8))(v23, v61);
    }

    else
    {
      (*(v59 + 8))(v23, v61);
      v40 = 0;
      v42 = 0;
    }

    v8 = v60;
    if ((v67 & 1) == 0)
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
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v10);
    v12 = v11;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    v14 = [v1 openSensitiveURL:v12 withOptions:isa];

    (*(v6 + 8))(v8, v5);
    return v14;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_AB31C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3180();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0DC30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_AB30F0(v9);
    v11 = v10;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_AB2CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v7 - 8);
  v48 = v40 - v8;
  v49 = sub_AB31C0();
  v9 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v40 - v18;
  v20 = *(v5 + 56);
  v20(v40 - v18, 1, 1, v4);
  if (a1)
  {
    v21 = [a1 universalStore];
    if (v21)
    {
      v44 = a2;
      v43 = [v21 adamID];
      swift_unknownObjectRelease();
      if (qword_E0CD28 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0);
      UnfairLock.locked<A>(_:)(sub_4FD6B0);
      v22 = v51;
      a2 = v44;
      if (v51)
      {
        v42 = v5;
        v23 = sub_AB9260();
        v24 = v22;
        v25 = [v22 urlForBagKey:v23];

        if (v25)
        {
          v41 = v24;
          sub_AB3150();

          (*(v9 + 32))(v46, v12, v49);
          sub_AB2C40();
          sub_606EF8(v17, v19);
          v5 = v42;
          v26 = *(v42 + 48);
          v40[1] = v42 + 48;
          if (v26(v19, 1, v4) || (v27 = sub_AB2C20()) == 0)
          {

            v27 = _swiftEmptyArrayStorage;
          }

          v51 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178);
          sub_AB2C10();
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_AF85F0;
          v50 = v43;
          sub_ABB330();
          sub_AB2BE0();

          sub_AB2BE0();
          sub_5111A0(v39);
          if (v26(v19, 1, v4))
          {
          }

          else
          {
            sub_AB2C30();
          }

          a2 = v44;
          v30 = v48;
          v29 = v49;
          (*(v9 + 8))(v46, v49);
          goto LABEL_15;
        }

        a2 = v44;
        v5 = v42;
      }
    }
  }

  sub_AB2CD0();
  v20(v17, 0, 1, v4);
  sub_606EF8(v17, v19);
  v26 = *(v5 + 48);
  if (!v26(v19, 1, v4))
  {
    sub_AB2CB0();
  }

  v28 = v26(v19, 1, v4);
  v29 = v49;
  if (!v28)
  {
    sub_AB2C70();
  }

  v30 = v48;
LABEL_15:
  if (v26(v19, 1, v4))
  {
    (*(v9 + 56))(v30, 1, 1, v29);
  }

  else
  {
    v31 = v47;
    (*(v5 + 16))(v47, v19, v4);
    sub_AB2C50();
    (*(v5 + 8))(v31, v4);
    if ((*(v9 + 48))(v30, 1, v29) != 1)
    {
      (*(v9 + 32))(a2, v30, v29);
      sub_AB30F0(v34);
      v36 = v35;
      sub_52995C(_swiftEmptyArrayStorage);
      v37 = a2;
      isa = sub_AB8FD0().super.isa;

      [v45 openSensitiveURL:v36 withOptions:isa];

      a2 = v37;
      v32 = 0;
      goto LABEL_19;
    }
  }

  sub_12E1C(v30, &qword_E0DC30);
  v32 = 1;
LABEL_19:
  (*(v9 + 56))(a2, v32, 1, v29);
  return sub_12E1C(v19, &qword_E10A78);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB2CE0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v5 - 8);
  v45 = v40 - v6;
  v7 = sub_AB31C0();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = *(v3 + 56);
  v18(v40 - v16, 1, 1, v2);
  v19 = sub_AB8710();
  v44 = v3;
  if (v20)
  {
    v40[1] = v19;
    v41 = a1;
    if (qword_E0CD28 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0);
    UnfairLock.locked<A>(_:)(sub_5DEA18);
    v21 = v48;
    if (v48)
    {
      v22 = sub_AB9260();
      v23 = [v21 urlForBagKey:v22];

      if (v23)
      {
        sub_AB3150();

        (*(v46 + 32))(v43, v10, v47);
        sub_AB2C40();
        sub_606EF8(v15, v17);
        v24 = *(v44 + 48);
        if (v24(v17, 1, v2) || (v25 = sub_AB2C20()) == 0)
        {

          v25 = _swiftEmptyArrayStorage;
        }

        v48 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E178);
        sub_AB2C10();
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_AF85F0;
        sub_AB2BE0();

        sub_AB2BE0();
        sub_5111A0(v30);
        if (v24(v17, 1, v2))
        {
        }

        else
        {
          sub_AB2C30();
        }

        v28 = v46;
        v27 = v47;
        v29 = v45;
        (*(v46 + 8))(v43, v47);
        a1 = v41;
        goto LABEL_20;
      }

      v3 = v44;
    }

    a1 = v41;
  }

  sub_AB2CD0();
  v18(v15, 0, 1, v2);
  sub_606EF8(v15, v17);
  v24 = *(v3 + 48);
  if (!v24(v17, 1, v2))
  {
    sub_AB2CB0();
  }

  v26 = v24(v17, 1, v2);
  v28 = v46;
  v27 = v47;
  if (!v26)
  {
    sub_AB2C70();
  }

  v29 = v45;
LABEL_20:
  if (v24(v17, 1, v2))
  {
    (*(v28 + 56))(v29, 1, 1, v27);
  }

  else
  {
    v31 = v44;
    v32 = v42;
    (*(v44 + 16))(v42, v17, v2);
    sub_AB2C50();
    (*(v31 + 8))(v32, v2);
    if ((*(v28 + 48))(v29, 1, v27) != 1)
    {
      (*(v28 + 32))(a1, v29, v27);
      sub_AB30F0(v35);
      v37 = v36;
      sub_52995C(_swiftEmptyArrayStorage);
      v38 = a1;
      isa = sub_AB8FD0().super.isa;

      [v40[2] openSensitiveURL:v37 withOptions:isa];

      a1 = v38;
      v33 = 0;
      goto LABEL_24;
    }
  }

  sub_12E1C(v29, &qword_E0DC30);
  v33 = 1;
LABEL_24:
  (*(v28 + 56))(a1, v33, 1, v27);
  return sub_12E1C(v17, &qword_E10A78);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_AB31C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x2F2F3A636973756DLL;
  v26 = 0xE800000000000000;
  if (value != 7)
  {
    v11 = 0x7972617262696CLL;
    v24._countAndFlagsBits = 0x6261743F2F626174;
    v24._object = 0xE90000000000003DLL;
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
      v18._countAndFlagsBits = v11;
    }

    else
    {
      v18._countAndFlagsBits = v13;
    }

    if (value <= 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    v18._object = v19;
    sub_AB94A0(v18);

    sub_AB9470(v24);
  }

  sub_AB3180();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &qword_E0DC30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_AB30F0(v20);
    v22 = v21;
    sub_52995C(_swiftEmptyArrayStorage);
    isa = sub_AB8FD0().super.isa;

    [v2 openSensitiveURL:v22 withOptions:isa];

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_606EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A78);
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

id sub_606FE4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v5, &v6);
  if (!v7)
  {
    sub_607768(&v6);
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
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v9, &v10);
  if (!v11)
  {
    sub_607768(&v10);
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
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v7, &v8);
  if (!v9)
  {
    sub_607768(&v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF82E0;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v12, "showAllTVShows");
  v12[15] = -18;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v12, &v13);
  if (!v14)
  {
    sub_607768(&v13);
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
    sub_607768(&v13);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10E40);
  isa = sub_AB9740().super.isa;

  v10 = [v8 kindWithKinds:isa];

  return v10;
}

uint64_t sub_607768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == &dword_0 + 3)
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

  if (v1 == &dword_0 + 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == &dword_0 + 1)
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

uint64_t sub_607D60(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_AB35C0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_AB9250();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = sub_AB9230();
  __chkstk_darwin(v14 - 8);
  result = 0;
  if ((a2 & 0x8000000000000000) == 0 && a1 >= 1)
  {
    sub_AB9220();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_AB9210(v20);
    v19 = *&a1;
    sub_AB91F0();
    v21._countAndFlagsBits = 0x2F7469622DLL;
    v21._object = 0xE500000000000000;
    sub_AB9210(v21);
    v19 = a2 / 1000.0;
    sub_AB91F0();
    v22._countAndFlagsBits = 0x207A486B20;
    v22._object = 0xE500000000000000;
    sub_AB9210(v22);
    v23._countAndFlagsBits = UInt32.formatName.getter(a3);
    sub_AB9200(v23);

    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    sub_AB9210(v24);
    sub_AB9240();
    (*(v8 + 16))(v11, v13, v7);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v16 = qword_E71B20;
    sub_AB3550();
    v17 = sub_AB9320();
    (*(v8 + 8))(v13, v7);
    return v17;
  }

  return result;
}

uint64_t _sSo20MPCPlayerAudioFormatC9MusicCoreE12inputDetailsSSSgvg_0()
{
  v1 = [v0 bitDepth];
  v2 = [v0 sampleRate];
  v3 = [v0 codec];

  return sub_607D60(v1, v2, v3);
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
      v12 = sub_609D50(v9);
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

uint64_t sub_6082AC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6083C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10E50);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_608560;
  v0[13] = &block_descriptor_183;
  v0[14] = v2;
  [v1 requestImageWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6083C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_6084F4;
  }

  else
  {
    v2 = sub_6084D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6084F4()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_608560(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
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
  v7[4] = sub_60A1E8;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_151E0;
  v7[3] = &block_descriptor_4_0;
  v6 = _Block_copy(v7);

  [v2 requestImageWithCompletion:v6];
  _Block_release(v6);
}

void sub_608718(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
  }

  else
  {
    sub_60F3F0();
    v6 = swift_allocError();
    *v7 = a2;
    swift_errorRetain();
    a3(v6, 1);
  }
}

void *MPArtworkCatalog.image(from:size:)(void *a1, double a2, double a3)
{
  v6 = sub_AB7C80();
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
  *(v13 + 16) = sub_60A268;
  *(v13 + 24) = v12;
  aBlock[4] = sub_60F4D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_17_2;
  v14 = _Block_copy(aBlock);

  v15 = v11;

  [a1 requestImageWithCompletion:v14];
  _Block_release(v14);

  sub_AB7C60();
  sub_ABA2F0();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v16 = *(v10 + 16);
  v17 = v16;

  return v16;
}

Swift::Int sub_608A58(void *a1, char a2, uint64_t a3)
{
  v4 = a1;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
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

  return sub_ABA300();
}

uint64_t MPArtworkCatalog.setDestination<A>(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_ABB3A0();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v14[4] = sub_60A2AC;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_608D00;
  v14[3] = &block_descriptor_23_3;
  v12 = _Block_copy(v14);

  [v5 setDestination:v10 forRepresentationKinds:a2 configurationBlock:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_608C00(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_808B0(v9, v13);
  swift_dynamicCast();
  a3(v11, a2);
  return (*(v8 + 8))(v11, a5);
}

uint64_t sub_608D00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t MPArtworkCatalog.originalSize.getter()
{
  v1 = [v0 token];
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_13C80(0, &qword_E10E58);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10E60);
  if (a4)
  {
    v8 = [objc_opt_self() currentTraitCollection];
    a3 = [v8 layoutDirection];
  }

  else if (a3 >= 2)
  {
    result = sub_ABB3B0();
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
  v5 = sub_AB9760();

  v6 = *(v5 + 16);

  if (!v6)
  {

    if ([v1 mediaTypes])
    {
      v41 = [v1 mediaTypes];

      sub_6094A8(v41);
    }

    return;
  }

  v7 = [v1 typeIdentifiers];
  v8 = sub_AB9760();

  v43 = *(v8 + 16);
  if (!v43)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_49:

    sub_60E670(v11);

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

      v17 = sub_52215C(0xD000000000000010, 0x8000000000B6E460);
      if ((v18 & 1) == 0)
      {

        goto LABEL_10;
      }

      sub_808B0(*(v16 + 56) + 32 * v17, v49);

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
        v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_506314((v21 > 1), v22 + 1, 1, v14);
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
        v11 = sub_5060D8(0, v46[2] + 1, 1, v46);
      }

      v10 = v44;
      v3 = v45;
      v40 = v11[2];
      v39 = v11[3];
      if (v40 >= v39 >> 1)
      {
        v11 = sub_5060D8((v39 > 1), v40 + 1, 1, v11);
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

    v31 = sub_AB9260();
    v32 = sub_AB9260();
    v33 = UTTypeConformsTo(v31, v32);

    if (v33)
    {
      v34 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_503918(0, v48[2] + 1, 1);
        v34 = v49[0];
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_503918((v36 > 1), v37 + 1, 1);
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

char *sub_6094A8(__int16 a1)
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

  result = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(result + 2);
  v3 = *(result + 3);
  if (v4 >= v3 >> 1)
  {
    result = sub_506314((v3 > 1), v4 + 1, 1, result);
  }

  *(result + 2) = v4 + 1;
  v5 = &result[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x8000000000B4ED60;
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
      result = sub_506314(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(result + 2);
    v7 = *(result + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_506314((v7 > 1), v8 + 1, 1, result);
    }

    *(result + 2) = v8 + 1;
    v9 = &result[16 * v8];
    *(v9 + 4) = 0xD00000000000001BLL;
    *(v9 + 5) = 0x8000000000B6E6D0;
  }

  return result;
}

id MPMediaPickerConfiguration.supportsCatalogContent.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_70C54(v10);
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
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_70C54(v10);
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
  v1._countAndFlagsBits = MPIdentifierSet.bestLibraryIdentifier.getter();
  if (v1._object)
  {
    sub_AB94A0(v1);

    v22._countAndFlagsBits = 59;
    v22._object = 0xE100000000000000;
    sub_AB94A0(v22);
    v2 = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_506314((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x507972617262696CLL;
    *(v5 + 5) = 0xEB000000003D4449;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v6 = [v0 universalStore];
  if (v6)
  {
    v7 = [v6 globalPlaylistID];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_AB92A0();
      v10 = v9;

      sub_ABAD90(20);

      v23._countAndFlagsBits = v8;
      v23._object = v10;
      sub_AB94A0(v23);

      v24._countAndFlagsBits = 59;
      v24._object = 0xE100000000000000;
      sub_AB94A0(v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_506314(0, *(v2 + 2) + 1, 1, v2);
      }

      v12 = *(v2 + 2);
      v11 = *(v2 + 3);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_506314((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 2) = v12 + 1;
      v13 = &v2[16 * v12];
      *(v13 + 4) = 0xD000000000000011;
      *(v13 + 5) = 0x8000000000B6E4A0;
    }
  }

  v14._countAndFlagsBits = MPIdentifierSet.bestStoreIdentifier.getter();
  if (v14._object)
  {
    sub_AB94A0(v14);

    v25._countAndFlagsBits = 59;
    v25._object = 0xE100000000000000;
    sub_AB94A0(v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_506314(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_506314((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x3D65726F7473;
    *(v17 + 5) = 0xE600000000000000;
  }

  sub_ABAD90(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  sub_51EB04();
  v18 = sub_AB9140();
  v20 = v19;

  v26._countAndFlagsBits = v18;
  v26._object = v20;
  sub_AB94A0(v26);

  v27._countAndFlagsBits = 62;
  v27._object = 0xE100000000000000;
  sub_AB94A0(v27);
  return 0xD000000000000010;
}

id MPIdentifierSet.bestLibraryIdentifier.getter()
{
  result = [v0 library];
  if (result)
  {
    v2 = result;
    if ([result persistentID] && (objc_msgSend(v2, "persistentID"), isa = sub_ABB580().super.super.isa, v4 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v4))
    {
      v5 = sub_AB92A0();

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
    if ((v3 || v4 || v5) && (isa = sub_ABB580().super.super.isa, v7 = MPStoreItemMetadataStringNormalizeStoreIDValue(), isa, v7))
    {
      v8 = sub_AB92A0();

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
    return sub_60A144(a1, a3);
  }

  if (a2 != 1)
  {
    v6 = a1;
    result = sub_60A144(a1, a3);
    if (v8)
    {
      return result;
    }

    a1 = v6;
  }

  return sub_609F04(a1, a3, a4);
}

uint64_t sub_609D50(void *a1)
{
  v10 = 2;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_60F47C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_710F8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_143;
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

uint64_t sub_609F04(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = &v13;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_60F3E4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_710F8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_133;
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

uint64_t sub_60A0C0(char *a1, uint64_t a2)
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

id sub_60A144(uint64_t a1, void *a2)
{
  sub_13C80(0, &unk_E110D0);
  ObjectType = swift_getObjectType();
  return static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 1u, a2);
}

uint64_t sub_60A1B0()
{

  return swift_deallocObject();
}

uint64_t sub_60A1F0()
{

  return swift_deallocObject();
}

uint64_t sub_60A228()
{

  return swift_deallocObject();
}

uint64_t sub_60A274()
{

  return swift_deallocObject();
}

uint64_t MPIdentifierSet.init(kind:deviceLibraryPID:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_60E980;
  *(v6 + 24) = v5;
  v10[4] = sub_3F328C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_41A314;
  v10[3] = &block_descriptor_34_3;
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

void sub_60A42C(void *a1, uint64_t a2)
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
    *(v8 + 16) = sub_60F374;
    *(v8 + 24) = v7;
    v11[4] = sub_445458;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_444B84;
    v11[3] = &block_descriptor_123_1;
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

id LibraryAddable.hasLoadedLibraryAddedProperty.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) != 0 || (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded))
  {
    return &dword_0 + 1;
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
    v0 = sub_AB92A0();
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

uint64_t sub_60AB48(unsigned __int8 *a1, unsigned __int8 *a2)
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
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_60ABD0()
{
  v1 = *v0;
  sub_ABB5C0();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_60AC34()
{
  MPModelObject.MediaKitPlayableKind.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_60AC88()
{
  v1 = *v0;
  sub_ABB5C0();
  MPModelObject.MediaKitPlayableKind.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_60ACE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE20MediaKitPlayableKindO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_60AD18@<X0>(uint64_t *a1@<X8>)
{
  result = MPModelObject.MediaKitPlayableKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MPModelObject.mediaKitPlayableKind.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isArtistUploadedContent];
    v3 = [v1 hasVideo];
    if (v2)
    {
      if (v3)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else if (v3)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          return 5;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            return 7;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              return 8;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                return 9;
              }

              else
              {
                return 10;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t MPModelObject.FavoriteStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x64656B696C736964;
  if (a1 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (a1)
  {
    v1 = 0x6C61727475656ELL;
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

Swift::Int sub_60AF30()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_60B000()
{
  sub_AB93F0();
}

Swift::Int sub_60B0BC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_60B188@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo13MPModelObjectC9MusicCoreE14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_60B1B8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = 0xE800000000000000;
  v5 = 0x64656B696C736964;
  if (*v1 != 2)
  {
    v5 = 0x726F707075736E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MPModelObject.favoriteStatus.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0 || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v0 = swift_dynamicCastObjCClass()) != 0))
  {
    v1 = v0;
    v2 = [v0 isFavorite];
LABEL_5:
    v3 = v2;
    v4 = [v1 isDisliked];
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      result = sub_ABAFD0();
      __break(1u);
      return result;
    }

    v6 = v4 == 0;
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v1 = v7;
    if (qword_E0CC60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    sub_70C54(&v23);
    if (BYTE8(v23))
    {
      v2 = [v1 isFavorite];
      goto LABEL_5;
    }

    return 3;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 3;
  }

  v9 = v8;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  sub_70C54(&v23);
  if ((BYTE8(v23) & 1) == 0)
  {
    return 3;
  }

  v10 = [v9 artist];
  if (!v10)
  {
    return 3;
  }

  v11 = v10;
  v12 = [v10 isFavorite];
  v13 = [v11 isDisliked];
  v14 = v13;
  if (v12)
  {
    if ((v13 & 1) == 0)
    {

      return 0;
    }

    goto LABEL_27;
  }

  v6 = v14 == 0;
LABEL_9:
  if (v6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id MPModelAlbum.orphanMusicVideo.getter()
{
  v1 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();
  v2 = [v0 hasLoadedValuesForPropertySet:v1];

  if (!v2 || [v0 trackCount] > 1)
  {
    return 0;
  }

  result = [v0 representativeSong];
  if (result)
  {
    v4 = result;
    v5 = [result hasVideo];
    result = v4;
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelAlbum.representativeTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF85F0;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  isa = sub_AB9740().super.isa;

  v5 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  if (isa && [v0 trackCount] <= 1)
  {
    v6 = [v0 title];
    if (!v6)
    {
      v10 = [v0 representativeSong];
      if (!v10)
      {
        return 0;
      }

      v11 = v10;
      v12 = [v10 title];

      if (!v12)
      {
        return 0;
      }

      v6 = v12;
    }

LABEL_6:
    v8 = v6;
    v7 = sub_AB92A0();

    return v7;
  }

  v6 = [v0 title];
  if (v6)
  {
    goto LABEL_6;
  }

  return 0;
}

id static MPModelAlbum.representativeTitlePropertySet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;

  v4 = [objc_opt_self() propertySetWithProperties:isa];

  return v4;
}

uint64_t Array<A>.union()()
{
  v1 = [objc_opt_self() emptyPropertySet];
  sub_AB9870();
  sub_13C80(0, &qword_E12D10);
  swift_getWitnessTable();
  sub_AB9640();

  return v2;
}

id sub_60BB58(uint64_t a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v6, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00) + 48));
    (*(v9 + 32))(v12, v14, v8);
    isa = sub_AB3770().super.isa;
    v18 = [v16 *a3];

    (*(v9 + 8))(v12, v8);
    return v18;
  }

  else
  {
    v20 = v14[1];
    v21 = [v20 *a2];

    return v21;
  }
}

id SnapshotIdentifier.identifiers.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  __chkstk_darwin(v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = [*v10 identifiers];

    return v13;
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    v15 = SnapshotIdentifier.Lazy.identifiers.getter(v4);
    (*(v5 + 8))(v8, v4);
    return v15;
  }
}

id SnapshotIdentifier.object.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotIdentifier.Lazy();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - v7;
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v10;
  }

  (*(v5 + 32))(v8, v10, v4);
  v13 = SnapshotIdentifier.Lazy.object.getter(v4);
  (*(v5 + 8))(v8, v4);
  return v13;
}

unint64_t SnapshotIdentifier.debugDescription.getter(uint64_t a1)
{
  v4 = SnapshotIdentifier.description.getter(a1);
  v5._countAndFlagsBits = 0x7463656A626F202CLL;
  v5._object = 0xEA0000000000203ALL;
  sub_AB94A0(v5);
  v3 = SnapshotIdentifier.object.getter(a1);
  swift_getWitnessTable();
  sub_ABB370();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_AB94A0(v6);

  return v4;
}

unint64_t SnapshotIdentifier.description.getter(uint64_t a1)
{
  v8._countAndFlagsBits = sub_ABB6D0();
  sub_AB94A0(v8);

  v9._countAndFlagsBits = 2112062;
  v9._object = 0xE300000000000000;
  sub_AB94A0(v9);
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  sub_AB94A0(v10);

  v2 = SnapshotIdentifier.identifiers.getter(a1);
  v3 = [v2 description];
  v4 = sub_AB92A0();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 0x696669746E656469;
  v12._object = 0xEB000000003D7265;
  sub_AB94A0(v12);

  return 0xD000000000000012;
}

void SnapshotIdentifier.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = SnapshotIdentifier.identifiers.getter(a2);
  sub_ABA7A0();
}

uint64_t static SnapshotIdentifier.== infix(_:_:)()
{
  sub_13C80(0, &qword_E112E0);
  v0 = type metadata accessor for SnapshotIdentifier();
  v1 = SnapshotIdentifier.identifiers.getter(v0);
  v2 = SnapshotIdentifier.identifiers.getter(v0);
  v3 = sub_ABA790();

  return v3 & 1;
}

Swift::Int SnapshotIdentifier.hashValue.getter(uint64_t a1)
{
  sub_ABB5C0();
  v2 = SnapshotIdentifier.identifiers.getter(a1);
  sub_ABA7A0();

  return sub_ABB610();
}

Swift::Int sub_60C410(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  SnapshotIdentifier.hash(into:)(v4, a2);
  return sub_ABB610();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_60ECC0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_4974E4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60C784;
  aBlock[3] = &block_descriptor_43_9;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateItemIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_60C5EC(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, char *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v20 = a3;
  v11 = type metadata accessor for SnapshotIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00) + 48);
  v16 = sub_AB3820();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  *&v14[v15] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a4;
  a5(a1, v14, a7);
  *v20 = *a7;
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_60C784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_AB3790();
  v12 = a3;
  v11(v10, v12, a4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a2;
  v14[6] = a1;
  v14[7] = a3;
  v14[8] = a4;
  v14[9] = &v20;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_60ED2C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_60ED64;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60CB94;
  aBlock[3] = &block_descriptor_52_1;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v16];
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_60CA24(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, _BYTE *), uint64_t a7, _BYTE *a8)
{
  v19 = a7;
  v20 = a3;
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10F00) + 48);
  sub_AB37C0();
  *&v15[v16] = a5;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v17 = a5;
  a6(a1, v15, a8);
  *v20 = *a8;
  return (*(v13 + 8))(v15, v12);
}

void sub_60CB94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SnapshotIdentifier();
  v12 = sub_AB97C0();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = &v12;
  static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierItems(from:inSection:using:)(a1, a2, sub_60ED8C, v11, a3, a4, a5);
  return v12;
}

uint64_t sub_60CCA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SnapshotIdentifier();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a2, v3);
  sub_AB9870();
  return sub_AB9820();
}

uint64_t static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = &v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_60ED98;
  *(v13 + 24) = v12;
  aBlock[4] = sub_60F548;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_60CB94;
  aBlock[3] = &block_descriptor_62_0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  [v15 enumerateSectionIdentifiersUsingBlock:v14];
  _Block_release(v14);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_60CF04(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t, void *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v12 = type metadata accessor for SnapshotIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v18 - v14);
  *v15 = a1;
  v15[1] = a4;
  type metadata accessor for SnapshotIdentifier.Lazy();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = a4;
  a5(a1, v15, a7);
  *a3 = *a7;
  return (*(v13 + 8))(v15, v12);
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_60EE04;
  v12[6] = v11;
  v16[4] = sub_60EE24;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_60D374;
  v16[3] = &block_descriptor_71_1;
  v13 = _Block_copy(v16);
  v14 = a1;

  [v14 enumerateSectionsUsingBlock:v13];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_60D22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_6717B0(a6, a6);
  swift_allocObject();
  v14 = sub_AB9780();
  *v15 = a1;
  v16 = sub_23BCD8(v14);
  type metadata accessor for SnapshotIdentifier();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_AB5120();
  v17._rawValue = v16;
  sub_AB50D0(v17);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, a6, a7, a8);
  swift_unknownObjectRetain();
  sub_AB5090();
  swift_unknownObjectRelease();
}

uint64_t sub_60D374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_13C80(0, &qword_E10390);
  v7 = *(a1 + 32);
  v8 = swift_unknownObjectRetain();
  v7(v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_60EE4C;
  *(v8 + 24) = v7;
  v12[4] = sub_1D3664;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_60D714;
  v12[3] = &block_descriptor_80_2;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v10 enumerateSectionsUsingBlock:v9];
  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_60D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  sub_AB5120();
  v11._rawValue = v9;
  sub_AB50D0(v11);

  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(a5, a2, &type metadata for String, a6, &protocol witness table for String);
  sub_AB92A0();
  sub_AB5090();
}

void sub_60D714(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t static NSDiffableDataSourceSnapshot<>.snapshot(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for SnapshotIdentifier();
  type metadata accessor for SnapshotIdentifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB5110();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  objc_opt_self();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = swift_dynamicCastObjCClassUnconditional();
  WitnessTable = swift_getWitnessTable();
  return static NSDiffableDataSourceSnapshot<>.enumerateSnapshotIdentifierSections(from:using:)(v6, sub_60EE58, v9, a1, a2, WitnessTable);
}

uint64_t sub_60D8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v27 = a6;
  v28 = a1;
  v29 = a5;
  v9 = type metadata accessor for SnapshotIdentifier();
  v10 = sub_ABA9C0();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_ABB340();
  v13 = *(v9 - 8);
  swift_allocObject();
  v14 = sub_AB9780();
  v25 = *(v13 + 16);
  v25(v15, a2, v9);
  v16 = sub_23BCD8(v14);
  v17 = type metadata accessor for SnapshotIdentifier();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v32 = v9;
  v33 = v17;
  v34 = WitnessTable;
  v35 = v19;
  sub_AB5120();
  v20._rawValue = v16;
  sub_AB50D0(v20);

  v21 = v27;
  v22 = swift_getWitnessTable();
  static NSDiffableDataSourceSnapshot<>.snapshotIdentifiers(from:inSection:)(v29, v28, v21, a7, v22);
  v25(v12, v26, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_AB5090();

  return (*(v30 + 8))(v12, v31);
}

uint64_t MPModelPlaylist.supportsSing.getter()
{
  if (([v0 traits] & 0x100) != 0)
  {
    return MSVDeviceSupportsVocalAttenuation();
  }

  else
  {
    return 0;
  }
}

id MPModelPlaylist.coverArtworkCatalog.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  *(v1 + 32) = sub_AB92A0();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_AB92A0();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_AB92A0();
  *(v1 + 72) = v4;
  isa = sub_AB9740().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v6];
  if (!isa)
  {
    return 0;
  }

  result = [v0 name];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = sub_AB92A0();
  v11 = v10;

  if (([v0 userEditableComponents] & 2) == 0)
  {

    return 0;
  }

  v12 = [v0 coverArtworkRecipe];
  v13 = sub_AB92A0();
  v15 = v14;

  result = _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(v13, v15, v9, v11);
  if (result)
  {
    v16 = result;
    v17 = [v0 artworkCatalog];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      if (qword_E0CF00 != -1)
      {
        swift_once();
      }

      v19 = sub_AB4BC0();
      __swift_project_value_buffer(v19, static Logger.playlistCovers);
      v20 = v0;
      v21 = sub_AB4BA0();
      v22 = sub_AB9F50();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136446210;
        v25 = [v20 coverArtworkRecipe];
        v26 = sub_AB92A0();
        v28 = v27;

        v29 = sub_500C84(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_0, v21, v22, "No server artwork catalog available for playlist with coverArtworkRecipe=%{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v30 = qword_E0CEE0;
      v16 = v16;
      if (v30 != -1)
      {
        swift_once();
      }

      v18 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v16 dataSource:static PlaylistCovers.ArtworkDataSource.shared];
    }

    return v18;
  }

  return result;
}

unint64_t MPNowPlayingAudioFormatBadging.debugDescription.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1._countAndFlagsBits = 0x7373656C73736F6CLL;
        v1._object = 0xE800000000000000;
        goto LABEL_16;
      case 4:
        v1._object = 0x8000000000B6E5B0;
        v1._countAndFlagsBits = 0xD000000000000016;
        goto LABEL_16;
      case 5:
        v1._countAndFlagsBits = 0x416C616974617073;
        v1._object = 0xEC0000006F696475;
        goto LABEL_16;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v1._countAndFlagsBits = 0x6574537973736F6CLL;
        v1._object = 0xEB000000006F6572;
        goto LABEL_16;
      case 1:
        v1._countAndFlagsBits = 0x6D744179626C6F64;
        v1._object = 0xEA0000000000736FLL;
        goto LABEL_16;
      case 2:
        v1._countAndFlagsBits = 0x64754179626C6F64;
        v1._object = 0xEA00000000006F69;
LABEL_16:
        sub_AB94A0(v1);
        goto LABEL_17;
    }
  }

  v3._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  v5._countAndFlagsBits = 0x3C6E776F6E6B6E75;
  v5._object = 0xE800000000000000;
  sub_AB94A0(v5);

LABEL_17:
  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_AB94A0(v6);
  return 0xD00000000000001FLL;
}

id MPModelPerson.monogramArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPersonName])
  {
    return 0;
  }

  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_AB92A0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 layoutDirection];

  v9 = _sSo16MPArtworkCatalogC9MusicCoreE8monogram3for26environmentLayoutDirectionABSgSSSg_So018UITraitEnvironmenthI0VtFZ_0(v3, v5, v8);

  return v9;
}

uint64_t MPModelTVSeason.title.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_60EE9C;
  *(v3 + 24) = v2;
  v9[4] = sub_70638;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1822E0;
  v9[3] = &block_descriptor_89_1;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}