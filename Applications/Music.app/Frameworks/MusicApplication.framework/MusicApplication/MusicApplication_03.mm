void sub_46DDC(char a1)
{
  v3 = type metadata accessor for PageHeaderPlayButton();
  v11.receiver = v1;
  v11.super_class = v3;
  v4 = objc_msgSendSuper2(&v11, "isHighlighted");
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, "setHighlighted:", a1 & 1);
  if (v4 != [v1 isHighlighted])
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_47164;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1B5EB4;
    v9[3] = &block_descriptor_4;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 animateWithDuration:0x20000 delay:v7 options:0 animations:0.5 completion:0.0];
    _Block_release(v7);
  }
}

void sub_46F28(char *a1)
{
  v2 = [a1 isHighlighted];
  v3 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView];
  if (v2)
  {
    v4 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor];
    v5 = [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor] _colorBlendedWithColor:v4];
    [v3 setTintColor:v5];

    v7 = [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor] _colorBlendedWithColor:v4];
    [a1 setBackgroundColor:v7];
  }

  else
  {
    [*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView] setTintColor:*&a1[OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor]];
    v6 = *&a1[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor];

    [a1 setBackgroundColor:v6];
  }
}

id sub_47068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageHeaderPlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4712C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_471A4()
{
  result = qword_DF1D30;
  if (!qword_DF1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1D30);
  }

  return result;
}

void sub_471F8()
{
  v1 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 whiteColor];
  v3 = OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor;
  v4 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v5 = *v4;
  *(v0 + v3) = *v4;
  v6 = OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor;
  v7 = v5;
  v8 = [v2 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.5];

  *(v0 + v6) = v9;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_472EC()
{
  result = qword_DE8700;
  if (!qword_DE8700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE8700);
  }

  return result;
}

id sub_47338(id result)
{
  v2 = v1[qword_E70B50];
  if (v2 == (result & 1))
  {
    return result;
  }

  v1[qword_DFE288] = v2;
  v3 = qword_DE8FD0;
  if (v2)
  {
    v4 = *&v1[qword_DE8FD0] == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    result = [v1 loadViewIfNeeded];
    v5 = *&v1[qword_DFE2F8];
    if (!v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    type metadata accessor for NoContentController();
    swift_allocObject();
    *&v1[v3] = sub_3B04BC(v5);

    sub_520E8();
  }

  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  sub_52EFC(0);
  [v1 loadViewIfNeeded];
  result = *&v1[qword_DFE2F8];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return [result reloadData];
}

void sub_47478(void *a1)
{
  v2 = qword_E70B78;
  v3 = *&v1[qword_E70B78];
  *&v1[qword_E70B78] = a1;
  v7 = a1;

  if ([v1 isEditing])
  {
    if (v1[qword_E70B50] == 1 && (v1[qword_E70B60] & 1) == 0)
    {
      v4 = *&v1[v2];
      if (v4)
      {
        v5 = v4;
        if ([v1 isEditing])
        {
          v6 = v5;
          sub_48190(v4);
        }

        sub_3B4724(v4);
      }
    }
  }
}

void sub_47550(char a1)
{
  v3 = sub_AB7C10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7C50();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_DE8FA8] & 1) == 0 && (a1)
  {
    v11 = *&v1[qword_DFE2F0];
    if (v11)
    {
      v12 = [v11 request];
      if (v12)
      {
        v13 = *&v1[qword_E70B80];
        if (v13)
        {
          v22 = v12;
          sub_13C80(0, &qword_DE8ED0);

          v21 = sub_ABA150();
          v14 = swift_allocObject();
          v15 = v22;
          v14[2] = v1;
          v14[3] = v15;
          v14[4] = v13;
          aBlock[4] = sub_57CD8;
          aBlock[5] = v14;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B5EB4;
          aBlock[3] = &block_descriptor_278;
          v20 = _Block_copy(aBlock);

          v16 = v1;
          v22 = v22;

          sub_AB7C30();
          aBlock[0] = _swiftEmptyArrayStorage;
          v19 = sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
          sub_36A00(&qword_DF06D0, &unk_DE9C30);
          sub_ABABB0();
          v18 = v20;
          v17 = v21;
          sub_ABA160();

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v10, v7);
          _Block_release(v18);
        }

        else
        {
        }
      }
    }
  }
}

void sub_478FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C18);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-v3];
  v5 = qword_DE8FB0;
  swift_beginAccess();
  *&v0[v5] = &_swiftEmptySetSingleton;

  v6 = *&v0[qword_E70B80];
  if (v6)
  {

    sub_AB4400();
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    *(v7 + 24) = v6;
    sub_36A00(&unk_DE9C20, &qword_DE9C18);

    v8 = v0;
    sub_AB55C0();
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    sub_AB5440();
    swift_endAccess();
  }

  else
  {
    if (qword_DE6740 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_DE8F90);
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "editController was reset", v12, 2u);
    }
  }
}

void sub_47BA4(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_DFE2F0;
  v14 = *&a2[qword_DFE2F0];
  if (!v14 || (v15 = [v14 request]) == 0)
  {
    if (qword_DE6740 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    __swift_project_value_buffer(v21, qword_DE8F90);
    v22 = a2;
    sub_480B4();

    v23 = v22;
    sub_480B4();

    v34 = sub_AB4BA0();
    v24 = sub_AB9F40();

    if (os_log_type_enabled(v34, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = *&a2[v13];
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 2112;
      v28 = v27;
      if (v27)
      {
        v29 = [v28 request];
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v25 + 14) = v29;
      v26[1] = v30;
      _os_log_impl(&dword_0, v34, v24, "no request available %@, %@", v25, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF9B20);
      swift_arrayDestroy();
    }

LABEL_13:
    v15 = v34;
    goto LABEL_14;
  }

  if ((a2[qword_DE8FA8] & 1) == 0)
  {
    v34 = v15;
    if ([a2 isEditing])
    {
      sub_13C80(0, &qword_DE8ED0);
      v33 = sub_ABA150();
      v16 = swift_allocObject();
      v17 = v34;
      v16[2] = a2;
      v16[3] = v17;
      v16[4] = a3;
      aBlock[4] = sub_581CC;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_5;
      v32 = _Block_copy(aBlock);
      v18 = a2;
      v34 = v34;

      sub_AB7C30();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
      sub_36A00(&qword_DF06D0, &unk_DE9C30);
      sub_ABABB0();
      v19 = v32;
      v20 = v33;
      sub_ABA160();

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v12, v9);
      _Block_release(v19);

      return;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_480DC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicKitEditingModelResponse();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = a3;
  v11.receiver = v7;
  v11.super_class = v6;

  v8 = objc_msgSendSuper2(&v11, "initWithRequest:", a2);
  v9 = v8;
  if ([a1 isEditing])
  {
    v10 = v9;
    sub_48190(v8);
  }

  sub_3B4724(v8);
}

void sub_48190(void *a1)
{
  v2 = *&v1[qword_E70B88];
  *&v1[qword_E70B88] = a1;
  v4 = a1;

  if ([v1 isEditing] && (v3 = *&v1[qword_E70B68]) != 0)
  {

    v3(v1);

    sub_17654(v3);
  }

  else
  {
  }
}

void sub_48264(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v76 - v4;
  v6 = sub_AB3820();
  v82 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v85 = &v76 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v76 - v13;
  v15 = __chkstk_darwin(v12);
  v88 = &v76 - v16;
  v17 = __chkstk_darwin(v15);
  v87 = &v76 - v18;
  __chkstk_darwin(v17);
  v86 = &v76 - v19;
  v93 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  v20 = *(v93 - 8);
  __chkstk_darwin(v93);
  v22 = (&v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = v1;
  v78 = qword_E70B80;
  v23 = *&v1[qword_E70B80];
  if (!v23)
  {
    goto LABEL_35;
  }

  v89 = sub_AB43E0();
  if (!v89)
  {

LABEL_35:
    if (qword_DE6740 != -1)
    {
LABEL_45:
      swift_once();
    }

    v63 = sub_AB4BC0();
    __swift_project_value_buffer(v63, qword_DE8F90);
    v94 = sub_AB4BA0();
    v64 = sub_AB9F40();
    if (os_log_type_enabled(v94, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v94, v64, "attempting to edit a playlist in an invalid state", v65, 2u);
    }

    v66 = v94;

    return;
  }

  v84 = v23;
  v76 = v5;
  v24 = *(a1 + 16);
  if (v24)
  {
    v77 = v14;
    v25 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v26 = v82 + 4;
    v80 = v82 + 2;
    v90 = *(v20 + 72);
    v91 = _swiftEmptyArrayStorage;
    v94 = v82 + 1;
    v92 = _swiftEmptyArrayStorage;
    v83 = v9;
    v79 = v82 + 4;
    while (1)
    {
      sub_57E38(v25, v22);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v38 = *v22;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40);
      (v26->isa)(v88, v22 + *(v39 + 48), v6);
      if (sub_AB37E0() >= 1 && *&v81[v78] && (, v40 = sub_AB43E0(), , v40))
      {
        v41 = v9;
        v42 = v77;
        (v80->isa)(v77, v88, v6);
        v43 = sub_AB37D0();
        if (__OFSUB__(*v44, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        --*v44;
        v43(v95, 0);
        isa = sub_AB3770().super.isa;
        v46 = [v40 itemAtIndexPath:isa];
        (v94->isa)(v42, v6);

        v9 = v41;
        v26 = v79;
      }

      else
      {
        v46 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_6B564(0, v91[2] + 1, 1, v91);
      }

      v56 = v91[2];
      v55 = v91[3];
      if (v56 >= v55 >> 1)
      {
        v91 = sub_6B564((v55 > 1), v56 + 1, 1, v91);
      }

      (v94->isa)(v88, v6);
      v57 = v91;
      v91[2] = v56 + 1;
      v58 = &v57[2 * v56];
      v58[4] = v38;
      v58[5] = v46;
LABEL_7:
      v25 += v90;
      if (!--v24)
      {
        goto LABEL_42;
      }
    }

    if (EnumCaseMultiPayload != 1)
    {
      v47 = v26->isa;
      v48 = v86;
      (v26->isa)(v86, v22, v6);
      v49 = sub_AB3770().super.isa;
      v50 = [v89 itemAtIndexPath:v49];

      (v80->isa)(v87, v48, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_6AE4C(0, *(v92 + 2) + 1, 1, v92);
      }

      v52 = *(v92 + 2);
      v51 = *(v92 + 3);
      if (v52 >= v51 >> 1)
      {
        v92 = sub_6AE4C(v51 > 1, v52 + 1, 1, v92);
      }

      v53 = v92;
      *(v92 + 2) = v52 + 1;
      v54 = v82;
      v47(&v53[((LOBYTE(v54[10].isa) + 32) & ~LOBYTE(v54[10].isa)) + v82[9].isa * v52], v87, v6);
      sub_AB43D0();
      (v54[1].isa)(v86, v6);

      v9 = v83;
      goto LABEL_7;
    }

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38) + 48);
    v35 = v26->isa;
    (v26->isa)(v85, v22, v6);
    v35(v9, v22 + v34, v6);
    v36 = sub_AB37E0();
    if (sub_AB37E0() >= v36)
    {
      if (sub_AB37E0() < 1 || !*&v81[v78] || (, v59 = sub_AB43E0(), , !v59))
      {
        v27 = 0;
LABEL_6:
        v28 = v27;
        v29 = v85;
        v30 = sub_AB3770().super.isa;
        v31 = [v89 itemAtIndexPath:v30];

        sub_AB4390();
        v32 = v94->isa;
        v9 = v83;
        (v94->isa)(v83, v6);
        (v32)(v29, v6);

        v26 = v79;
        goto LABEL_7;
      }

      v60 = v77;
      (v80->isa)(v77, v9, v6);
      v61 = sub_AB37D0();
      if (__OFSUB__(*v62, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      --*v62;
      v61(v95, 0);
      v37.super.isa = sub_AB3770().super.isa;
      v27 = [v59 itemAtIndexPath:v37.super.isa];
      (v94->isa)(v60, v6);
    }

    else
    {
      v37.super.isa = sub_AB3770().super.isa;
      v27 = [v89 itemAtIndexPath:v37.super.isa];
    }

    goto LABEL_6;
  }

  v91 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
LABEL_42:
  v67 = v81;
  [v81 loadViewIfNeeded];
  v68 = *&v67[qword_DFE2F8];
  if (v68)
  {
    v69 = v68;
    v70 = sub_AB9740().super.isa;

    [v69 deleteItemsAtIndexPaths:v70];

    v71 = sub_AB9990();
    v72 = v76;
    (*(*(v71 - 8) + 56))(v76, 1, 1, v71);
    sub_AB9940();
    v73 = v84;

    v74 = sub_AB9930();
    v75 = swift_allocObject();
    v75[2] = v74;
    v75[3] = &protocol witness table for MainActor;
    v75[4] = v91;
    v75[5] = v73;
    sub_DBDC8(0, 0, v72, &unk_AF89B0, v75);
  }

  else
  {
LABEL_47:
    __break(1u);
  }
}

uint64_t sub_48CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_AB9940();
  v5[4] = sub_AB9930();
  v7 = sub_AB98B0();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_48D54, v7, v6);
}

uint64_t sub_48D54()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v0[8] = 0;
    v3 = v1[4];
    v0[9] = v3;
    v4 = v1[5];
    v0[10] = v4;
    v5 = v3;
    v6 = v4;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_48E68;

    return MusicLibraryPlaylistEditViewModel.insert(_:after:)(v5, v4);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_48E68()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_58164;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_48F8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_48F8C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  if (v2 + 1 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 64) + 1;
    *(v0 + 64) = v6;
    v7 = *(v0 + 16) + 16 * v6;
    v8 = *(v7 + 32);
    *(v0 + 72) = v8;
    v9 = *(v7 + 40);
    *(v0 + 80) = v9;
    v10 = v8;
    v11 = v9;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_48E68;

    return MusicLibraryPlaylistEditViewModel.insert(_:after:)(v10, v9);
  }
}

id sub_490BC()
{
  sub_13C80(0, &qword_DE9C10);
  v0 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v1 = [objc_opt_self() kindWithVariants:215 playlistEntryKind:v0 options:0];

  return v1;
}

id sub_49134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = sub_AB3820();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *&v0[qword_E08848];
  p_cache = &OBJC_METACLASS____TtC16MusicApplication13TextStackView.cache;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v10 = *&v0[qword_DFE2F0];
  if (!v10)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v11 = v10;
  v12 = v8;
  v24 = v11;
  result = [v11 results];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v12;
  v15[4] = v6;
  v16 = swift_allocObject();
  v17 = sub_57940;
  *(v16 + 16) = sub_57940;
  *(v16 + 24) = v15;
  aBlock[4] = sub_5794C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_48D4FC;
  aBlock[3] = &block_descriptor_215;
  v18 = _Block_copy(aBlock);
  v19 = v12;
  v20 = v0;

  [v14 enumerateItemsUsingBlock:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_12;
  }

  p_cache = (&OBJC_METACLASS____TtC16MusicApplication13TextStackView + 16);
LABEL_8:
  sub_15F84(v6, v4, &unk_DE8E20);
  v22 = qword_E71990;
  swift_beginAccess();
  sub_57890(v4, &v0[v22]);
  swift_endAccess();
  if (*(p_cache[94] + v0))
  {
    sub_4F2D0();
    sub_46C570();
  }

  sub_12E1C(v4, &unk_DE8E20);
  sub_12E1C(v6, &unk_DE8E20);
  return sub_17654(v17);
}

void sub_49470(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v15 = [v10 innermostModelObject];
    v11 = [v15 identifiers];
    v12 = sub_468CF8(a5);

    if (v12)
    {
      sub_12E1C(a6, &unk_DE8E20);
      v13 = sub_AB3820();
      v14 = *(v13 - 8);
      (*(v14 + 16))(a6, a2, v13);
      (*(v14 + 56))(a6, 0, 1, v13);
      *a3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_495FC(id result)
{
  v2 = qword_E08828;
  if (v1[qword_E08828] == (result & 1))
  {
    return result;
  }

  v3 = v1;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, qword_E70DC0);
  v5 = v1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (v3[v2])
    {
      v10 = 0x676E697265746E45;
    }

    else
    {
      v10 = 0x676E6974697845;
    }

    if (v3[v2])
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_425E68(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "%{public}s playlist search.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v13 = qword_DE8FD0;
  if (!*&v5[qword_DE8FD0] && v3[v2] == 1)
  {
    result = [v5 loadViewIfNeeded];
    v14 = *&v5[qword_DFE2F8];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    type metadata accessor for NoContentController();
    swift_allocObject();
    *&v5[v13] = sub_3B04BC(v14);

    sub_520E8();
  }

  sub_52EFC(0);
  sub_53034(0, 0);
  [v5 loadViewIfNeeded];
  result = *&v5[qword_DFE2F8];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  return [result reloadData];
}

uint64_t sub_498B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_AB8860();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_DE8FC0;
  result = swift_beginAccess();
  v36 = *(v4 + v13);
  v15 = *(v36 + 16);
  if (__OFADD__(a2, v15))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 + v15 >= 1 && (a4 & 1) == 0)
  {
    if (v15)
    {
      v29 = v13;
      v30 = a2;
      v31 = a3;
      v32 = a1;
      v17 = *(v10 + 16);
      v16 = v10 + 16;
      v35 = v17;
      v18 = v36 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v19 = *(v16 + 56);
      v33 = v4;
      v34 = v19;
      v20 = (v16 - 8);

      v21 = 0;
      v22 = v15 - 1;
      v23 = 0.0;
      do
      {
        v35(v12, v18, v9);
        v24 = COERCE_DOUBLE(sub_AB8850());
        v26 = v25;
        (*v20)(v12, v9);
        if (v26)
        {
          v23 = v23 + 0.0;
          if (v22 == v21)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v23 = v23 + v24;
          if (v22 == v21)
          {
            goto LABEL_12;
          }
        }

        ++v21;
        v18 += v34;
      }

      while (v21 < *(v36 + 16));
      __break(1u);
LABEL_12:

      a1 = v32;
      v4 = v33;
      a2 = v30;
      a3 = v31;
      v13 = v29;
    }

    else
    {
      v23 = 0.0;
    }

    v27 = *(*(v4 + v13) + 16);
    if (!__OFADD__(a2, v27))
    {
      return sub_468E80(a1, a2 + v27, COERCE__INT64(v23 + *&a3), 0);
    }

LABEL_18:
    __break(1u);
  }

  return result;
}

id sub_49AF0()
{
  v1 = v0;
  sub_49134();
  sub_46C570();
  v2 = *&v0[qword_E70BA8];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  result = [v3 results];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = result;
  v6 = [result numberOfSections];

  if (v6 < 1 || (v7 = swift_dynamicCastObjCProtocolConditional()) == 0)
  {

LABEL_8:
    sub_46ACA0(0);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v36 = sub_57834;
  v37 = v10;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_151E0;
  v35 = &block_descriptor_202;
  v11 = _Block_copy(&aBlock);
  v12 = v3;

  v13 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:0 responseHandler:v11];
  _Block_release(v11);
  result = [v12 request];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = result;
  ObjCClassFromObject = swift_getObjCClassFromObject();

  v16 = [ObjCClassFromObject preferredQueue];
  [v16 addOperation:v13];

LABEL_9:
  v17 = qword_DFE2F0;
  v18 = *&v1[qword_DFE2F0];
  if (v18)
  {
    result = [v18 results];
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v19 = result;
    v20 = [result firstSection];

    if (v20)
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = [v21 type];
        swift_unknownObjectRelease();
        if (v22 == &dword_8 + 1)
        {
          v23 = qword_DE8FD0;
          if (!*&v1[qword_DE8FD0])
          {
            v24 = *&v1[v17];
            if (!v24 || [v24 isEmpty])
            {
              result = [v1 loadViewIfNeeded];
              v25 = *&v1[qword_DFE2F8];
              if (!v25)
              {
LABEL_29:
                __break(1u);
                return result;
              }

              type metadata accessor for NoContentController();
              swift_allocObject();
              *&v1[v23] = sub_3B04BC(v25);

              sub_520E8();
            }
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  sub_52EFC(0);
  sub_53034(1, 0);
  [v1 loadViewIfNeeded];
  result = *&v1[qword_DFE2F8];
  if (!result)
  {
    goto LABEL_25;
  }

  result = [result numberOfSections];
  if (result >= 1)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_577DC;
    *(v28 + 24) = v27;
    v36 = sub_2D4D0;
    v37 = v28;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1822E0;
    v35 = &block_descriptor_195;
    v29 = _Block_copy(&aBlock);
    v30 = v1;

    [v26 performWithoutAnimation:v29];
    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_49FA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  v9 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_57884, v7);
}

void sub_4A05C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_DFE2F0);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = a3;
      v10 = v6;
      sub_46ACA0(a3);
    }
  }
}

void sub_4A0EC(char *a1)
{
  v2 = sub_AB3730();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 loadViewIfNeeded];
  v6 = *&a1[qword_DFE2F8];
  if (v6)
  {
    v11[1] = &off_CEFEA0;
    sub_57DF0(&qword_DE9C70, &type metadata accessor for IndexSet);
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C78);
    sub_36A00(&qword_DE9C80, &qword_DE9C78);
    sub_ABABB0();
    sub_AB36C0(v8);
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    [v7 reloadSections:v10];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4A2BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v14 = a2;
  v15 = a1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v7 = *(v2 + qword_DE8FC8);
  v8 = *(v7 + 16);

  v10 = 0;
  while (1)
  {
    if (v8 == v10)
    {

      return sub_469178(v15, v14);
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v11 = sub_AB91C0();
    result = (*(v4 + 8))(v6, v3);
    if (v11)
    {

      return (*(v4 + 56))(v14, 1, 1, v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4A4A4(void *a1, uint64_t a2, void *a3, char *a4)
{
  v6 = a3;
  v7 = a1;
  sub_566DC(a4);
  v9 = v8;

  return v9;
}

void sub_4A4F8(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = sub_AB8860();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = qword_E719B8;
  swift_beginAccess();
  v19 = *(v7 + 16);
  v45 = a2;
  v19(v17, a2, v6);
  (*(v7 + 56))(v17, 0, 1, v6);
  v20 = *(v10 + 56);
  sub_15F84(v2 + v18, v12, &unk_DE8E20);
  sub_15F84(v17, &v12[v20], &unk_DE8E20);
  v21 = *(v7 + 48);
  if (v21(v12, 1, v6) == 1)
  {
    sub_12E1C(v17, &unk_DE8E20);
    if (v21(&v12[v20], 1, v6) == 1)
    {
      sub_12E1C(v12, &unk_DE8E20);
      v22 = v45;
LABEL_13:
      sub_4695C8(v44, v22);
      return;
    }

    goto LABEL_6;
  }

  v23 = v43;
  sub_15F84(v12, v43, &unk_DE8E20);
  if (v21(&v12[v20], 1, v6) == 1)
  {
    sub_12E1C(v17, &unk_DE8E20);
    (*(v7 + 8))(v23, v6);
LABEL_6:
    sub_12E1C(v12, &unk_DF7930);
    v22 = v45;
    goto LABEL_7;
  }

  v35 = v42;
  (*(v7 + 32))(v42, &v12[v20], v6);
  sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
  v36 = sub_AB91C0();
  v37 = *(v7 + 8);
  v37(v35, v6);
  sub_12E1C(v17, &unk_DE8E20);
  v37(v23, v6);
  sub_12E1C(v12, &unk_DE8E20);
  v22 = v45;
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_7:
  v24 = *(v2 + qword_DE8FC8);

  v25 = sub_469AC8(v22, v24);
  v27 = v26;

  if (v27)
  {
    goto LABEL_13;
  }

  v28 = qword_DE8FC0;
  swift_beginAccess();
  if (v25 >= *(*(v2 + v28) + 16))
  {
    goto LABEL_13;
  }

  v29 = sub_3B3354(v22);
  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = *(v2 + v28);
    if (v25 < *(v30 + 16))
    {
      v31 = v29;
      v33 = v39;
      v32 = v40;
      v34 = v41;
      (*(v40 + 16))(v39, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, v41);

      sub_55410(v31, v33);
      (*(v32 + 8))(v33, v34);

      return;
    }
  }

  __break(1u);
}

id sub_4AA9C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_4A4F8(v11, v10);
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

uint64_t sub_4ABC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v10 = __chkstk_darwin(v9 - 8);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v35 = &v33 - v12;
  v13 = [v2 traitCollection];
  v14 = UITraitCollection.isMediaPicker.getter();

  if (v14)
  {
    v15 = sub_46DCF0(a2) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = UICollectionView.isDraggingCell(at:)();
  v17 = 0;
  if ((v16 & 1) == 0 && (v15 & 1) == 0)
  {
    v17 = [v3 isEditing] ^ 1;
  }

  v36 = v17;
  v34 = v3;
  v18 = *&v3[qword_DE8FC8];
  v19 = *(v18 + 16);

  v21 = 0;
  while (1)
  {
    if (v19 == v21)
    {

      v24 = v34;
      v23 = v35;
      sub_469178(a2, v35);
      goto LABEL_13;
    }

    if (v21 >= *(v18 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21++, v5);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v22 = sub_AB91C0();
    result = (*(v6 + 8))(v8, v5);
    if (v22)
    {

      v23 = v35;
      (*(v6 + 56))(v35, 1, 1, v5);
      v24 = v34;
LABEL_13:
      if (([v24 isEditing] & 1) != 0 && *(v24 + qword_E70B50) == 1)
      {
        if (v36)
        {
          v25 = (*(v6 + 48))(v23, 1, v5) == 1;
LABEL_25:
          sub_12E1C(v23, &unk_DE8E20);
          return v25;
        }
      }

      else
      {
        v26 = [v24 traitCollection];
        v27 = UITraitCollection.isMediaPicker.getter();

        if (!v27 || (v28 = v33, sub_15F84(v23, v33, &unk_DE8E20), v29 = (*(v6 + 48))(v28, 1, v5), sub_12E1C(v28, &unk_DE8E20), v29 == 1) || (v30 = sub_4AFF8(a2)) == 0)
        {
          v25 = v36;
          goto LABEL_25;
        }

        if (v36)
        {
          v31 = v30;
          v32 = [v30 type];

          v25 = v32 == &dword_0 + 1;
          goto LABEL_25;
        }
      }

      v25 = 0;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

id sub_4AFF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v27 = &v24 - v4;
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v25 = &v24 - v10;
  v26 = v1;
  v11 = *(v1 + qword_DE8FC8);
  v12 = *(v11 + 16);
  v13 = (v6 + 8);

  v15 = 0;
  while (1)
  {
    if (v12 == v15)
    {

      v18 = v26;
      v17 = v27;
      sub_469178(a1, v27);
      if ((*(v6 + 48))(v17, 1, v5) == 1)
      {
LABEL_7:
        sub_12E1C(v17, &unk_DE8E20);
      }

      else
      {
        v19 = v25;
        (*(v6 + 32))(v25, v17, v5);
        v20 = *(v18 + qword_DFE2F0);
        if (v20)
        {
          result = [v20 results];
          if (!result)
          {
            goto LABEL_17;
          }

          v21 = result;
          isa = sub_AB3770().super.isa;
          v23 = [v21 itemAtIndexPath:isa];
          (*v13)(v19, v5);

          if (v23)
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              return result;
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          (*v13)(v19, v5);
        }
      }

      return 0;
    }

    if (v15 >= *(v11 + 16))
    {
      break;
    }

    (*(v6 + 16))(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v5);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v16 = sub_AB91C0();
    result = (*(v6 + 8))(v9, v5);
    if (v16)
    {

      v17 = v27;
      (*(v6 + 56))(v27, 1, 1, v5);
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_4B378(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  LOBYTE(a1) = sub_4ABC4(v11, v10);

  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

uint64_t sub_4B490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (v10 || (sub_ABB3C0() & 1) != 0)
  {
    v11 = *&v4[qword_E08820];
    if (v11)
    {
      v12 = v11;
      if ([v4 isEditing])
      {
        type metadata accessor for ContainerDetailHeaderReusableView();
        static UICollectionReusableView.reuseIdentifier.getter();
        v13 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

        v14 = *&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView];
        *&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_headerView] = v11;
        v15 = v12;
        sub_1331DC(v14);

        v16 = OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView;
        v17 = *&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView];
        *&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_highlightView] = 0;
        [v17 removeFromSuperview];
        if (*&v13[v16])
        {
          [v13 addSubview:?];
        }

        [v13 setNeedsLayout];

        [*&v13[OBJC_IVAR____TtC16MusicApplication33ContainerDetailHeaderReusableView_separator] setHidden:1];
        v18 = v13;
        [v18 frame];
        [a1 bounds];
        [v18 sizeThatFits:{v19, v20}];
        [v18 frame];
        [v18 setFrame:?];

        return v18;
      }
    }
  }

  return sub_469DDC(a1, a2, a3, a4);
}

id sub_4B6CC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = sub_4B490(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

char *sub_4B82C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v217 = a3;
  v7 = sub_AB4E30();
  v219 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v10 - 8);
  v224 = &v212 - v11;
  v226 = sub_AB3820();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v228 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_AB2E20();
  __chkstk_darwin(v221);
  v216 = (&v212 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D10);
  __chkstk_darwin(v14 - 8);
  v16 = &v212 - v15;
  v17 = sub_AB2F20();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 innermostModelObject];
  v214 = a2;
  v223 = [a2 socialContributor];

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  v220 = v7;
  v218 = v9;
  v227 = v21;
  if (v22)
  {
    v23 = v22;
    v222 = v4;
    v229 = a1;
    v215 = v21;
    v24 = [v23 title];
    if (v24)
    {
      v25 = v24;
      v26 = sub_AB92A0();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v21 = v18;
    v37 = &v229[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v38 = *&v229[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
    v39 = *&v229[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
    *v37 = v26;
    v37[1] = v28;
    sub_142858(v38, v39);

    [v23 duration];
    sub_142E58(v40);
    v41 = [v23 album];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 title];
      if (v43)
      {
        v44 = v43;
        v45 = sub_AB92A0();
        v47 = v46;

        goto LABEL_13;
      }
    }

    v45 = 0;
    v47 = 0xE000000000000000;
LABEL_13:
    a1 = v229;
    v48 = &v229[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v49 = *&v229[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
    v50 = *&v229[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
    *v48 = v45;
    v48[1] = v47;
    sub_142D1C(v49, v50);

    MPModelSong.preferredBylineAttribution(with:from:)(&off_CEFA70, 0, v16);
    if ((v21[6])(v16, 1, v17) == 1)
    {
      sub_12E1C(v16, &unk_DE9D10);
      v51 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName;
      v52 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
      v53 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
      *v51 = 0;
      v51[1] = 0xE000000000000000;
      sub_142A70(v52, v53);
    }

    else
    {
      (v21[4])(v20, v16, v17);
      sub_AB2E10();
      sub_57DF0(&unk_DF86A0, &type metadata accessor for AttributedString.CharacterView);
      v54 = sub_AB9570();
      v55 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
      v56 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
      v57 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
      *v55 = v54;
      v55[1] = v58;
      sub_142A70(v56, v57);
      v59 = v21[1];
      ++v21;
      (v59)(v20, v17);
    }

    v4 = v222;
    v60 = v215;

    v61 = sub_4A3F1C();
    v62 = v60;
    v63 = sub_10AC20(v23);

    v64 = [v23 shouldVisuallyDisableFor:v63];
    v65 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = v64;
    if (*(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) == 1)
    {
      v66 = v64;
      v67 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
      v215 = v65;
      v68 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
      swift_beginAccess();
      *(v67 + v68) = v66;
      v65 = v215;
      v216 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
      v221 = v67;
      if (v66 != *(v67 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
      {
        v69 = v221;
        *(v216 + v221) = v66;
        v70 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
        swift_beginAccess();
        v71 = *&v69[v70];
        if (!(v71 >> 62))
        {
          v72 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
          if (!v72)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }

        v72 = sub_ABB060();
        if (v72)
        {
LABEL_20:
          v213 = v62;
          v73 = v72 - 1;
          if (v72 < 1)
          {
            goto LABEL_168;
          }

          v212 = v221;

          v74 = 0;
          p_name = &JSDateDescriptor.name;
          while (1)
          {
            if ((v71 & 0xC000000000000001) != 0)
            {
              v76 = *(sub_36003C(v74, v71) + 256);
              if (!v76)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v77 = *(v71 + 8 * v74 + 32);

              v76 = *(v77 + 256);
              if (!v76)
              {
LABEL_22:

                goto LABEL_23;
              }
            }

            v78 = v76;
            if ([v78 p_name[409]])
            {
              break;
            }

            v21 = v23;
            v79 = p_name;
            v80 = *(v216 + v221);
            v81 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
            swift_beginAccess();
            v82 = v78[v81];
            v78[v81] = v80;
            if (v80 == v82)
            {

              p_name = v79;
              v23 = v21;
LABEL_23:
              if (v73 == v74)
              {
                goto LABEL_40;
              }

              goto LABEL_24;
            }

            v83 = 1.0;
            if (v80)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v78 setAlpha:v83];

            p_name = v79;
            v23 = v21;
            if (v73 == v74)
            {
LABEL_40:

              a1 = v229;
              v4 = v222;
              v62 = v213;
              v65 = v215;
              goto LABEL_41;
            }

LABEL_24:
            ++v74;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_41:
    if (*(v65 + a1))
    {
      v92 = 0;
    }

    else
    {
      v92 = 3;
    }

    [a1 setSelectionStyle:v92];
    sub_143E08();
    if ([v23 isFavorite])
    {
      v93 = [v4 isEditing];
      v94 = a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
      v95 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
      *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = v93 ^ 1;
      v96 = v228;
      v97 = v227;
      if (v95 == (v93 ^ 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v94 = a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
      v98 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite);
      *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite) = 0;
      v96 = v228;
      v97 = v227;
      if ((v98 & 1) == 0)
      {
LABEL_51:

        goto LABEL_122;
      }

      v95 = 1;
    }

    sub_201644();
    v99 = sub_200954();
    [v99 setHidden:(*v94 & 1) == 0];

    if (v95 != *v94)
    {
      sub_14B200();
    }

    goto LABEL_51;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v84 = swift_dynamicCastObjCClass();
    if (v84)
    {
      v85 = v84;
      v86 = v21;
      v87 = [v85 title];
      if (v87)
      {
        v88 = v87;
        v89 = sub_AB92A0();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0xE000000000000000;
      }

      v157 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
      v158 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
      v159 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8);
      *v157 = v89;
      v157[1] = v91;
      sub_142858(v158, v159);

      [v85 duration];
      sub_142E58(v160);
      v161 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle;
      v162 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle);
      v163 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8);
      *v161 = 0;
      v161[1] = 0xE000000000000000;
      sub_142D1C(v162, v163);

      v164 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName;
      v165 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
      v166 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
      *v164 = 0;
      v164[1] = 0xE000000000000000;
      sub_142A70(v165, v166);

      v167 = sub_4A3F1C();
      v67 = v86;
      v69 = sub_10AC20(v85);

      v168 = [v85 shouldVisuallyDisableFor:v69];
      v62 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
      *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = v168;
      if (*(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) != 1)
      {
        goto LABEL_117;
      }

      v169 = v168;
      v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
      v170 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
      swift_beginAccess();
      *(v21 + v170) = v169;
      v221 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
      if (v169 == *(v21 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
      {
        goto LABEL_117;
      }

      v229 = a1;
      *(v21 + v221) = v169;
      v171 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v71 = *(v21 + v171);
      if (v71 >> 62)
      {
        goto LABEL_172;
      }

      v172 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
      a1 = v229;
      if (!v172)
      {
        goto LABEL_117;
      }

      goto LABEL_102;
    }

    v222 = v4;
    sub_142E58(0.0);
    v136 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title;
    v137 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
    v138 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8);
    *v136 = 0;
    v136[1] = 0xE000000000000000;
    sub_142858(v137, v138);

    v139 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle;
    v140 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle);
    v141 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8);
    *v139 = 0;
    v139[1] = 0xE000000000000000;
    sub_142D1C(v140, v141);

    v142 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName;
    v143 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
    v144 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
    *v142 = 0;
    v142[1] = 0xE000000000000000;
    sub_142A70(v143, v144);

    v69 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = 0;
    if (*(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) != 1)
    {
      goto LABEL_161;
    }

    v4 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
    v145 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v4[v145] = 0;
    v221 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != 1)
    {
      goto LABEL_161;
    }

    v4[v221] = 0;
    v146 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v71 = *&v4[v146];
    if (v71 >> 62)
    {
      goto LABEL_175;
    }

    result = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      goto LABEL_161;
    }

    goto LABEL_83;
  }

  v30 = v29;
  v31 = v21;
  v32 = [v30 title];
  if (v32)
  {
    v33 = v32;
    v34 = sub_AB92A0();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v100 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v101 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title);
  v102 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8);
  *v100 = v34;
  v100[1] = v36;
  sub_142858(v101, v102);

  [v30 duration];
  sub_142E58(v103);
  v104 = [v30 season];
  if (!v104 || (v105 = v104, v106 = MPModelTVSeason.title.getter(), v108 = v107, v105, !v108))
  {

    v106 = 0;
    v108 = 0xE000000000000000;
  }

  v109 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle);
  v110 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle);
  v111 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8);
  *v109 = v106;
  v109[1] = v108;
  sub_142D1C(v110, v111);

  v112 = [v30 show];
  if (v112)
  {
    v113 = v112;
    v114 = [v112 title];
    if (v114)
    {
      v115 = v114;
      v116 = sub_AB92A0();
      v118 = v117;

      goto LABEL_61;
    }
  }

  v116 = 0;
  v118 = 0xE000000000000000;
LABEL_61:
  v119 = (a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v120 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName);
  v121 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8);
  *v119 = v116;
  v119[1] = v118;
  sub_142A70(v120, v121);

  v122 = sub_4A3F1C();
  v67 = v31;
  v69 = sub_10AC20(v30);

  v123 = [v30 shouldVisuallyDisableFor:v69];
  v62 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled) = v123;
  if (*(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView) != 1)
  {
    goto LABEL_117;
  }

  v124 = v123;
  v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v125 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  *(v21 + v125) = v124;
  v221 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  if (v124 == *(v21 + OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled))
  {
    goto LABEL_117;
  }

  v229 = a1;
  *(v21 + v221) = v124;
  v126 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
  swift_beginAccess();
  v71 = *(v21 + v126);
  if (v71 >> 62)
  {
    goto LABEL_169;
  }

  v127 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
  a1 = v229;
  if (!v127)
  {
    goto LABEL_117;
  }

LABEL_65:
  v215 = v62;
  v216 = v67;
  v222 = v4;
  v62 = (v127 - 1);
  if (v127 >= 1)
  {
    v213 = v21;

    v128 = 0;
    if ((v71 & 0xC000000000000001) == 0)
    {
      goto LABEL_75;
    }

LABEL_67:
    v129 = *(sub_36003C(v128, v71) + 256);
    if (v129)
    {
LABEL_68:
      v130 = v129;
      if (([v130 isHidden] & 1) == 0)
      {
        v131 = *(v21 + v221);
        v132 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v133 = v130[v132];
        v130[v132] = v131;
        if (v131 != v133)
        {
          v134 = 1.0;
          if (v131)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v130 setAlpha:v134];
        }
      }

      if (v62 != v128)
      {
        goto LABEL_77;
      }
    }

    else
    {
      while (1)
      {

        if (v62 == v128)
        {
          break;
        }

LABEL_77:
        ++v128;
        if ((v71 & 0xC000000000000001) != 0)
        {
          goto LABEL_67;
        }

LABEL_75:
        v135 = *(v71 + 8 * v128 + 32);

        v129 = *(v135 + 256);
        if (v129)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_116;
  }

  __break(1u);
LABEL_172:
  v172 = sub_ABB060();
  a1 = v229;
  if (v172)
  {
LABEL_102:
    v215 = v62;
    v216 = v67;
    v222 = v4;
    v173 = v172 - 1;
    if (v172 >= 1)
    {
      v213 = v21;

      v174 = 0;
      if ((v71 & 0xC000000000000001) == 0)
      {
        goto LABEL_112;
      }

LABEL_104:
      v175 = *(sub_36003C(v174, v71) + 256);
      if (v175)
      {
LABEL_105:
        v176 = v175;
        if (([v176 isHidden] & 1) == 0)
        {
          v177 = *(v21 + v221);
          v178 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v179 = v176[v178];
          v176[v178] = v177;
          if (v177 != v179)
          {
            v180 = 1.0;
            if (v177)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v176 setAlpha:v180];
          }
        }

        if (v173 != v174)
        {
          goto LABEL_114;
        }
      }

      else
      {
        while (1)
        {

          if (v173 == v174)
          {
            break;
          }

LABEL_114:
          ++v174;
          if ((v71 & 0xC000000000000001) != 0)
          {
            goto LABEL_104;
          }

LABEL_112:
          v181 = *(v71 + 8 * v174 + 32);

          v175 = *(v181 + 256);
          if (v175)
          {
            goto LABEL_105;
          }
        }
      }

LABEL_116:

      a1 = v229;
      v4 = v222;
      v67 = v216;
      v62 = v215;
      goto LABEL_117;
    }

    __break(1u);
LABEL_175:
    result = sub_ABB060();
    if (result)
    {
LABEL_83:
      v216 = v69;
      v229 = a1;
      v148 = result - 1;
      if (result < 1)
      {
        __break(1u);
LABEL_178:
        __break(1u);
        return result;
      }

      v215 = v4;

      v149 = 0;
      v21 = &JSDateDescriptor.name;
      if ((v71 & 0xC000000000000001) == 0)
      {
        goto LABEL_93;
      }

LABEL_85:
      v150 = *(sub_36003C(v149, v71) + 256);
      if (v150)
      {
LABEL_86:
        v151 = v150;
        if (([v151 isHidden] & 1) == 0)
        {
          v152 = v4[v221];
          v153 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
          swift_beginAccess();
          v154 = v151[v153];
          v151[v153] = v152;
          if (v152 != v154)
          {
            v155 = 1.0;
            if (v152)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v151 setAlpha:v155];
          }
        }

        if (v148 != v149)
        {
          goto LABEL_95;
        }
      }

      else
      {
        while (1)
        {

          if (v148 == v149)
          {
            break;
          }

LABEL_95:
          ++v149;
          if ((v71 & 0xC000000000000001) != 0)
          {
            goto LABEL_85;
          }

LABEL_93:
          v156 = *(v71 + 8 * v149 + 32);

          v150 = *(v156 + 256);
          if (v150)
          {
            goto LABEL_86;
          }
        }
      }

      a1 = v229;
      v69 = v216;
    }

LABEL_161:
    if (v69[a1])
    {
      v211 = 0;
    }

    else
    {
      v211 = 3;
    }

    [a1 setSelectionStyle:v211];
    sub_143E08();
    v4 = v222;
    goto LABEL_121;
  }

LABEL_117:
  while (1)
  {
    v182 = *(v62 + a1) ? 0 : 3;
    [a1 setSelectionStyle:v182];
    sub_143E08();

LABEL_121:
    v96 = v228;
    v97 = v227;
LABEL_122:
    v230[0] = v97;
    sub_13C80(0, &qword_DEDE20);
    v69 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9D20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v234 = 0;
      memset(v233, 0, sizeof(v233));
    }

    sub_15F84(v233, v230, &unk_DE9C60);
    v183 = v231;
    if (v231)
    {
      v184 = v232;
      __swift_project_boxed_opaque_existential_1(v230, v231);
      v185 = sub_4CAA30(&off_CEF8C8, v183, v184);
      __swift_destroy_boxed_opaque_existential_0(v230);
    }

    else
    {
      sub_12E1C(v230, &unk_DE9C60);
      v185 = _swiftEmptyArrayStorage;
    }

    sub_178218(v185);

    v186 = (*&v4[qword_E08858 + 32] & 0xFELL) == 0xF8 || *&v4[qword_E08858] != 1;
    *(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserverBehaviorType) = v186;
    if (*(a1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalStatusObserver))
    {

      sub_259B30(v186);
    }

    v187 = *&v4[qword_DFE2F0];
    if (!v187)
    {
      goto LABEL_141;
    }

    v67 = v187;
    result = [v67 results];
    if (!result)
    {
      goto LABEL_178;
    }

    v71 = result;
    v62 = [result firstSection];

    if (!v62)
    {
      break;
    }

    objc_opt_self();
    v188 = swift_dynamicCastObjCClass();
    if (!v188 || [v188 type] != &dword_8)
    {

      swift_unknownObjectRelease();
      goto LABEL_141;
    }

    v189 = [v214 position];
    v190 = v189 + 1;
    if (!__OFADD__(v189, 1))
    {
      v191 = a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber;
      v192 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber);
      v193 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_trackNumber + 8);
      *v191 = v190;
      v191[8] = 0;
      sub_143794(v192, v193);
      v194 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
      *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = -32767;
      sub_143510(v194);

      swift_unknownObjectRelease();
      v195 = v226;
      goto LABEL_151;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    v127 = sub_ABB060();
    a1 = v229;
    if (v127)
    {
      goto LABEL_65;
    }
  }

LABEL_141:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    LOWORD(v196) = 1;
    v195 = v226;
    v197 = v223;
  }

  else
  {
    objc_opt_self();
    v198 = swift_dynamicCastObjCClass();
    v195 = v226;
    v197 = v223;
    if (v198)
    {
      LOWORD(v196) = 1;
    }

    else
    {
      objc_opt_self();
      v196 = swift_dynamicCastObjCClass();
      if (v196)
      {
        LOWORD(v196) = [v196 hasVideo];
      }
    }
  }

  if (v197)
  {
    v199 = 16640;
  }

  else
  {
    v199 = 0x4000;
  }

  v200 = v199 | v196;
  v201 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle);
  *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle) = v200;
  sub_143510(v201);
LABEL_151:
  v202 = qword_E71990;
  swift_beginAccess();
  v203 = v224;
  sub_15F84(&v4[v202], v224, &unk_DE8E20);
  v204 = v225;
  if ((*(v225 + 48))(v203, 1, v195) == 1)
  {
    sub_12E1C(v203, &unk_DE8E20);
    goto LABEL_157;
  }

  (*(v204 + 32))(v96, v203, v195);
  if (sub_AB3780())
  {
    v205 = [v4 isEditing];
    (*(v204 + 8))(v96, v195);
    v206 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem);
    *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem) = v205 ^ 1;
    if (v206 == (v205 ^ 1))
    {
      goto LABEL_159;
    }

LABEL_158:
    v208 = [a1 _bridgedConfigurationState];
    v209 = v218;
    sub_AB4E00();
    isa = sub_AB4DF0().super.super.isa;
    (*(v219 + 8))(v209, v220);

    [a1 _bridgedUpdateConfigurationUsingState:isa];
    goto LABEL_159;
  }

  (*(v204 + 8))(v96, v195);
LABEL_157:
  v207 = *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem);
  *(a1 + OBJC_IVAR____TtC16MusicApplication8SongCell_isProminentItem) = 0;
  if (v207)
  {
    goto LABEL_158;
  }

LABEL_159:

  return sub_12E1C(v233, &unk_DE9C60);
}

char *sub_4D0E0(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 type];
  v47 = a3;
  if (v15 == &dword_0 + 3)
  {
    v18 = [a2 movie];
    if (!v18)
    {
      v19 = 0;
      goto LABEL_9;
    }

    v16 = v18;
    v17 = [v18 artworkCatalog];
LABEL_8:
    v19 = v17;

LABEL_9:
    v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
    *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v19;
    v21 = v19;
    goto LABEL_11;
  }

  if (v15 == &dword_0 + 2)
  {
    v16 = [a2 tvEpisode];
    v17 = [v16 artworkCatalog];
    goto LABEL_8;
  }

  if (v15 == &dword_0 + 1)
  {
    v16 = [a2 song];
    v17 = [v16 artworkCatalog];
    goto LABEL_8;
  }

  v19 = 0;
  v20 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = 0;
LABEL_11:

  sub_74EA4(v19);
  v22 = [a2 socialContributor];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 artworkCatalog];
    if (!v24)
    {
      v24 = MPModelPerson.monogramArtworkCatalog.getter();
    }

    v25 = v24;

    v22 = v25;
  }

  sub_143468(v22);
  v26 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  *&v48 = *v26;
  v27 = v48;
  *(&v48 + 1) = v28;
  v49 = v29;
  v50 = v30;
  v51 = *(v26 + 2);
  v31 = v29;
  v32 = v30;
  v33 = v27;
  v34 = v28;
  sub_1432BC(&v48);
  v35 = qword_E71990;
  swift_beginAccess();
  sub_15F84(v4 + v35, v10, &unk_DE8E20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DE8E20);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (sub_AB3780())
    {
      goto LABEL_18;
    }

    v39 = sub_AB37F0();
    if (v39 == sub_AB37F0())
    {
      result = sub_AB37E0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (result + 1 == sub_AB37E0())
      {
LABEL_18:
        result = [a1 tableViewCell];
        if (!result)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v37 = result;
        [result setBackgroundColor:0];
        (*(v12 + 8))(v14, v11);

        v38 = 0;
        goto LABEL_25;
      }
    }

    (*(v12 + 8))(v14, v11);
  }

  v38 = 1;
LABEL_25:
  v40 = *(v4 + qword_DFE2F0);
  if (!v40)
  {
    goto LABEL_33;
  }

  result = [v40 results];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v41 = result;
  v42 = [result firstSection];

  if (!v42)
  {
    goto LABEL_33;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
LABEL_33:
    result = [a1 tableViewCell];
    if (result)
    {
      v45 = result;
      [result setSeparatorStyle:v38];
      v46 = 0;
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v44 = [v43 type];
  swift_unknownObjectRelease();
  if (v44 != &dword_8)
  {
    goto LABEL_33;
  }

  result = [a1 tableViewCell];
  if (result)
  {
    v45 = result;
    [result setSeparatorStyle:0];
    v46 = 1;
LABEL_35:

    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] = v46;
    [a1 setNeedsLayout];
    a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = v46;
    return [a1 setNeedsLayout];
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_4D648()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 music_inheritedLayoutInsets];
    v3 = [v0 traitCollection];
    [v2 bounds];
    sub_14C0F8(v3, 0, &v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_4D6FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB7C10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB7C50();
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_AB7C80();
  v59 = *(v58 - 8);
  v14 = __chkstk_darwin(v58);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v60 = [a1 innermostModelObject];
  sub_46BFE0(v60, a2, a3);
  if (v4[qword_E08828] == 1)
  {
    v52 = v11;
    v53 = v12;
    v54 = v9;
    v55 = v8;
    v19 = [v4 navigationItem];
    v20 = [v4 parentViewController];
    if (v20)
    {
      v21 = v20;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v22 = v21;
        v23 = [v22 navigationItem];

        v21 = [v22 parentViewController];
        v19 = v23;
        if (!v21)
        {
          goto LABEL_12;
        }
      }
    }

    v23 = v19;
LABEL_12:
    v25 = [v23 searchController];

    if (v25)
    {
      v26 = v25;
      v27 = UISearchController.searchText.getter();
      v29 = v28;

      if (v29)
      {

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          [v26 setActive:0];
          sub_13C80(0, &qword_DE8ED0);
          v50 = sub_ABA150();
          sub_AB7C70();
          sub_AB7CE0();
          v31 = *(v59 + 8);
          v59 += 8;
          v51 = v31;
          v31(v16, v58);
          v32 = swift_allocObject();
          v33 = v60;
          *(v32 + 16) = v4;
          *(v32 + 24) = v33;
          v65 = sub_57DE8;
          v66 = v32;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_1B5EB4;
          v64 = &block_descriptor_290;
          v34 = _Block_copy(&aBlock);
          v35 = v4;
          v36 = v60;

          v37 = v56;
          sub_AB7C30();
          aBlock = _swiftEmptyArrayStorage;
          sub_57DF0(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
          sub_36A00(&qword_DF06D0, &unk_DE9C30);
          v38 = v52;
          v39 = v55;
          sub_ABABB0();
          v40 = v50;
          sub_ABA110();
          (*(v54 + 8))(v38, v39);
          (*(v57 + 8))(v37, v53);
          v51(v18, v58);
          _Block_release(v34);
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000000B4ACD0;
    v42 = *&v4[qword_DFE2F0];
    if (!v42)
    {
      v45 = 0;
      goto LABEL_22;
    }

    v43 = [v42 results];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 totalItemCount];

LABEL_22:
      *(inited + 72) = &type metadata for Int;
      *(inited + 80) = &off_D191F0;
      *(inited + 48) = v45;
      *(inited + 88) = 0x6E6F697461636F6CLL;
      *(inited + 96) = 0xE800000000000000;
      *(inited + 128) = &type metadata for String;
      *(inited + 136) = &off_D19220;
      *(inited + 104) = 1953720684;
      *(inited + 112) = 0xE400000000000000;
      v46 = sub_979E0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D08);
      swift_arrayDestroy();
      v47 = sub_AB9260();
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      v65 = sub_57DA0;
      v66 = v48;
      aBlock = _NSConcreteStackBlock;
      v62 = 1107296256;
      v63 = sub_3A598C;
      v64 = &block_descriptor_284;
      v49 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v49);

      return;
    }

    __break(1u);
  }

  else
  {
    v24 = v60;
  }
}

void sub_4DF30(uint64_t a1, id a2)
{
  v3 = [a2 identifiers];
  v4 = *(a1 + qword_E08848);
  *(a1 + qword_E08848) = v3;
  v5 = v3;

  *(a1 + qword_E08860) = 0;
  sub_49134();
}

void sub_4DFB8(void *a1)
{
  v21 = [v1 traitCollection];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v1 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;

  UIEdgeInsetsInsetRect(v6, v8, v10, v12, v16, v18);
  sub_14CD64(v21, 0x4000u, v19);
  [a1 setRowHeight:v20];
}

void sub_4E11C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_AB3790();
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  sub_56CA0(v15, v13);

  v20 = *(v10 + 8);
  v20(v13, v9);
  v20(v15, v9);
}

uint64_t sub_4E29C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(char *))
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a1;
  LOBYTE(a5) = a5(v12);

  (*(v10 + 8))(v12, v9);
  return a5 & 1;
}

uint64_t sub_4E3B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v52 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v56);
  v57 = &v51 - v6;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v51 = &v51 - v12;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v53 = &v51 - v19;
  v20 = __chkstk_darwin(v18);
  v55 = &v51 - v21;
  v22 = __chkstk_darwin(v20);
  v61 = &v51 - v23;
  __chkstk_darwin(v22);
  v58 = &v51 - v24;
  v25 = *(v8 + 16);
  v60 = a3;
  v63 = v25;
  v64 = v8 + 16;
  v25(a3, a2, v7);
  v62 = v3;
  v26 = *(v3 + qword_DE8FC8);
  v27 = *(v26 + 16);
  v28 = (v8 + 8);

  v30 = 0;
  while (1)
  {
    if (v27 == v30)
    {

      v32 = v58;
      v33 = v62;
      sub_469178(a2, v58);
      if ((*(v8 + 48))(v32, 1, v7) != 1)
      {
        sub_12E1C(v32, &unk_DE8E20);
        v41 = v59;
        v40 = v60;
        goto LABEL_19;
      }

LABEL_7:
      sub_12E1C(v32, &unk_DE8E20);
      v34 = v61;
      v63(v61, a2, v7);
      (*(v8 + 56))(v34, 0, 1, v7);
      v35 = qword_E719B8;
      swift_beginAccess();
      v36 = v57;
      v37 = *(v56 + 48);
      sub_15F84(v34, v57, &unk_DE8E20);
      sub_15F84(v33 + v35, v36 + v37, &unk_DE8E20);
      v38 = *(v8 + 48);
      if (v38(v36, 1, v7) == 1)
      {
        sub_12E1C(v34, &unk_DE8E20);
        v39 = v38(v36 + v37, 1, v7);
        v41 = v59;
        v40 = v60;
        v33 = v62;
        if (v39 == 1)
        {
          sub_12E1C(v36, &unk_DE8E20);
LABEL_19:
          v63(v41, v40, v7);
          (*(v8 + 56))(v41, 0, 1, v7);
          v48 = qword_DE8FB8;
          swift_beginAccess();
          sub_57CF8(v41, v33 + v48);
          return swift_endAccess();
        }
      }

      else
      {
        v42 = v55;
        sub_15F84(v36, v55, &unk_DE8E20);
        if (v38(v36 + v37, 1, v7) != 1)
        {
          v49 = v51;
          (*(v8 + 32))(v51, v36 + v37, v7);
          sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
          v50 = sub_AB91C0();
          v43 = *(v8 + 8);
          v43(v49, v7);
          sub_12E1C(v61, &unk_DE8E20);
          v43(v55, v7);
          sub_12E1C(v57, &unk_DE8E20);
          v41 = v59;
          v40 = v60;
          v33 = v62;
          if (v50)
          {
            goto LABEL_19;
          }

LABEL_13:
          v43(v40, v7);
          v44 = qword_DE8FB8;
          swift_beginAccess();
          v45 = v33 + v44;
          v46 = v53;
          sub_15F84(v45, v53, &unk_DE8E20);
          if (v38(v46, 1, v7) == 1)
          {
            v47 = v54;
            v63(v54, v52, v7);
            if (v38(v46, 1, v7) != 1)
            {
              sub_12E1C(v46, &unk_DE8E20);
            }
          }

          else
          {
            v47 = v54;
            (*(v8 + 32))(v54, v46, v7);
          }

          (*(v8 + 32))(v40, v47, v7);
          goto LABEL_19;
        }

        sub_12E1C(v61, &unk_DE8E20);
        (*v28)(v42, v7);
        v41 = v59;
        v40 = v60;
        v33 = v62;
      }

      sub_12E1C(v36, &unk_DF7930);
      v43 = *v28;
      goto LABEL_13;
    }

    if (v30 >= *(v26 + 16))
    {
      break;
    }

    v63(v14, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30++, v7);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v31 = sub_AB91C0();
    result = (*(v8 + 8))(v14, v7);
    if (v31)
    {

      v32 = v58;
      (*(v8 + 56))(v58, 1, 1, v7);
      v33 = v62;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Class sub_4EBE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_AB3790();
  sub_AB3790();
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a1;
  sub_4E3B8(v16, v13, v18);

  v23 = *(v10 + 8);
  v23(v13, v9);
  v23(v16, v9);

  v24.super.isa = sub_AB3770().super.isa;
  v23(v18, v9);

  return v24.super.isa;
}

void sub_4EDA0(char a1, char a2)
{
  v3 = v2;
  v6 = [v3 isEditing];
  v7 = type metadata accessor for PlaylistDetailSongsViewController();
  v43.receiver = v3;
  v43.super_class = v7;
  objc_msgSendSuper2(&v43, "setEditing:animated:", a1 & 1, a2 & 1);
  v8 = [v3 isEditing];
  if (v6 == v8)
  {
    return;
  }

  v9 = v8;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E70DC0);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = a2;
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136446210;
    if (v9)
    {
      v15 = 0x676E697265746E45;
    }

    else
    {
      v15 = 0x676E6974697845;
    }

    if (v9)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_425E68(v15, v16, &v40);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "%{public}s playlist editing.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    a2 = v39;
  }

  if (!v9 || v3[qword_E70B50] != 1)
  {
    sub_48190(0);
    goto LABEL_19;
  }

  v18 = *&v3[qword_E70B78];
  if (v18)
  {
    v19 = v18;
    if ([v3 isEditing])
    {
      v20 = v19;
      sub_48190(v18);
    }

    sub_3B4724(v18);
    goto LABEL_19;
  }

  v22 = *&v3[qword_DFE2F0];
  if (!v22)
  {
LABEL_30:
    v34 = *&v3[qword_E70BA8];
    v35 = v34;
    sub_4FDF0(v34);
    goto LABEL_19;
  }

  v23 = v22;
  v24 = [v23 results];
  if (!v24)
  {

    goto LABEL_30;
  }

  v25 = v24;
  v26 = *&v3[qword_E70B80];
  if (v26)
  {

    v27 = [v23 request];
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = v27;
    v29 = type metadata accessor for MusicKitEditingModelResponse();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC16MusicApplication28MusicKitEditingModelResponse_musickitEditor] = v26;
    v41.receiver = v30;
    v41.super_class = v29;

    v31 = objc_msgSendSuper2(&v41, "initWithRequest:", v28);

    v32 = v31;
    if ([v3 isEditing])
    {
      v33 = v32;
      sub_48190(v31);
    }

    sub_3B4724(v31);

LABEL_19:
    sub_53034(0, 0);
    [v3 loadViewIfNeeded];
    v21 = *&v3[qword_DFE2F8];
    if (v21)
    {
      [v21 reloadData];
      sub_52EFC(a2 & 1);
      v3[qword_E70B60] = 0;
      return;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_E714D0);
  v36 = sub_AB4BA0();
  v37 = sub_AB9F40();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "attempting to edit without an edit controller", v38, 2u);
  }

  v42.receiver = v3;
  v42.super_class = v7;
  objc_msgSendSuper2(&v42, "setEditing:animated:", 0, a2 & 1);
}

void sub_4F274(void *a1, uint64_t a2, char a3, char a4)
{
  v6 = a1;
  sub_4EDA0(a3, a4);
}

void sub_4F2D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v84 = v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C40);
  __chkstk_darwin(v7 - 8);
  v9 = v64 - v8;
  v10 = sub_AB8860();
  v89 = *(v10 - 8);
  __chkstk_darwin(v10);
  v83 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB3820();
  v85 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v64 - v17;
  __chkstk_darwin(v16);
  v20 = v64 - v19;
  if (![v0 isViewLoaded])
  {
    return;
  }

  v68 = v18;
  [v0 loadViewIfNeeded];
  v21 = *&v0[qword_DFE2F8];
  if (!v21)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v22 indexPathsForVisibleItems];
  v24 = sub_AB9760();

  v82 = *(v24 + 16);
  if (!v82)
  {

    return;
  }

  v72 = v22;
  v25 = 0;
  v26 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v79 = qword_DE8FC8;
  v80 = v26;
  v78 = v24 + v26;
  v66 = qword_DFE2F0;
  v90 = v85 + 16;
  v87 = v85 + 56;
  v77 = (v89 + 6);
  v70 = (v89 + 4);
  v69 = v89 + 1;
  v89 = (v85 + 8);
  v71 = (v85 + 48);
  v67 = (v85 + 32);
  v81 = v9;
  v74 = v10;
  v75 = v5;
  v91 = v20;
  v76 = v1;
  v73 = v24;
  while (2)
  {
    if (v25 >= *(v24 + 16))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v28 = v85;
    v29 = *(v85 + 72);
    v88 = v25;
    v30 = *(v85 + 16);
    v30(v20, v78 + v29 * v25, v12);
    v31 = v84;
    v30(v84, v20, v12);
    v32 = v81;
    v86 = *(v28 + 56);
    v86(v31, 0, 1, v12);
    sub_51DB0(v31, v32);
    sub_12E1C(v31, &unk_DE8E20);
    if ((*v77)(v32, 1, v10) != 1)
    {
      (*v70)(v83, v32, v10);
      isa = sub_AB3770().super.isa;
      v34 = [v72 cellForItemAtIndexPath:isa];

      if (v34)
      {
        type metadata accessor for SongCell();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v83;
          sub_55410(v35, v83);
          (*v69)(v36, v10);

          goto LABEL_16;
        }
      }

      (*v69)(v83, v10);
      goto LABEL_16;
    }

    sub_12E1C(v32, &unk_DE9C40);
LABEL_16:
    ++v88;
    v37 = *&v1[v79];
    v38 = *(v37 + 16);
    v39 = v37 + v80;

    v40 = v39;
    v41 = -v38;
    v42 = -1;
    while (v41 + v42 != -1)
    {
      if (++v42 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v43 = v40 + v29;
      (v30)(v15);
      sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
      v44 = sub_AB91C0();
      v27 = *v89;
      (*v89)(v15, v12);
      v40 = v43;
      if (v44)
      {

        v45 = v75;
        v86(v75, 1, 1, v12);
        v1 = v76;
        v20 = v91;
        goto LABEL_6;
      }
    }

    v45 = v75;
    v1 = v76;
    v20 = v91;
    sub_469178(v91, v75);
    if ((*v71)(v45, 1, v12) == 1)
    {
      v27 = *v89;
LABEL_6:
      v27(v20, v12);
      sub_12E1C(v45, &unk_DE8E20);
      v10 = v74;
      goto LABEL_7;
    }

    v46 = v68;
    (*v67)(v68, v45, v12);
    v47 = sub_AB3770().super.isa;
    v48 = [v72 cellForItemAtIndexPath:v47];

    v10 = v74;
    if (!v48)
    {
      goto LABEL_30;
    }

    type metadata accessor for SongCell();
    v49 = swift_dynamicCastClass();
    if (!v49)
    {

LABEL_30:
      v62 = *v89;
      (*v89)(v46, v12);
      v62(v20, v12);
      goto LABEL_7;
    }

    v50 = *&v1[v66];
    v86 = v48;
    if (!v50)
    {
      goto LABEL_33;
    }

    v65 = v49;
    v51 = v50;
    v52 = [v51 results];
    if (!v52)
    {
      v63 = *v89;
      (*v89)(v68, v12);

LABEL_34:
      v63(v20, v12);

      goto LABEL_7;
    }

    v53 = v52;

    v54 = sub_AB3770().super.isa;
    v55 = [v53 itemAtIndexPath:v54];

    if (!v55)
    {
LABEL_33:
      v63 = *v89;
      (*v89)(v68, v12);
      goto LABEL_34;
    }

    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (!v56)
    {
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v57 = v56;
    v64[1] = v55;
    v58 = v68;
    sub_4B82C(v65, v56, v68);
    v59 = v57;
    v60 = v58;
    sub_4D0E0(v65, v59, v58);
    v61 = *v89;
    (*v89)(v60, v12);
    v61(v20, v12);

    swift_unknownObjectRelease();
LABEL_7:
    v24 = v73;
    v25 = v88;
    if (v88 != v82)
    {
      continue;
    }

    break;
  }
}

void sub_4FC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + qword_E08858;
  v4 = *(v1 + qword_E08858 + 32);
  v5 = v4 & 0xFE;
  if ((v2 & 0xFE) == 0xF8)
  {
    if (v5 == 248)
    {
      return;
    }

LABEL_8:
    sub_4F2D0();
    return;
  }

  if (v5 == 248 || *a1 != *v3)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 40);
  v13 = *(v1 + qword_E08858 + 32);
  v14 = *(a1 + 32);
  v15 = v4 & 0xFE;
  if ((v2 & 0xFE) == 0x7A)
  {
    v16 = v15 == 122;
    goto LABEL_11;
  }

  if (v15 == 122)
  {
    goto LABEL_8;
  }

  v19 = *(a1 + 24);
  v20 = *(v3 + 24);
  v21 = v14 >> 1;
  if (v14 >> 1 <= 0x7C)
  {
    if (v21 == 62)
    {
      v16 = v15 == 124;
    }

    else
    {
      if (v21 != 63)
      {
        goto LABEL_38;
      }

      v16 = v15 == 126;
    }

LABEL_11:
    if (!v16 || v7 != v10)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  switch(v21)
  {
    case '}':
      v16 = v15 == 250;
      goto LABEL_11;
    case '~':
      v16 = v15 == 252;
      goto LABEL_11;
    case '\x7F':
      if (v13 < 0xFE || v7 != v10)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
  }

LABEL_38:
  if ((v13 >> 1) - 125 < 3 || (v13 >> 1) - 62 < 2)
  {
    goto LABEL_8;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    v16 = *&v19 == *&v20;
    goto LABEL_11;
  }

  if ((v4 & 0x80) != 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    v16 = v19 == v20;
    goto LABEL_11;
  }

  if ((v4 & (v7 == v10)) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  if (vabdd_f64(v8, v11) > 0.00000011920929 || v9 != v12)
  {
    goto LABEL_8;
  }
}

void *JSShelfViewController.modelResponse.getter()
{
  v1 = *(v0 + qword_DFE2F0);
  v2 = v1;
  return v1;
}

void sub_4FDF0(void *a1)
{
  if (a1)
  {
    type metadata accessor for EditingModelResponse();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = a1;
      if ([v1 isEditing])
      {
        v6 = v5;
        sub_48190(v4);
      }

      goto LABEL_10;
    }
  }

  v7 = *&v1[qword_E70BA8];
  *&v1[qword_E70BA8] = a1;
  v8 = a1;

  if (![v1 isEditing])
  {
LABEL_10:

    sub_3B4724(a1);
    return;
  }
}

void (*sub_4FEDC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + qword_DFE2F0);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_4FF30;
}

void sub_4FF30(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_4FDF0(v2);
  }

  else
  {
    sub_4FDF0(*a1);
  }
}

id sub_4FF98()
{
  result = *(v0 + qword_DFE2F0);
  if (result)
  {
    result = [result results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result firstSection];

    if (v3)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_5002C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = qword_DFE2F0;
  v11 = *&v3[qword_DFE2F0];
  if (!v11)
  {
    goto LABEL_12;
  }

  result = [v11 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result firstSection];

  if (!v14)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_11;
  }

  if (a1)
  {
    v15 = a1;
    goto LABEL_9;
  }

  v16 = *&v3[v10];
  if (!v16)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v15 = v16;
LABEL_9:
  v17 = a1;
  if ([v15 isEmpty])
  {
    swift_unknownObjectRelease();

LABEL_12:
    v18 = type metadata accessor for PlaybackIntentDescriptor(0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a3, 1, 1, v18);
  }

  v20 = v15;
  sub_46A200(v15, a2, v9);

  v21 = sub_AB3820();
  if ((*(*(v21 - 8) + 48))(a2, 1, v21) != 1 || (v22 = [v3 traitCollection], v23 = UITraitCollection.isMediaPicker.getter(), v22, v23) || (v24 = type metadata accessor for PlaybackIntentDescriptor(0), (*(*(v24 - 8) + 48))(v9, 1, v24)))
  {
  }

  else
  {
    v25 = MPModelPlaylist.supportsSing.getter();

    v9[*(v24 + 36)] = v25 & 1;
  }

  sub_36B0C(v9, a3, &unk_DEA510);
  return swift_unknownObjectRelease();
}

uint64_t sub_502FC(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 type];
    if (v5 > 1)
    {
      if (v5 == &dword_0 + 2)
      {
        sub_13C80(0, &unk_DE9C00);
        v6 = static MPModelTVEpisode.defaultMusicKind.getter();
LABEL_11:
        v7 = v6;

        return v7;
      }

      if (v5 == &dword_0 + 3)
      {
        sub_13C80(0, &unk_E03780);
        v6 = static MPModelMovie.defaultMusicKind.getter();
        goto LABEL_11;
      }
    }

    else
    {
      if (!v5)
      {

        return 0;
      }

      if (v5 == &dword_0 + 1)
      {
        v6 = [objc_opt_self() kindWithVariants:3];
        goto LABEL_11;
      }
    }

    sub_ABAD90(24);
    v8._object = 0x8000000000B4AB80;
    v8._countAndFlagsBits = 0xD000000000000013;
    sub_AB94A0(v8);
    [v3 type];
    v9._countAndFlagsBits = 0xD000000000000018;
    v9._object = 0x8000000000B4ABA0;
    sub_AB94A0(v9);
    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    sub_AB94A0(v10);
    [v3 type];
    type metadata accessor for MPModelPlaylistEntryType(0);
    sub_ABAF70();
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

id sub_504FC()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result innermostModelObject];
  }

  return result;
}

void sub_5054C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8800;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_AB92A0();
  *(v0 + 168) = v9;
  *(v0 + 176) = sub_AB92A0();
  *(v0 + 184) = v10;
  *(v0 + 192) = sub_AB92A0();
  *(v0 + 200) = v11;
  *(v0 + 208) = sub_AB92A0();
  *(v0 + 216) = v12;
  *(v0 + 224) = sub_AB92A0();
  *(v0 + 232) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v15 = MPModelRelationshipPlaylistCurator;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_AF4EC0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  v19 = v15;
  isa = sub_AB9740().super.isa;
  v21 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v21;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v22 = objc_allocWithZone(MPPropertySet);
  v23 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v24 = sub_AB8FD0().super.isa;

  v25 = [v22 initWithProperties:v23 relationships:v24];

  sub_13C80(0, &unk_DE8EA0);
  v26 = sub_2BAFF8();
  v27 = [v25 propertySetByCombiningWithPropertySet:v26];

  qword_E70B40 = v27;
}

void sub_508A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  v4 = MPModelRelationshipPlaylistEntrySocialContributor;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF85F0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_AB92A0();
  *(v6 + 56) = v8;
  v109 = v4;
  isa = sub_AB9740().super.isa;
  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  v12 = MPModelRelationshipPlaylistEntrySong;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF8810;
  *(v14 + 32) = sub_AB92A0();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_AB92A0();
  *(v14 + 56) = v16;
  *(v14 + 64) = sub_AB92A0();
  *(v14 + 72) = v17;
  *(v14 + 80) = sub_AB92A0();
  *(v14 + 88) = v18;
  *(v14 + 96) = sub_AB92A0();
  *(v14 + 104) = v19;
  *(v14 + 112) = sub_AB92A0();
  *(v14 + 120) = v20;
  *(v14 + 128) = sub_AB92A0();
  *(v14 + 136) = v21;
  *(v14 + 144) = sub_AB92A0();
  *(v14 + 152) = v22;
  *(v14 + 160) = sub_AB92A0();
  *(v14 + 168) = v23;
  *(v14 + 176) = sub_AB92A0();
  *(v14 + 184) = v24;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_AF8820;
  v26 = MPModelRelationshipSongArtist;
  *(v25 + 32) = sub_AB92A0();
  *(v25 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_AF4EC0;
  *(v28 + 32) = sub_AB92A0();
  *(v28 + 40) = v29;
  v108 = v12;
  v106 = v26;
  v30 = sub_AB9740().super.isa;
  v31 = v10;
  v32 = [v10 propertySetWithProperties:v30];

  *(v25 + 48) = v32;
  v33 = MPModelRelationshipSongComposer;
  *(v25 + 56) = sub_AB92A0();
  *(v25 + 64) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF4EC0;
  *(v35 + 32) = sub_AB92A0();
  *(v35 + 40) = v36;
  v37 = v33;
  v38 = sub_AB9740().super.isa;
  v110 = v31;
  v39 = [v31 propertySetWithProperties:v38];

  *(v25 + 72) = v39;
  v40 = MPModelRelationshipSongAlbum;
  *(v25 + 80) = sub_AB92A0();
  *(v25 + 88) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_AF85F0;
  *(v42 + 32) = sub_AB92A0();
  *(v42 + 40) = v43;
  *(v42 + 48) = sub_AB92A0();
  *(v42 + 56) = v44;
  v45 = v40;
  v46 = sub_AB9740().super.isa;
  v47 = [v31 propertySetWithProperties:v46];

  *(v25 + 96) = v47;
  sub_96EA4(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(MPPropertySet);
  v49 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v50 = sub_AB8FD0().super.isa;

  v51 = [v48 initWithProperties:v49 relationships:v50];

  sub_13C80(0, &unk_DE8EB0);
  v52 = sub_10F414();
  v53 = [v51 propertySetByCombiningWithPropertySet:v52];

  v54 = sub_2BAFF8();
  v55 = [v53 propertySetByCombiningWithPropertySet:v54];

  *(inited + 72) = v55;
  v56 = MPModelRelationshipPlaylistEntryTVEpisode;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_AF85D0;
  *(v58 + 32) = sub_AB92A0();
  *(v58 + 40) = v59;
  *(v58 + 48) = sub_AB92A0();
  *(v58 + 56) = v60;
  *(v58 + 64) = sub_AB92A0();
  *(v58 + 72) = v61;
  *(v58 + 80) = sub_AB92A0();
  *(v58 + 88) = v62;
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_AF85F0;
  v64 = MPModelRelationshipTVEpisodeShow;
  *(v63 + 32) = sub_AB92A0();
  *(v63 + 40) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_AF4EC0;
  *(v66 + 32) = sub_AB92A0();
  *(v66 + 40) = v67;
  v111 = v56;
  v107 = v64;
  v68 = sub_AB9740().super.isa;
  v69 = [v110 propertySetWithProperties:v68];

  *(v63 + 48) = v69;
  v70 = MPModelRelationshipTVEpisodeSeason;
  *(v63 + 56) = sub_AB92A0();
  *(v63 + 64) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_AF85F0;
  *(v72 + 32) = sub_AB92A0();
  *(v72 + 40) = v73;
  *(v72 + 48) = sub_AB92A0();
  *(v72 + 56) = v74;
  v75 = v70;
  v76 = sub_AB9740().super.isa;
  v77 = [v110 propertySetWithProperties:v76];

  *(v63 + 72) = v77;
  sub_96EA4(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  v78 = objc_allocWithZone(MPPropertySet);
  v79 = sub_AB9740().super.isa;

  v80 = sub_AB8FD0().super.isa;

  v81 = [v78 initWithProperties:v79 relationships:v80];

  sub_13C80(0, &unk_DE9C00);
  v82 = sub_10F414();
  v83 = [v81 propertySetByCombiningWithPropertySet:v82];

  v84 = sub_2BAFF8();
  v85 = [v83 propertySetByCombiningWithPropertySet:v84];

  *(inited + 96) = v85;
  v86 = MPModelRelationshipPlaylistEntryMovie;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_AF85D0;
  *(v88 + 32) = sub_AB92A0();
  *(v88 + 40) = v89;
  *(v88 + 48) = sub_AB92A0();
  *(v88 + 56) = v90;
  *(v88 + 64) = sub_AB92A0();
  *(v88 + 72) = v91;
  *(v88 + 80) = sub_AB92A0();
  *(v88 + 88) = v92;
  v93 = v86;
  v94 = sub_AB9740().super.isa;
  v95 = [v110 propertySetWithProperties:v94];

  sub_13C80(0, &unk_E03780);
  v96 = sub_10F414();
  v97 = [v95 propertySetByCombiningWithPropertySet:v96];

  v98 = sub_2BAFF8();
  v99 = [v97 propertySetByCombiningWithPropertySet:v98];

  *(inited + 120) = v99;
  sub_96EA4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v100 = objc_allocWithZone(MPPropertySet);
  v101 = sub_AB9740().super.isa;

  v102 = sub_AB8FD0().super.isa;

  v103 = [v100 initWithProperties:v101 relationships:v102];

  sub_13C80(0, &qword_DE9C10);
  v104 = sub_2BAFF8();
  v105 = [v103 propertySetByCombiningWithPropertySet:v104];

  qword_E70B48 = v105;
}

void sub_51420(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((v2[qword_E08828] & 1) == 0 && ([v2 isEditing] & 1) == 0 && a1)
  {
    v6 = a1;
    v7 = [v6 results];
    if (!v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = v7;
    v9 = [v7 numberOfSections];

    if (v9 >= 1)
    {
      v10 = [v6 results];
      if (!v10)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v11 = v10;
      v12 = [v6 results];
      if (!v12)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v13 = v12;
      v14 = [v12 numberOfSections];

      if (__OFSUB__(v14, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v15 = [v11 numberOfItemsInSection:v14 - 1];

      if (v15 > 0 || (v16 = qword_DE8FC0, swift_beginAccess(), *(*&v2[v16] + 16)))
      {
        v17 = [v6 results];
        if (!v17)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v18 = v17;
        v19 = [v17 numberOfSections];

        v20 = v19 - 1;
        if (!__OFSUB__(v19, 1))
        {
          v21 = [v6 results];
          if (!v21)
          {
LABEL_26:
            __break(1u);
            return;
          }

          v22 = v21;
          v23 = [v21 numberOfItemsInSection:v20];

          v24 = qword_DE8FC0;
          swift_beginAccess();
          if (!__OFADD__(v23, *(*&v2[v24] + 16)))
          {
            sub_AB37C0();
            v25 = sub_AB3820();
            (*(*(v25 - 8) + 56))(a2, 0, 1, v25);

            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }

  v4 = sub_AB3820();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

void sub_516B8(void *a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = (&v43 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C88);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = qword_DE8FC0;
  swift_beginAccess();
  if (*(*(v1 + v16) + 16))
  {
    v17 = a1 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v47 = v8;
    v51 = v6;
    v44 = a1;
    v18 = [v44 results];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 numberOfSections];

      if (v20 < 1 || (*(v1 + qword_E08828) & 1) != 0)
      {

        return;
      }

      v21 = [v44 results];
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = v21;
      v23 = [v21 numberOfSections];

      v50 = v23 - 1;
      if (!__OFSUB__(v23, 1))
      {
        v24 = [v44 results];
        if (!v24)
        {
LABEL_33:
          __break(1u);
          return;
        }

        v25 = v24;
        v48 = [v24 numberOfItemsInSection:v50];

        v26 = *(v1 + v16);
        v49 = *(v26 + 16);
        v27 = (v47 + 56);
        v28 = (v47 + 48);
        v47 = v53 + 32;
        v45 = v26;

        v29 = 0;
        v30 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v29 == v49)
          {
            v31 = 1;
            v29 = v49;
          }

          else
          {
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (v29 >= *(v45 + 16))
            {
              goto LABEL_29;
            }

            v32 = v45;
            v33 = sub_AB8860();
            v34 = *(v33 - 8);
            v35 = *(v34 + 16);
            v36 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29;
            v37 = *(v7 + 48);
            v38 = v46;
            *v46 = v29;
            v35(v38 + v37, v36, v33);
            sub_36B0C(v38, v13, &unk_DE9C90);
            v31 = 0;
            ++v29;
          }

          (*v27)(v13, v31, 1, v7);
          sub_36B0C(v13, v15, &qword_DE9C88);
          if ((*v28)(v15, 1, v7) == 1)
          {

            return;
          }

          if (__OFADD__(v48, *v15))
          {
            break;
          }

          sub_AB37A0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_6AE4C(0, v30[2] + 1, 1, v30);
          }

          v40 = v30[2];
          v39 = v30[3];
          if (v40 >= v39 >> 1)
          {
            v30 = sub_6AE4C(v39 > 1, v40 + 1, 1, v30);
          }

          v41 = *(v7 + 48);
          v30[2] = v40 + 1;
          (*(v53 + 32))(v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, v51, v52);
          v42 = sub_AB8860();
          (*(*(v42 - 8) + 8))(&v15[v41], v42);
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_51BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90);
  result = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v5;
      v12 = sub_AB8860();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      result = v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_36B0C(v7, a1, &unk_DE9C90);
        return (*(v19 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_51DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v7, &unk_DE8E20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_DE8E20);
LABEL_9:
    v22 = sub_AB8860();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = qword_DE8FC0;
  swift_beginAccess();
  if (!*(*(v2 + v12) + 16) || (v13 = *(v2 + qword_DE8FC8), , v14 = sub_469AC8(v11, v13), v16 = v15, result = , (v16 & 1) != 0) || (v18 = *(v2 + v12), v14 >= *(v18 + 16)))
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_9;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_AB8860();
    v20 = *(v19 - 8);
    (*(v20 + 16))(a2, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14, v19);
    v21 = *(v9 + 8);

    v21(v11, v8);
    (*(v20 + 56))(a2, 0, 1, v19);
  }

  return result;
}

void sub_520E8()
{
  v1 = v0;
  v2 = qword_DE8FD0;
  v3 = *(v0 + qword_DE8FD0);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(*v3 + 248);

    v5(sub_569F8, v4);

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = *(v6 + 64);
      *(v6 + 64) = sub_56A00;
      *(v6 + 72) = v7;

      sub_17654(v8);
    }
  }
}

id sub_52238@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong[qword_E70B50];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6[qword_E08828];
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_15:
    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v9 = v8;
  v10 = *(v8 + qword_DFE2F0);
  if (!v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  result = [v10 results];
  if (result)
  {
    v12 = result;
    v13 = [result firstSection];

    if (v13)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();

      if (v14)
      {
        [v14 type];
        swift_unknownObjectRelease();
        if ((v7 & 1) == 0)
        {
LABEL_18:
          sub_AB91E0();
          sub_AB3550();
          v15 = sub_AB9320();
          if (v5)
          {
            v17 = v15;
            v18 = v16;
            sub_AB91E0();
            sub_AB3550();
            v19 = sub_AB9320();
            v21 = v20;
            v22 = swift_allocObject();
            swift_beginAccess();
            v23 = swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakInit();

            v16 = v18;
            v15 = v17;
            v24 = sub_5779C;
            v25 = 1;
LABEL_21:
            v30 = 0uLL;
            *&v31 = v15;
            *(&v31 + 1) = v16;
            *&v32 = 0;
            *(&v32 + 1) = v19;
            *&v33 = v21;
            *(&v33 + 1) = v25;
            *&v34 = v24;
            *(&v34 + 1) = v22;
            v35 = 0;
            v36[0] = 0;
            v36[1] = 0;
            v36[2] = v15;
            v36[3] = v16;
            v36[4] = 0;
            v36[5] = v19;
            v36[6] = v21;
            v36[7] = v25;
            v36[8] = v24;
            v36[9] = v22;
            v36[10] = 0;
            sub_576EC(&v30, &v29);
            result = sub_57748(v36);
            v26 = v33;
            v27 = v34;
            v28 = v31;
            *(a1 + 32) = v32;
            *(a1 + 48) = v26;
            *(a1 + 64) = v27;
            *(a1 + 80) = v35;
            *a1 = v30;
            *(a1 + 16) = v28;
            return result;
          }

LABEL_20:
          v19 = 0;
          v21 = 0;
          v25 = 0;
          v24 = 0;
          v22 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if ((v7 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_16:
      sub_AB91E0();
      sub_AB3550();
      v15 = sub_AB9320();
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_52664()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_E70B70);
    if (v2)
    {

      v2(v1);
      sub_17654(v2);
    }
  }
}

void sub_526F4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [v4 loadViewIfNeeded];
    v5 = qword_DFE2F8;
    v6 = *&v4[qword_DFE2F8];
    if (v6)
    {
      v7 = [v6 collectionViewLayout];
      type metadata accessor for ContainerDetailCollectionTableLayout();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {

        goto LABEL_9;
      }

      v9 = v8;
      [v4 loadViewIfNeeded];
      v10 = *&v4[v5];
      if (v10)
      {
        v11 = v10;
        v12 = sub_4713C4(v11);

        [v4 loadViewIfNeeded];
        v13 = *&v4[v5];
        if (v13)
        {
          v14 = v13;

          [v14 bounds];
          v16 = v15;
          v18 = v17;

          v25.origin.x = UIEdgeInsetsInsetRect(0.0, 0.0, v16, v18, v12, 0.0);
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          [a2 sizeThatFits:{CGRectGetWidth(v25), 1.79769313e308}];
          v23 = v22;
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = v23;
          Height = CGRectGetHeight(v26);

          *(v9 + OBJC_IVAR____TtC16MusicApplication36ContainerDetailCollectionTableLayout_contentHeightAdjustment) = Height;
LABEL_9:

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_528F8(uint64_t a1)
{
  if (*&v1[qword_E70B80])
  {
    v2 = v1;

    v4 = sub_AB43E0();

    if (v4)
    {
      if ([v2 isEditing])
      {
        if (qword_DE67E0 != -1)
        {
          swift_once();
        }

        v5 = sub_AB4BC0();
        __swift_project_value_buffer(v5, qword_E70DC0);
        v6 = v4;
        v7 = v2;

        v8 = sub_AB4BA0();
        v9 = sub_AB9F10();

        if (!os_log_type_enabled(v8, v9))
        {

LABEL_26:
          v29 = v7[qword_DE8FA8];
          v7[qword_DE8FA8] = 1;
          sub_47550(v29);
          [v7 loadViewIfNeeded];
          v30 = *&v7[qword_DFE2F8];
          if (v30)
          {
            v31 = swift_allocObject();
            *(v31 + 16) = v7;
            *(v31 + 24) = a1;
            v32 = swift_allocObject();
            *(v32 + 16) = sub_57C28;
            *(v32 + 24) = v31;
            v45 = sub_36C08;
            v46 = v32;
            aBlock = _NSConcreteStackBlock;
            v42 = 1107296256;
            v43 = sub_1822E0;
            v44 = &block_descriptor_266;
            v33 = _Block_copy(&aBlock);
            v34 = v7;

            v35 = v30;

            v36 = swift_allocObject();
            *(v36 + 16) = v34;
            v45 = sub_57C5C;
            v46 = v36;
            aBlock = _NSConcreteStackBlock;
            v42 = 1107296256;
            v43 = sub_1811AC;
            v44 = &block_descriptor_272;
            v37 = _Block_copy(&aBlock);
            v38 = v34;

            [v35 performBatchUpdates:v33 completion:v37];

            _Block_release(v37);
            _Block_release(v33);

            v38[qword_E70B60] = 1;

            return;
          }

          __break(1u);
          goto LABEL_29;
        }

        v10 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v10 = 136446722;
        v11 = *&v7[qword_DFE2F0];
        if (v11)
        {
          v12 = [v11 results];
          if (!v12)
          {
LABEL_29:

            __break(1u);
            return;
          }

          v13 = v12;

          v14 = [v13 firstSection];

          if (!v14)
          {
            goto LABEL_24;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 identifiers];
            swift_unknownObjectRelease();
            v14 = MPIdentifierSet.publicLoggingDescription.getter();
            v18 = v17;

LABEL_25:
            aBlock = v14;
            v42 = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0);
            v22 = sub_AB9350();
            v24 = sub_425E68(v22, v23, &v40);

            *(v10 + 4) = v24;
            *(v10 + 12) = 2050;
            v25 = [v6 totalItemCount];

            *(v10 + 14) = v25;
            *(v10 + 22) = 2082;
            type metadata accessor for EditingSectionedCollection.ChangeRecord();
            v26 = sub_AB9770();
            v28 = sub_425E68(v26, v27, &v40);

            *(v10 + 24) = v28;
            _os_log_impl(&dword_0, v8, v9, "Updating playlist=%{public}s, current totalItemCount=%{public}ld) with changeRecords=%{public}s", v10, 0x20u);
            swift_arrayDestroy();

            goto LABEL_26;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v14 = 0;
LABEL_24:
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  if (qword_DE6740 != -1)
  {
    swift_once();
  }

  v19 = sub_AB4BC0();
  __swift_project_value_buffer(v19, qword_DE8F90);
  oslog = sub_AB4BA0();
  v20 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, oslog, v20, "attempting to make edits using MusicKit in an invalid state", v21, 2u);
  }
}

void sub_52EFC(char a1)
{
  v3 = qword_DFE2F0;
  v4 = *(v1 + qword_DFE2F0);
  if (v4 && [v4 isEmpty])
  {
    v5 = *(v1 + v3);
    if (v5)
    {
      v6 = [v5 results];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = [v6 firstSection];

      if (v8)
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v10 = [v9 userEditableComponents];
          swift_unknownObjectRelease();
          if (v10)
          {
            v11 = *(v1 + qword_E08828);
            goto LABEL_12;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  if (*(v1 + qword_DE8FD0))
  {

    sub_3B0720(v11, a1 & 1);
  }
}

id sub_53034(int a1, void *a2)
{
  v3 = v2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  __chkstk_darwin(v136);
  v138 = &v122 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v122 - v12;
  v14 = __chkstk_darwin(v11);
  v137 = &v122 - v15;
  __chkstk_darwin(v14);
  v17 = (&v122 - v16);
  v148 = sub_AB3820();
  v145 = *(v148 - 8);
  v18 = __chkstk_darwin(v148);
  v133 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v122 - v20;
  v21 = sub_AB8860();
  v144 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v146 = &v122 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9C88);
  v27 = __chkstk_darwin(v26 - 8);
  v152 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v151 = &v122 - v29;
  result = [v3 isViewLoaded];
  if (result)
  {
    [v3 loadViewIfNeeded];
    v130 = qword_DFE2F8;
    result = *&v3[qword_DFE2F8];
    if (!result)
    {
      __break(1u);
      goto LABEL_69;
    }

    result = [result numberOfSections];
    if (result >= 1 && (v3[qword_E70B58] & 1) == 0)
    {
      v124 = v8;
      v125 = v9;
      v128 = a1;
      v126 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v127 = v13;
      v163 = _swiftEmptyArrayStorage;
      v31 = qword_DE8FC0;
      swift_beginAccess();
      v32 = *(*&v3[v31] + 16);
      v129 = a2;
      if (v32)
      {
        v123 = v17;
        v33 = *&v3[qword_DFE2F0];
        v34 = v33;
        v35 = a2;
        v36 = v34;
        v37 = sub_55DEC(v33, v35);

        v162 = v37;
        v38 = *&v3[v31];
        v157 = 0;
        v158 = 0;
        aBlock = v38;
        v150 = (v144 + 32);
        v143 = qword_DE8FC8;
        v131 = v144 + 16;
        v17 = (v144 + 8);
        v135 = v145 + 16;
        v134 = (v145 + 32);

        v154 = 0;
        v39 = _swiftEmptyArrayStorage;
        *&v40 = 136446210;
        v132 = v40;
        v41 = v146;
        v42 = v151;
        while (1)
        {
          v43 = v152;
          sub_51BE4(v152);
          sub_36B0C(v43, v42, &qword_DE9C88);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C90);
          if ((*(*(v44 - 8) + 48))(v42, 1, v44) == 1)
          {
            break;
          }

          v153 = *v42;
          v45 = (*v150)(v41, v42 + *(v44 + 48), v21);
          __chkstk_darwin(v45);
          *(&v122 - 2) = v41;
          v46 = v154;
          sub_543C0(sub_57B5C, (&v122 - 4), v47);
          v154 = v46;
          if ((v49 & 1) == 0)
          {
            v149 = v48;
            if (qword_DE67E0 != -1)
            {
              swift_once();
            }

            v50 = sub_AB4BC0();
            __swift_project_value_buffer(v50, qword_E70DC0);
            v51 = v3;
            v52 = sub_AB4BA0();
            v53 = sub_AB9F30();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v155 = v55;
              *v54 = v132;
              if ((v153 & 0x8000000000000000) != 0)
              {
                goto LABEL_65;
              }

              v56 = *&v3[v31];
              if (v153 >= *(v56 + 16))
              {
                goto LABEL_66;
              }

              v141 = v54;
              v57 = v144;
              v58 = v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v153;
              v59 = *(v144 + 16);
              v142 = v55;
              v59(v24, v58, v21);
              sub_57DF0(&qword_E073D0, &type metadata accessor for Track);
              v140 = v53;

              v139 = v52;
              v60 = sub_ABB330();
              v62 = v61;
              v63 = *(v57 + 8);
              v41 = v146;
              v63(v24, v21);

              v64 = sub_425E68(v60, v62, &v155);

              v65 = v141;
              *(v141 + 1) = v64;
              v66 = v139;
              _os_log_impl(&dword_0, v139, v140, "Found temporary track=%{public}s in response", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v142);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v151;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v39 = sub_6AE9C(0, *(v39 + 2) + 1, 1, v39);
            }

            v69 = *(v39 + 2);
            v68 = *(v39 + 3);
            v70 = v153;
            if (v69 >= v68 >> 1)
            {
              v79 = sub_6AE9C((v68 > 1), v69 + 1, 1, v39);
              v70 = v153;
              v39 = v79;
            }

            *(v39 + 2) = v69 + 1;
            *&v39[8 * v69 + 32] = v70;
            v71 = v70;

            v72 = *&v3[v143];
            v73 = *(v72 + 16);
            if (v73)
            {
              if (v71 >= v73)
              {
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v74 = (*(v145 + 80) + 32) & ~*(v145 + 80);
              v149 = *(v145 + 72);
              (*(v145 + 16))(v147, v72 + v74 + v149 * v71, v148);
              v75 = v163;

              v76 = swift_isUniquelyReferenced_nonNull_native();
              v153 = v74;
              if ((v76 & 1) == 0)
              {
                v75 = sub_6AE4C(0, v75[2] + 1, 1, v75);
                v163 = v75;
              }

              v78 = v75[2];
              v77 = v75[3];
              if (v78 >= v77 >> 1)
              {
                v75 = sub_6AE4C(v77 > 1, v78 + 1, 1, v75);
              }

              v75[2] = v78 + 1;
              (*v134)(v75 + v153 + v78 * v149, v147, v148);
              v163 = v75;

              v41 = v146;
              v42 = v151;
            }
          }

          (*v17)(v41, v21);
        }

        v80 = *(v39 + 2);
        if (!v80)
        {
LABEL_33:

          v17 = v123;
          a2 = v129;
          goto LABEL_34;
        }

        swift_beginAccess();
        while (1)
        {
          v81 = *(v39 + 2);
          if (v80 > v81)
          {
            break;
          }

          v41 = v80 - 1;
          sub_2E5F4C(*&v39[8 * v80 + 24], v24);
          (*v17)(v24, v21);
          v80 = v41;
          if (!v41)
          {
            swift_endAccess();
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_43:
        v87 = *(v81 - 32);
        v88 = &v39[v21];
        v89 = v133;
        (*(v87 + 32))(v133, v88, v42);
        sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
        v90 = sub_AB91C0();
        v91 = *(v87 + 8);
        v91(v89, v42);
        v91(v41, v42);
        sub_12E1C(v39, &unk_DE8E20);
        if (v90)
        {
LABEL_44:
          if (!v163[2])
          {
            sub_12E1C(v17, &unk_DE8E20);
          }
        }

LABEL_45:
        if (qword_DE67E0 != -1)
        {
LABEL_67:
          swift_once();
        }

        v92 = sub_AB4BC0();
        __swift_project_value_buffer(v92, qword_E70DC0);
        v93 = sub_AB4BA0();
        v94 = sub_AB9F50();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          aBlock = v96;
          *v95 = 136446210;
          v97 = v128;
          if (v128)
          {
            v98 = 1702195828;
          }

          else
          {
            v98 = 0x65736C6166;
          }

          if (v128)
          {
            v99 = 0xE400000000000000;
          }

          else
          {
            v99 = 0xE500000000000000;
          }

          v100 = sub_425E68(v98, v99, &aBlock);

          *(v95 + 4) = v100;
          _os_log_impl(&dword_0, v93, v94, "Updating augmented rows with animation=%{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
        }

        else
        {

          v97 = v128;
        }

        v101 = v129;
        if ((v97 & 1) == 0)
        {
          v115 = v154;
          v116 = v154;
          if (!v129)
          {
            v101 = *&v3[qword_DFE2F0];
            v116 = v101;
          }

          v117 = v115;
          sub_516B8(v101);
          v119 = v118;

          *&v3[qword_DE8FC8] = v119;

          v120 = v127;
          sub_15F84(v17, v127, &unk_DE8E20);
          v121 = v126;
          sub_15F84(&v3[v31], v126, &unk_DE8E20);
          swift_beginAccess();
          sub_57890(v120, &v3[v31]);
          swift_endAccess();
          sub_46EB6C(v121);
          sub_12E1C(v121, &unk_DE8E20);
          sub_12E1C(v120, &unk_DE8E20);
          sub_12E1C(v17, &unk_DE8E20);
        }

        result = [v3 loadViewIfNeeded];
        v102 = *&v3[v130];
        if (v102)
        {
          v103 = v127;
          sub_15F84(v17, v127, &unk_DE8E20);
          v104 = (*(v124 + 80) + 24) & ~*(v124 + 80);
          v105 = (v125 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
          v106 = swift_allocObject();
          *(v106 + 16) = v3;
          sub_36B0C(v103, v106 + v104, &unk_DE8E20);
          *(v106 + v105) = v129;
          *(v106 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v163;
          v107 = swift_allocObject();
          *(v107 + 16) = sub_57A90;
          *(v107 + 24) = v106;
          v160 = sub_36C08;
          v161 = v107;
          aBlock = _NSConcreteStackBlock;
          v157 = 1107296256;
          v158 = sub_1822E0;
          v159 = &block_descriptor_225;
          v108 = _Block_copy(&aBlock);
          v109 = v3;
          v110 = v154;
          v111 = v102;

          v112 = swift_allocObject();
          *(v112 + 16) = v109;
          v160 = sub_57B38;
          v161 = v112;
          aBlock = _NSConcreteStackBlock;
          v157 = 1107296256;
          v158 = sub_1811AC;
          v159 = &block_descriptor_231;
          v113 = _Block_copy(&aBlock);
          v114 = v109;

          [v111 performBatchUpdates:v108 completion:v113];
          sub_12E1C(v17, &unk_DE8E20);
          _Block_release(v113);
          _Block_release(v108);
        }

LABEL_69:
        __break(1u);
        return result;
      }

LABEL_34:
      v82 = a2;
      if (!a2)
      {
        v82 = *&v3[qword_DFE2F0];
        v83 = v82;
      }

      v154 = a2;
      sub_51420(v82, v17);

      v31 = qword_E719B8;
      swift_beginAccess();
      v21 = *(v136 + 48);
      v39 = v138;
      sub_15F84(v17, v138, &unk_DE8E20);
      sub_15F84(&v3[v31], &v39[v21], &unk_DE8E20);
      v84 = *(v145 + 48);
      v42 = v148;
      v85 = v84(v39, 1, v148);
      v41 = v137;
      if (v85 == 1)
      {
        if (v84(&v39[v21], 1, v42) == 1)
        {
          sub_12E1C(v39, &unk_DE8E20);
          goto LABEL_44;
        }
      }

      else
      {
        sub_15F84(v39, v137, &unk_DE8E20);
        v86 = v84(&v39[v21], 1, v42);
        v81 = &v164;
        if (v86 != 1)
        {
          goto LABEL_43;
        }

        (*(v145 + 8))(v41, v42);
      }

      sub_12E1C(v39, &unk_DF7930);
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_541F0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() kindWithVariants:1];
  v12[2] = a2;
  v5 = objc_allocWithZone(MPIdentifierSet);
  v6 = sub_AB9260();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_57B7C;
  *(v7 + 24) = v12;
  aBlock[4] = sub_57B84;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_237;
  v8 = _Block_copy(aBlock);

  v9 = [v5 initWithSource:v6 modelKind:v4 block:v8];
  _Block_release(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = [v3 intersectsSet:v9];

    return v11;
  }

  return result;
}

void sub_543C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_ABB060();
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_360310(v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_544D4(char *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v30 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v15 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(&a1[v15], v14, &unk_DE8E20);
  sub_15F84(a2, v12, &unk_DE8E20);
  sub_15F84(&a1[v15], v9, &unk_DE8E20);
  swift_beginAccess();
  sub_57890(v12, &a1[v15]);
  swift_endAccess();
  sub_46EB6C(v9);
  sub_12E1C(v9, &unk_DE8E20);
  sub_12E1C(v12, &unk_DE8E20);
  v16 = a3;
  if (!a3)
  {
    v16 = *&a1[qword_DFE2F0];
    v17 = v16;
  }

  v18 = a3;
  sub_516B8(v16);
  v20 = v19;

  *&a1[qword_DE8FC8] = v20;

  sub_15F84(&a1[v15], v12, &unk_DE8E20);
  sub_54824(v14, v12, &v31, &v30);
  sub_12E1C(v12, &unk_DE8E20);
  swift_beginAccess();

  sub_19650(v21);
  [a1 loadViewIfNeeded];
  v22 = qword_DFE2F8;
  v23 = *&a1[qword_DFE2F8];
  if (v23)
  {
    swift_beginAccess();
    sub_AB3820();
    v24 = v23;
    isa = sub_AB9740().super.isa;

    [v24 insertItemsAtIndexPaths:isa];

    [a1 loadViewIfNeeded];
    v26 = *&a1[v22];
    if (v26)
    {
      v27 = v26;
      v28 = sub_AB9740().super.isa;

      [v27 deleteItemsAtIndexPaths:v28];
      sub_12E1C(v14, &unk_DE8E20);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_54824(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v42 = a3;
  v43 = a4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v40 = &v39 - v14;
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF7930);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v39 - v19;
  v21 = *(v18 + 56);
  sub_15F84(a1, &v39 - v19, &unk_DE8E20);
  sub_15F84(a2, &v20[v21], &unk_DE8E20);
  v22 = *(v7 + 48);
  v23 = v22(v20, 1, v6);
  result = v22(&v20[v21], 1, v6);
  if (v23 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    v25 = *(v7 + 32);
    v25(v16, &v20[v21], v6);
    v26 = v40;
    (*(v7 + 16))(v40, v16, v6);
    v27 = v42;
    swift_beginAccess();
    v28 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_6AE4C(0, v28[2] + 1, 1, v28);
      *v27 = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_6AE4C(v30 > 1, v31 + 1, 1, v28);
      *v27 = v28;
    }

    v28[2] = v31 + 1;
    v25(v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, v26, v6);
  }

  else if (result == 1)
  {
    v32 = *(v7 + 32);
    v32(v12, v20, v6);
    v33 = v41;
    (*(v7 + 16))(v41, v12, v6);
    v34 = v43;
    swift_beginAccess();
    v35 = *v34;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_6AE4C(0, v35[2] + 1, 1, v35);
      *v34 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_6AE4C(v37 > 1, v38 + 1, 1, v35);
      *v34 = v35;
    }

    v35[2] = v38 + 1;
    v32(v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v38, v33, v6);
    v16 = v12;
  }

  else
  {
    sub_12E1C(&v20[v21], &unk_DE8E20);
    v16 = v20;
  }

  return (*(v7 + 8))(v16, v6);
}

uint64_t sub_54C60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  sub_AB9730();
  if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  return sub_AB97F0();
}

id sub_54CD4()
{
  v0[qword_E70B50] = 0;
  v0[qword_E70B58] = 0;
  v0[qword_E70B60] = 0;
  v1 = &v0[qword_E70B68];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[qword_E70B70];
  *v2 = 0;
  v2[1] = 0;
  *&v0[qword_E70B78] = 0;
  v0[qword_DE8FA8] = 0;
  *&v0[qword_DE8FB0] = &_swiftEmptySetSingleton;
  *&v0[qword_E70B80] = 0;
  *&v0[qword_E70B88] = 0;
  v3 = &v0[qword_E70B90];
  *v3 = 0;
  v3[1] = 0;
  v4 = qword_DE8FB8;
  v5 = sub_AB3820();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[qword_DE8FC0] = _swiftEmptyArrayStorage;
  *&v0[qword_DE8FC8] = _swiftEmptyArrayStorage;
  *&v0[qword_E70B98] = 0;
  *&v0[qword_E70BA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[qword_DE8FD0] = 0;
  *&v0[qword_E70BA8] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlaylistDetailSongsViewController();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_54E74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_57FA4(v3);

  return v4;
}

void sub_54EAC()
{
  sub_17654(*(v0 + qword_E70B68));
  sub_17654(*(v0 + qword_E70B70));

  sub_17654(*(v0 + qword_E70B90));
  sub_12E1C(v0 + qword_DE8FB8, &unk_DE8E20);

  sub_176DC(v0 + qword_E70BA0);

  v1 = *(v0 + qword_E70BA8);
}

id sub_54FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistDetailSongsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_54FF0(uint64_t a1)
{
  sub_17654(*(a1 + qword_E70B68));
  sub_17654(*(a1 + qword_E70B70));

  sub_17654(*(a1 + qword_E70B90));
  sub_12E1C(a1 + qword_DE8FB8, &unk_DE8E20);

  sub_176DC(a1 + qword_E70BA0);

  v2 = *(a1 + qword_E70BA8);
}

uint64_t type metadata accessor for PlaylistDetailSongsViewController()
{
  result = qword_DE9000;
  if (!qword_DE9000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55154()
{
  sub_55244();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_55244()
{
  if (!qword_DE9010)
  {
    sub_AB3820();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_DE9010);
    }
  }
}

uint64_t sub_55348()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DE8F90);
  v1 = __swift_project_value_buffer(v0, qword_DE8F90);
  if (qword_DE6AA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_E714D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_55410(_BYTE *a1, uint64_t a2)
{
  v93 = sub_AB40A0();
  v92 = *(v93 - 8);
  v4 = __chkstk_darwin(v93);
  v91 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50);
  __chkstk_darwin(v7 - 8);
  v9 = &v86 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v86 - v11;
  v13 = sub_AB31C0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB8840();
  v17 = sub_AB8A60();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_12E1C(v9, &unk_DE9C50);
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_4:
    sub_12E1C(v12, &unk_DF2AE0);
    v19 = 0;
    goto LABEL_7;
  }

  sub_AB8A50();
  (*(v18 + 8))(v9, v17);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v16, v12, v13);
  v20 = objc_allocWithZone(ICStoreArtworkInfo);
  sub_AB30F0(v21);
  v23 = v22;
  v24 = [v20 initWithArtworkURL:v22];

  v25 = [objc_opt_self() tokenWithImageArtworkInfo:v24];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedStoreArtworkDataSource];
  if (!v28)
  {
    goto LABEL_49;
  }

  v29 = v28;
  v30 = objc_allocWithZone(MPArtworkCatalog);
  v31 = v27;
  v19 = [v30 initWithToken:v31 dataSource:v29];

  (*(v14 + 8))(v16, v13);
LABEL_7:
  v32 = sub_AB8830();
  v33 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v34 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title];
  v35 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_title + 8];
  *v33 = v32;
  v33[1] = v36;
  sub_142858(v34, v35);

  v37 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
  *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v19;
  v89 = v19;

  sub_74EA4(v19);
  v38 = COERCE_DOUBLE(sub_AB8850());
  if (v39)
  {
    v38 = 0.0;
  }

  sub_142E58(v38);
  v40 = sub_AB87E0();
  if (v41)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v43 = 0xE000000000000000;
  v44 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v45 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle];
  v46 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_albumTitle + 8];
  if (v41)
  {
    v43 = v41;
  }

  *v44 = v42;
  v44[1] = v43;
  sub_142D1C(v45, v46);

  v47 = sub_AB87F0();
  v48 = &a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v49 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName];
  v50 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_artistName + 8];
  *v48 = v47;
  v48[1] = v51;
  sub_142A70(v49, v50);

  v52 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled;
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  if (a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_shouldDisableTextStackView] == 1)
  {
    v53 = *&a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
    v54 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
    swift_beginAccess();
    v53[v54] = 0;
    v94 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
    v95 = v53;
    if (v53[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] == 1)
    {
      v55 = v95;
      v95[v94] = 0;
      v56 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
      swift_beginAccess();
      v57 = *&v55[v56];
      if (v57 >> 62)
      {
        v58 = sub_ABB060();
        if (v58)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
        if (v58)
        {
LABEL_18:
          v87 = v52;
          v88 = a2;
          v59 = v58 - 1;
          if (v58 >= 1)
          {
            v86 = v95;

            v60 = 0;
            if ((v57 & 0xC000000000000001) == 0)
            {
              goto LABEL_28;
            }

LABEL_20:
            v61 = *(sub_36003C(v60, v57) + 256);
            if (v61)
            {
LABEL_21:
              v62 = v61;
              if (([v62 isHidden] & 1) == 0)
              {
                v63 = v95[v94];
                v64 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
                swift_beginAccess();
                v65 = v62[v64];
                v62[v64] = v63;
                if (v63 != v65)
                {
                  v66 = 1.0;
                  if (v63)
                  {
                    UIInterfaceGetContentDisabledAlpha();
                  }

                  [v62 setAlpha:v66];
                }
              }

              if (v59 != v60)
              {
                goto LABEL_30;
              }
            }

            else
            {
              while (1)
              {

                if (v59 == v60)
                {
                  break;
                }

LABEL_30:
                ++v60;
                if ((v57 & 0xC000000000000001) != 0)
                {
                  goto LABEL_20;
                }

LABEL_28:
                v67 = *(v57 + 8 * v60 + 32);

                v61 = *(v67 + 256);
                if (v61)
                {
                  goto LABEL_21;
                }
              }
            }

            a2 = v88;
            v52 = v87;
            goto LABEL_33;
          }

          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_33:
  if (a1[v52])
  {
    v68 = 0;
  }

  else
  {
    v68 = 3;
  }

  [a1 setSelectionStyle:v68];
  sub_143E08();
  v69 = v90;
  sub_AB87B0();
  v70 = v92;
  v71 = v91;
  v72 = v93;
  (*(v92 + 104))(v91, enum case for MusicFavoriteStatus.favorited(_:), v93);
  v73 = sub_AB4090();
  v74 = *(v70 + 8);
  v74(v71, v72);
  v74(v69, v72);
  v75 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite;
  v76 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_isFavorite] = v73 & 1;
  if ((v73 & 1) != v76)
  {
    sub_201644();
    v77 = sub_200954();
    [v77 setHidden:(a1[v75] & 1) == 0];

    v73 = a1[v75];
  }

  if (v76 != (v73 & 1))
  {
    sub_14B200();
  }

  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 1;
  [a1 setNeedsLayout];
  v78 = a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  a1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v78 & 1) == 0)
  {
    [a1 setNeedsLayout];
  }

  v79 = sub_AB8860();
  v99[3] = v79;
  v99[4] = &off_D17B60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
  (*(*(v79 - 8) + 16))(boxed_opaque_existential_0, a2, v79);
  sub_15F84(v99, v96, &unk_DE9C60);
  v81 = v97;
  if (v97)
  {
    v82 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    v83 = sub_4CAA30(&off_CEF8C8, v81, v82);
    __swift_destroy_boxed_opaque_existential_0(v96);
  }

  else
  {
    sub_12E1C(v96, &unk_DE9C60);
    v83 = _swiftEmptyArrayStorage;
  }

  v84 = v89;
  sub_178218(v83);

  sub_12E1C(v99, &unk_DE9C60);
  v85 = *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC16MusicApplication8SongCell_layoutStyle] = 0x4000;
  sub_143510(v85);
}

uint64_t sub_55DEC(void *a1, void *a2)
{
  v2 = _swiftEmptyArrayStorage;
  if (!a2)
  {
    return v2;
  }

  v94 = _swiftEmptyArrayStorage;
  v4 = a2;
  v5 = &selRef__authenticateReturningError_;
  v6 = [v4 results];
  if (!v6)
  {
    __break(1u);
    goto LABEL_98;
  }

  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &v94;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_58190;
  *(v9 + 24) = v8;
  v92 = sub_57B9C;
  v93 = v9;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_48D644;
  v91 = &block_descriptor_246;
  v10 = _Block_copy(&aBlock);

  v11 = &selRef_performWithResponseHandler_;
  [v7 enumerateItemIdentifiersUsingBlock:v10];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    goto LABEL_88;
  }

  if (!a1)
  {
    v2 = v94;

    return v2;
  }

  v87 = _swiftEmptyArrayStorage;
  v80 = a1;
  v12 = [v80 results];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = &v87;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_57BA4;
    *(v15 + 24) = v14;
    v92 = sub_581C8;
    v93 = v15;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_48D644;
    v91 = &block_descriptor_256;
    v16 = _Block_copy(&aBlock);

    [v13 enumerateItemIdentifiersUsingBlock:v16];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      goto LABEL_90;
    }

    v79 = v4;
    v11 = sub_97100(_swiftEmptyArrayStorage);
    aBlock = _swiftEmptyArrayStorage;
    v5 = v87;
    if (v87 >> 62)
    {
LABEL_91:
      v17 = sub_ABB060();
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8));
      if (v17)
      {
LABEL_9:
        v18 = v5 & 0xC000000000000001;
        v85 = v5 & 0xFFFFFFFFFFFFFF8;

        v19 = 0;
        v83 = v5;
        while (1)
        {
          if (v18)
          {
            v20 = sub_360310(v19, v5);
          }

          else
          {
            if (v19 >= *(v85 + 16))
            {
              goto LABEL_80;
            }

            v20 = *(v5 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          if (v11[2])
          {
            v23 = sub_2EC474(v20);
            if (v24)
            {
              v5 = v17;
              v25 = v18;
              v26 = *&v11[7][8 * v23];
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_83;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v29 = sub_2EC474(v21);
              v31 = v11[2];
              v32 = (v30 & 1) == 0;
              v59 = __OFADD__(v31, v32);
              v33 = &v31[v32];
              if (v59)
              {
                goto LABEL_84;
              }

              v34 = v30;
              if (v11[3] >= v33)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_33;
                }

                v47 = v29;
                sub_3312A0();
                v29 = v47;
                if ((v34 & 1) == 0)
                {
                  goto LABEL_38;
                }

LABEL_34:
                *&v11[7][8 * v29] = v27;
              }

              else
              {
                sub_327954(v33, isUniquelyReferenced_nonNull_native);
                v29 = sub_2EC474(v21);
                if ((v34 & 1) != (v35 & 1))
                {
                  goto LABEL_99;
                }

LABEL_33:
                if (v34)
                {
                  goto LABEL_34;
                }

LABEL_38:
                v11[(v29 >> 6) + 8] = (v11[(v29 >> 6) + 8] | (1 << v29));
                *&v11[6][8 * v29] = v21;
                *&v11[7][8 * v29] = v27;
                v48 = v11[2];
                v59 = __OFADD__(v48, 1);
                v49 = v48 + 1;
                if (v59)
                {
                  goto LABEL_85;
                }

                v11[2] = v49;
              }

              v18 = v25;
              v17 = v5;
              v5 = v83;
              goto LABEL_11;
            }
          }

          v36 = swift_isUniquelyReferenced_nonNull_native();
          v37 = sub_2EC474(v21);
          v39 = v11[2];
          v40 = (v38 & 1) == 0;
          v59 = __OFADD__(v39, v40);
          v41 = &v39[v40];
          if (v59)
          {
            goto LABEL_79;
          }

          v42 = v38;
          if (v11[3] < v41)
          {
            break;
          }

          if (v36)
          {
            goto LABEL_29;
          }

          v46 = v37;
          sub_3312A0();
          v37 = v46;
          if (v42)
          {
LABEL_10:
            *&v11[7][8 * v37] = 1;

            goto LABEL_11;
          }

LABEL_30:
          v11[(v37 >> 6) + 8] = (v11[(v37 >> 6) + 8] | (1 << v37));
          *&v11[6][8 * v37] = v21;
          *&v11[7][8 * v37] = 1;
          v44 = v11[2];
          v59 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v59)
          {
            goto LABEL_82;
          }

          v11[2] = v45;
LABEL_11:
          ++v19;
          if (v22 == v17)
          {

            goto LABEL_43;
          }
        }

        sub_327954(v41, v36);
        v37 = sub_2EC474(v21);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_99;
        }

LABEL_29:
        if (v42)
        {
          goto LABEL_10;
        }

        goto LABEL_30;
      }
    }

LABEL_43:
    v50 = v94;
    if (v94 >> 62)
    {
      v51 = sub_ABB060();
      if (v51)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v51 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
      if (v51)
      {
LABEL_45:
        v52 = v50 & 0xC000000000000001;
        v86 = v50 & 0xFFFFFFFFFFFFFF8;

        v53 = 0;
        v2 = _swiftEmptyArrayStorage;
        v81 = v50 & 0xC000000000000001;
        v82 = v51;
        while (1)
        {
          if (v52)
          {
            v54 = sub_360310(v53, v50);
          }

          else
          {
            if (v53 >= *(v86 + 16))
            {
              goto LABEL_81;
            }

            v54 = *(v50 + 8 * v53 + 32);
          }

          v55 = v54;
          v5 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_78;
          }

          if (!v11[2] || (v56 = sub_2EC474(v54), (v57 & 1) == 0))
          {
            v64 = v55;
            sub_AB9730();
            if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();

            v2 = aBlock;
            goto LABEL_48;
          }

          v58 = *&v11[7][8 * v56];
          v59 = __OFSUB__(v58, 1);
          v60 = v58 - 1;
          if (!v60)
          {
            v61 = sub_2EC474(v55);
            if (v62)
            {
              v63 = v61;
              if (!swift_isUniquelyReferenced_nonNull_native())
              {
                sub_3312A0();
              }

              sub_27C804(v63, v11);
            }

            goto LABEL_48;
          }

          if (v59)
          {
            goto LABEL_86;
          }

          v84 = v60;
          v65 = v50;
          v66 = v2;
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v69 = sub_2EC474(v55);
          v70 = v11[2];
          v71 = (v68 & 1) == 0;
          v72 = &v70[v71];
          if (__OFADD__(v70, v71))
          {
            goto LABEL_87;
          }

          v73 = v68;
          if (v11[3] >= v72)
          {
            if (v67)
            {
              if ((v68 & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            else
            {
              sub_3312A0();
              if ((v73 & 1) == 0)
              {
                goto LABEL_68;
              }
            }
          }

          else
          {
            sub_327954(v72, v67);
            v74 = sub_2EC474(v55);
            if ((v73 & 1) != (v75 & 1))
            {
              goto LABEL_99;
            }

            v69 = v74;
            if ((v73 & 1) == 0)
            {
LABEL_68:
              v11[(v69 >> 6) + 8] = (v11[(v69 >> 6) + 8] | (1 << v69));
              *&v11[6][8 * v69] = v55;
              *&v11[7][8 * v69] = v84;
              v76 = v11[2];
              v59 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v59)
              {
                goto LABEL_89;
              }

              v11[2] = v77;
              goto LABEL_73;
            }
          }

          *&v11[7][8 * v69] = v84;

LABEL_73:
          v2 = v66;
          v50 = v65;
          v52 = v81;
          v51 = v82;
LABEL_48:
          ++v53;
          if (v5 == v51)
          {

            goto LABEL_95;
          }
        }
      }
    }

    v2 = _swiftEmptyArrayStorage;
LABEL_95:

    return v2;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  sub_13C80(0, &unk_DE8180);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_566DC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_497570();
  v8 = qword_E719B8;
  swift_beginAccess();
  sub_15F84(v2 + v8, v6, &unk_DE8E20);
  v9 = sub_AB3820();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    sub_12E1C(v6, &unk_DE8E20);
  }

  else
  {
    v10 = sub_AB37F0();
    sub_12E1C(v6, &unk_DE8E20);
    if (v10 == a1 && __OFADD__(v7++, 1))
    {
      goto LABEL_15;
    }
  }

  v12 = *(v2 + qword_DFE2F0);
  if (!v12)
  {
    return;
  }

  v13 = [v12 results];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 numberOfSections];

  v16 = v15 >= 1 && v15 - 1 == a1;
  if (v16 && __OFADD__(v7, *(*(v2 + qword_DE8FC8) + 16)))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

id sub_568B8(void *a1)
{
  v2 = [a1 type];
  if (v2 == &dword_0 + 3)
  {
    result = [a1 movie];
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v2 == &dword_0 + 2)
  {
    result = [a1 tvEpisode];
    if (!result)
    {
      return result;
    }

LABEL_9:
    v4 = result;
    v5 = [result artworkCatalog];

    return v5;
  }

  if (v2 != &dword_0 + 1)
  {
    return 0;
  }

  result = [a1 song];
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_569C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_56A08(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  if (*(v1 + qword_E70B50) == 1)
  {
    v16 = v1;
    v17 = &v16 - v8;
    v9 = *(v1 + qword_DE8FC8);
    v10 = *(v9 + 16);

    v12 = 0;
    while (1)
    {
      if (v10 == v12)
      {

        v14 = v17;
        sub_469178(a1, v17);
        v15 = 1;
        if ((*(v4 + 48))(v14, 1, v3) == 1)
        {
LABEL_9:
          v15 = 0;
        }

        sub_12E1C(v14, &unk_DE8E20);
        return v15;
      }

      if (v12 >= *(v9 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3);
      sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
      v13 = sub_AB91C0();
      result = (*(v4 + 8))(v6, v3);
      if (v13)
      {

        v14 = v17;
        (*(v4 + 56))(v17, 1, 1, v3);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_56CA0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v63 = a1;
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v59 = &v52 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - v10;
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v54 = &v52 - v18;
  v19 = __chkstk_darwin(v17);
  v55 = &v52 - v20;
  v21 = __chkstk_darwin(v19);
  v58 = &v52 - v22;
  __chkstk_darwin(v21);
  v60 = v2;
  v61 = &v52 - v23;
  v57 = qword_DE8FC8;
  v24 = *(v2 + qword_DE8FC8);
  v25 = *(v24 + 16);
  v26 = (v4 + 16);
  v64 = (v4 + 8);

  v28 = 0;
  while (v25 != v28)
  {
    if (v28 >= *(v24 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    (*(v4 + 16))(v13, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v29 = sub_AB91C0();
    result = (*(v4 + 8))(v13, v3);
    if (v29)
    {

      (*(v4 + 56))(v61, 1, 1, v3);
      v30 = v60;
      goto LABEL_7;
    }
  }

  v30 = v60;
  sub_469178(v63, v61);
LABEL_7:
  v31 = *(v30 + v57);
  v32 = *(v31 + 16);

  v33 = 0;
  while (v32 != v33)
  {
    if (v33 >= *(v31 + 16))
    {
      goto LABEL_21;
    }

    (*(v4 + 16))(v11, v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v34 = sub_AB91C0();
    result = (*(v4 + 8))(v11, v3);
    if (v34)
    {

      v35 = v58;
      (*(v4 + 56))(v58, 1, 1, v3);
      goto LABEL_13;
    }
  }

  v35 = v58;
  sub_469178(v62, v58);
LABEL_13:
  v36 = v61;
  v37 = v55;
  sub_15F84(v61, v55, &unk_DE8E20);
  v38 = *(v4 + 48);
  if (v38(v37, 1, v3) == 1)
  {
    sub_12E1C(v35, &unk_DE8E20);
    sub_12E1C(v36, &unk_DE8E20);
    sub_12E1C(v37, &unk_DE8E20);
  }

  else
  {
    v39 = *(v4 + 32);
    v39(v59, v37, v3);
    v40 = v54;
    sub_15F84(v35, v54, &unk_DE8E20);
    if (v38(v40, 1, v3) == 1)
    {
      (*v64)(v59, v3);
      sub_12E1C(v58, &unk_DE8E20);
      sub_12E1C(v36, &unk_DE8E20);
      sub_12E1C(v40, &unk_DE8E20);
      v30 = v60;
    }

    else
    {
      v41 = v53;
      v39(v53, v40, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D48);
      v42 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord() - 8);
      v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_AF4EC0;
      v45 = v44 + v43;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38) + 48);
      v47 = *v26;
      v48 = v59;
      (*v26)(v45, v59, v3);
      v47(v45 + v46, v41, v3);
      v30 = v60;
      swift_storeEnumTagMultiPayload();
      sub_528F8(v44);
      v49 = *v64;
      (*v64)(v41, v3);
      v49(v48, v3);
      sub_12E1C(v58, &unk_DE8E20);
      sub_12E1C(v61, &unk_DE8E20);
    }
  }

  v50 = v56;
  (*(v4 + 56))(v56, 1, 1, v3);
  v51 = qword_DE8FB8;
  swift_beginAccess();
  sub_57CF8(v50, v30 + v51);
  return swift_endAccess();
}

uint64_t sub_57440(uint64_t a1)
{
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v7 - 8);
  v18 = &v18 - v8;
  v19 = v1;
  v9 = *&v1[qword_DE8FC8];
  v10 = *(v9 + 16);

  v12 = 0;
  while (v10 != v12)
  {
    if (v12 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v4 + 16))(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3);
    sub_57DF0(&qword_DF7940, &type metadata accessor for IndexPath);
    v13 = sub_AB91C0();
    result = (*(v4 + 8))(v6, v3);
    if (v13)
    {

      v14 = v18;
      (*(v4 + 56))(v18, 1, 1, v3);
      v15 = v19;
      goto LABEL_7;
    }
  }

  v14 = v18;
  v15 = v19;
  sub_469178(a1, v18);
  v16 = 1;
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  sub_12E1C(v14, &unk_DE8E20);
  v17 = [v15 isEditing];
  result = v16 & (v17 ^ 1);
  if (v16)
  {
    if (v17)
    {
      return v15[qword_E70B50];
    }
  }

  return result;
}

uint64_t sub_577A4()
{

  return swift_deallocObject();
}

uint64_t sub_577F4()
{

  return swift_deallocObject();
}

uint64_t sub_5783C()
{

  return swift_deallocObject();
}

uint64_t sub_57890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_57900()
{

  return swift_deallocObject();
}

uint64_t sub_57954()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

void sub_57A90()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_544D4(v3, v0 + v2, v4);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_57C5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_DE8FA8);
  *(v1 + qword_DE8FA8) = 0;
  sub_47550(v2);
}

uint64_t objectdestroy_180Tm()
{

  return swift_deallocObject();
}

uint64_t sub_57CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_57D68()
{

  return swift_deallocObject();
}

uint64_t sub_57DA8()
{

  return swift_deallocObject();
}

uint64_t sub_57DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_57E9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_57EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17BD0;

  return sub_48CBC(a1, v4, v5, v7, v6);
}

id sub_57FA4(uint64_t a1)
{
  v1[qword_E70B50] = 0;
  v1[qword_E70B58] = 0;
  v1[qword_E70B60] = 0;
  v3 = &v1[qword_E70B68];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[qword_E70B70];
  *v4 = 0;
  v4[1] = 0;
  *&v1[qword_E70B78] = 0;
  v1[qword_DE8FA8] = 0;
  *&v1[qword_DE8FB0] = &_swiftEmptySetSingleton;
  *&v1[qword_E70B80] = 0;
  *&v1[qword_E70B88] = 0;
  v5 = &v1[qword_E70B90];
  *v5 = 0;
  v5[1] = 0;
  v6 = qword_DE8FB8;
  v7 = sub_AB3820();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[qword_DE8FC0] = _swiftEmptyArrayStorage;
  *&v1[qword_DE8FC8] = _swiftEmptyArrayStorage;
  *&v1[qword_E70B98] = 0;
  *&v1[qword_E70BA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_DE8FD0] = 0;
  *&v1[qword_E70BA8] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlaylistDetailSongsViewController();
  return objc_msgSendSuper2(&v9, "initWithCoder:", a1);
}

void sub_58204()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for JSMenuViewController();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v2 = *&v0[qword_DE9D68];
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *&v1[qword_DE9D70];
  *&v1[qword_DE9D70] = v4;
  v6 = v4;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 viewBackgroundColor];
    [v8 setBackgroundColor:v9];

    [v1 loadViewIfNeeded];
    v10 = *&v1[qword_DFE2F8];
    if (v10)
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = v10;
      v12 = sub_AB3080();

      v13 = *&v1[qword_DE9D80];
      *&v1[qword_DE9D80] = v12;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_583BC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 bounds];
    v4 = fmin(CGRectGetWidth(v9), 320.0);
    [v1 contentSize];
    [v3 setPreferredContentSize:{v4, fmin(v5, 480.0)}];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 view];

    if (v8)
    {
      [v8 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_584CC(void *a1)
{
  v1 = a1;
  sub_58204();
}

void sub_58514(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for JSMenuViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillAppear:", a3);
  v4[qword_DE9D60] = 0;
}

id sub_58584()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_58614()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_5868C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for JSMenuViewController();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    [v1 loadViewIfNeeded];
    v13 = *&v1[qword_DFE2F8];
    if (!v13)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v14 = [v13 collectionViewLayout];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = [v1 view];
      if (v17)
      {
        v18 = v17;
        v19 = [v1 traitCollection];
        [v18 music_inheritedLayoutInsets];
        [v18 bounds];
        sub_4F07D4(v19);
        [v16 setRowHeight:v20];
        [v16 invalidateLayout];

        return;
      }

      goto LABEL_14;
    }
  }
}

void sub_588F8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_5868C(a3);
}

void *sub_58964()
{
  v1 = qword_DE9D50;
  if (*&v0[qword_DE9D50])
  {
    v2 = *&v0[qword_DE9D50];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA438);
    swift_allocObject();
    v2 = sub_2BEEC0(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_58A30@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSMenuModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_7;
  }

  type metadata accessor for JSMenuItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v49);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = (*&stru_68.segname[(swift_isaMask & *v7) + 8])();
  v11 = v10;
  swift_unknownObjectRetain();
  v17 = 0uLL;
  *&v18 = v9;
  *(&v18 + 1) = v11;
  *&v19 = v8;
  *(&v19 + 1) = IndexPath.safeItem.getter();
  LOWORD(v20) = 512;
  BYTE2(v20) = 20;
  *(&v20 + 1) = 0;
  *&v21 = 0;
  *(&v21 + 1) = v8;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25[0] = 1;
  *&v25[8] = 0;
  *&v25[16] = 0;
  v25[24] = 2;
  v26[0] = 0;
  v26[1] = 0;
  v26[2] = v9;
  v26[3] = v11;
  v27 = __PAIR128__(*(&v19 + 1), v8);
  v28 = 512;
  v29 = 20;
  v30 = 0;
  v31 = 0;
  v32 = v8;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v36 = 1;
  v37 = 0;
  v38 = 0;
  v39 = 2;
  sub_465F4(&v17, &v49);
  sub_46650(v26);
  v46 = v23;
  v47 = v24;
  v48[0] = *v25;
  *(v48 + 9) = *&v25[9];
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v40 = v17;
  v41 = v18;
  UIScreen.Dimensions.size.getter(*&v17);
  v55 = v46;
  v56 = v47;
  v57[0] = v48[0];
  *(v57 + 9) = *(v48 + 9);
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v49 = v40;
  v50 = v41;
LABEL_8:
  v12 = v56;
  a1[6] = v55;
  a1[7] = v12;
  a1[8] = v57[0];
  *(a1 + 137) = *(v57 + 9);
  v13 = v52;
  a1[2] = v51;
  a1[3] = v13;
  v14 = v54;
  a1[4] = v53;
  a1[5] = v14;
  result = *&v49;
  v16 = v50;
  *a1 = v49;
  a1[1] = v16;
  return result;
}

void sub_58C9C(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];
}

double sub_58D0C(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_5B600(v8, a5);
  v12 = v11;

  return v12;
}

double sub_58D84(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_5BA60(v13);
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_58EB4()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_58F80()
{
  v0 = sub_AB3820();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v1 + 8))(v3, v0);
  return 0;
}

void sub_5904C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a2;
    v7 = [v5 tableViewCell];
    if (v7)
    {
      v8 = v7;
      [v7 _setDrawsSeparatorAtBottomOfSection:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_590FC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_3B38B0(v13, v14, v12);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v18 = v17;
  v14 = v14;
  v19 = [v18 tableViewCell];
  if (v19)
  {
    v20 = v19;
    [v19 _setDrawsSeparatorAtBottomOfSection:0];
    (*(v10 + 8))(v12, v9);

    v16 = v20;
LABEL_5:

    return;
  }

  __break(1u);
}

void sub_592A4()
{
  v1 = *&v0[qword_DE9D68];
  v2 = type metadata accessor for JSMenuModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication18JSMenuModelRequest_menuViewModel] = v1;
  v28.receiver = v3;
  v28.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v28, "init");
  sub_13C80(0, &unk_DEA538);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF4EC0;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  isa = sub_AB9740().super.isa;
  v13 = objc_opt_self();
  v14 = [v13 propertySetWithProperties:isa];

  [v8 setSectionProperties:v14];
  sub_13C80(0, &qword_DEA548);
  v15 = [v7 kindWithModelClass:swift_getObjCClassFromMetadata()];
  [v8 setItemKind:v15];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v19;
  *(inited + 48) = [v13 emptyPropertySet];
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v20 = objc_allocWithZone(MPPropertySet);
  v21 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v22 = sub_AB8FD0().super.isa;

  v23 = [v20 initWithProperties:v21 relationships:v22];

  [v8 setItemProperties:v23];
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  aBlock[4] = sub_5B484;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_6;
  v25 = _Block_copy(aBlock);
  v26 = v0;

  [v8 performWithResponseHandler:v25];
  _Block_release(v25);
}

uint64_t sub_596B4(void *a1)
{
  sub_13C80(0, &qword_DE8ED0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v3);
}

void sub_59784(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v39[-v9];
  v11 = [a2 title];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB92A0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText];
  v18 = *&a1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8];
  *v16 = v13;
  v16[1] = v15;
  sub_4EE4B4(v17, v18);

  v19 = [a2 submenu];
  if (!v19)
  {
    v22 = *&v4[qword_DE9D68];
    v23 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
    swift_beginAccess();
    if (*(v22 + v23))
    {
      v24 = *&v4[qword_DFE2F0];
      if (v24)
      {
        type metadata accessor for JSMenuModelResponse();
        v25 = swift_dynamicCastClass();
        if (v25)
        {
          v26 = *&v4[qword_DE9D70];
          if (v26)
          {
            v27 = *(v25 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
            v28 = v24;
            v29 = v26;
            isa = sub_AB3770().super.isa;
            v31 = [v27 itemAtIndexPath:isa];

            type metadata accessor for JSMenuItem();
            if (swift_dynamicCastClass() == v29)
            {
              [a1 setAccessoryType:3];

              swift_unknownObjectRelease();
              v36 = sub_AB3820();
              v37 = *(v36 - 8);
              (*(v37 + 16))(v10, a3, v36);
              (*(v37 + 56))(v10, 0, 1, v36);
              v38 = qword_DE9D78;
              swift_beginAccess();
              sub_160B4(v10, &v4[v38], &unk_DE8E20);
              swift_endAccess();

              goto LABEL_17;
            }

            swift_unknownObjectRelease();
          }
        }
      }
    }

    else if (([v4 _isInPopoverPresentation] & 1) == 0)
    {
      goto LABEL_6;
    }

    v20 = a1;
    v21 = 0;
    goto LABEL_16;
  }

LABEL_6:
  v20 = a1;
  v21 = 1;
LABEL_16:
  [v20 setAccessoryType:v21];
LABEL_17:
  if ([a1 accessoryType] == &dword_0 + 1 && (objc_msgSend(v4, "_isInPopoverPresentation") & 1) == 0)
  {
    v34 = [a1 accessoryView];
    if (v34)
    {
      v33 = v34;
      if (qword_DE6C68 != -1)
      {
        swift_once();
      }

      [v33 setTintColor:qword_E718A8];
      goto LABEL_25;
    }
  }

  else
  {
    v32 = [a1 accessoryView];
    if (v32)
    {
      v33 = v32;
      [v32 setTintColor:0];
LABEL_25:
    }
  }

  [a1 music_setLayoutInsets:{-1.0, -1.0, -1.0, 0.0}];
  v35 = [v4 viewBackgroundColor];
  [a1 setBackgroundColor:v35];
}

void sub_59BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v141 = a3;
  v145 = a2;
  v6 = sub_AB3430();
  v142 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v140);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v11 - 8);
  v138 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v13 - 8);
  v143 = &v124 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v16 = __chkstk_darwin(v15 - 8);
  v137 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v139 = &v124 - v19;
  __chkstk_darwin(v18);
  v21 = &v124 - v20;
  v22 = sub_AB3820();
  v144 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v136 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v124 - v25;
  v27 = *&v3[qword_DFE2F0];
  if (!v27)
  {
    return;
  }

  type metadata accessor for JSMenuModelResponse();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    return;
  }

  v131 = v10;
  v132 = a1;
  v29 = *(v28 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
  v30 = v27;
  isa = sub_AB3770().super.isa;
  v32 = [v29 itemAtIndexPath:isa];

  type metadata accessor for JSMenuItem();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v130 = v8;
    v34 = v6;
    v133 = v30;
    v134 = v32;
    v135 = v4;
    v35 = v33;
    v36 = (*(&stru_68.offset + (swift_isaMask & *v33)))();
    if (v36)
    {
      v37 = v36;
      v135[qword_DE9D60] = 1;
      v38 = type metadata accessor for JSMenuViewController();
      v39 = objc_allocWithZone(v38);
      *&v39[qword_DE9D50] = 0;
      *&v39[qword_DE9D58] = 0;
      v39[qword_DE9D60] = 0;
      *&v39[qword_DE9D70] = 0;
      (*(v144 + 56))(&v39[qword_DE9D78], 1, 1, v22);
      *&v39[qword_DE9D80] = 0;
      *&v39[qword_DE9D68] = v37;
      v146.receiver = v39;
      v146.super_class = v38;
      v40 = v37;
      v41 = objc_msgSendSuper2(&v146, "init");
      v42 = *(&stru_68.reserved2 + (swift_isaMask & *v35));
      v43 = v41;
      v42();
      if (v44)
      {
        v45 = sub_AB9260();
      }

      else
      {
        v45 = 0;
      }

      [v43 setTitle:v45];

      [v135 showViewController:v43 sender:v135];
      swift_unknownObjectRelease();

      return;
    }

    v129 = v35;
    v46 = v135;
    v47 = *&v135[qword_DE9D68];
    v48 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
    swift_beginAccess();
    v127 = v48;
    v128 = v47;
    v49 = *(v47 + v48);
    v50 = &selRef__authenticateReturningError_;
    v125 = v34;
    v51 = v142;
    v52 = v141;
    if (v49 == 1)
    {
      v53 = *&v46[qword_DE9D70];
      *&v46[qword_DE9D70] = v129;
      swift_unknownObjectRetain();

      [v46 loadViewIfNeeded];
      v54 = qword_DFE2F8;
      v55 = *&v46[qword_DFE2F8];
      if (!v55)
      {
        goto LABEL_51;
      }

      v56 = v55;
      v57 = sub_AB3770().super.isa;
      v58 = [v56 cellForItemAtIndexPath:v57];

      v59 = v144;
      if (v58)
      {
        type metadata accessor for MenuCell();
        v60 = swift_dynamicCastClass();
        if (v60)
        {
          [v60 setAccessoryType:3];
        }
      }

      v61 = qword_DE9D78;
      swift_beginAccess();
      sub_15F84(&v46[v61], v21, &unk_DE8E20);
      v62 = (*(v59 + 48))(v21, 1, v22);
      v51 = v142;
      if (v62 == 1)
      {
        sub_12E1C(v21, &unk_DE8E20);
        v50 = &selRef__authenticateReturningError_;
      }

      else
      {
        (*(v59 + 32))(v26, v21, v22);
        sub_5C058(&qword_DF7940, &type metadata accessor for IndexPath);
        v63 = sub_AB91C0();
        v64 = v59;
        v50 = &selRef__authenticateReturningError_;
        if (v63)
        {
          (*(v64 + 8))(v26, v22);
        }

        else
        {
          [v46 loadViewIfNeeded];
          v65 = *&v46[v54];
          if (!v65)
          {
LABEL_53:
            __break(1u);
            return;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
          v66 = v144;
          v67 = (*(v144 + 80) + 32) & ~*(v144 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_AF4EC0;
          (*(v66 + 16))(v68 + v67, v26, v22);
          v69 = v65;
          v70 = sub_AB9740().super.isa;

          [v69 reloadItemsAtIndexPaths:v70];
          (*(v66 + 8))(v26, v22);

          v52 = v141;
        }
      }
    }

    [v46 v50[171]];
    v145 = qword_DFE2F8;
    v71 = *&v46[qword_DFE2F8];
    if (v71)
    {
      v72 = v71;
      v73 = sub_AB3770().super.isa;
      v74 = [v72 cellForItemAtIndexPath:v73];

      if (v74)
      {
        sub_D5958(v152);
        v141 = v152[0];
        v126 = v152[1];
        v75 = v153;
        v76 = v154;
        v77 = v155;

        v78 = v126;
        v79 = v141;
      }

      else
      {
        v75 = 0;
        v77 = 0;
        v79 = 0uLL;
        v76 = 255;
        v78 = 0uLL;
      }

      v156[0] = v79;
      v156[1] = v78;
      v157 = v75;
      v158 = v76;
      v159 = v77;
      v80 = v135;
      v81 = v135;
      PresentationSource.init(viewController:position:)(v81, v156, v151);
      *&v141 = JSSegueCoordinator.shared.unsafeMutableAddressor();
      v82 = v50[171];
      *&v126 = v81;
      [v81 v82];
      if (*&v80[v145])
      {
        v83 = _s30CollectionViewSelectionHandlerVMa();
        v150[3] = v83;
        v150[4] = &off_CF7E60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v150);
        v85 = *(v144 + 16);
        v85(boxed_opaque_existential_0 + *(v83 + 20), v52, v22);
        swift_unknownObjectWeakInit();
        v86 = type metadata accessor for PlaybackIntentDescriptor(0);
        (*(*(v86 - 8) + 56))(v143, 1, 1, v86);
        sub_15F84(v150, &v147, &unk_DE8E30);
        v87 = v139;
        if (*(&v148 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
          v88 = v138;
          v89 = swift_dynamicCast();
          v90 = *(v83 - 8);
          (*(v90 + 56))(v88, v89 ^ 1u, 1, v83);
          if ((*(v90 + 48))(v88, 1, v83) != 1)
          {
            v85(v87, v88 + *(v83 + 20), v22);
            sub_2D6C0(v88, _s30CollectionViewSelectionHandlerVMa);
            v91 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          sub_12E1C(&v147, &unk_DE8E30);
          v88 = v138;
          (*(*(v83 - 8) + 56))(v138, 1, 1, v83);
        }

        sub_12E1C(v88, &qword_E037A0);
        v91 = 1;
LABEL_34:
        v92 = v144;
        (*(v144 + 56))(v87, v91, 1, v22);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v94 = Strong, sub_12B2FC(), v96 = v95, v98 = v97, v94, v96))
        {
          ObjectType = swift_getObjectType();
          (*(v98 + 8))(ObjectType, v98);
          v101 = v100;
          swift_unknownObjectRelease();
          v102 = v137;
          sub_15F84(v87, v137, &unk_DE8E20);
          if ((*(v92 + 48))(v102, 1, v22) == 1)
          {
            sub_12E1C(v102, &unk_DE8E20);
            v147 = 0u;
            v148 = 0u;
            v149 = 0;
          }

          else
          {
            (*(v92 + 32))(v136, v102, v22);
            sub_5C058(&qword_DFAA90, &type metadata accessor for IndexPath);
            sub_ABAD10();
          }

          v104 = swift_getObjectType();
          v105 = v130;
          sub_3B8F68();
          v103 = sub_21CCAC(1, v105, &v147, v104, v101);
          (*(v51 + 8))(v105, v125);
          sub_12E1C(&v147, &qword_DF2BD0);
          sub_12E1C(v87, &unk_DE8E20);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_12E1C(v87, &unk_DE8E20);
          v103 = 0;
        }

        v106 = swift_unknownObjectWeakLoadStrong();
        if (v106)
        {
          v107 = v106;
          sub_12AFE8();
          v109 = v108;
        }

        else
        {
          v109 = 0;
        }

        sub_15F28(v151, &v147);
        v110 = v131;
        sub_15F84(v150, (v131 + 104), &unk_DE8E30);
        v111 = v140;
        v112 = v143;
        sub_15F84(v143, v110 + *(v140 + 28), &unk_DEA510);
        *v110 = 0u;
        *(v110 + 16) = 0u;
        *(v110 + 32) = 0u;
        *(v110 + 48) = 0u;
        *(v110 + 64) = 1;
        *(v110 + 72) = 0;
        *(v110 + 80) = 0;
        *(v110 + 88) = 0;
        sub_160B4(&v147, v110, &unk_DEA520);
        v113 = v132;
        *(v110 + 96) = v132;
        v114 = *v141;
        *(&v148 + 1) = v111;
        v115 = __swift_allocate_boxed_opaque_existential_0(&v147);
        sub_2D604(v110, v115);
        v116 = v113;
        v117 = v114;
        JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v129, 0, v103, v109, &v147);
        sub_12E1C(v112, &unk_DEA510);
        sub_2D6C0(v110, _s23MusicPerformanceContextVMa);

        sub_12E1C(&v147, &unk_DE8E40);

        sub_12E1C(v150, &unk_DE8E30);
        if ((*(v128 + v127) & 1) == 0)
        {
          sub_1611C(v151);

          swift_unknownObjectRelease();
          return;
        }

        v118 = v126;
        [v126 loadViewIfNeeded];
        v119 = *&v135[v145];
        v120 = v133;
        if (v119)
        {
          [v119 setUserInteractionEnabled:0];
          sub_13C80(0, &qword_DE8ED0);
          v121 = sub_ABA150();
          v122 = swift_allocObject();
          *(v122 + 16) = v118;
          v123 = v118;
          OS_dispatch_queue.asyncAfter(_:block:)(sub_5B47C, v122);
          swift_unknownObjectRelease();
          sub_1611C(v151);

          return;
        }

        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  swift_unknownObjectRelease();
}

id sub_5AB90(char *a1)
{
  [a1 loadViewIfNeeded];
  result = *&a1[qword_DFE2F8];
  if (result)
  {
    [result setUserInteractionEnabled:1];

    return [a1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5AC04()
{
  v1 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  isa = sub_AB9740().super.isa;
  [v1 _setFloatingElementKinds:isa];

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [v0 traitCollection];
    [v4 music_inheritedLayoutInsets];
    [v4 bounds];
    sub_4F07D4(v5);
    [v1 setRowHeight:v6];
    [v1 invalidateLayout];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_5AD3C()
{

  sub_12E1C(v0 + qword_DE9D78, &unk_DE8E20);
  v1 = *(v0 + qword_DE9D80);
}

id sub_5ADCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMenuViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_5AE04(uint64_t a1)
{

  sub_12E1C(a1 + qword_DE9D78, &unk_DE8E20);
  v2 = *(a1 + qword_DE9D80);
}

uint64_t type metadata accessor for JSMenuViewController()
{
  result = qword_DE9E10;
  if (!qword_DE9E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5AEEC()
{
  sub_55244();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_5B02C(void *a1)
{
  v3 = *v1;
  v4 = [*v1 view];
  if (v4)
  {
    v5 = v4;
    v7 = [v3 traitCollection];
    [v5 music_inheritedLayoutInsets];
    [v5 bounds];
    sub_4F07D4(v7);
    [a1 setRowHeight:v6];
    [a1 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

double sub_5B118@<D0>(_OWORD *a1@<X8>)
{
  sub_58A30(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_5B1C4()
{
  result = qword_DEA430;
  if (!qword_DEA430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEA438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEA430);
  }

  return result;
}

uint64_t sub_5B228(uint64_t a1)
{
  *(a1 + 8) = sub_5C058(&qword_DEA468, type metadata accessor for JSMenuViewController);
  result = sub_5C058(&qword_DEA470, type metadata accessor for JSMenuViewController);
  *(a1 + 16) = result;
  return result;
}

void sub_5B2AC(char *a1, id a2)
{
  v3 = [a2 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v8 = v5;
  v8[1] = v7;

  v9 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v10 = String.trim()();

  swift_beginAccess();
  v9[7] = v10;

  sub_2EB704();
  [a1 setNeedsLayout];
  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v11 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v11 = xmmword_AF89D0;
  v11[16] = 1;
  sub_1846A0();
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v12 = xmmword_AF8610;
  v12[16] = 1;
  sub_1848CC();
}

uint64_t sub_5B444()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B4A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5B4DC()
{

  return swift_deallocObject();
}

void sub_5B51C()
{
  *(v0 + qword_DE9D50) = 0;
  *(v0 + qword_DE9D58) = 0;
  *(v0 + qword_DE9D60) = 0;
  *(v0 + qword_DE9D70) = 0;
  v1 = qword_DE9D78;
  v2 = sub_AB3820();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_DE9D80) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_5B600(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = JSMenu.sections.getter();
  if ((v10 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) > a2)
    {
      v11 = *(v10 + 8 * a2 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_35FCC4(a2, v10);
LABEL_5:
  v12 = v11;
  v13 = &v11[OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title];
  swift_beginAccess();
  v15 = *v13;
  v14 = *(v13 + 1);

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *&v2[qword_DFE2F0];
    if (v17)
    {
      v18 = [v17 results];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 sectionAtIndex:a2];

        if (!v20)
        {
          return;
        }

        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (!v21)
        {
          swift_unknownObjectRelease();
          return;
        }

        v22 = v21;
        v23 = *&v3[qword_DE9D58];
        v24 = &selRef__authenticateReturningError_;
        if (v23)
        {
          v25 = *&v3[qword_DE9D58];
        }

        else
        {
          v42 = qword_DE9D58;
          v43 = v21;
          v44 = a1;
          v26 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v27 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
          swift_beginAccess();
          v26[v27] = 1;
          v25 = v26;
          [v25 setHidden:1];
          [v25 setUserInteractionEnabled:0];
          v28 = *&v3[direct field offset for BrowseCollectionViewController.textDrawingCache];
          v29 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
          swift_beginAccess();
          *&v25[v29] = v28;
          v24 = &selRef__authenticateReturningError_;

          v30 = [v3 view];
          if (!v30)
          {
LABEL_26:
            __break(1u);
            return;
          }

          v31 = v30;
          [v30 addSubview:v25];

          v32 = *&v3[v42];
          *&v3[v42] = v25;

          v23 = 0;
          v22 = v43;
          a1 = v44;
        }

        v33 = v23;
        sub_AB3810();
        sub_5B2AC(v25, v22);
        (*(v7 + 8))(v9, v6);
        v34 = [v3 v24[342]];
        if (v34)
        {
          v35 = v34;
          [v34 music_inheritedLayoutInsets];
          v37 = v36;
          v39 = v38;

          [a1 bounds];
          v40 = CGRectGetWidth(v45) - v37 - v39;
          v41 = v25;
          [a1 bounds];
          [v41 setFrame:{0.0, 0.0, v40, CGRectGetHeight(v46)}];

          sub_18A3F8(*&v41[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle], *&v41[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 8], v41[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_layoutStyle + 16], 8.0);
          [v41 layoutIfNeeded];
          swift_unknownObjectRelease();

          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

void sub_5BA60(void *a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 music_inheritedLayoutInsets];

    [a1 bounds];
    v6 = *&v1[qword_DFE2F0];
    if (v6)
    {
      type metadata accessor for JSMenuModelResponse();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC16MusicApplication19JSMenuModelResponse_jsResults);
        v9 = v6;
        isa = sub_AB3770().super.isa;
        v11 = [v8 itemAtIndexPath:isa];

        type metadata accessor for JSMenuItem();
        v12 = swift_dynamicCastClass();
        if (v12 && ((*&stru_68.segname[(swift_isaMask & *v12) + 8])(), v13))
        {
          v14 = [v2 traitCollection];
          [a1 bounds];
          Width = CGRectGetWidth(v31);
          v16 = [v14 preferredContentSizeCategory];
          v17 = sub_ABA320();

          if (v17)
          {
            v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
            v19 = sub_AB9260();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_AF4EC0;
            *(inited + 32) = NSFontAttributeName;
            *(inited + 64) = sub_13C80(0, &qword_DE6EE0);
            *(inited + 40) = v18;
            v21 = NSFontAttributeName;
            v22 = v18;
            sub_96EB8(inited);
            swift_setDeallocating();
            sub_12E1C(inited + 32, &qword_DE6EE8);
            type metadata accessor for Key(0);
            sub_5C058(&qword_DE6EF0, type metadata accessor for Key);
            v23 = sub_AB8FD0().super.isa;

            [v19 boundingRectWithSize:1 options:v23 attributes:0 context:{Width, 1.79769313e308}];

            v24 = [objc_opt_self() defaultMetrics];
            sub_AB9EF0();

            swift_unknownObjectRelease();
          }

          else
          {
            sub_4F05D0(v28);
            v25 = v28[0];
            v29 = v28[3];
            v30 = v28[2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
            v26 = swift_initStackObject();
            *(v26 + 16) = xmmword_AF82B0;
            *(v26 + 32) = v25;
            type metadata accessor for CGSize(0);
            if ((sub_AB38D0() & 1) == 0)
            {
              type metadata accessor for UIEdgeInsets(0);
              sub_AB38D0();
            }

            sub_2F48A4(v26, v14, 0, 0);

            v27 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle2];
            [v27 scaledValueForValue:52.0];

            [v14 displayScale];
            sub_AB3A00();

            sub_12E1C(&v30, &unk_DEA560);
            sub_5C004(&v29);

            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5C058(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_5C0AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_5C174()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_E71898];
    type metadata accessor for MusicVideoDetailHeaderLockupView();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView] = v3;
    v5 = v3;

    [v2 addSubview:v5];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = &v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler];
    v8 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_playButtonHandler];
    *v7 = sub_5F25C;
    v7[1] = v6;

    sub_17654(v8);

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = &v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler];
    v11 = *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_artistButtonHandler];
    *v10 = sub_5F264;
    v10[1] = v9;

    sub_17654(v11);

    *&v5[OBJC_IVAR____TtC16MusicApplication32MusicVideoDetailHeaderLockupView_libraryAddKeepLocalStatusControllableDelegate + 8] = &off_D127D8;
    swift_unknownObjectWeakAssign();
    v12 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem];
    if (v12)
    {
      v13 = v12;
      sub_5EA54();
      v14 = [v13 song];
      sub_27914C(v14);

      v2 = v14;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_5C3C8()
{
  v0 = sub_AB3430();
  v65 = *(v0 - 8);
  v66 = v0;
  __chkstk_darwin(v0);
  v64 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_AB3820();
  v67 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *(Strong + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
    if (!v21)
    {
LABEL_21:

      return;
    }

    v61 = v4;
    v62 = v18;
    v60 = v21;
    v22 = v21;
    v23 = JSMusicVideoViewModel.item.getter();
    if (!v23)
    {

      return;
    }

    v24 = v23;
    v57 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    memset(v74, 0, sizeof(v74));
    v75 = 0;
    v76 = xmmword_AF7710;
    v58 = v20;
    PresentationSource.init(viewController:position:)(v58, v74, v73);
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    v56 = v22;
    v25 = [v56 innerObject];
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    v59 = v24;
    sub_2641C4(v25, v26, static MPMediaLibraryFilteringOptions.none.getter, 0, v62);

    sub_15F84(v71, &v68, &unk_DE8E30);
    if (*(&v69 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
      v27 = _s30CollectionViewSelectionHandlerVMa();
      v28 = swift_dynamicCast();
      v29 = *(v27 - 8);
      (*(v29 + 56))(v9, v28 ^ 1u, 1, v27);
      v30 = (*(v29 + 48))(v9, 1, v27);
      v31 = v67;
      if (v30 != 1)
      {
        (*(v67 + 16))(v15, &v9[*(v27 + 20)], v2);
        sub_2D6C0(v9, _s30CollectionViewSelectionHandlerVMa);
        v32 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      sub_12E1C(&v68, &unk_DE8E30);
      v33 = _s30CollectionViewSelectionHandlerVMa();
      (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
      v31 = v67;
    }

    sub_12E1C(v9, &qword_E037A0);
    v32 = 1;
LABEL_10:
    (*(v31 + 56))(v15, v32, 1, v2);
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34 && (v35 = v34, sub_12B2FC(), v37 = v36, v39 = v38, v35, v37))
    {
      ObjectType = swift_getObjectType();
      (*(v39 + 8))(ObjectType, v39);
      v42 = v41;
      swift_unknownObjectRelease();
      sub_15F84(v15, v13, &unk_DE8E20);
      if ((*(v31 + 48))(v13, 1, v2) == 1)
      {
        sub_12E1C(v13, &unk_DE8E20);
        v68 = 0u;
        v69 = 0u;
        v70 = 0;
      }

      else
      {
        (*(v31 + 32))(v63, v13, v2);
        sub_2D668();
        sub_ABAD10();
      }

      v44 = swift_getObjectType();
      v45 = v64;
      sub_3B8F68();
      v43 = sub_21CCAC(1, v45, &v68, v44, v42);
      (*(v65 + 8))(v45, v66);
      sub_12E1C(&v68, &qword_DF2BD0);
      sub_12E1C(v15, &unk_DE8E20);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v15, &unk_DE8E20);
      v43 = 0;
    }

    v46 = swift_unknownObjectWeakLoadStrong();
    v47 = v61;
    if (v46)
    {
      v48 = v46;
      sub_12AFE8();
      v20 = v49;
    }

    else
    {
      v20 = 0;
    }

    sub_15F28(v73, &v68);
    sub_15F84(v71, (v6 + 104), &unk_DE8E30);
    v50 = v62;
    sub_15F84(v62, &v6[*(v47 + 28)], &unk_DEA510);
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 8) = 1;
    *(v6 + 9) = 0;
    *(v6 + 10) = 0;
    *(v6 + 11) = 0;
    sub_2D594(&v68, v6);
    *(v6 + 12) = v60;
    v51 = *v57;
    *(&v69 + 1) = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v68);
    sub_2D604(v6, boxed_opaque_existential_0);
    v53 = v56;
    v54 = v51;
    v55 = v59;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v59, 0, v43, v20, &v68);

    sub_12E1C(v50, &unk_DEA510);
    sub_12E1C(v71, &unk_DE8E30);
    sub_1611C(v73);
    sub_2D6C0(v6, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v68, &unk_DE8E40);

    goto LABEL_21;
  }
}

void sub_5CC50(void *a1)
{
  v2 = sub_AB3430();
  v70 = *(v2 - 8);
  __chkstk_darwin(v2);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB3820();
  v71 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v18 - 8);
  v72 = &v63 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v63 = v2;
  v67 = v6;
  v22 = *(Strong + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_musicVideoViewModel);
  v23 = OBJC_IVAR____TtC11MusicJSCore21JSMusicVideoViewModel_containerDetailLink;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24)
  {

    return;
  }

  v66 = v24;
  v64 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v25 = v21;
  [a1 bounds];
  v87[0] = a1;
  v87[1] = v26;
  v87[2] = v27;
  v87[3] = v28;
  v87[4] = v29;
  v88 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v87, 15, v79);
  v83[0] = v79[0];
  v83[1] = v79[1];
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v30 = a1;
  v65 = v25;
  PresentationSource.init(viewController:position:)(v25, v83, v78);
  v31 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  (*(*(v31 - 8) + 56))(v72, 1, 1, v31);
  sub_15F84(v76, &v73, &unk_DE8E30);
  if (*(&v74 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
    v32 = _s30CollectionViewSelectionHandlerVMa();
    v33 = swift_dynamicCast();
    v34 = *(v32 - 8);
    (*(v34 + 56))(v11, v33 ^ 1u, 1, v32);
    v35 = (*(v34 + 48))(v11, 1, v32);
    v36 = v67;
    v37 = v71;
    if (v35 != 1)
    {
      (*(v71 + 16))(v17, &v11[*(v32 + 20)], v4);
      sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
      v38 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    sub_12E1C(&v73, &unk_DE8E30);
    v39 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
    v36 = v67;
    v37 = v71;
  }

  sub_12E1C(v11, &qword_E037A0);
  v38 = 1;
LABEL_9:
  (*(v37 + 56))(v17, v38, 1, v4);
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40 && (v41 = v40, sub_12B2FC(), v43 = v42, v45 = v44, v41, v43))
  {
    ObjectType = swift_getObjectType();
    (*(v45 + 8))(ObjectType, v45);
    v48 = v47;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20);
    if ((*(v37 + 48))(v15, 1, v4) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20);
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
    }

    else
    {
      (*(v37 + 32))(v68, v15, v4);
      sub_2D668();
      sub_ABAD10();
    }

    v50 = swift_getObjectType();
    v51 = v69;
    sub_3B8F68();
    v49 = sub_21CCAC(1, v51, &v73, v50, v48);
    (*(v70 + 8))(v51, v63);
    sub_12E1C(&v73, &qword_DF2BD0);
    sub_12E1C(v17, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20);
    v49 = 0;
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_12AFE8();
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  sub_15F28(v78, &v73);
  sub_15F84(v76, (v8 + 104), &unk_DE8E30);
  v56 = v36;
  v57 = &v8[*(v36 + 28)];
  v58 = v72;
  sub_15F84(v72, v57, &unk_DEA510);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = 1;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  sub_2D594(&v73, v8);
  *(v8 + 12) = 0;
  v59 = *v64;
  *(&v74 + 1) = v56;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  sub_2D604(v8, boxed_opaque_existential_0);
  v61 = v59;
  v62 = v66;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v66, 0, v49, v55, &v73);

  sub_12E1C(v58, &unk_DEA510);
  sub_12E1C(v76, &unk_DE8E30);
  sub_1611C(v78);
  sub_2D6C0(v8, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v73, &unk_DE8E40);
}

void sub_5D534()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for JSMusicVideoDetailViewController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 traitCollection];
    v13 = OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView;
    v14 = *&v0[OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_detailHeaderLockupView];
    if (v14)
    {
      [v14 setFrame:{v5, v7, v9, v11}];
    }

    v15 = JSMusicVideoViewModel.item.getter();
    v16 = 1.0;
    if (v15)
    {

      v17 = *&v0[v13];
      if (v17)
      {
        v18 = v17;
        v16 = sub_27753C(v12, v9);
      }
    }

    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    [v1 setPreferredContentSize:{CGRectGetWidth(v20), v16}];
  }

  else
  {
    __break(1u);
  }
}

void sub_5D6DC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSVideoDetailViewController_modelResponse);
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = [v3 results];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 firstItem];

  if (!v6)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v3 = 0;
  }

LABEL_11:
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem);
  *(v1 + OBJC_IVAR____TtC16MusicApplication32JSMusicVideoDetailViewController_contentItem) = v3;
  v7 = v3;
  sub_5E978(v8);
}