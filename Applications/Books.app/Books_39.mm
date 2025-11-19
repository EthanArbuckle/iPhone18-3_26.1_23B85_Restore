void sub_10051E2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v29[1] = a4;
  v30 = sub_100796CF4();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  v18 = sub_1007A2214();
  v19 = sub_1007A2214();
  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = v30;
  (*(v5 + 16))(v7, v10, v30);
  sub_1007A22D4();
  (*(v5 + 8))(v10, v23);
  (*(v12 + 8))(v17, v11);
  v24 = sub_1007A2214();

  v25 = [objc_opt_self() actionWithTitle:v24 style:0 handler:0];

  [v20 addAction:v25];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = [Strong primarySceneController];

    if (v28)
    {
      [v28 presentViewController:v20 animated:1 completion:0];
    }
  }
}

id BKAppSceneManager.fallbackSceneSession.getter()
{
  v1 = [v0 primarySceneController];
  v2 = [v1 sceneInfo];

  v3 = [v2 sceneSession];
  swift_unknownObjectRelease();
  return v3;
}

id sub_10051E790()
{
  v1 = [*v0 primarySceneController];
  v2 = [v1 sceneInfo];

  v3 = [v2 sceneSession];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t BKAppSceneManager.figaroPageContext.getter()
{
  v1 = [v0 primarySceneController];
  v2 = [v1 rootBarCoordinator];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 selectedItem];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  if ([v3 isStandardItem])
  {
    v4 = *&v3[OBJC_IVAR___BKRootBarItem_identifier];

    return v4;
  }

  else
  {

    return 0x7972617262696CLL;
  }
}

id sub_10051E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10052725C;
  v16 = &unk_100A21D18;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1005272AC;
  v16 = &unk_100A21CF0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_100007020(a4);
  sub_100007020(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_10051EB3C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &ObjectType - v5;
  v24 = sub_1001F1160(&qword_100AE8C68);
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &ObjectType - v8;
  v10 = sub_1001F1160(&qword_100AE8C70);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  __chkstk_darwin(v10);
  v13 = &ObjectType - v12;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_cellProvider;
  _s19SidebarCellProviderCMa();
  v15 = swift_allocObject();
  sub_10000A7C4(0, &qword_100AE8C78);
  sub_1007A2BE4();
  sub_10000A7C4(0, &qword_100AE8C80);
  type metadata accessor for SidebarViewModel.SearchFieldModel(0);
  sub_1007A2BE4();
  type metadata accessor for SidebarLabelListCell();
  sub_1007A2BE4();
  type metadata accessor for SidebarTextFieldListCell();
  sub_1007A2BE4();
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource] = 0;
  *&v2[OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell] = 0;
  *&v2[OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_cancellables] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_eventPublisher] = v27;
  *&v2[OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_viewModel] = a2;
  v29.receiver = v2;
  v29.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v29, "init");
  swift_beginAccess();
  v17 = v16;
  sub_1001F1160(&unk_100AE8C88);
  sub_10079B974();
  swift_endAccess();
  sub_10000A7C4(0, &qword_100AD1E10);
  v18 = sub_1007A2D74();
  v28 = v18;
  v19 = sub_1007A2D24();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_100005920(&qword_100AE8C98, &qword_100AE8C68);
  sub_100017E1C();
  v20 = v24;
  sub_10079BAB4();
  sub_100007840(v6, &qword_100AD7EB0);

  (*(v7 + 8))(v9, v20);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005920(&qword_100AE8CA8, &qword_100AE8C70);
  v21 = v25;
  sub_10079BB04();

  (*(v26 + 8))(v13, v21);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return v17;
}

void sub_10051F0E4(__int128 *a1)
{
  v99 = sub_1001F1160(&unk_100AE8CB0);
  __chkstk_darwin(v99);
  v3 = &v92 - v2;
  v4 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v4 - 8);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v92 - v8;
  __chkstk_darwin(v9);
  v11 = &v92 - v10;
  __chkstk_darwin(v12);
  v101 = &v92 - v13;
  v14 = sub_100796E74();
  v102 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v92 - v17;
  __chkstk_darwin(v19);
  v21 = &v92 - v20;
  v22 = a1[3];
  v121 = a1[2];
  v122 = v22;
  v123 = a1[4];
  v124 = *(a1 + 80);
  v23 = a1[1];
  v119 = *a1;
  v120 = v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v96 = v3;
    v97 = v11;
    v95 = v6;
    v106 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_collectionViewController;
    v26 = swift_unknownObjectWeakLoadStrong();
    v103 = v14;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 collectionView];

      if (v28)
      {
        v29 = [v28 indexPathsForSelectedItems];

        if (v29)
        {
          v94 = v18;
          v30 = sub_1007A25E4();

          v31 = *(v30 + 16);
          if (v31)
          {
            v105 = v25;
            v104 = *(v102 + 16);
            v32 = *(v102 + 80);
            v93 = v30;
            v33 = v30 + ((v32 + 32) & ~v32);
            v34 = *(v102 + 72);
            v35 = (v102 + 8);
            v104(v21, v33, v14);
            while (1)
            {
              v36 = swift_unknownObjectWeakLoadStrong();
              if (v36)
              {
                v37 = v36;
                v38 = [v36 collectionView];

                if (v38)
                {
                  isa = sub_100796DF4().super.isa;
                  v40 = [v38 cellForItemAtIndexPath:isa];

                  v14 = v103;
                  if (v40)
                  {
                    type metadata accessor for SidebarTextFieldListCell();
                    v41 = swift_dynamicCastClass();
                    if (v41)
                    {
                      v42 = v41[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing];
                      v41[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing] = 0;
                      if (v42 == 1)
                      {
                        [v41 setNeedsUpdateConfiguration];
                      }
                    }
                  }
                }
              }

              (*v35)(v21, v14);
              v33 += v34;
              if (!--v31)
              {
                break;
              }

              v104(v21, v33, v14);
            }

            v18 = v94;
            v25 = v105;
          }

          else
          {

            v18 = v94;
          }
        }
      }
    }

    v115 = v119;
    v116 = v120;
    v117 = v121;
    v118 = v122;
    v43 = v123;
    v44 = *(&v123 + 1);
    v114 = v124;
    if ((~v123 & 0xFEFEFE) == 0)
    {

      return;
    }

    v45 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
    swift_beginAccess();
    v46 = *&v25[v45];
    if (!v46)
    {

      v49 = v101;
      (*(v102 + 56))(v101, 1, 1, v14);
      goto LABEL_24;
    }

    v108 = v115;
    v109 = v116;
    v110 = v117;
    v111[0] = v118;
    LOWORD(v111[1]) = v43;
    BYTE2(v111[1]) = BYTE2(v43);
    sub_1000077D8(&v119, v107, &qword_100AE8CC0);
    sub_1000077D8(&v119, v107, &qword_100AE8CC0);
    v47 = v46;
    v48 = v101;
    sub_10079B4D4();

    v49 = v48;
    v112[2] = v110;
    v113[0] = v111[0];
    *(v113 + 15) = *(v111 + 15);
    v112[0] = v108;
    v112[1] = v109;
    sub_10049F8FC(v112);
    v50 = v102;
    v51 = v14;
    v52 = *(v102 + 48);
    if (v52(v49, 1, v51) == 1)
    {

      sub_100007840(&v119, &qword_100AE8CC0);
LABEL_24:
      v53 = &qword_100AECD00;
      v54 = v49;
LABEL_25:
      sub_100007840(v54, v53);
      return;
    }

    v93 = v44;
    v55 = v50[4];
    v104 = (v50 + 4);
    v101 = v55;
    (v55)(v18, v49, v51);
    v56 = v50[2];
    v57 = v97;
    v94 = v18;
    v92 = v56;
    v56(v97);
    v58 = v50[7];
    v59 = 1;
    v58(v57, 0, 1, v51);
    v105 = v25;
    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      v61 = v60;
      v62 = [v60 collectionView];

      v63 = v100;
      if (v62 && (v64 = [v62 indexPathsForSelectedItems], v62, v64))
      {
        v65 = v103;
        v66 = sub_1007A25E4();

        if (*(v66 + 16))
        {
          v92(v63, v66 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v65);
          v59 = 0;
        }

        else
        {
          v59 = 1;
        }

        v67 = v99;
      }

      else
      {
        v59 = 1;
        v67 = v99;
      }
    }

    else
    {
      v67 = v99;
      v63 = v100;
    }

    v68 = v103;
    v58(v63, v59, 1, v103);
    v69 = *(v67 + 48);
    v71 = v96;
    v70 = v97;
    sub_1000077D8(v97, v96, &qword_100AECD00);
    sub_1000077D8(v63, v71 + v69, &qword_100AECD00);
    if (v52(v71, 1, v68) == 1)
    {
      sub_100007840(v63, &qword_100AECD00);
      sub_100007840(v70, &qword_100AECD00);
      v72 = v52(v71 + v69, 1, v68);
      v73 = v102;
      v74 = v68;
      if (v72 == 1)
      {
        sub_100007840(v71, &qword_100AECD00);
        v75 = v94;
        v76 = v105;
        goto LABEL_46;
      }
    }

    else
    {
      v77 = v95;
      sub_1000077D8(v71, v95, &qword_100AECD00);
      if (v52(v71 + v69, 1, v68) != 1)
      {
        v82 = v98;
        (v101)(v98, v71 + v69, v68);
        sub_1000229CC(&qword_100AE8CC8, &type metadata accessor for IndexPath);
        v83 = sub_1007A2124();
        v73 = v102;
        v84 = *(v102 + 8);
        v84(v82, v68);
        sub_100007840(v63, &qword_100AECD00);
        sub_100007840(v97, &qword_100AECD00);
        v84(v77, v68);
        sub_100007840(v71, &qword_100AECD00);
        v74 = v68;
        v75 = v94;
        v76 = v105;
        if (v83)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      sub_100007840(v63, &qword_100AECD00);
      sub_100007840(v97, &qword_100AECD00);
      v73 = v102;
      (*(v102 + 8))(v77, v68);
      v74 = v68;
    }

    sub_100007840(v71, &unk_100AE8CB0);
    v75 = v94;
    v76 = v105;
LABEL_42:
    v78 = swift_unknownObjectWeakLoadStrong();
    if (v78)
    {
      v79 = v78;
      v80 = [v78 collectionView];

      if (v80)
      {
        v81 = sub_100796DF4().super.isa;
        [v80 selectItemAtIndexPath:v81 animated:1 scrollPosition:v93];
      }
    }

LABEL_46:
    if (v114 != 1)
    {
      (*(v73 + 8))(v75, v74);
      sub_100007840(&v119, &qword_100AE8CC0);

      return;
    }

    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      v86 = v85;
      v87 = [v85 collectionView];

      if (!v87 || (v88 = sub_100796DF4().super.isa, v89 = [v87 cellForItemAtIndexPath:v88], v87, v88, !v89))
      {
        (*(v73 + 8))(v75, v74);

        v53 = &qword_100AE8CC0;
        v54 = &v119;
        goto LABEL_25;
      }

      type metadata accessor for SidebarTextFieldListCell();
      v90 = swift_dynamicCastClass();
      if (v90)
      {
        v91 = v90[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing];
        v90[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing] = 1;
        if (v91 == 1)
        {

          sub_100007840(&v119, &qword_100AE8CC0);
LABEL_59:
          (*(v73 + 8))(v75, v74);
          return;
        }

        [v90 setNeedsUpdateConfiguration];
      }
    }

    else
    {
    }

    sub_100007840(&v119, &qword_100AE8CC0);
    goto LABEL_59;
  }
}

void sub_10051FD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10051FDD8(a3);
  }
}

void sub_10051FDD8(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v58 = *(a1 + 16);
  v59 = v4;
  v5 = *(a1 + 32);
  v60 = *(a1 + 48);
  v61 = v5;
  v6 = *(a1 + 66);
  v7 = *(a1 + 64);
  v55 = sub_1007A1C54();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1007A1CA4();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_100796E74();
  v62 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v50 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong collectionView];

    v56 = v21;
    if (v21)
    {
      v22 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
      swift_beginAccess();
      v23 = *(v2 + v22);
      if (!v23)
      {

        (*(v62 + 56))(v13, 1, 1, v14);
        goto LABEL_7;
      }

      v50 = v8;
      *aBlock = v59;
      *v65 = v60;
      *&aBlock[16] = v58;
      *&aBlock[32] = v61;
      *&v65[16] = v7 & 0x101;
      v65[18] = ((v7 | (v6 << 16)) & 0x1FFFF | 0xC00000u) >> 16;
      v24 = v23;
      sub_10049F950(a1, v63);
      sub_10079B4D4();

      v66[2] = *&aBlock[32];
      *v67 = *v65;
      *&v67[15] = *&v65[15];
      v66[0] = *aBlock;
      v66[1] = *&aBlock[16];
      sub_10049F8FC(v66);
      v25 = v62;
      v26 = v14;
      if ((*(v62 + 48))(v13, 1, v14) == 1)
      {

LABEL_7:
        sub_100007840(v13, &qword_100AECD00);
        return;
      }

      v27 = v57;
      (*(v25 + 32))(v57, v13, v14);
      isa = sub_100796DF4().super.isa;
      v29 = v56;
      v30 = [v56 cellForItemAtIndexPath:isa];

      if (v30)
      {
        type metadata accessor for SidebarLabelListCell();
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = v31;
          memset(aBlock, 0, 41);
          aBlock[41] = 6;

          sub_10079B8C4();

          v33 = [v29 indexPathsForSelectedItems];
          v34 = v55;
          if (v33)
          {
            *&v60 = v32;
            v35 = v33;
            v36 = sub_1007A25E4();

            v37 = v36;
            v38 = *(v36 + 16);
            if (v38)
            {
              *&v59 = v30;
              v39 = v25 + 16;
              *&v61 = *(v25 + 16);
              v40 = (*(v25 + 80) + 32) & ~*(v25 + 80);
              *&v58 = v37;
              v41 = v37 + v40;
              v42 = *(v25 + 72);
              v43 = v56;
              do
              {
                (v61)(v16, v41, v26);
                v44 = sub_100796DF4().super.isa;
                (*(v39 - 8))(v16, v26);
                [v43 deselectItemAtIndexPath:v44 animated:1];

                v41 += v42;
                --v38;
              }

              while (v38);

              v34 = v55;
              v25 = v62;
              v30 = v59;
              v32 = v60;
            }

            else
            {

              v32 = v60;
            }
          }

          sub_10000A7C4(0, &qword_100AD1E10);
          v62 = sub_1007A2D74();
          v45 = swift_allocObject();
          *(v45 + 16) = v32;
          *&aBlock[32] = sub_100529320;
          *&aBlock[40] = v45;
          *aBlock = _NSConcreteStackBlock;
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1003323D0;
          *&aBlock[24] = &unk_100A21DE0;
          v46 = _Block_copy(aBlock);
          *&v61 = v30;

          v47 = v51;
          sub_1007A1C74();
          *aBlock = _swiftEmptyArrayStorage;
          sub_1000229CC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
          sub_1001F1160(&unk_100AD7CA0);
          sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
          v48 = v53;
          sub_1007A3594();
          v49 = v62;
          sub_1007A2D94();

          _Block_release(v46);
          (*(v50 + 8))(v48, v34);
          (*(v52 + 8))(v47, v54);
          (*(v25 + 8))(v57, v26);
        }

        else
        {

          (*(v25 + 8))(v27, v14);
        }
      }

      else
      {
        (*(v25 + 8))(v27, v14);
      }
    }
  }
}

uint64_t sub_10052064C(uint64_t a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v26 - v14;
  v26[1] = sub_10000A7C4(0, &qword_100AD8390);
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v3 + 16))(v5, v8, v2);
  sub_1007A22D4();
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  v18 = objc_opt_self();
  v19 = sub_1007A2214();
  v20 = [v18 __systemImageNamedSwift:v19];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = *a1;
  *(v22 + 40) = *(a1 + 16);
  v24 = *(a1 + 48);
  *(v22 + 56) = *(a1 + 32);
  *(v22 + 72) = v24;
  *(v22 + 87) = *(a1 + 63);
  *(v22 + 24) = v23;
  sub_10049F950(a1, v27);
  return sub_1007A31D4();
}

uint64_t sub_1005209E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_1007A2744();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1007A26F4();

  sub_10049F950(a3, v15);
  v10 = sub_1007A26E4();
  v11 = swift_allocObject();
  v12 = *a3;
  *(v11 + 56) = *(a3 + 16);
  v13 = *(a3 + 48);
  *(v11 + 72) = *(a3 + 32);
  *(v11 + 88) = v13;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v8;
  *(v11 + 103) = *(a3 + 63);
  *(v11 + 40) = v12;

  sub_100345DB4(0, 0, v6, &unk_10082EC88, v11);
}

uint64_t sub_100520B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1007A26F4();
  v5[8] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100520C34, v7, v6);
}

uint64_t sub_100520C34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_100520D38;
    v3 = *(v0 + 56);

    return sub_100520EEC(v3);
  }

  else
  {

    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100520D38(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return _swift_task_switch(sub_100520E80, v5, v4);
}

uint64_t sub_100520E80()
{
  v1 = *(v0 + 104);

  **(v0 + 40) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100520EEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1007A26F4();
  v2[4] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100520F84, v4, v3);
}

uint64_t sub_100520F84()
{
  v1 = _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(**(v0 + 16), *(*(v0 + 16) + 8));
  v3 = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  if (v2)
  {
    if (qword_100AD1700 != -1)
    {
      v16 = v1;
      swift_once();
      v1 = v16;
    }

    v4 = sub_10048A8D8(v1, v3);
    *(v0 + 72) = v4;
    if (v4)
    {
      v9 = *(v0 + 16);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = swift_task_alloc();
      *(v0 + 80) = v12;
      *v12 = v0;
      v12[1] = sub_100521198;

      return sub_100522028(v11, v10);
    }

    sub_100522B78(*(v0 + 16));
    sub_100798004();
    v5 = sub_100797FF4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong ba_effectiveAnalyticsTracker];
    }

    else
    {
      v8 = 0;
    }

    v14 = sub_1007A2214();

    [v5 emitCollectionRemoveEventWithTracker:v8 collectionID:v14 collectionItemCount:0];
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15(v3 != 0);
}

uint64_t sub_100521198(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_1005212C0, v4, v3);
}

uint64_t sub_1005212C0()
{
  v1 = *(v0 + 88);

  if (v1 == 1)
  {
    v2 = *(v0 + 72);
    sub_100522B78(*(v0 + 16));
    sub_100798004();
    v3 = sub_100797FF4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong ba_effectiveAnalyticsTracker];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_1007A2214();

    [v3 emitCollectionRemoveEventWithTracker:v6 collectionID:v7 collectionItemCount:v2];
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

id sub_1005213EC()
{
  v1 = sub_100796CF4();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15)
  {
    v33 = v0;
    v16 = v15;
    sub_10079B454();

    v36 = v40;
    *&v39[15] = *&v43[15];
    *v39 = *v43;
    v37 = v41;
    v38 = v42;
    v17 = (*&v43[15] >> 8) | (v43[18] << 16);
    if ((~v17 & 0xFEFEFE) != 0)
    {
      if (v17 >> 22 > 2)
      {
        v18 = vmovn_s64(vceqq_s64(v36, xmmword_10082EB90));
        if ((v18.i32[0] & v18.i32[1] & 1) == 0)
        {
          v31 = *v39;
          v29 = v37;
          v30 = v38;
          v32 = v36;
          if ((sub_1007A3AB4() & 1) == 0)
          {
            v20 = v17 & 0x3FFFFF;
            sub_1007A2154();
            sub_100796C94();
            (*(v8 + 16))(v10, v13, v7);
            type metadata accessor for BundleFinder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            v23 = v34;
            (*(v34 + 16))(v3, v6, v1);
            sub_1007A22D4();
            (*(v23 + 8))(v6, v1);
            (*(v8 + 8))(v13, v7);
            v24 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 40) = v29;
            *(v25 + 24) = v32;
            *(v25 + 72) = v31;
            *(v25 + 56) = v30;
            *(v25 + 90) = BYTE2(v20);
            *(v25 + 88) = v20;

            sub_1000077D8(&v36, aBlock, &qword_100AE8CD0);
            v26 = sub_1007A2214();

            aBlock[4] = sub_10052715C;
            aBlock[5] = v25;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100521E8C;
            aBlock[3] = &unk_100A21AE8;
            v27 = _Block_copy(aBlock);
            v28 = [objc_opt_self() contextualActionWithStyle:1 title:v26 handler:v27];
            sub_100007840(&v36, &qword_100AE8CD0);

            _Block_release(v27);

            return v28;
          }
        }
      }

      sub_100007840(&v36, &qword_100AE8CD0);
    }
  }

  return 0;
}

uint64_t sub_100521960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20[-v10];
  v12 = sub_1007A2744();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1007A26F4();

  sub_10049F950(a6, v20);
  v15 = sub_1007A26E4();
  v16 = swift_allocObject();
  v17 = *a6;
  *(v16 + 72) = *(a6 + 16);
  v18 = *(a6 + 48);
  *(v16 + 88) = *(a6 + 32);
  *(v16 + 104) = v18;
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = v13;
  *(v16 + 119) = *(a6 + 63);
  *(v16 + 56) = v17;

  sub_1003457A0(0, 0, v11, &unk_10082EBE8, v16);
}

uint64_t sub_100521B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_1007A26F4();
  v7[9] = sub_1007A26E4();
  v9 = sub_1007A2694();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_100521BCC, v9, v8);
}

uint64_t sub_100521BCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_100521CD4;
    v3 = *(v0 + 64);

    return sub_100520EEC(v3);
  }

  else
  {

    (*(v0 + 40))(0);
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100521CD4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return _swift_task_switch(sub_100521E1C, v5, v4);
}

uint64_t sub_100521E1C()
{

  (*(v0 + 40))(*(v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

void sub_100521E8C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100527170, v8);
}

id sub_100521F60(char *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    if (![a1 isEditing])
    {
      sub_1005E0E50(1);
      sub_1005E16F8(1);
    }

    [a1 isEditing];
    sub_1005E0E50(0);
    v3 = OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField;
    v4 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField];
    if (v4)
    {
      [v4 becomeFirstResponder];
    }

    sub_1005E0E50(0);
    result = *&a1[v3];
    if (result)
    {

      return [result selectAll:a1];
    }
  }

  return result;
}

uint64_t sub_100522028(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100796CF4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_1007A21D4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_1007A26F4();
  v3[14] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v3[15] = v7;
  v3[16] = v6;

  return _swift_task_switch(sub_100522198, v7, v6);
}

uint64_t sub_100522198()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v47 = Strong;
    v2 = v0[11];
    v3 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v52 = sub_1007A2214();
    sub_1007A2154();
    sub_100796C94();
    v51 = *(v4 + 16);
    v51(v2, v3, v5);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = objc_opt_self();
    v54 = ObjCClassFromMetadata;
    v11 = [v53 bundleForClass:ObjCClassFromMetadata];
    v50 = *(v8 + 16);
    v50(v7, v6, v9);
    sub_1007A22D4();
    v48 = *(v8 + 8);
    v48(v6, v9);
    v49 = *(v4 + 8);
    v49(v3, v5);
    v12 = sub_1007A2214();

    v13 = [v52 stringByTruncatingToLength:50 options:3 truncationString:v12];

    if (v13)
    {
      v46 = sub_1007A2254();
      v15 = v14;
    }

    else
    {
      v15 = v0[3];

      v46 = v0[2];
    }

    v0[18] = v15;
    v18 = v0[12];
    v45 = v15;
    v19 = v0[11];
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    v23 = v0[5];
    sub_1007A2154();
    sub_100796C94();
    v51(v19, v18, v20);
    v24 = [v53 bundleForClass:v54];
    v50(v22, v21, v23);
    v25 = sub_1007A22D4();
    v43 = v26;
    v44 = v25;
    v0[19] = v26;
    v48(v21, v23);
    v49(v18, v20);
    sub_1007A2154();
    sub_100796C94();
    v51(v19, v18, v20);
    v27 = [v53 bundleForClass:v54];
    v50(v22, v21, v23);
    v28 = sub_1007A22D4();
    v41 = v29;
    v42 = v28;
    v0[20] = v29;
    v48(v21, v23);
    v49(v18, v20);
    sub_1007A2154();
    sub_100796C94();
    v51(v19, v18, v20);
    v30 = [v53 bundleForClass:v54];
    v50(v22, v21, v23);
    v31 = sub_1007A22D4();
    v39 = v32;
    v40 = v31;
    v0[21] = v32;
    v48(v21, v23);
    v49(v18, v20);
    sub_1007A2154();
    sub_100796C94();
    v51(v19, v18, v20);
    v33 = [v53 bundleForClass:v54];
    v50(v22, v21, v23);
    v55 = sub_1007A22D4();
    v35 = v34;
    v0[22] = v34;
    v48(v21, v23);
    v49(v18, v20);
    v36 = sub_1007A26E4();
    v0[23] = v36;
    v37 = swift_task_alloc();
    v0[24] = v37;
    v37[2] = v44;
    v37[3] = v43;
    v37[4] = v42;
    v37[5] = v41;
    v37[6] = v46;
    v37[7] = v45;
    v37[8] = v40;
    v37[9] = v39;
    v37[10] = v55;
    v37[11] = v35;
    v37[12] = v47;
    v38 = swift_task_alloc();
    v0[25] = v38;
    *v38 = v0;
    v38[1] = sub_1005228D4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 26, v36, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001008DB3A0, sub_10052733C, v37, &type metadata for Bool);
  }

  else
  {

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_1005228D4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100522AD8, v3, v2);
}

uint64_t sub_100522AD8()
{

  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100522B78(uint64_t a1)
{
  v2 = v1;
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v42 = *(a1 + 32);
  v41 = v8;
  v9 = *(a1 + 56);
  v40 = *(a1 + 48);
  v39 = v9;
  v38 = *(a1 + 66);
  v37 = *(a1 + 64);
  v10 = sub_100796E74();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v13 - 8);
  v36 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  *&v48 = v5;
  *(&v48 + 1) = v4;
  *&v49 = v6;
  *(&v49 + 1) = v7;
  *&v50 = 0;
  WORD4(v50) = 1278;

  sub_10079B8C4();

  v18 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (v19)
  {
    *&v44 = v5;
    *(&v44 + 1) = v4;
    *&v45 = v6;
    *(&v45 + 1) = v7;
    *&v46 = v42;
    *(&v46 + 1) = v41;
    *v47 = v40;
    *&v47[8] = v39;
    *&v47[16] = v37 & 0x101;
    v47[18] = ((v37 | (v38 << 16)) & 0x1FFFF | 0xC00000u) >> 16;
    v20 = v19;
    sub_10049F950(a1, v43);
    sub_10079B4D4();

    v50 = v46;
    *v51 = *v47;
    *&v51[15] = *&v47[15];
    v48 = v44;
    v49 = v45;
    sub_10049F8FC(&v48);
    v21 = *(v11 + 48);
    v22 = v17;
    if (v21(v17, 1, v10) != 1)
    {
      v23 = v36;
      sub_1005234A8(v22, v36);
      if (v21(v23, 1, v10) == 1)
      {
        sub_100007840(v22, &qword_100AECD00);
        v22 = v23;
      }

      else
      {
        v29 = v35;
        (*(v11 + 32))(v35, v23, v10);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v32 = [Strong collectionView];

          if (v32)
          {
            isa = sub_100796DF4().super.isa;
            [v32 selectItemAtIndexPath:isa animated:1 scrollPosition:2];

            sub_100523D2C(v29, 0);
          }
        }

        (*(v11 + 8))(v29, v10);
      }

      return sub_100007840(v22, &qword_100AECD00);
    }
  }

  else
  {
    (*(v11 + 56))(v17, 1, 1, v10);
    v22 = v17;
  }

  if (qword_100AD1768 != -1)
  {
    swift_once();
  }

  v24 = sub_10079ACE4();
  sub_100008B98(v24, qword_100AE7000);
  v25 = sub_10079ACC4();
  v26 = sub_1007A29B4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Couldn't find the item to be deleted in the sidebar. Perhaps it's deleted from cloud sync during confirmation dialog. Going to fallback to a selection on sidebar.", v27, 2u);
  }

  return sub_100007840(v22, &qword_100AECD00);
}

void sub_100523074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v35 = a1;
  v41 = a11;
  v42 = a12;
  v40 = a10;
  v37 = a9;
  v38 = a8;
  v36 = sub_1001F1160(&qword_100AD60E0);
  v15 = *(v36 - 8);
  v43 = *(v15 + 64);
  __chkstk_darwin(v36);
  v17 = &v33 - v16;
  sub_1001F1160(&unk_100AD5090);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10080B690;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10000E4C4();
  *(v18 + 32) = a6;
  *(v18 + 40) = a7;

  sub_1007A2284();
  v19 = sub_1007A2214();
  v20 = sub_1007A2214();

  v39 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v34 = *(v15 + 16);
  v21 = v36;
  v34(v17, a1, v36);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  v33 = *(v15 + 32);
  v33(v23 + v22, v17, v21);
  v24 = sub_1007A2214();
  v48 = sub_10052737C;
  v49 = v23;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100201C54;
  v47 = &unk_100A21B88;
  v25 = _Block_copy(&aBlock);

  v26 = objc_opt_self();
  v38 = [v26 actionWithTitle:v24 style:2 handler:v25];
  _Block_release(v25);

  v34(v17, v35, v21);
  v27 = swift_allocObject();
  v33(v27 + v22, v17, v21);
  v28 = sub_1007A2214();
  v48 = sub_100527418;
  v49 = v27;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100201C54;
  v47 = &unk_100A21BD8;
  v29 = _Block_copy(&aBlock);

  v30 = [v26 actionWithTitle:v28 style:1 handler:v29];
  _Block_release(v29);

  v32 = v38;
  v31 = v39;
  [v39 addAction:v38];
  [v31 addAction:v30];
  [v42 presentViewController:v31 animated:1 completion:0];
}

uint64_t sub_1005234A8@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v61 = a1;
  v4 = sub_100796E74();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = sub_1001F1160(&unk_100AE8CB0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v62 = &v56 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v21 = Strong, v22 = [Strong collectionView], v21, !v22))
  {
    v29 = *(v63 + 56);

    return v29(a2, 1, 1, v4);
  }

  v23 = [v22 isEditing];
  v58 = a2;
  v59 = v22;
  if (v23)
  {
    goto LABEL_11;
  }

  v24 = [v22 indexPathsForSelectedItems];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = sub_1007A25E4();

  if (!*(v26 + 16))
  {

LABEL_11:
    v28 = *(v63 + 56);
    v28(v62, 1, 1, v4);
    goto LABEL_12;
  }

  v27 = v62;
  (*(v63 + 16))(v62, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v4);

  v28 = *(v63 + 56);
  v28(v27, 0, 1, v4);
LABEL_12:
  v31 = *(v63 + 48);
  if ((v31)(v61, 1, v4) != 1 && (v31)(v62, 1, v4) != 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1000077D8(v61, v14, &qword_100AECD00);
    if ((v31)(v14, 1, v4) == 1)
    {
      sub_100007840(v14, &qword_100AECD00);
      v9 = v58;
LABEL_16:
      v32 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
      swift_beginAccess();
      v33 = *&v2[v32];
      if (v33)
      {
        v64 = 2;
        v34 = v33;
        v35 = sub_10079B4A4();
        v37 = v36;

        if ((v37 & 1) == 0)
        {
          v49 = v59;
          v50 = [v59 numberOfItemsInSection:v35];
          v51 = __OFSUB__(v50, 1);
          result = v50 - 1;
          if (v51)
          {
            __break(1u);
            goto LABEL_51;
          }

          sub_100796E44();

LABEL_36:
          v42 = v9;
          v52 = 0;
LABEL_44:
          v28(v42, v52, 1, v4);
          return sub_100007840(v62, &qword_100AECD00);
        }
      }

      if (qword_100AD1768 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }

    v43 = v60;
    (*(v63 + 32))(v60, v14, v4);
    v44 = [v59 numberOfItemsInSection:sub_100796E64()];
    v31 = v44 - 1;
    if (__OFSUB__(v44, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_once();
LABEL_19:
      v38 = sub_10079ACE4();
      sub_100008B98(v38, qword_100AE7000);
      v39 = sub_10079ACC4();
      v40 = sub_1007A29C4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unable to find the library section index. The sidebar selection may be broken after deleting collection.", v41, 2u);
      }

      v42 = v9;
      goto LABEL_43;
    }

    v45 = sub_100796E54();
    v9 = v58;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_48;
    }

    if (v45 + 1 >= v31)
    {
      break;
    }

    v2 = v43;
    v46 = sub_100796E54();
    v17 = (v46 + 1);
    if (!__OFADD__(v46, 1))
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_28:
    v56 = v28;
    v47 = v9[12];
    v9 = &unk_10082F610;
    sub_1000077D8(v62, v11, &qword_100AECD00);
    v57 = v47;
    sub_1000077D8(v61, &v11[v47], &qword_100AECD00);
    if ((v31)(v11, 1, v4) == 1)
    {
      if ((v31)(&v11[v57], 1, v4) != 1)
      {

        goto LABEL_41;
      }

      sub_100007840(v11, &qword_100AECD00);
      v28 = v56;
    }

    else
    {
      sub_1000077D8(v11, v17, &qword_100AECD00);
      v53 = v57;
      if ((v31)(&v11[v57], 1, v4) == 1)
      {

        (*(v63 + 8))(v17, v4);
LABEL_41:
        v54 = v58;
        v28 = v56;
        sub_100007840(v11, &unk_100AE8CB0);
LABEL_42:
        v42 = v54;
LABEL_43:
        v52 = 1;
        goto LABEL_44;
      }

      (*(v63 + 32))(v8, &v11[v53], v4);
      sub_1000229CC(&qword_100AE8CC8, &type metadata accessor for IndexPath);
      LODWORD(v57) = sub_1007A2124();
      v9 = (v63 + 8);
      v55 = *(v63 + 8);
      v55(v8, v4);
      v55(v17, v4);
      sub_100007840(v11, &qword_100AECD00);
      v28 = v56;
      if ((v57 & 1) == 0)
      {

        v54 = v58;
        goto LABEL_42;
      }
    }
  }

  if (v31 < 3)
  {
    (*(v63 + 8))(v43, v4);
    goto LABEL_16;
  }

  result = sub_100796E54();
  if (!__OFSUB__(result, 1))
  {
LABEL_33:
    sub_100796E64();
    sub_100796E44();

    v48 = *(v63 + 8);
    v63 += 8;
    v48(v43, v4);
    goto LABEL_36;
  }

LABEL_51:
  __break(1u);
  return result;
}

void sub_100523D2C(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong collectionView];

    if (v6)
    {
      v7 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8 && (v9 = v8, sub_10079B454(), v9, v24[0] = v26, v24[1] = v27, v24[2] = v28, *v25 = v29[0], *&v25[15] = *(v29 + 15), v10 = (*(v29 + 15) >> 8) | (BYTE2(v29[1]) << 16), (~v10 & 0xFEFEFE) != 0))
      {
        if ((v10 & 0x800000) == 0)
        {
          goto LABEL_7;
        }

        v11 = *(&v24[0] + 1);
        v21 = *&v24[0];
        v12 = *v25;

        sub_1000077D8(v24, v22, &qword_100AE8CD0);

        v13 = 256;
        if ((a2 & 1) == 0)
        {
          v13 = 0;
        }

        v22[0] = v21;
        v22[1] = v11;
        v22[3] = 0;
        v22[4] = 0;
        v22[2] = v13;
        v23 = 512;
        sub_10079B8C4();

        isa = sub_100796DF4().super.isa;
        v15 = [v6 cellForItemAtIndexPath:isa];

        if (v15)
        {
          v16 = v15;
          v17 = sub_1007A31B4();

          if (v17)
          {

            sub_100007840(v24, &qword_100AE8CD0);
          }

          else
          {
            v18 = UIAccessibilityLayoutChangedNotification;
            v19 = sub_100796DF4().super.isa;
            v20 = [v6 cellForItemAtIndexPath:v19];

            UIAccessibilityPostNotification(v18, v20);
            sub_100007840(v24, &qword_100AE8CD0);
          }
        }

        else
        {
LABEL_7:

          sub_100007840(v24, &qword_100AE8CD0);
        }
      }

      else
      {
      }
    }
  }
}

void sub_100523FE4(void *a1, uint64_t a2)
{
  v3 = v2;
  if ([a1 isEditing])
  {
    v6 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
    swift_beginAccess();
    v7 = *(v3 + v6);
    if (v7)
    {
      v8 = v7;
      sub_10079B454();

      *&v26[15] = *&v30[15];
      v25 = v29;
      *v26 = *v30;
      v23 = v27;
      v24 = v28;
      v9 = (*&v30[15] >> 8) | (v30[18] << 16);
      if ((~v9 & 0xFEFEFE) != 0)
      {
        if ((v9 & 0xC00000) == 0x800000)
        {
          sub_1005243DC();
        }

        sub_100007840(&v23, &qword_100AE8CD0);
      }
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9A4();

    if (v27 == 1)
    {
      v10 = *(v2 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
      if (v10)
      {
        v11 = v10;
        [v11 endEditing:1];
        if (([v11 isEditing] & 1) == 0)
        {
          sub_1005E16F8(0);
        }
      }
    }

    v12 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
    swift_beginAccess();
    v13 = *(v3 + v12);
    if (v13)
    {
      v14 = v13;
      sub_10079B454();

      *&v26[15] = *&v30[15];
      v23 = v27;
      v24 = v28;
      v25 = v29;
      *v26 = *v30;
      v15 = (*&v30[15] >> 8) | (v30[18] << 16);
      if ((~v15 & 0xFEFEFE) != 0)
      {
        if (v15 >= 0xC00000 && (v23 == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL) || (sub_1007A3AB4() & 1) != 0))
        {
          v21[2] = v25;
          v22[0] = *v26;
          *(v22 + 15) = *&v26[15];
          v21[0] = v23;
          v21[1] = v24;
          sub_100529328(v21, v19);
          isa = sub_100796DF4().super.isa;
          v17 = [a1 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for SidebarLabelListCell();
            if (swift_dynamicCastClass())
            {
              memset(v19, 0, sizeof(v19));
              v20 = 6;

              sub_10079B8C4();

              v18 = sub_100796DF4().super.isa;
              [a1 deselectItemAtIndexPath:v18 animated:0];

              sub_1005E0A84(1, 1);
              sub_100007840(&v23, &qword_100AE8CD0);
              sub_100007840(&v23, &qword_100AE8CD0);
              return;
            }
          }

          sub_100007840(&v23, &qword_100AE8CD0);
        }

        sub_100007840(&v23, &qword_100AE8CD0);
      }
    }

    sub_100523D2C(a2, 1);
  }
}

void sub_1005243DC()
{
  v1 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    sub_10079B454();

    *&v10[15] = *&v14[15];
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    *v10 = *v14;
    v4 = (*&v14[15] >> 8) | (v14[18] << 16);
    if ((~v4 & 0xFEFEFE) != 0)
    {
      if ((v4 & 0xC00000) == 0x800000)
      {

        _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(*&v9[0], *(&v9[0] + 1));
        if (v5)
        {

          sub_100007840(v9, &qword_100AE8CD0);
LABEL_6:

          return;
        }

        v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(*&v9[0], *(&v9[0] + 1));
        if (v6 > 0x10 || ((1 << v6) & 0xE01F) == 0 && v6 != 16)
        {
          if (RootBarItemsProvider.ItemKind.rawValue.getter() == 0x7972617262696CLL && v7 == 0xE700000000000000)
          {
          }

          else
          {
            v8 = sub_1007A3AB4();

            if ((v8 & 1) == 0)
            {

              sub_10079B8C4();

              sub_100007840(v9, &qword_100AE8CD0);
              goto LABEL_6;
            }
          }
        }
      }

      sub_100007840(v9, &qword_100AE8CD0);
    }
  }
}

uint64_t sub_100524824(void *a1)
{
  if (![a1 isEditing])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10079B9A4();

    if (v20 == 1)
    {
      v8 = v1;
      isa = sub_100796DF4().super.isa;
      v10 = [a1 cellForItemAtIndexPath:isa];

      v11 = *(v8 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
      if (v10)
      {
        if (v11)
        {

          LOBYTE(v4) = v10 != v11;
        }

        else
        {
          v12 = 0;

          LOBYTE(v4) = 1;
        }

        return v4 & 1;
      }

      if (!v11)
      {
        v13 = 0;
        goto LABEL_18;
      }
    }

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  v3 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    sub_10079B454();

    *&v19[15] = *&v23[15];
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    *v19 = *v23;
    v6 = (*&v23[15] >> 8) | (v23[18] << 16);
    if ((~v6 & 0xFEFEFE) == 0)
    {
LABEL_18:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    if ((v6 & 0xC00000) == 0x800000)
    {
      _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(*&v18[0], *(&v18[0] + 1));
      if (v7)
      {
LABEL_6:
        sub_100007840(v18, &qword_100AE8CD0);

        goto LABEL_18;
      }

      v14 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(*&v18[0], *(&v18[0] + 1));
      if (v14 > 0x10 || ((1 << v14) & 0xE01F) == 0 && v14 != 16)
      {
        if (RootBarItemsProvider.ItemKind.rawValue.getter() != 0x7972617262696CLL || v16 != 0xE700000000000000)
        {
          v17 = sub_1007A3AB4();
          sub_100007840(v18, &qword_100AE8CD0);

          LOBYTE(v4) = v17 ^ 1;
          return v4 & 1;
        }

        goto LABEL_6;
      }
    }

    sub_100007840(v18, &qword_100AE8CD0);
    goto LABEL_18;
  }

  return v4 & 1;
}

id sub_100524C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_1007A21D4();
  v32 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v35 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100811360;
  v33 = sub_10000A7C4(0, &qword_100AD8390);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  sub_1007A22D4();
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v17, v32);
  v21 = objc_opt_self();
  v22 = sub_1007A2214();
  v23 = [v21 __systemImageNamedSwift:v22];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = *a3;
  *(v25 + 40) = *(a3 + 16);
  v27 = *(a3 + 48);
  *(v25 + 56) = *(a3 + 32);
  *(v25 + 72) = v27;
  *(v25 + 87) = *(a3 + 63);
  *(v25 + 24) = v26;
  sub_10049F950(a3, v36);
  *(v18 + 32) = sub_1007A31D4();
  *(v18 + 40) = sub_10052064C(a3);
  sub_10000A7C4(0, &qword_100AE8DB0);
  isa = sub_1007A25D4().super.isa;

  v29 = [v35 bk_menuWithChildren:isa];

  return v29;
}

id sub_100525158()
{
  v1 = sub_100796E74();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v6 = Strong;
  v7 = [Strong collectionView];

  if (!v7)
  {
    goto LABEL_11;
  }

  result = [v7 numberOfSections];
  if (!__OFSUB__(result, 1))
  {
    sub_100796E44();
    if (sub_100796E04())
    {
      v9 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
      swift_beginAccess();
      v10 = *(v0 + v9);
      if (v10 && (v11 = v10, sub_10079B454(), v11, v12 = v45 | (v46 << 16), (~v12 & 0xFEFEFE) != 0))
      {
        v14 = v37;
        v15 = v35;
        v16 = v36;
        if (((v12 >> 22) & 3) > 1)
        {
          v27 = v41;
          v26 = v42;
          v28 = v43;
          v24 = v37 | ((v38 | ((v39 | (v40 << 16)) << 32)) << 8);
          v25 = v44;
          v17 = v45 & 1;
          v18 = (v12 >> 8) & 1;
          v19 = BYTE2(v12) & 1;
          *(&v48 + 1) = &type metadata for SidebarViewModel.ItemModel;
          v49 = sub_1005290E0();
          v20 = swift_allocObject();
          *&v47 = v20;
          *(v20 + 16) = v15;
          *(v20 + 24) = v16;
          v21 = v26;
          v22 = v27;
          *(v20 + 32) = v24;
          *(v20 + 40) = v22;
          *(v20 + 48) = v21;
          *(v20 + 56) = v28;
          *(v20 + 72) = v25;
          *(v20 + 80) = v17;
          *(v20 + 81) = v18;
          *(v20 + 82) = v19;
        }

        else if (((v12 >> 22) & 3) != 0)
        {
          *(&v48 + 1) = type metadata accessor for SidebarViewModel.SearchFieldModel(0);
          v49 = sub_1000229CC(&qword_100AE8D98, type metadata accessor for SidebarViewModel.SearchFieldModel);
          *&v47 = v15;
        }

        else
        {
          *(&v48 + 1) = &type metadata for SidebarViewModel.HeaderModel;
          v49 = sub_100529188();
          LOBYTE(v47) = v15;
          *(&v47 + 1) = v16;
          LOBYTE(v48) = v14 & 1;
        }

        sub_1001F1160(&qword_100AE8D90);
        if (swift_dynamicCast())
        {
          v29[0] = v31;
          v29[1] = v32;
          v29[2] = v33;
          *v30 = v34[0];
          *&v30[15] = *(v34 + 15);
          if (v31 == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL))
          {

            sub_100529134(v29);
            v13 = 0;
          }

          else
          {
            v23 = sub_1007A3AB4();

            sub_100529134(v29);
            v13 = v23 ^ 1;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
        v49 = 0;
        sub_100007840(&v47, &qword_100AE8D80);
      }

      v13 = 1;
LABEL_9:
      (*(v2 + 8))(v4, v1);
      return (v13 & 1);
    }

    (*(v2 + 8))(v4, v1);

LABEL_11:
    v13 = 0;
    return (v13 & 1);
  }

  __break(1u);
  return result;
}

id sub_100525848(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7;
  v9 = sub_100796E74();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hasActiveDrop])
  {
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  sub_1000077D8(a3, v8, &qword_100AECD00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(v8, &qword_100AECD00);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  (*(v10 + 32))(v13, v8, v9);
  if ((sub_100525158() & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
  }

  v14 = [a2 localDragSession];
  if (v14)
  {
    v32[1] = v14;
    v15 = [v14 items];
    sub_10000A7C4(0, &unk_100AE8D70);
    v16 = sub_1007A25E4();

    if (v16 >> 62)
    {
      goto LABEL_30;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v10;
    for (i = v13; v17; i = v13)
    {
      v18 = 0;
      v10 = v16 & 0xFFFFFFFFFFFFFF8;
      v19 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = sub_1007A3784();
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v13 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ([v20 localObject])
        {
          sub_1007A3504();
          swift_unknownObjectRelease();
        }

        else
        {

          v36 = 0u;
          v37 = 0u;
        }

        v35[0] = v36;
        v35[1] = v37;
        if (*(&v37 + 1))
        {
          sub_1000076D4(v35, &v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10066A640(0, *(v19 + 2) + 1, 1, v19);
          }

          v23 = *(v19 + 2);
          v22 = *(v19 + 3);
          if (v23 >= v22 >> 1)
          {
            v19 = sub_10066A640((v22 > 1), v23 + 1, 1, v19);
          }

          *(v19 + 2) = v23 + 1;
          sub_1000076D4(&v36, &v19[32 * v23 + 32]);
        }

        else
        {
          sub_100007840(v35, &unk_100AD5B40);
        }

        ++v18;
        if (v13 == v17)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v17 = sub_1007A38D4();
      v33 = v10;
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_32:

    v26 = *(v19 + 2);

    v27 = objc_allocWithZone(UICollectionViewDropProposal);
    v28 = (v33 + 8);
    if (v26)
    {
      v29 = 2;
      v30 = 2;
    }

    else
    {
      v29 = 3;
      v30 = 1;
    }

    v31 = [v27 initWithDropOperation:v29 intent:v30];
    swift_unknownObjectRelease();
    (*v28)(i, v9);
    return v31;
  }

  else
  {
    v25 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
    (*(v10 + 8))(v13, v9);
    return v25;
  }
}

uint64_t sub_100525E50()
{

  sub_10079B8C4();
}

uint64_t sub_100525EDC(unint64_t a1, uint64_t (*a2)(void *, void))
{
  v3 = sub_1005AB798(a1);
  if (!v3)
  {
    return a2(_swiftEmptyArrayStorage, 0);
  }

  a2(v3, 0);
}

uint64_t sub_100525F58(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001F1160(&qword_100AE8D68);
  v2 = sub_1007A25E4();

  v1(v2);
}

uint64_t sub_100526064(void *a1)
{

  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    sub_1007A2254();
  }

  sub_10079B8C4();
}

uint64_t sub_1005263C4(void *a1)
{

  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    sub_1007A2254();
  }

  sub_10079B8C4();
}

void sub_10052650C(void *a1)
{
  v3 = sub_100796E74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v11 = Strong;
  v12 = [Strong collectionView];

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [v12 indexPathsForSelectedItems];

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = sub_1007A25E4();

  if (!*(v14 + 16))
  {

LABEL_9:
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AE7000);
    *(&v40 + 1) = sub_10079ACC4();
    v20 = sub_1007A29B4();
    if (os_log_type_enabled(*(&v40 + 1), v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, *(&v40 + 1), v20, "Can't get first selected item indexPath when text field did end editing.", v21, 2u);
    }

    v22 = *(&v40 + 1);

    return;
  }

  (*(v4 + 16))(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  (*(v4 + 32))(v9, v6, v3);
  v15 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  sub_10079B454();

  v47 = v51;
  *&v50[15] = *&v54[15];
  v48 = v52;
  v49 = v53;
  *v50 = *v54;
  v18 = (*&v54[15] >> 8) | (v54[18] << 16);
  if ((~v18 & 0xFEFEFE) == 0)
  {
    goto LABEL_29;
  }

  if (v18 >> 22 <= 2)
  {
    sub_100007840(&v47, &qword_100AE8CD0);
    goto LABEL_29;
  }

  v23 = v47;
  v40 = v48;
  v24 = [a1 text];
  if (!v24)
  {
    (*(v4 + 8))(v9, v3);
    sub_100007840(&v47, &qword_100AE8CD0);
    return;
  }

  v38 = *(&v23 + 1);
  v39 = v23;
  v25 = v24;
  v26 = sub_1007A2254();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    if (v40 != __PAIR128__(v28, v26) && (sub_1007A3AB4() & 1) == 0)
    {
      v41 = v39;
      v42 = v38;
      v43 = v26;
      v31 = v38;
      v44 = v28;
      v45 = 0;
      v46 = 1279;

      sub_10079B8C4();

      goto LABEL_28;
    }
  }

  else
  {

    v30 = sub_1007A2214();
    [a1 setText:v30];
  }

  v31 = v38;
LABEL_28:
  v41 = v39;
  v42 = v31;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v46 = 512;

  sub_10079B8C4();

  sub_100007840(&v47, &qword_100AE8CD0);

LABEL_29:
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_36;
  }

  v33 = v32;
  v34 = [v32 collectionView];

  if (!v34)
  {
    goto LABEL_36;
  }

  isa = sub_100796DF4().super.isa;
  v36 = [v34 cellForItemAtIndexPath:isa];

  if (!v36)
  {
    goto LABEL_36;
  }

  type metadata accessor for SidebarTextFieldListCell();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
LABEL_35:

LABEL_36:
    (*(v4 + 8))(v9, v3);
    return;
  }

  if (v37[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing] == 1)
  {
    v37[OBJC_IVAR____TtC5Books24SidebarTextFieldListCell_shouldBeginEditing] = 0;
    [v37 setNeedsUpdateConfiguration];
    goto LABEL_35;
  }

  (*(v4 + 8))(v9, v3);
}

void sub_100526C08(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 16];
  v31 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item];
  v32 = v2;
  v3 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 48];
  v33 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 32];
  *v34 = v3;
  *(&v34[1] + 7) = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell_item + 63];
  if (!*(&v31 + 1))
  {
    return;
  }

  v4 = v1;

  v6 = v34[0];

  sub_1005E0E50(0);
  v7 = OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField;
  v8 = *&a1[OBJC_IVAR____TtC5Books20SidebarLabelListCell__inlineEditingTextField];
  if (!v8)
  {
LABEL_7:
    sub_100007840(&v31, &qword_100AE8CD8);
    return;
  }

  v9 = v8;
  v10 = [v9 text];
  if (!v10)
  {

    goto LABEL_7;
  }

  v29 = v9;
  v11 = v10;
  v12 = sub_1007A2254();
  v14 = v13;

  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v31, *(&v31 + 1));
  if (v15)
  {

    v16 = 14;
  }

  else
  {

    LODWORD(v16) = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v31, *(&v31 + 1));
    if (v16 == 16)
    {
      v16 = 15;
    }

    else
    {
      v16 = v16;
    }
  }

  if (RootBarItemsProvider.ItemKind.rawValue.getter(v16) == 0x6D6F74737563 && v17 == 0xE600000000000000)
  {
  }

  else
  {
    v28 = v12;
    v18 = sub_1007A3AB4();

    if ((v18 & 1) == 0)
    {
      if (v31 == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL) || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1005E0E50(0);
        v23 = *&a1[v7];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1007A2214();
          [v24 setText:v25];

          v12 = v28;
        }

        v26 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v26 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          LOBYTE(v30) = v12;

          sub_10079B8C4();
          goto LABEL_31;
        }
      }

LABEL_32:

      goto LABEL_33;
    }
  }

  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    sub_1005E0E50(0);
    v20 = *&a1[v7];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1007A2214();
      [v21 setText:v22];
    }

    goto LABEL_33;
  }

  if (__PAIR128__(v14, v12) == v32 || (sub_1007A3AB4() & 1) != 0)
  {
    goto LABEL_32;
  }

  v30 = v31;

  sub_10079B8C4();

LABEL_31:

LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9A4();

  if (v30 == 1)
  {
    [a1 endEditing:1];
    if (([a1 isEditing] & 1) == 0)
    {
      sub_1005E16F8(0);
    }

    sub_10079B8C4();
  }

  sub_100007840(&v31, &qword_100AE8CD8);
  v27 = *(v4 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell);
  *(v4 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_editingCell) = 0;
}

uint64_t sub_100527188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_100521B30(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

id sub_10052725C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1005272AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000A7C4(0, &qword_100AE8DB0);
  v2 = sub_1007A25E4();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_100527384()
{
  v1 = sub_1001F1160(&qword_100AD60E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100527420()
{
  sub_1001F1160(&qword_100AD60E0);
  sub_1001F1160(&qword_100AD60E0);
  return sub_1007A26B4();
}

id sub_1005274C4()
{
  v1 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    return 0;
  }

  v3 = v0;
  v4 = v2;
  sub_10079B454();

  v18 = v22;
  v19 = v23;
  *&v21[15] = *&v25[15];
  v20 = v24;
  *v21 = *v25;
  v5 = (*&v25[15] >> 8) | (v25[18] << 16);
  if ((~v5 & 0xFEFEFE) == 0)
  {
    return 0;
  }

  if (v5 >> 22 <= 2 || v18 == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL) || (v13 = *v21, v14 = v20, v15 = v19, v16 = v18, (sub_1007A3AB4() & 1) != 0) || (swift_getKeyPath(), swift_getKeyPath(), , sub_10079B9A4(), , , , LOBYTE(aBlock[0])))
  {
    sub_100007840(&v18, &qword_100AE8CD0);
    return 0;
  }

  v7 = sub_1007A2214();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 40) = v15;
  *(v8 + 24) = v16;
  *(v8 + 72) = v13;
  *(v8 + 56) = v14;
  *(v8 + 90) = (v5 & 0x3FFFFF) >> 16;
  *(v8 + 88) = v5;
  v9 = objc_opt_self();
  aBlock[4] = sub_1005291DC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005272AC;
  aBlock[3] = &unk_100A21CC8;
  v10 = _Block_copy(aBlock);
  v11 = v3;

  v12 = [v9 configurationWithIdentifier:v7 previewProvider:0 actionProvider:v10];

  _Block_release(v10);
  return v12;
}

uint64_t sub_100527790()
{
  v1 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v3 = v2, sub_10079B454(), v3, v9[0] = v11, v9[1] = v12, v9[2] = v13, *v10 = *v14, *&v10[15] = *&v14[15], v4 = (*&v14[15] >> 8) | (v14[18] << 16), (~v4 & 0xFEFEFE) == 0))
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  v7 = v4 >> 22;
  if (v7 - 2 >= 2)
  {
    if (v7)
    {
      sub_100007840(v9, &qword_100AE8CD0);
      v5 = 0;
      return v5 & 1;
    }

    sub_100007840(v9, &qword_100AE8CD0);
    goto LABEL_3;
  }

  if (v9[0] == __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL))
  {

    v5 = 0;
  }

  else
  {
    v8 = sub_1007A3AB4();

    v5 = v8 ^ 1;
  }

  return v5 & 1;
}

void sub_10052792C(void *a1)
{
  v3 = sub_100796E74();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 proposal];
  v9 = [v8 operation];

  if (v9 == 2)
  {
    v10 = [a1 destinationIndexPath];
    if (v10)
    {
      v11 = v10;
      sub_100796E14();

      v12 = OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_dataSource;
      swift_beginAccess();
      v13 = *(v1 + v12);
      if (!v13)
      {
        (*(v4 + 8))(v7, v3);
        swift_endAccess();
        return;
      }

      v14 = v1;
      swift_endAccess();
      v15 = v13;
      sub_10079B454();

      v56 = v60;
      v57 = v61;
      v58 = v62;
      *v59 = *v63;
      *&v59[15] = *&v63[15];
      v16 = (*&v63[15] >> 8) | (v63[18] << 16);
      if ((~v16 & 0xFEFEFE) != 0)
      {
        if (v16 >> 22 > 2)
        {
          v17 = v56;
          v49 = *(&v57 + 1);
          v18 = v57;
          v47 = *(&v58 + 1);
          v48 = v58;
          v45 = *&v59[8];
          v46 = *v59;
          v19 = *(v14 + OBJC_IVAR____TtCV5Books21SidebarCollectionView11Coordinator_eventPublisher);
          v20 = swift_allocObject();
          v43 = v17;
          *(v20 + 16) = v17;
          v44 = *(&v17 + 1);
          v42 = v18;
          v21 = v49;
          *(v20 + 32) = v18;
          *(v20 + 40) = v21;
          v22 = v47;
          *(v20 + 48) = v48;
          *(v20 + 56) = v22;
          v23 = v45;
          *(v20 + 64) = v46;
          *(v20 + 72) = v23;
          *(v20 + 82) = BYTE2(v16) & 0x3F;
          *(v20 + 80) = v16;
          *(v20 + 88) = v19;
          swift_retain_n();
          sub_1000077D8(&v56, &aBlock, &qword_100AE8CD0);
          v24 = [a1 session];
          sub_10079E794();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          LODWORD(v18) = [v24 canLoadObjectsOfClass:ObjCClassFromMetadata];
          swift_unknownObjectRelease();
          if (!v18)
          {
            v47 = v19;
            v48 = v20;
            v34 = [a1 items];
            sub_1001F1160(&qword_100AE8D60);
            v35 = sub_1007A25E4();

            if (v35 >> 62)
            {
              v36 = sub_1007A38D4();
            }

            else
            {
              v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v36)
            {
              aBlock = _swiftEmptyArrayStorage;
              sub_1007A37F4();
              if (v36 < 0)
              {
                __break(1u);
                return;
              }

              v37 = 0;
              do
              {
                if ((v35 & 0xC000000000000001) != 0)
                {
                  v38 = sub_1007A3784();
                }

                else
                {
                  v38 = *(v35 + 8 * v37 + 32);
                  swift_unknownObjectRetain();
                }

                ++v37;
                v39 = [v38 dragItem];
                swift_unknownObjectRelease();
                sub_1007A37D4();
                sub_1007A3804();
                sub_1007A3814();
                sub_1007A37E4();
              }

              while (v36 != v37);

              v40 = aBlock;
            }

            else
            {

              v40 = _swiftEmptyArrayStorage;
            }

            aBlock = v43;
            v51 = v44;
            v52 = v42;
            v53 = v49;
            v54 = v40;
            LOWORD(v55) = 1025;

            sub_10079B8C4();
            sub_100007840(&v56, &qword_100AE8CD0);

            swift_bridgeObjectRelease_n();
            goto LABEL_29;
          }

          v26 = [a1 session];
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1005290C8;
          *(v27 + 24) = v20;
          v54 = sub_1005290D8;
          v55 = v27;
          aBlock = _NSConcreteStackBlock;
          v51 = 1107296256;
          v52 = sub_100525F58;
          v53 = &unk_100A21C50;
          v28 = _Block_copy(&aBlock);

          v29 = [v26 loadObjectsOfClass:ObjCClassFromMetadata completion:v28];
          _Block_release(v28);

          swift_unknownObjectRelease();
        }

        sub_100007840(&v56, &qword_100AE8CD0);
      }

LABEL_29:
      (*(v4 + 8))(v7, v3);
      return;
    }

    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v30 = sub_10079ACE4();
    sub_100008B98(v30, qword_100AE7000);
    v49 = sub_10079ACC4();
    v31 = sub_1007A29B4();
    if (os_log_type_enabled(v49, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v49, v31, "Received dragItem with nil destinationIndexPath, can't do anything about it.", v32, 2u);
    }

    v33 = v49;
  }
}

void sub_1005280BC(void *a1)
{
  v2 = sub_10079B134();
  v64 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE8CE0);
  __chkstk_darwin(v5 - 8);
  v62 = v55 - v6;
  v7 = sub_1001F1160(&qword_100AE8CE8);
  __chkstk_darwin(v7 - 8);
  v61 = v55 - v8;
  v9 = sub_10079B1A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10079B104();
  v13 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = v55 - v16;
  v69 = sub_10079B1B4();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v79 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = v55 - v20;
  v63 = a1;
  v22 = [a1 view];
  if (v22)
  {
    v66 = v22;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v57 = v12;
      v58 = v10;
      v60 = v9;
      v59 = v4;
      v25 = sub_1007A2F94();
      v26 = *(v25 + 16);
      if (v26)
      {
        v55[1] = v24;
        v56 = v2;
        v74 = *(v65 + 16);
        v27 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v55[0] = v25;
        v68 = v27;
        v28 = v25 + v27;
        v29 = *(v65 + 72);
        v73 = enum case for UICellAccessory.AccessoryType.outlineDisclosure(_:);
        v71 = (v13 + 8);
        v72 = (v13 + 104);
        v70 = (v65 + 32);
        v75 = v65 + 16;
        v67 = (v65 + 8);
        v80 = _swiftEmptyArrayStorage;
        v30 = v69;
        v31 = v77;
        v32 = v71;
        do
        {
          v81 = v26;
          v74(v21, v28, v30);
          sub_10079B124();
          v33 = v21;
          v34 = v78;
          v35 = v76;
          (*v72)(v78, v73, v76);
          sub_1000229CC(&qword_100AE8CF0, &type metadata accessor for UICellAccessory.AccessoryType);
          v36 = sub_1007A2124();
          v37 = *v32;
          (*v32)(v34, v35);
          v37(v31, v35);
          if (v36)
          {
            (*v67)(v33, v30);
            v21 = v33;
          }

          else
          {
            v38 = *v70;
            (*v70)(v79, v33, v30);
            v21 = v33;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = sub_10066C0AC(0, *(v80 + 2) + 1, 1, v80);
            }

            v40 = *(v80 + 2);
            v39 = *(v80 + 3);
            if (v40 >= v39 >> 1)
            {
              v80 = sub_10066C0AC(v39 > 1, v40 + 1, 1, v80);
            }

            v41 = v79;
            v42 = v80;
            *(v80 + 2) = v40 + 1;
            v30 = v69;
            v38(&v42[v68 + v40 * v29], v41, v69);
          }

          v28 += v29;
          v26 = v81 - 1;
        }

        while (v81 != 1);

        v2 = v56;
        v43 = v64;
      }

      else
      {

        v80 = _swiftEmptyArrayStorage;
        v43 = v64;
      }

      v45 = [v63 state];
      v46 = v60;
      if ((v45 - 3) < 2)
      {
        sub_1007A2B24();
LABEL_21:
        v47 = enum case for UICellAccessory.OutlineDisclosureOptions.Style.header(_:);
        v48 = sub_10079B184();
        v49 = *(v48 - 8);
        v50 = v61;
        (*(v49 + 104))(v61, v47, v48);
        (*(v49 + 56))(v50, 0, 1, v48);
        v51 = sub_10079B144();
        (*(*(v51 - 8) + 56))(v62, 1, 1, v51);
        v52 = v57;
        sub_10079B194();
        sub_1001F1160(&qword_100AE8CF8);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_10080B690;
        v54 = v59;
        (*(v43 + 104))(v59, enum case for UICellAccessory.DisplayedState.always(_:), v2);
        sub_10079B154();
        (*(v43 + 8))(v54, v2);
        v82 = v53;
        sub_100484C88(v80);
        sub_1007A2FA4();

        (*(v58 + 8))(v52, v46);
        return;
      }

      if (v45 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v44 = v66;
    }
  }
}

void sub_10052892C(void *a1)
{
  v68 = sub_10079B104();
  v2 = *(v68 - 8);
  __chkstk_darwin(v68);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = sub_10079B134();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AE8CE0);
  __chkstk_darwin(v12 - 8);
  v53 = &v46 - v13;
  v14 = sub_1001F1160(&qword_100AE8CE8);
  __chkstk_darwin(v14 - 8);
  v52 = &v46 - v15;
  v16 = sub_10079B1A4();
  v55 = *(v16 - 8);
  __chkstk_darwin(v16);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10079B1B4();
  v56 = *(v61 - 8);
  __chkstk_darwin(v61);
  v69 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v60 = &v46 - v20;
  if (a1)
  {
    v50 = v16;
    v51 = v11;
    v49 = a1;
    v21 = sub_1007A2F94();
    v22 = *(v21 + 16);
    if (v22)
    {
      v47 = v9;
      v48 = v8;
      v66 = *(v56 + 16);
      v23 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v46 = v21;
      v58 = v23;
      v24 = v21 + v23;
      v25 = *(v56 + 72);
      v65 = enum case for UICellAccessory.AccessoryType.outlineDisclosure(_:);
      v63 = (v2 + 8);
      v64 = (v2 + 104);
      v62 = (v56 + 32);
      v67 = v56 + 16;
      v57 = (v56 + 8);
      v70 = _swiftEmptyArrayStorage;
      v27 = v60;
      v26 = v61;
      v59 = v7;
      do
      {
        v71 = v22;
        v66(v27, v24, v26);
        sub_10079B124();
        v28 = v68;
        (*v64)(v4, v65, v68);
        sub_1000229CC(&qword_100AE8CF0, &type metadata accessor for UICellAccessory.AccessoryType);
        v29 = sub_1007A2124();
        v30 = *v63;
        (*v63)(v4, v28);
        v30(v7, v28);
        if (v29)
        {
          (*v57)(v27, v26);
        }

        else
        {
          v31 = v4;
          v32 = *v62;
          (*v62)(v69, v27, v26);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v33 = v70;
          }

          else
          {
            v33 = sub_10066C0AC(0, v70[2] + 1, 1, v70);
          }

          v35 = v33[2];
          v34 = v33[3];
          if (v35 >= v34 >> 1)
          {
            v33 = sub_10066C0AC(v34 > 1, v35 + 1, 1, v33);
          }

          v33[2] = v35 + 1;
          v70 = v33;
          v26 = v61;
          v32(v33 + v58 + v35 * v25, v69, v61);
          v4 = v31;
          v7 = v59;
          v27 = v60;
        }

        v24 += v25;
        v22 = v71 - 1;
      }

      while (v71 != 1);

      v8 = v48;
      v9 = v47;
      v36 = v70;
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    v37 = enum case for UICellAccessory.OutlineDisclosureOptions.Style.header(_:);
    v38 = sub_10079B184();
    v39 = *(v38 - 8);
    v40 = v52;
    (*(v39 + 104))(v52, v37, v38);
    (*(v39 + 56))(v40, 0, 1, v38);
    sub_1007A2B24();
    v41 = sub_10079B144();
    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
    v42 = v54;
    sub_10079B194();
    sub_1001F1160(&qword_100AE8CF8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10080B690;
    v44 = v51;
    (*(v9 + 104))(v51, enum case for UICellAccessory.DisplayedState.always(_:), v8);
    sub_10079B154();
    (*(v9 + 8))(v44, v8);
    v72 = v43;
    sub_100484C88(v36);
    v45 = v49;
    sub_1007A2FA4();

    (*(v55 + 8))(v42, v50);
  }
}

unint64_t sub_1005290E0()
{
  result = qword_100AE8D88;
  if (!qword_100AE8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8D88);
  }

  return result;
}

unint64_t sub_100529188()
{
  result = qword_100AE8DA0;
  if (!qword_100AE8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8DA0);
  }

  return result;
}

uint64_t sub_1005291F4()
{

  return swift_deallocObject();
}

uint64_t sub_100529260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100520B98(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1005293BC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE8DB8);
  sub_100008B98(v0, qword_100AE8DB8);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_100529430(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v2 = sub_1007A1A04(), swift_unknownObjectRelease(), swift_getObjectType(), v3 = sub_1007A0B64(), v2, (v3 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v5 = sub_1007A1A04();
      swift_unknownObjectRelease();
      [v5 contentOffset];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v7 = 0.0;
      v9 = 0.0;
    }

    if (sub_1007A03F4())
    {
      v10 = sub_10052A094(a1, v7, v9);
    }

    else
    {
      v10 = sub_10052B528(v7);
      v12 = 0;
    }

    sub_10052B708(v10, v11, v12 & 1, v7, v9);
    v4 = v13 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_100529570(double a1, double a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v4 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v4 contentOffset];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (vabdd_f64(a1, v6) >= 1200.0)
  {
    return 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v7 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v7 contentOffset];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  return vabdd_f64(a2, v9) < 1200.0;
}

void sub_100529680(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v4 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v4 contentOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  if (sub_1007A03F4())
  {
    v9 = sub_10052A094(a1, v6, v8);
  }

  else
  {
    v9 = sub_10052B528(v6);
    v11 = 0;
  }

  v12 = sub_10052B708(v9, v10, v11 & 1, v6, v8);
  if (v14)
  {
    sub_1007A03E4();
    if (sub_1007A03D4())
    {
      swift_getObjectType();
      sub_1007A0944();
    }
  }

  else
  {
    if (a2)
    {
      sub_100529570(*&v12, v13);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v15 = sub_1007A1A04();
      swift_unknownObjectRelease();
      swift_getObjectType();
      sub_1007A0B74();
    }
  }
}

void sub_100529850(uint64_t a1, char a2)
{
  v4 = sub_1007A0F74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_1007A1A04();
    swift_unknownObjectRelease();
    [v8 contentOffset];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
  }

  v13 = sub_100529BF4(a1, v10, v12);
  if (v15)
  {
    if (qword_100AD1808 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AE8DB8);
    (*(v5 + 16))(v7, a1, v4);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_10052BAC0(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v21 = sub_1007A3A74();
      v23 = v22;
      (*(v5 + 8))(v7, v4);
      v24 = sub_1000070F4(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "No offset for destination %s, assuming we're already there", v19, 0xCu);
      sub_1000074E0(v20);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    if (a2)
    {
      sub_100529570(*&v13, v14);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v26 = sub_1007A1A04();
      swift_unknownObjectRelease();
      swift_getObjectType();
      sub_1007A0B74();
      v25 = v26;
    }
  }
}

uint64_t sub_100529BF4(uint64_t a1, double a2, double a3)
{
  v7 = sub_1007A0F74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_10079FD44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A0F14();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &qword_100AE6A10);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v39 = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v18 = sub_1007A1A04();
      v38 = a1;
      v19 = v7;
      v20 = v18;
      swift_unknownObjectRelease();
      swift_getObjectType();
      v21 = sub_1007A0B94();
      v23 = v22;
      v25 = v24;

      v7 = v19;
      a1 = v38;
      if ((v25 & 1) == 0)
      {
        v36 = sub_10052B708(v21, v23, 0, a2, a3);
        (*(v15 + 8))(v17, v14);
        return v36;
      }
    }

    (*(v15 + 8))(v17, v14);
  }

  if (qword_100AD1808 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AE8DB8);
  (*(v8 + 16))(v10, a1, v7);
  v27 = sub_10079ACC4();
  v28 = sub_1007A29B4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315138;
    sub_10052BAC0(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
    v31 = sub_1007A3A74();
    v33 = v32;
    (*(v8 + 8))(v10, v7);
    v34 = sub_1000070F4(v31, v33, &v40);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Cannot find destination: no offset for destination %s", v29, 0xCu);
    sub_1000074E0(v30);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_10052A094(uint64_t a1, double a2, double a3)
{
  v200 = a1;
  v6 = sub_1007A0404();
  v192 = *(v6 - 8);
  v193 = v6;
  __chkstk_darwin(v6);
  v190 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v172 - v9;
  v10 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v10 - 8);
  v180 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v197 = &v172 - v13;
  v14 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v14 - 8);
  v182 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v196 = (&v172 - v17);
  v18 = sub_10079FD44();
  v19 = *(v18 - 8);
  v198 = v18;
  v199 = v19;
  __chkstk_darwin(v18);
  v179 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v172 - v22;
  __chkstk_darwin(v24);
  v26 = &v172 - v25;
  v201 = sub_1007A0F74();
  v27 = *(v201 - 8);
  __chkstk_darwin(v201);
  v186 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v181 = &v172 - v30;
  __chkstk_darwin(v31);
  v33 = &v172 - v32;
  __chkstk_darwin(v34);
  v185 = &v172 - v35;
  __chkstk_darwin(v36);
  v189 = &v172 - v37;
  __chkstk_darwin(v38);
  v40 = &v172 - v39;
  v41 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v41 - 8);
  v43 = &v172 - v42;
  v44 = sub_1007A1C14();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v184 = &v172 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v195 = &v172 - v48;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v178 = v23;
  v188 = v33;
  swift_getObjectType();
  v50 = sub_1007A1A04();
  v52 = v51;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v194 = v50;
  v176 = ObjectType;
  v177 = v52;
  sub_1007A0BA4();
  v54 = (*(v45 + 48))(v43, 1, v44);
  v187 = v3;
  v191 = v27;
  if (v54 == 1)
  {
    sub_100007840(v43, &unk_100AD5A90);
LABEL_10:
    v63 = v201;
    goto LABEL_11;
  }

  v55 = v44;
  v56 = v195;
  (*(v45 + 32))(v195, v43, v55);
  swift_getObjectType();
  sub_1007A0964();
  sub_1007A1B64();
  v57 = sub_1007A0F64();
  (*(v199 + 8))(v26, v198);
  v58 = v27[1];
  v58(v40, v201);
  if (v57)
  {
    (*(v45 + 8))(v56, v55);
    v27 = v191;
    goto LABEL_10;
  }

  v175 = v58;
  v59 = v55;
  v60 = v189;
  sub_1007A0964();
  if (qword_100AD1808 != -1)
  {
    swift_once();
  }

  v61 = sub_10079ACE4();
  sub_100008B98(v61, qword_100AE8DB8);
  v27 = v191;
  v62 = v185;
  v63 = v201;
  (v191[2])(v185, v60, v201);
  v64 = v45;
  v65 = *(v45 + 16);
  v66 = v184;
  v67 = v195;
  v65(v184, v195, v59);
  v68 = sub_10079ACC4();
  v69 = sub_1007A29B4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v204 = v174;
    *v70 = 136315650;
    sub_10052BAC0(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
    v173 = v68;
    v71 = sub_1007A3A74();
    v72 = v64;
    v74 = v73;
    v75 = v62;
    v76 = v175;
    v175(v75, v63);
    v77 = sub_1000070F4(v71, v74, &v204);

    *(v70 + 4) = v77;
    *(v70 + 12) = 2080;
    sub_10052BAC0(&qword_100AD65A0, &type metadata accessor for Location);
    v78 = sub_1007A3A74();
    v80 = v79;
    v81 = *(v72 + 8);
    v81(v66, v59);
    v82 = sub_1000070F4(v78, v80, &v204);

    *(v70 + 14) = v82;
    *(v70 + 22) = 2080;
    v202 = a2;
    v203 = a3;
    type metadata accessor for CGPoint(0);
    v83 = sub_1007A22E4();
    v85 = sub_1000070F4(v83, v84, &v204);

    *(v70 + 24) = v85;
    v86 = v69;
    v87 = v173;
    _os_log_impl(&_mh_execute_header, v173, v86, "Location controller's current spread: %s does not contain location: %s derived from scroll view's current offset: %s", v70, 0x20u);
    swift_arrayDestroy();

    v27 = v191;

    v76(v189, v201);
    v81(v195, v59);
    goto LABEL_10;
  }

  v130 = *(v64 + 8);
  v130(v66, v59);
  v131 = v175;
  v175(v62, v63);
  v131(v189, v63);
  v130(v67, v59);
LABEL_11:
  v88 = v197;
  swift_getObjectType();
  v89 = v196;
  sub_1007A09C4();
  v90 = v27[6];
  if (v90(v89, 1, v63) == 1)
  {
    sub_100007840(v89, &unk_100AEB380);
    if (qword_100AD1808 != -1)
    {
      swift_once();
    }

    v91 = sub_10079ACE4();
    sub_100008B98(v91, qword_100AE8DB8);
    v93 = v192;
    v92 = v193;
    v94 = v190;
    (*(v192 + 16))(v190, v200, v193);
    v95 = sub_10079ACC4();
    v96 = sub_1007A29D4();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v194;
    if (v97)
    {
      v99 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v99 = 136315394;
      sub_10052BAC0(&qword_100AE2858, &type metadata accessor for LocationMovement);
      v100 = sub_1007A3A74();
      v101 = v94;
      v103 = v102;
      (*(v93 + 8))(v101, v92);
      v104 = sub_1000070F4(v100, v103, &v204);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2080;
      v202 = a2;
      v203 = a3;
      type metadata accessor for CGPoint(0);
      v105 = sub_1007A22E4();
      v107 = sub_1000070F4(v105, v106, &v204);

      *(v99 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v95, v96, "No destination spread for movement %s from %s", v99, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v93 + 8))(v94, v92);
    }

    return 0;
  }

  v196 = v27[4];
  v197 = (v27 + 4);
  v196(v188, v89, v63);
  sub_1007A0F14();
  v108 = v198;
  v109 = v199;
  v195 = *(v199 + 48);
  if ((v195)(v88, 1, v198) == 1)
  {
    sub_100007840(v88, &qword_100AE6A10);
LABEL_21:
    v114 = v191;
    v115 = v188;
    v116 = v186;
    if (qword_100AD1808 != -1)
    {
      swift_once();
    }

    v117 = sub_10079ACE4();
    sub_100008B98(v117, qword_100AE8DB8);
    (v114[2])(v116, v115, v63);
    v118 = sub_10079ACC4();
    v119 = sub_1007A29B4();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v202 = *&v121;
      *v120 = 136315138;
      sub_10052BAC0(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v122 = sub_1007A3A74();
      v123 = v63;
      v124 = v114;
      v126 = v125;
      v127 = v124[1];
      v127(v116, v123);
      v128 = sub_1000070F4(v122, v126, &v202);

      *(v120 + 4) = v128;
      _os_log_impl(&_mh_execute_header, v118, v119, "Cannot find destination: no offset for destination %s", v120, 0xCu);
      sub_1000074E0(v121);

      v127(v115, v123);
    }

    else
    {

      v129 = v114[1];
      v129(v116, v63);
      v129(v115, v63);
    }

    return 0;
  }

  v110 = v178;
  v189 = *(v109 + 32);
  v190 = (v109 + 32);
  (v189)(v178, v88, v108);
  v111 = sub_1007A0B94();
  if (v113)
  {
    (*(v109 + 8))(v110, v108);
    v63 = v201;
    goto LABEL_21;
  }

  v186 = v112;
  v185 = v111;
  v132 = v183;
  sub_1007A0344();
  v133 = sub_1007A03A4();
  v134 = v193;
  v192 = *(v192 + 8);
  (v192)(v132);
  if ((v133 & 1) == 0)
  {

    (*(v199 + 8))(v178, v198);
    (v191[1])(v188, v201);
    return v185;
  }

  sub_1007A0364();
  v135 = v182;
  sub_1007A0954();
  (v192)(v132, v134);
  v136 = v201;
  v137 = v90(v135, 1, v201);
  v138 = v199;
  if (v137 == 1)
  {

    (*(v138 + 8))(v178, v198);
    (v191[1])(v188, v136);
    v139 = &unk_100AEB380;
    v140 = v135;
LABEL_35:
    sub_100007840(v140, v139);
    return v185;
  }

  v141 = v181;
  v196(v181, v135, v136);
  v142 = v180;
  sub_1007A0F14();
  v143 = v198;
  if ((v195)(v142, 1, v198) == 1)
  {

    v144 = v143;
    v145 = v191[1];
    v145(v141, v136);
    (*(v138 + 8))(v178, v144);
    v145(v188, v136);
    v139 = &qword_100AE6A10;
    v140 = v142;
    goto LABEL_35;
  }

  v146 = v179;
  (v189)(v179, v142, v143);
  v147 = v194;
  v148 = v143;
  *&v149 = COERCE_DOUBLE(sub_1007A0B94());
  v150 = v191;
  v151 = v188;
  if (v152)
  {

    v153 = *(v199 + 8);
    v153(v146, v148);
    v154 = v150[1];
    v155 = v201;
    v154(v141, v201);
    v153(v178, v148);
    v154(v151, v155);
    return v185;
  }

  v156 = *&v149;
  v157 = sub_1007A03E4();
  Strong = swift_unknownObjectWeakLoadStrong();
  v159 = v201;
  if (!Strong)
  {
    v162 = 1.0;
    if (v157)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  swift_getObjectType();
  v160 = sub_1007A1A04();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v161 = sub_1007A0B84();

  v162 = 1.0;
  if (v157)
  {
    v150 = v191;
    v151 = v188;
    if (v161)
    {
      goto LABEL_45;
    }

LABEL_44:
    v162 = -1.0;
    goto LABEL_45;
  }

  v150 = v191;
  v151 = v188;
  if (v161)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v163 = sub_1007A1A04(), swift_unknownObjectRelease(), swift_getObjectType(), v151 = v188, v164 = sub_1007A0B84(), v163, (v164 & 1) == 0))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v168 = sub_1007A1A04();
      swift_unknownObjectRelease();
      [v168 bounds];
    }

    else
    {
    }

    v169 = v198;
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v165 = sub_1007A1A04();
      swift_unknownObjectRelease();
      [v165 bounds];
      v167 = v166;
    }

    else
    {

      v167 = 0.0;
    }

    v169 = v198;
    v156 = v156 - v162 * v167;
  }

  v170 = *(v199 + 8);
  v170(v146, v169);
  v171 = v150[1];
  v171(v181, v159);
  v170(v178, v169);
  v171(v151, v159);
  return *&v156;
}

uint64_t sub_10052B528(double a1)
{
  v2 = sub_1007A03E4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v3 = sub_1007A1A04();
    swift_unknownObjectRelease();
    swift_getObjectType();
    v4 = sub_1007A0B84();

    v5 = 1.0;
    if (v2)
    {
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = 1.0;
  if ((v2 & 1) == 0)
  {
LABEL_6:
    v5 = -1.0;
  }

LABEL_7:
  v6 = v5 * sub_1007A03B4();
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v7 = sub_1007A1A04(), swift_unknownObjectRelease(), swift_getObjectType(), v8 = sub_1007A0B84(), v7, (v8 & 1) == 0))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v12 = sub_1007A1A04();
      swift_unknownObjectRelease();
      [v12 bounds];
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v9 = sub_1007A1A04();
      swift_unknownObjectRelease();
      [v9 bounds];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    a1 = v6 * v11 + a1;
  }

  return *&a1;
}

uint64_t sub_10052B708(uint64_t result, uint64_t a2, char a3, double a4, double a5)
{
  if ((a3 & 1) == 0)
  {
    v7 = *&result;
    if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v9 = sub_1007A1A04(), swift_unknownObjectRelease(), swift_getObjectType(), v10 = sub_1007A0B84(), v9, (v10 & 1) == 0))
    {
      v17 = 0.0;
      if (*&a2 < 0.0)
      {
        *&a2 = 0.0;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v18 = sub_1007A1A04();
        swift_unknownObjectRelease();
        [v18 contentSize];
        v17 = v19;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v20 = sub_1007A1A04();
        swift_unknownObjectRelease();
        [v20 bounds];
        v22 = v21;

        if (v17 - v22 < *&a2)
        {
          *&a2 = v17 - v22;
        }
      }

      else if (v17 < *&a2)
      {
        *&a2 = v17;
      }
    }

    else
    {
      v11 = 0.0;
      if (v7 < 0.0)
      {
        v7 = 0.0;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v12 = sub_1007A1A04();
        swift_unknownObjectRelease();
        [v12 contentSize];
        v11 = v13;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v14 = sub_1007A1A04();
        swift_unknownObjectRelease();
        [v14 bounds];
        v16 = v15;

        if (v11 - v16 < v7)
        {
          v7 = v11 - v16;
        }
      }

      else if (v11 < v7)
      {
        v7 = v11;
      }
    }

    if (v7 == a4 && *&a2 == a5)
    {
      if (qword_100AD1808 != -1)
      {
        swift_once();
      }

      v24 = sub_10079ACE4();
      sub_100008B98(v24, qword_100AE8DB8);
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        type metadata accessor for CGPoint(0);
        v29 = sub_1007A22E4();
        v31 = sub_1000070F4(v29, v30, &v32);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Destination offset %s is same as origin; no scrolling needed", v27, 0xCu);
        sub_1000074E0(v28);
      }

      *&result = 0.0;
    }

    else
    {
      *&result = v7;
    }
  }

  return result;
}

uint64_t sub_10052BA5C()
{
  swift_unknownObjectRelease();
  sub_10002B130(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10052BAC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10052BC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1;
  if (a4)
  {
    sub_1007A2254();
    v8 = sub_1007A2214();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v7;
  v11.super_class = a5(a1);
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a3, v8);

  return v9;
}

id sub_10052BD14(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

void sub_10052BEAC()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for LocalSignalStressTestViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = sub_1007A2214();
  [v2 setTitle:v3];

  sub_1001F1160(&unk_100AE9060);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100813170;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x80000001008DB870;
  *(v4 + 48) = xmmword_10082ECC0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xD000000000000019;
  *(v4 + 80) = 0x80000001008DB890;
  *(v4 + 88) = 1;
  *(v4 + 96) = "enableRandomAssetIDsCell:";
  *(v4 + 104) = 2;
  *(v4 + 112) = 0xD000000000000011;
  *(v4 + 120) = 0x80000001008DB8B0;
  *(v4 + 128) = xmmword_10082ECD0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 3;
  v5 = objc_opt_self();
  v6 = [v5 redColor];
  *(v4 + 192) = xmmword_10082ECE0;
  *(v4 + 208) = v6;
  *(v4 + 216) = "generateFakeLocalSignals:";
  *(v4 + 224) = 1;
  v7 = [v5 blackColor];
  *(v4 + 232) = 0xD000000000000013;
  *(v4 + 240) = 0x80000001008DB8D0;
  *(v4 + 248) = v7;
  *(v4 + 256) = "fetchBookHistories:";
  *(v4 + 264) = 1;
  v8 = OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas;
  *&v1[OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas] = v4;

  v9 = *(*&v1[v8] + 16);
  v26 = v1;
  v27 = *&v1[v8];

  v25 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = (v27 + 64);
    while (v10 < *(v27 + 16))
    {
      v13 = *(v11 - 4);
      v12 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          type metadata accessor for LocalSignalStressTestSwitchCell();
        }

        else
        {
          type metadata accessor for LocalSignalStressTestProgressViewCell();
        }
      }

      else
      {
        type metadata accessor for LocalSignalStressTestTextViewCell();
      }

      sub_1005324FC(v13, v12, v14, v15, v16);
      v17 = [v26 tableView];
      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = v15;
      v19 = v14;
      v20 = v12;
      v21 = v13;
      v22 = v17;
      v28 = v10 + 1;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = sub_1007A2214();

      [v22 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

      v10 = v28;
      sub_100532568(v21, v20, v19, v18, v16);
      v11 += 40;
      if (v25 == v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

void sub_10052C2E4(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AE9048);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() delegate];
  v7 = [v6 mainLibrary];

  v8 = [v7 readOnlyChildContext];
  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v3 + 32))(v10 + v9, v5, v2);
  aBlock[4] = sub_100532EBC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A21FB0;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v12 = v8;

  [v12 performBlock:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

void sub_10052C510(void *a1)
{
  *&v46 = sub_10000A7C4(0, &qword_100ADA990);
  sub_1001F1160(&qword_100AE2370);
  sub_1007A22E4();
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1007A2214();

  v4 = [v2 initWithEntityName:v3];

  [v4 setResultType:2];
  v5 = [a1 predicateForPurchasedBooksAssets];
  [v4 setPredicate:v5];

  sub_1001F1160(&qword_100AD7FB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100812CF0;
  *(v6 + 32) = 0x44497465737361;
  *(v6 + 40) = 0xE700000000000000;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 0x656C706D61537369;
  *(v6 + 72) = 0xE800000000000000;
  *(v6 + 120) = &type metadata for String;
  *(v6 + 88) = &type metadata for String;
  *(v6 + 96) = 0x54746E65746E6F63;
  *(v6 + 104) = 0xEB00000000657079;
  v7 = &type metadata for Any;
  isa = sub_1007A25D4().super.isa;

  [v4 setPropertiesToFetch:isa];

  sub_10000A7C4(0, &qword_100AE9058);
  v9 = sub_1007A2F34();
  isUniquelyReferenced_nonNull_native = v9;
  if (v9 >> 62)
  {
    goto LABEL_35;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v4;
  if (!v11)
  {
    goto LABEL_36;
  }

LABEL_3:
  v4 = 0;
  v35 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v31 = isUniquelyReferenced_nonNull_native + 32;
  v32 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v12 = _swiftEmptyArrayStorage;
  v33 = v11;
  v34 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v35)
    {
      v13 = sub_1007A3784();
      v14 = __OFADD__(v4++, 1);
      if (v14)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *(v32 + 16))
      {
        goto LABEL_34;
      }

      v13 = *(v31 + 8 * v4);
      v14 = __OFADD__(v4++, 1);
      if (v14)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v11 = sub_1007A38D4();
        v30 = v4;
        if (!v11)
        {
LABEL_36:
          v12 = _swiftEmptyArrayStorage;
LABEL_37:

          *&v46 = v12;
          sub_1001F1160(&unk_100AE9048);
          sub_1007A26B4();

          return;
        }

        goto LABEL_3;
      }
    }

    v37 = v4;
    v38 = v12;
    v36 = v13;
    sub_1007A2934();
    sub_1007A2944();
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    if (*(&v43 + 1))
    {
      break;
    }

LABEL_25:

    v12 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10066B4D0(0, v38[2] + 1, 1, v38);
    }

    isUniquelyReferenced_nonNull_native = v34;
    v4 = v37;
    v29 = v12[2];
    v28 = v12[3];
    if (v29 >= v28 >> 1)
    {
      v12 = sub_10066B4D0((v28 > 1), v29 + 1, 1, v12);
    }

    v12[2] = v29 + 1;
    v12[v29 + 4] = _swiftEmptyDictionarySingleton;
    if (v37 == v33)
    {
      goto LABEL_37;
    }
  }

  while (1)
  {
    sub_100019288(&v46, &v42);
    v16 = v7;
    swift_dynamicCast();
    v7 = v40;
    v4 = v41;
    sub_100019288(&v48, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_10000E53C(v7, v4);
    v19 = _swiftEmptyDictionarySingleton[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v17)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1002F0EA0();
      if (v22)
      {
LABEL_12:

        v15 = (_swiftEmptyDictionarySingleton[7] + 32 * v18);
        sub_1000074E0(v15);
        sub_100019288(v39, v15);
        goto LABEL_13;
      }
    }

LABEL_21:
    _swiftEmptyDictionarySingleton[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (_swiftEmptyDictionarySingleton[6] + 16 * v18);
    *v25 = v7;
    v25[1] = v4;
    sub_100019288(v39, (_swiftEmptyDictionarySingleton[7] + 32 * v18));
    v26 = _swiftEmptyDictionarySingleton[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
      goto LABEL_32;
    }

    _swiftEmptyDictionarySingleton[2] = v27;
LABEL_13:
    sub_1007A2944();
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v7 = v16;
    if (!*(&v43 + 1))
    {
      goto LABEL_25;
    }
  }

  sub_1003D4168(v21, isUniquelyReferenced_nonNull_native);
  v23 = sub_10000E53C(v7, v4);
  if ((v22 & 1) == (v24 & 1))
  {
    v18 = v23;
    if (v22)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_10052CB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[107] = a4;
  v5 = sub_1007A1C54();
  v4[108] = v5;
  v4[109] = *(v5 - 8);
  v4[110] = swift_task_alloc();
  v6 = sub_1007A1CA4();
  v4[111] = v6;
  v4[112] = *(v6 - 8);
  v4[113] = swift_task_alloc();
  v7 = sub_1007A1CC4();
  v4[114] = v7;
  v4[115] = *(v7 - 8);
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v8 = sub_100796AD4();
  v4[118] = v8;
  v4[119] = *(v8 - 8);
  v4[120] = swift_task_alloc();
  v9 = sub_100796BB4();
  v4[121] = v9;
  v4[122] = *(v9 - 8);
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  sub_1001F1160(&qword_100AD67D0);
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v10 = sub_100796E74();
  v4[128] = v10;
  v4[129] = *(v10 - 8);
  v4[130] = swift_task_alloc();
  v4[131] = sub_1007A26F4();
  v4[132] = sub_1007A26E4();
  v12 = sub_1007A2694();
  v4[133] = v12;
  v4[134] = v11;

  return _swift_task_switch(sub_10052CE4C, v12, v11);
}

uint64_t sub_10052CE4C()
{
  v212 = v0;
  v1 = *(v0 + 856);
  v2 = OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress;
  if (*(v1 + OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress))
  {
    goto LABEL_11;
  }

  v3 = [objc_opt_self() delegate];
  v4 = [v3 engagementManager];
  *(v0 + 1080) = v4;

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = OBJC_IVAR___BKEngagementManager_manager;
  *(v0 + 1088) = OBJC_IVAR___BKEngagementManager_manager;
  v6 = *&v4[v5];
  v7 = sub_1007999E4();
  *(v0 + 1096) = v7;

  if (!v7)
  {
LABEL_17:

    goto LABEL_12;
  }

  type metadata accessor for PersonalizationEventDonor();
  v8 = swift_dynamicCastClass();
  *(v0 + 1104) = v8;
  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v9 = [*(v0 + 856) tableView];
  if (!v9)
  {
    goto LABEL_156;
  }

  v10 = v9;
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);
  v194 = v0;
  v13 = *(v0 + 1024);
  sub_100796E24();
  isa = sub_100796DF4().super.isa;
  v205 = *(v12 + 8);
  v205(v11, v13);
  v15 = [v10 cellForRowAtIndexPath:isa];

  if (!v15)
  {
    goto LABEL_157;
  }

  v16 = 0x65756C61762D6F6ELL;
  type metadata accessor for LocalSignalStressTestTextViewCell();
  v17 = [swift_dynamicCastClassUnconditional() accessoryView];

  if (!v17)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_19;
  }

  v19 = [v18 text];

  if (!v19)
  {
LABEL_19:
    v21 = 0x65756C61762D6F6ELL;
    goto LABEL_20;
  }

  v20 = sub_1007A2254();

  v21 = v20;
LABEL_20:
  *(v0 + 1112) = sub_10063F35C(v21);
  if (v24)
  {
    goto LABEL_29;
  }

  v9 = [*(v0 + 856) tableView];
  if (!v9)
  {
    goto LABEL_158;
  }

  v25 = v9;
  v26 = *(v0 + 1040);
  v27 = *(v0 + 1024);
  sub_100796E24();
  v28 = sub_100796DF4().super.isa;
  v205(v26, v27);
  v29 = [v25 cellForRowAtIndexPath:v28];

  if (!v29)
  {
    goto LABEL_159;
  }

  v30 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  v31 = [swift_dynamicCastClassUnconditional() accessoryView];

  v32 = &selRef_setUserInteractionEnabled_;
  if (v31)
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = [v33 text];

      if (v34)
      {
        v16 = sub_1007A2254();
      }
    }

    else
    {
    }
  }

  v35 = sub_10063F35C(v16);
  if (v36)
  {
LABEL_29:

    swift_unknownObjectRelease();
LABEL_11:

    goto LABEL_12;
  }

  v37 = v35;
  v38 = *(v0 + 856);
  *(v1 + v2) = 1;
  v9 = [v38 tableView];
  if (!v9)
  {
    goto LABEL_160;
  }

  v39 = v9;
  v40 = *(v0 + 1040);
  v41 = *(v0 + 1024);
  sub_100796E24();
  v42 = sub_100796DF4().super.isa;
  v205(v40, v41);
  v43 = [v39 cellForRowAtIndexPath:v42];

  if (!v43)
  {
    goto LABEL_161;
  }

  type metadata accessor for LocalSignalStressTestProgressViewCell();
  v44 = [swift_dynamicCastClassUnconditional() contentView];

  v45 = [v44 subviews];
  sub_10000A7C4(0, &qword_100AD7620);
  v46 = sub_1007A25E4();

  if ((v46 & 0xC000000000000001) != 0)
  {
    goto LABEL_149;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  for (i = *(v46 + 32); ; i = sub_1007A3784())
  {
    v48 = i;

    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();
    if (!v49)
    {

      v49 = 0;
    }

    *(v0 + 1120) = v49;
    v9 = [*(v0 + 856) v32[480]];
    if (!v9)
    {
      goto LABEL_162;
    }

    v50 = v9;
    v51 = *(v0 + 1040);
    v52 = *(v0 + 1024);
    sub_100796E24();
    v53 = sub_100796DF4().super.isa;
    v205(v51, v52);
    v54 = [v50 cellForRowAtIndexPath:v53];

    if (!v54)
    {
      goto LABEL_163;
    }

    type metadata accessor for LocalSignalStressTestSwitchCell();
    v55 = [swift_dynamicCastClassUnconditional() v30[169]];

    if (!v55)
    {
      goto LABEL_61;
    }

    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (!v56)
    {

LABEL_61:
      *(v0 + 1128) = sub_1007A26E4();
      v86 = sub_1007A2694();
      *(v0 + 1136) = v86;
      *(v0 + 1144) = v85;

      return _swift_task_switch(sub_10052EA04, v86, v85);
    }

    v57 = [v56 isOn];

    if (!v57)
    {
      goto LABEL_61;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_152;
    }

    if (!v37)
    {
      break;
    }

    sub_1001F1160(&unk_100AD3C10);
    v58 = 0;
    v195 = _swiftEmptyArrayStorage;
    v59 = 0x7FFFFFFE5EC47A00;
    v32 = &unk_100ADD560;
    while (1)
    {
      *(v0 + 48) = 0x44497465737361;
      *(v0 + 56) = 0xE700000000000000;
      if (!v59)
      {
        break;
      }

      *(v0 + 824) = v58 + 7000000000;
      *(v0 + 64) = sub_1007A3A74();
      *(v0 + 72) = v60;
      *(v0 + 88) = &type metadata for String;
      *(v0 + 96) = 0x656C706D61537369;
      *(v0 + 104) = 0xE800000000000000;
      *(v0 + 832) = 0;
      swift_stdlib_random();
      *(v0 + 112) = (*(v0 + 832) & 0x20000) == 0;
      *(v0 + 136) = &type metadata for Bool;
      *(v0 + 144) = 0x54746E65746E6F63;
      *(v0 + 152) = 0xEB00000000657079;
      *(v0 + 840) = 0;
      swift_stdlib_random();
      v61 = 6;
      if ((*(v0 + 840) & 0x20000) != 0)
      {
        v61 = 1;
      }

      *(v0 + 184) = &type metadata for Int;
      *(v0 + 160) = v61;
      v62 = sub_1007A3924();

      sub_1000077D8(v0 + 48, v0 + 320, &unk_100ADD560);
      v30 = *(v0 + 320);
      v63 = *(v0 + 328);
      v64 = sub_10000E53C(v30, v63);
      if (v65)
      {
        goto LABEL_146;
      }

      v66 = v62 + 8;
      *(v62 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v64;
      v67 = (v62[6] + 16 * v64);
      *v67 = v30;
      v67[1] = v63;
      sub_100019288((v0 + 336), (v62[7] + 32 * v64));
      v68 = v62[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_147;
      }

      v62[2] = v70;
      sub_1000077D8(v0 + 96, v0 + 320, &unk_100ADD560);
      v30 = *(v0 + 320);
      v71 = *(v0 + 328);
      v72 = sub_10000E53C(v30, v71);
      if (v73)
      {
        goto LABEL_146;
      }

      *(v66 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v74 = (v62[6] + 16 * v72);
      *v74 = v30;
      v74[1] = v71;
      sub_100019288((v0 + 336), (v62[7] + 32 * v72));
      v75 = v62[2];
      v69 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v69)
      {
        goto LABEL_147;
      }

      v62[2] = v76;
      sub_1000077D8(v0 + 144, v0 + 320, &unk_100ADD560);
      v30 = *(v0 + 320);
      v77 = *(v0 + 328);
      v78 = sub_10000E53C(v30, v77);
      if (v79)
      {
        goto LABEL_146;
      }

      *(v66 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
      v80 = (v62[6] + 16 * v78);
      *v80 = v30;
      v80[1] = v77;
      sub_100019288((v0 + 336), (v62[7] + 32 * v78));
      v81 = v62[2];
      v69 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v69)
      {
LABEL_147:
        __break(1u);
        break;
      }

      v62[2] = v82;

      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = sub_10066B4D0(0, v195[2] + 1, 1, v195);
      }

      v84 = v195[2];
      v83 = v195[3];
      v30 = (v84 + 1);
      if (v84 >= v83 >> 1)
      {
        v195 = sub_10066B4D0((v83 > 1), v84 + 1, 1, v195);
      }

      ++v58;
      v195[2] = v30;
      v195[v84 + 4] = v62;
      --v59;
      if (v58 == v37)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_149:
    ;
  }

  v195 = _swiftEmptyArrayStorage;
LABEL_65:
  v87 = [*(v0 + 1104) eventConfigurations];
  sub_100799824();
  v88 = sub_1007A25E4();

  v176 = v88;
  if (v88 >> 62)
  {
LABEL_153:
    v9 = sub_1007A38D4();
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_164;
    }

    __break(1u);
    goto LABEL_155;
  }

  v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v89)
  {
    while (1)
    {
      v181 = v89;
      v180 = *(v0 + 1112);
      if ((v180 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      v89 = v9;
      v0 = v194;
      if (!v9)
      {
        goto LABEL_165;
      }
    }

    aBlock = (v0 + 368);
    v175 = (v0 + 512);
    v186 = (v0 + 768);
    v30 = (v0 + 792);
    v193 = *(v0 + 1120);
    v90 = *(v0 + 976);
    v189 = (v0 + 800);
    v91 = (v0 + 808);
    v92 = *(v0 + 952);
    v93 = *(v0 + 920);
    v94 = *(v0 + 896);
    v95 = *(v0 + 872);
    sub_10000A7C4(0, &qword_100AD1E10);
    v96 = 0;
    v204 = (v90 + 8);
    v188 = (v92 + 8);
    v187 = (v90 + 16);
    v182 = (v93 + 8);
    v178 = (v95 + 8);
    v177 = (v94 + 8);
    while (1)
    {
      v184 = v96;
      if ((v176 & 0xC000000000000001) != 0)
      {
        v103 = sub_1007A3784();
        v104 = v193;
      }

      else
      {
        v104 = v193;
        if (v96 >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_151;
        }

        v103 = *(v176 + 32 + 8 * v96);
      }

      v192 = v103;
      if (v180)
      {
        break;
      }

LABEL_134:
      v96 = v184 + 1;
      if (v104)
      {
        v154 = *(v0 + 1008);
        v207 = *(v0 + 1000);
        v185 = v184 + 1;
        v155 = v96 / v181;
        v156 = sub_1007A2744();
        v157 = *(v156 - 8);
        (*(v157 + 56))(v154, 1, 1, v156);
        v158 = v104;
        v159 = sub_1007A26E4();
        v160 = swift_allocObject();
        *(v160 + 16) = v159;
        *(v160 + 24) = &protocol witness table for MainActor;
        *(v160 + 32) = v158;
        v210 = v158;
        *(v160 + 40) = v155;
        sub_1000077D8(v154, v207, &qword_100AD67D0);
        LODWORD(v154) = (*(v157 + 48))(v207, 1, v156);

        v161 = *(v0 + 1000);
        if (v154 == 1)
        {
          sub_100007840(*(v0 + 1000), &qword_100AD67D0);
        }

        else
        {
          sub_1007A2734();
          (*(v157 + 8))(v161, v156);
        }

        v162 = *(v160 + 16);
        swift_unknownObjectRetain();

        if (v162)
        {
          swift_getObjectType();
          v163 = sub_1007A2694();
          v165 = v164;
          swift_unknownObjectRelease();
        }

        else
        {
          v163 = 0;
          v165 = 0;
        }

        sub_100007840(*(v0 + 1008), &qword_100AD67D0);
        v166 = swift_allocObject();
        *(v166 + 16) = &unk_10082EEB8;
        *(v166 + 24) = v160;
        if (v165 | v163)
        {
          *v175 = 0;
          v175[1] = 0;
          *(v0 + 528) = v163;
          *(v0 + 536) = v165;
        }

        swift_task_create();

        v96 = v185;
      }

      v97 = *(v0 + 1120);
      v196 = *(v0 + 936);
      v98 = *(v0 + 928);
      v99 = *(v0 + 912);
      v190 = *(v0 + 904);
      v208 = *(v0 + 888);
      v100 = *(v0 + 880);
      v198 = *(v0 + 864);
      v200 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v206 = *v182;
      (*v182)(v98, v99);
      v101 = swift_allocObject();
      *(v101 + 16) = v97;
      *(v0 + 400) = sub_100532CD8;
      *(v0 + 408) = v101;
      *(v0 + 368) = _NSConcreteStackBlock;
      *(v0 + 376) = 1107296256;
      *(v0 + 384) = sub_1003323D0;
      *(v0 + 392) = &unk_100A21EE8;
      v102 = _Block_copy(aBlock);
      v183 = v193;
      sub_1007A1C74();
      *(v0 + 776) = _swiftEmptyArrayStorage;
      sub_100532CFC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100234698();
      sub_1007A3594();
      sub_1007A2D04();
      _Block_release(v102);

      (*v178)(v100, v198);
      (*v177)(v190, v208);
      v206(v196, v99);

      if (v96 == v181)
      {

        v167 = v183;
        goto LABEL_166;
      }
    }

    v105 = 0;
    v191 = v195[2];
    while (2)
    {
      v117 = sub_100799814();
      v32 = v118;
      sub_100796BA4();
      *(v0 + 816) = 0;
      swift_stdlib_random();
      v202 = v117;
      if ((0x20000000000001 * *(v0 + 816)) < 0x1FFFFFFFFFF801)
      {
        do
        {
          *v91 = 0;
          swift_stdlib_random();
        }

        while ((0x20000000000001 * *v91) < 0x1FFFFFFFFFF801);
      }

      v119 = *(v0 + 984);
      v120 = *(v0 + 968);
      v37 = *(v0 + 960);
      v121 = *(v0 + 944);
      sub_100796AE4();
      v203 = *v204;
      (*v204)(v119, v120);
      sub_1007963F4();
      sub_100532CFC(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
      sub_100796B94();
      (*v188)(v37, v121);
      v205 = *(v0 + 744);
      v209 = *(v0 + 736);
      if (!v191)
      {
        goto LABEL_101;
      }

      v122 = v195[2];
      if (!v122)
      {
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v37 = v186;
      *v186 = 0;
      swift_stdlib_random();
      v123 = *v186 * v122;
      v124 = (*v186 * v122) >> 64;
      if (v122 > v123)
      {
        v37 = -v122 % v122;
        if (v37 > v123)
        {
          do
          {
            *v189 = 0;
            swift_stdlib_random();
          }

          while (v37 > *v189 * v122);
          v124 = (*v189 * v122) >> 64;
        }
      }

      if (v124 >= v195[2])
      {
        goto LABEL_145;
      }

      v125 = v195[v124 + 4];

      if (!v125)
      {
LABEL_101:
        v130 = 0;
        v131 = 0;
        v132 = 2;
        goto LABEL_110;
      }

      if (*(v125 + 16))
      {

        v126 = sub_10000E53C(0x44497465737361, 0xE700000000000000);
        if (v127)
        {
          sub_100007484(*(v125 + 56) + 32 * v126, v0 + 480);

          v128 = swift_dynamicCast();
          if (v128)
          {
            v129 = *(v0 + 752);
          }

          else
          {
            v129 = 0;
          }

          if (v128)
          {
            v130 = *(v0 + 760);
          }

          else
          {
            v130 = 0;
          }

          if (!*(v125 + 16))
          {
LABEL_108:

            v132 = 2;
            goto LABEL_109;
          }

LABEL_104:
          v133 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
          if ((v134 & 1) == 0)
          {
            goto LABEL_108;
          }

          sub_100007484(*(v125 + 56) + 32 * v133, v0 + 448);

          if (swift_dynamicCast())
          {
            v132 = *(v0 + 1184);
          }

          else
          {
            v132 = 2;
          }

LABEL_109:
          v131 = v129;
LABEL_110:
          v197 = v130;
          sub_1001F1160(&unk_100ADE588);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10080EFF0;
          *(inited + 32) = 0x6D617473656D6974;
          *(inited + 40) = 0xE900000000000070;
          *(inited + 48) = v209;
          *(inited + 56) = v205;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 0x44497465737361;
          *(inited + 120) = &type metadata for String;
          v136 = 0x7974706D65;
          v199 = v131;
          if (v130)
          {
            v136 = v131;
          }

          v137 = 0xE500000000000000;
          if (v130)
          {
            v137 = v130;
          }

          *(inited + 88) = 0xE700000000000000;
          *(inited + 96) = v136;
          *(inited + 104) = v137;

          v138 = sub_1001EDD94(inited);
          swift_setDeallocating();
          sub_1001F1160(&qword_100AD35D0);
          swift_arrayDestroy();
          if (v202 == 0x527361576B6F6F62 && v32 == 0xEB00000000646165 || (sub_1007A3AB4() & 1) != 0 || v202 == 0xD000000000000012 && 0x80000001008BF840 == v32 || (sub_1007A3AB4() & 1) != 0)
          {

            *(v0 + 632) = &type metadata for Float;
            *(v0 + 784) = 0;
            swift_stdlib_random();
            for (j = 16777217 * *(v0 + 784); j < 0xFFFF01; j = 16777217 * *v30)
            {
              *v30 = 0;
              swift_stdlib_random();
            }

            *(v0 + 608) = vcvts_n_f32_u64(HIDWORD(j), 0x18uLL) + 0.0;
            sub_100019288((v0 + 608), (v0 + 416));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v211[0] = v138;
            v141 = sub_10022569C(v0 + 416, *(v0 + 440));
            sub_100532660(0x73736572676F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v211, *v141);
            sub_1000074E0(v0 + 416);
            v138 = v211[0];
            if (v132 == 2)
            {
              v142 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
              if (v143)
              {
                v144 = v142;
                v145 = swift_isUniquelyReferenced_nonNull_native();
                v211[0] = v138;
                if ((v145 & 1) == 0)
                {
                  sub_1002F20F4();
                  v138 = v211[0];
                }

                sub_100019288((*(v138 + 56) + 32 * v144), (v0 + 672));
                sub_1002EFE4C(v144, v138);
              }

              else
              {
                *(v0 + 672) = 0u;
                *(v0 + 688) = 0u;
              }

              sub_100007840(v0 + 672, &qword_100AE9040);
LABEL_80:
              v201 = *(v0 + 1112);
              v106 = *(v0 + 992);
              v107 = *(v0 + 968);
              v108 = *(*(v0 + 1080) + *(v0 + 1088));
              sub_1001F1160(&qword_100AE9028);
              v109 = (sub_1001F1160(&unk_100AE9030) - 8);
              v110 = v105 + 1;
              v111 = (*(*v109 + 80) + 32) & ~*(*v109 + 80);
              v112 = swift_allocObject();
              *(v112 + 16) = xmmword_10080B690;
              v113 = v112 + v111;
              v105 = v110;
              v0 = v194;
              v114 = v113 + v109[14];
              (*v187)();
              *v114 = v209;
              *(v114 + 8) = v205;
              *(v114 + 16) = v199;
              *(v114 + 24) = v197;
              *(v114 + 32) = v138;
              *(v114 + 40) = 2;
              v115 = v108;
              v116 = v192;
              sub_100799934();

              v203(v106, v107);
              v104 = v193;
              if (v105 == v201)
              {
                goto LABEL_134;
              }

              continue;
            }

            *(v0 + 664) = &type metadata for Bool;
            *(v0 + 640) = v132 & 1;
            sub_100019288((v0 + 640), (v0 + 704));
            v146 = swift_isUniquelyReferenced_nonNull_native();
            v211[0] = v138;
            v147 = *(v0 + 728);
            v148 = sub_10022569C(v0 + 704, v147);
            v149 = *(v147 - 8);
            v150 = swift_task_alloc();
            (*(v149 + 16))(v150, v148, v147);
            sub_1005327B0(v150, 0x656C706D61537369, 0xE800000000000000, v146, v211, &type metadata for Bool);
            sub_1000074E0(v0 + 704);
          }

          else
          {
            if (v202 == 0x676E69746172 && v32 == 0xE600000000000000)
            {
            }

            else
            {
              v151 = sub_1007A3AB4();

              if ((v151 & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            *(v0 + 568) = &type metadata for Float;
            *(v0 + 544) = vcvts_n_f32_u32(sub_1005325D4(16777217), 0x18uLL) + 0.0;
            sub_100019288((v0 + 544), (v0 + 576));
            v152 = swift_isUniquelyReferenced_nonNull_native();
            v211[0] = v138;
            v153 = sub_10022569C(v0 + 576, *(v0 + 600));
            sub_100532660(0x676E69746172, 0xE600000000000000, v152, v211, *v153);
            sub_1000074E0(v0 + 576);
          }

          v138 = v211[0];
          goto LABEL_80;
        }
      }

      break;
    }

    v129 = 0;
    v130 = 0;
    if (!*(v125 + 16))
    {
      goto LABEL_108;
    }

    goto LABEL_104;
  }

LABEL_165:
  v167 = *(v0 + 1120);

LABEL_166:
  v168 = *(v0 + 1080);
  v169 = *(v0 + 1016);
  v170 = *(v0 + 856);
  v171 = sub_1007A2744();
  (*(*(v171 - 8) + 56))(v169, 1, 1, v171);
  v172 = v170;
  v173 = sub_1007A26E4();
  v174 = swift_allocObject();
  v174[2] = v173;
  v174[3] = &protocol witness table for MainActor;
  v174[4] = v172;
  sub_1003457A0(0, 0, v169, &unk_10082EEA8, v174);
  swift_unknownObjectRelease();

LABEL_12:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10052EA04()
{
  v1 = sub_1007A26E4();
  *(v0 + 1152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  v3 = sub_1001F1160(&qword_100ADE598);
  *v2 = v0;
  v2[1] = sub_10052EB08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 848, v1, &protocol witness table for MainActor, 0xD000000000000013, 0x80000001008DB820, sub_10052C2E4, 0, v3);
}

uint64_t sub_10052EB08()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = *(v2 + 1144);
    v4 = *(v2 + 1136);
    v5 = sub_10052FEB4;
  }

  else
  {

    v3 = *(v2 + 1144);
    v4 = *(v2 + 1136);
    v5 = sub_10052EC2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10052EC2C()
{

  v0[147] = v0[106];
  v1 = v0[134];
  v2 = v0[133];

  return _swift_task_switch(sub_10052ECA8, v2, v1);
}

uint64_t sub_10052ECA8()
{
  v138 = v0;

  v117 = v0[147];
  v1 = [v0[138] eventConfigurations];
  sub_100799824();
  v2 = sub_1007A25E4();

  if (v2 >> 62)
  {
    goto LABEL_84;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_88;
  }

  do
  {
    v104 = v0[139];
    if (v104 < 0)
    {
      goto LABEL_86;
    }

    aBlock = v0 + 46;
    v100 = v0 + 64;
    v111 = v0 + 96;
    v5 = (v0 + 99);
    v108 = v0[140];
    v114 = v0 + 100;
    v6 = v0 + 101;
    v7 = v0[122];
    v8 = v2;
    v2 = v0[119];
    v9 = v0[115];
    v10 = v0[112];
    v136 = v0;
    v11 = v0[109];
    v106 = v4;
    sub_10000A7C4(0, &qword_100AD1E10);
    v12 = 0;
    v105 = v8 & 0xC000000000000001;
    v98 = v8 + 32;
    v99 = v8 & 0xFFFFFFFFFFFFFF8;
    v129 = (v7 + 8);
    v112 = (v7 + 16);
    v113 = (v2 + 8);
    v107 = (v9 + 8);
    v102 = (v11 + 8);
    v101 = (v10 + 8);
    while (1)
    {
      v109 = v12;
      if (v105)
      {
        v19 = sub_1007A3784();
      }

      else
      {
        if (v12 >= *(v99 + 16))
        {
          goto LABEL_83;
        }

        v19 = *(v98 + 8 * v12);
      }

      v116 = v19;
      v0 = v136;
      if (v104)
      {
        break;
      }

LABEL_71:
      v12 = v109 + 1;
      if (v108)
      {
        v74 = v136[126];
        v75 = v136[125];
        v110 = v109 + 1;
        v76 = v12 / v106;
        v77 = sub_1007A2744();
        v78 = *(v77 - 8);
        (*(v78 + 56))(v74, 1, 1, v77);
        v79 = v108;
        v80 = sub_1007A26E4();
        v81 = swift_allocObject();
        *(v81 + 16) = v80;
        *(v81 + 24) = &protocol witness table for MainActor;
        *(v81 + 32) = v79;
        *(v81 + 40) = v76;
        sub_1000077D8(v74, v75, &qword_100AD67D0);
        LODWORD(v74) = (*(v78 + 48))(v75, 1, v77);

        v82 = v136[125];
        if (v74 == 1)
        {
          sub_100007840(v136[125], &qword_100AD67D0);
        }

        else
        {
          sub_1007A2734();
          (*(v78 + 8))(v82, v77);
        }

        v83 = *(v81 + 16);
        swift_unknownObjectRetain();

        if (v83)
        {
          swift_getObjectType();
          v84 = sub_1007A2694();
          v86 = v85;
          swift_unknownObjectRelease();
        }

        else
        {
          v84 = 0;
          v86 = 0;
        }

        sub_100007840(v136[126], &qword_100AD67D0);
        v87 = swift_allocObject();
        *(v87 + 16) = &unk_10082EEB8;
        *(v87 + 24) = v81;
        if (v86 | v84)
        {
          *v100 = 0;
          v100[1] = 0;
          v136[66] = v84;
          v136[67] = v86;
        }

        swift_task_create();

        v12 = v110;
      }

      v0 = v136;
      v13 = v136[140];
      v14 = v136[116];
      v15 = v136[114];
      v130 = v15;
      v120 = v136[113];
      v122 = v136[117];
      v134 = v136[111];
      v16 = v136[110];
      v124 = v136[108];
      v126 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v132 = *v107;
      (*v107)(v14, v15);
      v17 = swift_allocObject();
      *(v17 + 16) = v13;
      v136[50] = sub_100532CD8;
      v136[51] = v17;
      v136[46] = _NSConcreteStackBlock;
      v136[47] = 1107296256;
      v136[48] = sub_1003323D0;
      v136[49] = &unk_100A21EE8;
      v18 = _Block_copy(aBlock);
      v118 = v108;
      v2 = v120;
      sub_1007A1C74();
      v136[97] = _swiftEmptyArrayStorage;
      sub_100532CFC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100234698();
      sub_1007A3594();
      sub_1007A2D04();
      _Block_release(v18);

      (*v102)(v16, v124);
      (*v101)(v120, v134);
      v132(v122, v130);

      if (v12 == v106)
      {

        v88 = v118;
        goto LABEL_89;
      }
    }

    v20 = 0;
    v115 = *(v117 + 16);
    while (1)
    {
      v125 = sub_100799814();
      v33 = v32;
      sub_100796BA4();
      v0[102] = 0;
      swift_stdlib_random();
      v128 = v33;
      if ((0x20000000000001 * v0[102]) < 0x1FFFFFFFFFF801)
      {
        do
        {
          *v6 = 0;
          swift_stdlib_random();
        }

        while ((0x20000000000001 * *v6) < 0x1FFFFFFFFFF801);
      }

      v34 = v0[123];
      v35 = v136[121];
      v36 = v136[120];
      v37 = v136[118];
      sub_100796AE4();
      v2 = *v129;
      v38 = v35;
      v39 = v136;
      (*v129)(v34, v38);
      sub_1007963F4();
      sub_100532CFC(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
      sub_100796B94();
      (*v113)(v36, v37);
      v131 = v136[93];
      v133 = v136[92];
      if (!v115)
      {
LABEL_37:
        v49 = 0;
        v50 = 0;
        v51 = 2;
        goto LABEL_46;
      }

      v40 = *(v117 + 16);
      if (!v40)
      {
        break;
      }

      *v111 = 0;
      swift_stdlib_random();
      v41 = *v111 * v40;
      v42 = (*v111 * v40) >> 64;
      if (v40 > v41)
      {
        v43 = -v40 % v40;
        if (v43 > v41)
        {
          do
          {
            *v114 = 0;
            swift_stdlib_random();
          }

          while (v43 > *v114 * v40);
          v42 = (*v114 * v40) >> 64;
        }
      }

      if (v42 >= *(v117 + 16))
      {
        goto LABEL_82;
      }

      v44 = *(v117 + 32 + 8 * v42);

      if (!v44)
      {
        goto LABEL_37;
      }

      if (!*(v44 + 16))
      {
        goto LABEL_39;
      }

      v45 = sub_10000E53C(0x44497465737361, 0xE700000000000000);
      if ((v46 & 1) == 0)
      {

LABEL_39:
        v48 = 0;
        v49 = 0;
        if (!*(v44 + 16))
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      sub_100007484(*(v44 + 56) + 32 * v45, (v136 + 60));

      v47 = swift_dynamicCast();
      if (v47)
      {
        v48 = v136[94];
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v49 = v136[95];
      }

      else
      {
        v49 = 0;
      }

      if (!*(v44 + 16))
      {
        goto LABEL_44;
      }

LABEL_40:
      v52 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
      if (v53)
      {
        sub_100007484(*(v44 + 56) + 32 * v52, (v136 + 56));

        if (swift_dynamicCast())
        {
          v51 = *(v136 + 1184);
        }

        else
        {
          v51 = 2;
        }

        goto LABEL_45;
      }

LABEL_44:

      v51 = 2;
LABEL_45:
      v50 = v48;
LABEL_46:
      sub_1001F1160(&unk_100ADE588);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0x6D617473656D6974;
      *(inited + 40) = 0xE900000000000070;
      *(inited + 48) = v133;
      *(inited + 56) = v131;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x44497465737361;
      *(inited + 120) = &type metadata for String;
      v55 = 0x7974706D65;
      if (v49)
      {
        v55 = v50;
      }

      v56 = 0xE500000000000000;
      if (v49)
      {
        v56 = v49;
      }

      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = v55;
      *(inited + 104) = v56;

      v119 = v49;

      v135 = sub_1001EDD94(inited);
      swift_setDeallocating();
      sub_1001F1160(&qword_100AD35D0);
      swift_arrayDestroy();
      v121 = v50;
      v123 = v2;
      if (v125 == 0x527361576B6F6F62 && v128 == 0xEB00000000646165 || (sub_1007A3AB4() & 1) != 0 || v125 == 0xD000000000000012 && 0x80000001008BF840 == v128 || (sub_1007A3AB4() & 1) != 0)
      {

        v136[79] = &type metadata for Float;
        v136[98] = 0;
        swift_stdlib_random();
        for (i = *(v136 + 196); ; i = *v5)
        {
          v58 = 16777217 * i;
          if (v58 >= 0xFFFF01)
          {
            break;
          }

          *v5 = 0;
          swift_stdlib_random();
        }

        *(v136 + 152) = vcvts_n_f32_u64(HIDWORD(v58), 0x18uLL) + 0.0;
        sub_100019288(v136 + 38, v136 + 26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v135;
        v60 = sub_10022569C((v136 + 52), v136[55]);
        sub_100532660(0x73736572676F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v137, *v60);
        sub_1000074E0((v136 + 52));
        v61 = v137[0];
        if (v51 == 2)
        {
          v62 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
          if (v63)
          {
            v64 = v62;
            v65 = swift_isUniquelyReferenced_nonNull_native();
            v137[0] = v61;
            if ((v65 & 1) == 0)
            {
              sub_1002F20F4();
              v61 = v137[0];
            }

            sub_100019288((*(v61 + 56) + 32 * v64), v136 + 42);
            sub_1002EFE4C(v64, v61);
          }

          else
          {
            *(v136 + 42) = 0u;
            *(v136 + 43) = 0u;
          }

          v135 = v61;
          sub_100007840((v136 + 84), &qword_100AE9040);
          goto LABEL_16;
        }

        v136[83] = &type metadata for Bool;
        *(v136 + 640) = v51 & 1;
        sub_100019288(v136 + 40, v136 + 44);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v61;
        v67 = v136[91];
        v68 = sub_10022569C((v136 + 88), v67);
        v69 = *(v67 - 8);
        v70 = swift_task_alloc();
        (*(v69 + 16))(v70, v68, v67);
        v39 = v136;
        sub_1005327B0(v70, 0x656C706D61537369, 0xE800000000000000, v66, v137, &type metadata for Bool);
        sub_1000074E0((v136 + 88));
      }

      else
      {
        if (v125 == 0x676E69746172 && v128 == 0xE600000000000000)
        {
        }

        else
        {
          v71 = sub_1007A3AB4();

          if ((v71 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v136[71] = &type metadata for Float;
        *(v136 + 136) = vcvts_n_f32_u32(sub_1005325D4(16777217), 0x18uLL) + 0.0;
        sub_100019288(v136 + 34, v136 + 36);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v135;
        v73 = sub_10022569C((v136 + 72), v136[75]);
        sub_100532660(0x676E69746172, 0xE600000000000000, v72, v137, *v73);
        sub_1000074E0((v136 + 72));
      }

      v135 = v137[0];
LABEL_16:
      v21 = v20 + 1;
      v127 = v39[139];
      v22 = v39[124];
      v23 = v39[121];
      v24 = *(v39[135] + v39[136]);
      sub_1001F1160(&qword_100AE9028);
      v0 = v39;
      v25 = (sub_1001F1160(&unk_100AE9030) - 8);
      v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10080B690;
      v28 = v27 + v26;
      v20 = v21;
      v29 = v28 + v25[14];
      (*v112)();
      *v29 = v133;
      *(v29 + 8) = v131;
      *(v29 + 16) = v121;
      *(v29 + 24) = v119;
      *(v29 + 32) = v135;
      *(v29 + 40) = 2;
      v30 = v24;
      v31 = v116;
      sub_100799934();

      v123(v22, v23);
      if (v20 == v127)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v1 = v2;
    v3 = sub_1007A38D4();
    if (v3 < 0)
    {
      __break(1u);
LABEL_86:
      __break(1u);
    }

    v4 = v3;
    v2 = v1;
  }

  while (v3);
LABEL_88:
  v88 = v0[140];

LABEL_89:
  v89 = v0[135];
  v90 = v0[127];
  v91 = v0[107];
  v92 = sub_1007A2744();
  (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
  v93 = v91;
  v94 = sub_1007A26E4();
  v95 = swift_allocObject();
  v95[2] = v94;
  v95[3] = &protocol witness table for MainActor;
  v95[4] = v93;
  sub_1003457A0(0, 0, v90, &unk_10082EEA8, v95);
  swift_unknownObjectRelease();

  v96 = v0[1];

  return v96();
}

uint64_t sub_10052FEB4()
{

  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);

  return _swift_task_switch(sub_10052FF28, v2, v1);
}

uint64_t sub_10052FF28()
{
  v131 = v0;

  sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0);
  v1 = sub_1007A33A4();
  sub_10079AB44();

  v2 = [*(v0 + 1104) eventConfigurations];
  sub_100799824();
  v3 = sub_1007A25E4();

  if (v3 >> 62)
  {
    goto LABEL_83;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_87;
  }

  do
  {
    v98 = *(v0 + 1112);
    if (v98 < 0)
    {
      goto LABEL_85;
    }

    v105 = (v0 + 768);
    v6 = (v0 + 792);
    v102 = *(v0 + 1120);
    v108 = (v0 + 800);
    v7 = (v0 + 808);
    v8 = *(v0 + 976);
    v9 = v3;
    v3 = *(v0 + 952);
    v10 = *(v0 + 920);
    v11 = *(v0 + 896);
    v12 = *(v0 + 872);
    v100 = v5;
    sub_10000A7C4(0, &qword_100AD1E10);
    v13 = 0;
    v99 = v9 & 0xC000000000000001;
    v93 = v9 + 32;
    v94 = v9 & 0xFFFFFFFFFFFFFF8;
    v123 = (v8 + 8);
    v106 = (v8 + 16);
    v107 = (v3 + 8);
    v101 = (v10 + 8);
    v97 = (v12 + 8);
    v96 = (v11 + 8);
    while (1)
    {
      v103 = v13;
      if (v99)
      {
        v19 = sub_1007A3784();
      }

      else
      {
        if (v13 >= *(v94 + 16))
        {
          goto LABEL_82;
        }

        v19 = *(v93 + 8 * v13);
      }

      v111 = v19;
      if (v98)
      {
        break;
      }

LABEL_70:
      v69 = v103 + 1;
      v104 = v103 + 1;
      if (v102)
      {
        v70 = *(v0 + 1008);
        v126 = *(v0 + 1000);
        v71 = v69 / v100;
        v72 = sub_1007A2744();
        v73 = *(v72 - 8);
        (*(v73 + 56))(v70, 1, 1, v72);
        v74 = v102;
        v75 = sub_1007A26E4();
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        *(v76 + 24) = &protocol witness table for MainActor;
        *(v76 + 32) = v74;
        v129 = v74;
        *(v76 + 40) = v71;
        sub_1000077D8(v70, v126, &qword_100AD67D0);
        LODWORD(v70) = (*(v73 + 48))(v126, 1, v72);

        v77 = *(v0 + 1000);
        if (v70 == 1)
        {
          sub_100007840(*(v0 + 1000), &qword_100AD67D0);
        }

        else
        {
          sub_1007A2734();
          (*(v73 + 8))(v77, v72);
        }

        v78 = *(v76 + 16);
        swift_unknownObjectRetain();

        if (v78)
        {
          swift_getObjectType();
          v79 = sub_1007A2694();
          v81 = v80;
          swift_unknownObjectRelease();
        }

        else
        {
          v79 = 0;
          v81 = 0;
        }

        sub_100007840(*(v0 + 1008), &qword_100AD67D0);
        v82 = swift_allocObject();
        *(v82 + 16) = &unk_10082EEB8;
        *(v82 + 24) = v76;
        if (v81 | v79)
        {
          *(v0 + 512) = 0;
          *(v0 + 520) = 0;
          *(v0 + 528) = v79;
          *(v0 + 536) = v81;
        }

        swift_task_create();
      }

      v14 = *(v0 + 1120);
      v112 = *(v0 + 936);
      v15 = *(v0 + 928);
      v16 = *(v0 + 912);
      v109 = *(v0 + 904);
      v127 = *(v0 + 888);
      v114 = *(v0 + 880);
      v116 = *(v0 + 864);
      v119 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v124 = *v101;
      (*v101)(v15, v16);
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v0 + 400) = sub_100532CD8;
      *(v0 + 408) = v17;
      *(v0 + 368) = _NSConcreteStackBlock;
      *(v0 + 376) = 1107296256;
      *(v0 + 384) = sub_1003323D0;
      *(v0 + 392) = &unk_100A21EE8;
      v18 = _Block_copy((v0 + 368));
      v95 = v102;
      sub_1007A1C74();
      *(v0 + 776) = _swiftEmptyArrayStorage;
      sub_100532CFC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0);
      sub_100234698();
      v3 = v114;
      sub_1007A3594();
      sub_1007A2D04();
      _Block_release(v18);

      (*v97)(v114, v116);
      (*v96)(v109, v127);
      v124(v112, v16);

      v13 = v104;
      if (v104 == v100)
      {

        v83 = v95;
        goto LABEL_88;
      }
    }

    v20 = 0;
    v110 = _swiftEmptyArrayStorage[2];
    while (1)
    {
      v122 = v20;
      v118 = sub_100799814();
      v32 = v31;
      sub_100796BA4();
      *(v0 + 816) = 0;
      swift_stdlib_random();
      if ((0x20000000000001 * *(v0 + 816)) < 0x1FFFFFFFFFF801)
      {
        do
        {
          *v7 = 0;
          swift_stdlib_random();
        }

        while ((0x20000000000001 * *v7) < 0x1FFFFFFFFFF801);
      }

      v3 = *(v0 + 992);
      v33 = *(v0 + 984);
      v34 = *(v0 + 968);
      v35 = *(v0 + 960);
      v36 = *(v0 + 944);
      sub_100796AE4();
      v120 = *v123;
      (*v123)(v33, v34);
      sub_1007963F4();
      sub_100532CFC(&qword_100ADD570, &type metadata accessor for Date.ISO8601FormatStyle);
      sub_100796B94();
      (*v107)(v35, v36);
      v125 = *(v0 + 744);
      v128 = *(v0 + 736);
      if (!v110)
      {
LABEL_37:
        v46 = 0;
        v44 = 0;
        v47 = 2;
        goto LABEL_46;
      }

      v37 = _swiftEmptyArrayStorage[2];
      if (!v37)
      {
        break;
      }

      v3 = v0 + 768;
      *v105 = 0;
      swift_stdlib_random();
      v38 = *v105 * v37;
      v39 = (*v105 * v37) >> 64;
      if (v37 > v38)
      {
        v3 = -v37 % v37;
        if (v3 > v38)
        {
          do
          {
            *v108 = 0;
            swift_stdlib_random();
          }

          while (v3 > *v108 * v37);
          v39 = (*v108 * v37) >> 64;
        }
      }

      if (v39 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_81;
      }

      v40 = _swiftEmptyArrayStorage[v39 + 4];

      if (!v40)
      {
        goto LABEL_37;
      }

      if (!*(v40 + 16))
      {
        goto LABEL_39;
      }

      v41 = sub_10000E53C(0x44497465737361, 0xE700000000000000);
      if ((v42 & 1) == 0)
      {

LABEL_39:
        v44 = 0;
        v45 = 0;
        if (!*(v40 + 16))
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      sub_100007484(*(v40 + 56) + 32 * v41, v0 + 480);

      v43 = swift_dynamicCast();
      if (v43)
      {
        v44 = *(v0 + 752);
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v45 = *(v0 + 760);
      }

      else
      {
        v45 = 0;
      }

      if (!*(v40 + 16))
      {
        goto LABEL_44;
      }

LABEL_40:
      v48 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
      if (v49)
      {
        sub_100007484(*(v40 + 56) + 32 * v48, v0 + 448);

        if (swift_dynamicCast())
        {
          v47 = *(v0 + 1184);
        }

        else
        {
          v47 = 2;
        }

        goto LABEL_45;
      }

LABEL_44:

      v47 = 2;
LABEL_45:
      v46 = v45;
LABEL_46:
      sub_1001F1160(&unk_100ADE588);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0x6D617473656D6974;
      *(inited + 40) = 0xE900000000000070;
      *(inited + 48) = v128;
      *(inited + 56) = v125;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x44497465737361;
      *(inited + 120) = &type metadata for String;
      v51 = 0x7974706D65;
      if (v46)
      {
        v51 = v44;
      }

      v52 = 0xE500000000000000;
      if (v46)
      {
        v52 = v46;
      }

      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = v51;
      *(inited + 104) = v52;

      v113 = v46;

      v53 = sub_1001EDD94(inited);
      swift_setDeallocating();
      sub_1001F1160(&qword_100AD35D0);
      swift_arrayDestroy();
      v115 = v44;
      if (v118 == 0x527361576B6F6F62 && v32 == 0xEB00000000646165 || (sub_1007A3AB4() & 1) != 0 || v118 == 0xD000000000000012 && 0x80000001008BF840 == v32 || (sub_1007A3AB4() & 1) != 0)
      {

        *(v0 + 632) = &type metadata for Float;
        *(v0 + 784) = 0;
        swift_stdlib_random();
        for (i = 16777217 * *(v0 + 784); i < 0xFFFF01; i = 16777217 * *v6)
        {
          *v6 = 0;
          swift_stdlib_random();
        }

        *(v0 + 608) = vcvts_n_f32_u64(HIDWORD(i), 0x18uLL) + 0.0;
        sub_100019288((v0 + 608), (v0 + 416));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v53;
        v56 = sub_10022569C(v0 + 416, *(v0 + 440));
        sub_100532660(0x73736572676F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v130, *v56);
        sub_1000074E0(v0 + 416);
        v53 = v130[0];
        if (v47 == 2)
        {
          v57 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
          if (v58)
          {
            v59 = v57;
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v130[0] = v53;
            if ((v60 & 1) == 0)
            {
              sub_1002F20F4();
              v53 = v130[0];
            }

            sub_100019288((*(v53 + 56) + 32 * v59), (v0 + 672));
            sub_1002EFE4C(v59, v53);
          }

          else
          {
            *(v0 + 672) = 0u;
            *(v0 + 688) = 0u;
          }

          sub_100007840(v0 + 672, &qword_100AE9040);
          goto LABEL_16;
        }

        *(v0 + 664) = &type metadata for Bool;
        *(v0 + 640) = v47 & 1;
        sub_100019288((v0 + 640), (v0 + 704));
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v53;
        v62 = *(v0 + 728);
        v63 = sub_10022569C(v0 + 704, v62);
        v64 = *(v62 - 8);
        v65 = swift_task_alloc();
        (*(v64 + 16))(v65, v63, v62);
        sub_1005327B0(v65, 0x656C706D61537369, 0xE800000000000000, v61, v130, &type metadata for Bool);
        sub_1000074E0(v0 + 704);
      }

      else
      {
        if (v118 == 0x676E69746172 && v32 == 0xE600000000000000)
        {
        }

        else
        {
          v66 = sub_1007A3AB4();

          if ((v66 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        *(v0 + 568) = &type metadata for Float;
        *(v0 + 544) = vcvts_n_f32_u32(sub_1005325D4(16777217), 0x18uLL) + 0.0;
        sub_100019288((v0 + 544), (v0 + 576));
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v53;
        v68 = sub_10022569C(v0 + 576, *(v0 + 600));
        sub_100532660(0x676E69746172, 0xE600000000000000, v67, v130, *v68);
        sub_1000074E0(v0 + 576);
      }

      v53 = v130[0];
LABEL_16:
      v117 = v53;
      v20 = v122 + 1;
      v121 = *(v0 + 1112);
      v21 = *(v0 + 992);
      v22 = *(v0 + 968);
      v23 = *(*(v0 + 1080) + *(v0 + 1088));
      sub_1001F1160(&qword_100AE9028);
      v24 = (sub_1001F1160(&unk_100AE9030) - 8);
      v25 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10080B690;
      v27 = v26 + v25 + v24[14];
      v28 = v21;
      (*v106)();
      *v27 = v128;
      *(v27 + 8) = v125;
      *(v27 + 16) = v115;
      *(v27 + 24) = v113;
      *(v27 + 32) = v117;
      *(v27 + 40) = 2;
      v29 = v23;
      v30 = v111;
      sub_100799934();

      v120(v28, v22);
      if (v20 == v121)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v2 = v3;
    v4 = sub_1007A38D4();
    if (v4 < 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
    }

    v5 = v4;
    v3 = v2;
  }

  while (v4);
LABEL_87:
  v83 = *(v0 + 1120);

LABEL_88:
  v84 = *(v0 + 1080);
  v85 = *(v0 + 1016);
  v86 = *(v0 + 856);
  v87 = sub_1007A2744();
  (*(*(v87 - 8) + 56))(v85, 1, 1, v87);
  v88 = v86;
  v89 = sub_1007A26E4();
  v90 = swift_allocObject();
  v90[2] = v89;
  v90[3] = &protocol witness table for MainActor;
  v90[4] = v88;
  sub_1003457A0(0, 0, v85, &unk_10082EEA8, v90);
  swift_unknownObjectRelease();

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_10053112C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 16) = a5;
  sub_1007A26F4();
  *(v5 + 24) = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1005311C8, v7, v6);
}

uint64_t sub_1005311C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  LODWORD(v3) = v1;
  [v2 setProgress:v3];
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100531240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1007A26F4();
  *(v4 + 24) = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1005312D8, v6, v5);
}

uint64_t sub_1005312D8()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress) = 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1005315C4()
{
  v1 = v0;
  v2 = sub_100796E74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 tableView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  sub_100796E24();
  isa = sub_100796DF4().super.isa;
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = [v8 cellForRowAtIndexPath:isa];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for LocalSignalStressTestTextViewCell();
  v12 = [swift_dynamicCastClassUnconditional() accessoryView];

  if (!v12)
  {
    return;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = [v1 tableView];
    if (v15)
    {
      v16 = v15;
      sub_100796E24();
      v17 = sub_100796DF4().super.isa;
      v10(v6, v2);
      v18 = [v16 cellForRowAtIndexPath:v17];

      if (v18)
      {
        type metadata accessor for LocalSignalStressTestSwitchCell();
        v19 = [swift_dynamicCastClassUnconditional() accessoryView];

        if (v19)
        {
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            v21 = [v20 isOn];
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v21 = 1;
        }

        [v14 setEnabled:v21];
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
}

unint64_t sub_1005318C8(void *a1)
{
  v2 = v1;
  result = sub_100796E34();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas);
    if (result < *(v5 + 16))
    {
      v6 = v5 + 40 * result;
      v8 = *(v6 + 32);
      v7 = *(v6 + 40);
      v10 = *(v6 + 48);
      v9 = *(v6 + 56);
      v11 = *(v6 + 64);
      sub_1005324FC(v8, v7, v10, v9, v11);
      v12 = sub_1007A2214();

      isa = sub_100796DF4().super.isa;
      v14 = [a1 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

      if (v11 > 1)
      {
        if (v11 != 2)
        {
          v54 = [objc_allocWithZone(UIProgressView) init];
          [v54 setProgressViewStyle:1];
          v55 = v54;
          [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
          v56 = [v14 contentView];
          [v56 addSubview:v55];

          v57 = objc_opt_self();
          sub_1001F1160(&unk_100AD8160);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100816E30;
          v59 = [v55 leadingAnchor];
          v60 = [v14 contentView];
          v61 = [v60 leadingAnchor];

          v62 = [v59 constraintEqualToAnchor:v61 constant:12.0];
          *(v58 + 32) = v62;
          v63 = [v55 trailingAnchor];
          v64 = [v14 contentView];
          v65 = [v64 trailingAnchor];

          v66 = [v63 constraintEqualToAnchor:v65 constant:-12.0];
          *(v58 + 40) = v66;
          v67 = [v55 topAnchor];
          v68 = [v14 contentView];
          v69 = [v68 topAnchor];

          v70 = [v67 constraintEqualToAnchor:v69 constant:12.0];
          *(v58 + 48) = v70;
          v71 = [v55 bottomAnchor];

          v72 = [v14 contentView];
          v73 = [v72 bottomAnchor];

          v74 = [v71 constraintEqualToAnchor:v73 constant:-12.0];
          *(v58 + 56) = v74;
          sub_10000A7C4(0, &qword_100AE9010);
          v75 = sub_1007A25D4().super.isa;

          [v57 activateConstraints:v75];

          return v14;
        }

        v28 = [objc_allocWithZone(UISwitch) init];
        [v28 addTarget:v2 action:v9 forControlEvents:4096];
        [v28 setOn:v10 & 1];
        v29 = [v14 textLabel];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1007A2214();
          [v30 setText:v31];
        }

        v18 = v28;
        [v14 setAccessoryView:v18];
        v23 = v8;
        v24 = v7;
        v25 = v10;
        v26 = v9;
        v27 = 2;
      }

      else
      {
        if (v11)
        {
          v32 = objc_allocWithZone(UIButton);
          v77 = v10;
          v33 = [v32 init];
          v34 = sub_1007A2214();
          [v33 setTitle:v34 forState:0];

          [v33 setTitleColor:v77 forState:0];
          [v33 addTarget:v2 action:v9 forControlEvents:64];
          v35 = v33;
          [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
          v36 = [v14 contentView];
          [v36 addSubview:v35];

          v76 = objc_opt_self();
          sub_1001F1160(&unk_100AD8160);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100816E30;
          v38 = [v35 leadingAnchor];
          v39 = [v14 contentView];
          v40 = [v39 leadingAnchor];

          v41 = [v38 constraintEqualToAnchor:v40 constant:12.0];
          *(v37 + 32) = v41;
          v42 = [v35 trailingAnchor];
          v43 = [v14 contentView];
          v44 = [v43 trailingAnchor];

          v45 = [v42 constraintEqualToAnchor:v44 constant:-12.0];
          *(v37 + 40) = v45;
          v46 = [v35 topAnchor];
          v47 = [v14 contentView];
          v48 = [v47 topAnchor];

          v49 = [v46 constraintEqualToAnchor:v48 constant:5.0];
          *(v37 + 48) = v49;
          v50 = [v35 bottomAnchor];

          v51 = [v14 contentView];
          v52 = [v51 bottomAnchor];

          v53 = [v50 constraintEqualToAnchor:v52 constant:-5.0];
          *(v37 + 56) = v53;
          sub_10000A7C4(0, &qword_100AE9010);
          v18 = sub_1007A25D4().super.isa;

          [v76 activateConstraints:v18];
          sub_100532568(v8, v7, v10, v9, 1);

          goto LABEL_14;
        }

        v15 = [objc_allocWithZone(UITextField) initWithFrame:{0.0, 0.0, 50.0, 20.0}];
        [v15 setKeyboardType:4];
        sub_1007A3A74();
        v16 = sub_1007A2214();

        [v15 setText:v16];

        v17 = objc_opt_self();
        v18 = v15;
        v19 = [v17 lightGrayColor];
        [(objc_class *)v18 setBackgroundColor:v19];

        v20 = [v14 textLabel];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1007A2214();
          [v21 setText:v22];
        }

        [v14 setAccessoryView:v18];
        v23 = v8;
        v24 = v7;
        v25 = v10;
        v26 = v9;
        v27 = 0;
      }

      sub_100532568(v23, v24, v25, v26, v27);

LABEL_14:
      return v14;
    }
  }

  __break(1u);
  return result;
}

id sub_100532448(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005324B4(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1005324D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1005324FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_4;
  }

  v6 = a3;
}

void sub_100532568(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1005325D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_100532660(uint64_t a1, uint64_t a2, char a3, void *a4, float a5)
{
  v23[0] = a5;
  v24 = &type metadata for Float;
  v9 = *a4;
  v11 = sub_10000E53C(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_1000074E0(v18);
      return sub_100019288(v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_1002F20F4();
    goto LABEL_7;
  }

  sub_1003D615C(v14, a3 & 1);
  v20 = sub_10000E53C(a1, a2);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_10022569C(v23, &type metadata for Float);
  sub_1005329D0(v11, a1, a2, v17, *v22);

  return sub_1000074E0(v23);
}

_OWORD *sub_1005327B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v32 = a6;
  v12 = sub_1002256EC(v31);
  (*(*(a6 - 8) + 32))(v12, a1, a6);
  v13 = *a5;
  v15 = sub_10000E53C(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      sub_1000074E0(v22);
      return sub_100019288(v31, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_1002F20F4();
    goto LABEL_7;
  }

  sub_1003D615C(v18, a4 & 1);
  v24 = sub_10000E53C(a2, a3);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = sub_10022569C(v31, v32);
  v27 = __chkstk_darwin(v26);
  v29 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_100532A54(v15, a2, a3, v29, v21, a6);

  return sub_1000074E0(v31);
}

_OWORD *sub_1005329D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  v11[0] = a5;
  v12 = &type metadata for Float;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100019288(v11, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_100532A54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  v12 = sub_1002256EC(&v18);
  (*(*(a6 - 8) + 32))(v12, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_100019288(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_100532B28()
{
  v0 = [objc_opt_self() delegate];
  v1 = [v0 containerHost];
  sub_1000076D8(v6);

  sub_10000E3E8(v6, v6[3]);
  sub_1001F1160(&qword_100AE9020);
  result = sub_100798CD4();
  if (v4)
  {
    sub_1000077C0(&v3, v5);
    sub_10000E3E8(v5, v5[3]);
    sub_10079A524();

    sub_1000074E0(v5);
    return sub_1000074E0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100532C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_10052CB1C(a1, v4, v5, v6);
}

id sub_100532CD8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setProgress:0.0];
  }

  return result;
}

uint64_t sub_100532CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100532D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_100531240(a1, v4, v5, v6);
}

uint64_t sub_100532DF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_10053112C(v7, a1, v4, v5, v6);
}

void sub_100532EBC()
{
  sub_1001F1160(&unk_100AE9048);
  v1 = *(v0 + 16);

  sub_10052C510(v1);
}

uint64_t sub_100532F34(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    v2 = 0x80000001008BFCE0;
    v3 = 0x80000001008BFD00;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x756F792D726F66;
      goto LABEL_12;
    }

    v2 = 0x80000001008BFD20;
    v3 = 0x80000001008BFD40;
    v4 = a1 == 3;
    if (a1 == 3)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000016;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

LABEL_12:
  if (a2 <= 1u)
  {
    v7 = 0x80000001008BFCE0;
    v8 = 0x80000001008BFD00;
    v9 = a2 == 0;
    if (a2)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
    }

    goto LABEL_20;
  }

  if (a2 != 2)
  {
    v7 = 0x80000001008BFD20;
    v8 = 0x80000001008BFD40;
    v9 = a2 == 3;
    if (a2 == 3)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

LABEL_20:
    if (v9)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    if (v5 != v10)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v11 = 0xE700000000000000;
  if (v5 != 0x756F792D726F66)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v6 != v11)
  {
LABEL_28:
    v12 = sub_1007A3AB4();
    goto LABEL_29;
  }

  v12 = 1;
LABEL_29:

  return v12 & 1;
}

uint64_t sub_1005330B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x417972617262696CLL;
  v3 = 0xEA00000000006C6CLL;
  v4 = a1;
  v5 = 0x656C706D6153796DLL;
  v6 = 0xE900000000000073;
  if (a1 != 6)
  {
    v5 = 0x64616F6C6E776F64;
    v6 = 0xEA00000000006465;
  }

  v7 = 0x6F6F626F69647561;
  v8 = 0xEA0000000000736BLL;
  if (a1 != 4)
  {
    v7 = 1936090224;
    v8 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x64656873696E6966;
  if (a1 != 2)
  {
    v10 = 0x736B6F6F62;
    v9 = 0xE500000000000000;
  }

  v11 = 0x65526F54746E6177;
  if (a1)
  {
    v12 = 0xEA00000000006461;
  }

  else
  {
    v11 = 0x417972617262696CLL;
    v12 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = 0xE900000000000073;
        if (v13 != 0x656C706D6153796DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = 0xEA00000000006465;
        if (v13 != 0x64616F6C6E776F64)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v3 = 0xEA0000000000736BLL;
      if (v13 != 0x6F6F626F69647561)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v3 = 0xE400000000000000;
      if (v13 != 1936090224)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = 0xE800000000000000;
        if (v13 != 0x64656873696E6966)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0xE500000000000000;
      v2 = 0x736B6F6F62;
    }

    else if (a2)
    {
      v3 = 0xEA00000000006461;
      if (v13 != 0x65526F54746E6177)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v2)
    {
LABEL_42:
      v15 = sub_1007A3AB4();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v3)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_10053330C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x646F4D746867696CLL;
  v4 = a1;
  v5 = 0x35656D656874;
  if (a1 != 6)
  {
    v5 = 0x36656D656874;
  }

  v6 = 0x33656D656874;
  if (a1 != 4)
  {
    v6 = 0x34656D656874;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x31656D656874;
  if (a1 != 2)
  {
    v8 = 0x32656D656874;
    v7 = 0xE600000000000000;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65646F4D6B726164;
  if (!a1)
  {
    v10 = 0x646F4D746867696CLL;
    v9 = 0xE900000000000065;
  }

  if (a1 <= 1u)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 3)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (a2 > 3u)
  {
    v2 = 0xE600000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v11 != 0x35656D656874)
        {
          goto LABEL_41;
        }
      }

      else if (v11 != 0x36656D656874)
      {
        goto LABEL_41;
      }
    }

    else if (a2 == 4)
    {
      if (v11 != 0x33656D656874)
      {
        goto LABEL_41;
      }
    }

    else if (v11 != 0x34656D656874)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x31656D656874)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x32656D656874;
    }

    else if (a2)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x65646F4D6B726164)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v11 != v3)
    {
LABEL_41:
      v13 = sub_1007A3AB4();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_10053352C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72656E6E697073;
  if (a1 != 6)
  {
    v5 = 0x73736572676F7270;
    v4 = 0xE800000000000000;
  }

  v6 = 0x726F6572506E6163;
  if (a1 != 4)
  {
    v6 = 0x726F657250646964;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xEB00000000726564;
  }

  v7 = 0xE300000000000000;
  v8 = 7959906;
  if (a1 != 2)
  {
    v8 = 1684104562;
    v7 = 0xE400000000000000;
  }

  v9 = 0x6563697270;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x72656E6E697073)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x73736572676F7270)
        {
LABEL_45:
          v14 = sub_1007A3AB4();
          goto LABEL_46;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = 1349411171;
      }

      else
      {
        v13 = 1348757860;
      }

      v12 = 0xEB00000000726564;
      if (v10 != (v13 | 0x726F657200000000))
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7959906)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684104562)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6563697270)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_100533780(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6F6F626F69647561;
  v5 = 0xEE0065726F74536BLL;
  v6 = 0xE600000000000000;
  v7 = 0x686372616573;
  if (a1 != 4)
  {
    v7 = 0x61676E616DLL;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x7972617262696CLL;
  if (a1 != 1)
  {
    v9 = 0x726F74536B6F6F62;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701670760;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEE0065726F74536BLL;
      if (v10 != 0x6F6F626F69647561)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x61676E616DLL)
      {
LABEL_34:
        v13 = sub_1007A3AB4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7972617262696CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x726F74536B6F6F62)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701670760)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100533970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x72756769666E6F63;
  v4 = a1;
  v5 = 0x80000001008BF820;
  v6 = 0xD000000000000017;
  if (a1 != 4)
  {
    v6 = 1768055156;
    v5 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x747369486B6F6F62;
    v5 = 0xEB0000000079726FLL;
  }

  v7 = 0xD000000000000013;
  v8 = 0x80000001008BF780;
  if (a1 != 1)
  {
    v7 = 0xD000000000000021;
    v8 = 0x80000001008BF7F0;
  }

  if (!a1)
  {
    v7 = 0x72756769666E6F63;
    v8 = 0xED00006E6F697461;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB0000000079726FLL;
      if (v9 != 0x747369486B6F6F62)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000001008BF820;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v9 != 1768055156)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001008BF780;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x80000001008BF7F0;
      v3 = 0xD000000000000021;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_1007A3AB4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_100533B4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x72756769666E6F63;
  v4 = a1;
  v5 = 0x495041616964656DLL;
  v6 = 0x80000001008BF7B0;
  v7 = 0xD000000000000022;
  if (a1 != 4)
  {
    v7 = 1768055156;
    v6 = 0xE400000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000013;
  v9 = 0x80000001008BF780;
  if (a1 != 1)
  {
    v8 = 0x747369486B6F6F62;
    v9 = 0xEB0000000079726FLL;
  }

  if (!a1)
  {
    v8 = 0x72756769666E6F63;
    v9 = 0xED00006E6F697461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x495041616964656DLL)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000001008BF7B0;
      if (v10 != 0xD000000000000022)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v10 != 1768055156)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001008BF780;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x747369486B6F6F62;
      v2 = 0xEB0000000079726FLL;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1007A3AB4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_100533D2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = a1;
  v4 = 0x797469746E656469;
  v5 = 0xE400000000000000;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 1768055156;
  }

  v6 = 0xD000000000000013;
  v7 = 0x80000001008BF780;
  if (!a1)
  {
    v6 = 0x72756769666E6F63;
    v7 = 0xED00006E6F697461;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v2 = 0xE800000000000000;
    v10 = 0xE400000000000000;
    if (a2 == 2)
    {
      v12 = 0x797469746E656469;
    }

    else
    {
      v12 = 1768055156;
    }
  }

  else
  {
    v10 = 0x80000001008BF780;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v12 = 0x72756769666E6F63;
    }
  }

  if (v11)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1007A3AB4();
  }

  return v14 & 1;
}

uint64_t sub_100533E60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x72756769666E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6F4A656C676E6973;
    }

    else
    {
      v5 = 0x72756769666E6F63;
    }

    if (v4)
    {
      v6 = 0xEB00000000746E69;
    }

    else
    {
      v6 = 0xED00006E6F697461;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x746E696F4A6C6C61;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6F6A7369446C6C61;
    }

    else
    {
      v5 = 0x7473657265746E69;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000746E69;
    }

    else
    {
      v6 = 0xED00006465736142;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E696F4A6C6C61;
  v9 = 0x6F6A7369446C6C61;
  v10 = 0xEB00000000746E69;
  if (a2 != 3)
  {
    v9 = 0x7473657265746E69;
    v10 = 0xED00006465736142;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x6F4A656C676E6973;
    v2 = 0xEB00000000746E69;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1007A3AB4();
  }

  return v13 & 1;
}

uint64_t sub_100534024()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_100534150()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_100534264()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100534390()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_1005344AC()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_1005345C8()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_1005346CC()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_10053480C()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_100534934()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t BuyButtonState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656E6E697073;
  if (a1 != 6)
  {
    v2 = 0x73736572676F7270;
  }

  v3 = 0x726F6572506E6163;
  if (a1 != 4)
  {
    v3 = 0x726F657250646964;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 7959906;
  if (a1 != 2)
  {
    v4 = 1684104562;
  }

  if (a1)
  {
    v1 = 0x6563697270;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100534B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Books14BuyButtonStateO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100534BC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x72656E6E697073;
  if (v2 != 6)
  {
    v6 = 0x73736572676F7270;
    v5 = 0xE800000000000000;
  }

  v7 = 0x726F6572506E6163;
  if (v2 != 4)
  {
    v7 = 0x726F657250646964;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xEB00000000726564;
  }

  v8 = 0xE300000000000000;
  v9 = 7959906;
  if (v2 != 2)
  {
    v9 = 1684104562;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6563697270;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

void sub_100534CC4(char a1)
{
  v2 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload;
  if (*(v1 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload) != (a1 & 1))
  {
    v3 = v1;

    oslog = sub_10079ACC4();
    v5 = sub_1007A29D4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = a1 & 1;
      *(v6 + 8) = 1024;
      *(v6 + 10) = *(v3 + v2);

      _os_log_impl(&_mh_execute_header, oslog, v5, "BuyButton willDownload did change from %{BOOL}d to %{BOOL}d", v6, 0xEu);
    }

    else
    {
    }
  }
}

uint64_t sub_100534E1C(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
  if ((sub_10053352C(a1, *(v1 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState)) & 1) == 0)
  {

    v4 = sub_10079ACC4();
    v5 = sub_1007A29D4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = 0x6E776F6E6B6E75;
      v7 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v8 = 0xE700000000000000;
      v9 = 0xE700000000000000;
      *v7 = 136315394;
      v10 = 0x72656E6E697073;
      if (a1 != 6)
      {
        v10 = 0x73736572676F7270;
        v9 = 0xE800000000000000;
      }

      v11 = 0x726F6572506E6163;
      if (a1 != 4)
      {
        v11 = 0x726F657250646964;
      }

      if (a1 <= 5u)
      {
        v10 = v11;
        v9 = 0xEB00000000726564;
      }

      v12 = 0xE300000000000000;
      v13 = 7959906;
      if (a1 != 2)
      {
        v13 = 1684104562;
        v12 = 0xE400000000000000;
      }

      v14 = 0x6563697270;
      if (a1)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v14 = 0x6E776F6E6B6E75;
      }

      if (a1 > 1u)
      {
        v8 = v12;
      }

      else
      {
        v13 = v14;
      }

      if (a1 <= 3u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      if (a1 <= 3u)
      {
        v16 = v8;
      }

      else
      {
        v16 = v9;
      }

      v17 = sub_1000070F4(v15, v16, &v23);

      *(v7 + 4) = v17;
      *(v7 + 12) = 2080;
      v18 = *(v1 + v3);
      if (v18 > 3)
      {
        if (*(v1 + v3) > 5u)
        {
          if (v18 == 6)
          {
            v19 = 0xE700000000000000;
            v6 = 0x72656E6E697073;
          }

          else
          {
            v19 = 0xE800000000000000;
            v6 = 0x73736572676F7270;
          }
        }

        else
        {
          if (v18 == 4)
          {
            v20 = 1349411171;
          }

          else
          {
            v20 = 1348757860;
          }

          v6 = v20 | 0x726F657200000000;
          v19 = 0xEB00000000726564;
        }
      }

      else if (*(v1 + v3) > 1u)
      {
        if (v18 == 2)
        {
          v19 = 0xE300000000000000;
          v6 = 7959906;
        }

        else
        {
          v19 = 0xE400000000000000;
          v6 = 1684104562;
        }
      }

      else if (*(v1 + v3))
      {
        v19 = 0xE500000000000000;
        v6 = 0x6563697270;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      v21 = sub_1000070F4(v6, v19, &v23);

      *(v7 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v4, v5, "BuyButton state did change from %s to %s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  return sub_100535160();
}

uint64_t sub_100535160()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
  if (*(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState) > 3u || *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState))
  {
    v3 = sub_1007A3AB4();

    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  sub_1005353C0();
LABEL_6:
  if ((sub_100535E70() & 1) != 0 || (swift_unknownObjectRetain(), v4 = sub_100393718(), swift_unknownObjectRelease(), (v4) && *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters + 8)) && ((Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v6 = [Strong isDownloading], swift_unknownObjectRelease(), !v6) || (v7 = swift_unknownObjectWeakLoadStrong()) != 0 && (v8 = objc_msgSend(v7, "isAudiobook"), swift_unknownObjectRelease(), v8)))
  {
    v9 = [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100223C38(*(v1 + v2), v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005353C0()
{
  if (sub_100535E70())
  {
    v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
    v2 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState);
    v3 = 3;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v5 = [Strong isDownloading], swift_unknownObjectRelease(), (v5 & 1) != 0) || *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload) == 1)
    {
      v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
      v2 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState);
      v3 = 7;
    }

    else
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6 && (v7 = [v6 isPreordered], swift_unknownObjectRelease(), v7))
      {
        v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
        v2 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState);
        v3 = 5;
      }

      else
      {
        v8 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder);
        if (v8 == 2 || (v8 & 1) == 0)
        {
          v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
          v2 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState);
          v3 = 1;
        }

        else
        {
          v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
          v2 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState);
          v3 = 4;
        }
      }
    }
  }

  *(v0 + v1) = v3;

  return sub_100534E1C(v2);
}

uint64_t sub_1005354F4()
{
  v1 = OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState;
  if (*(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState) <= 1u && !*(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState))
  {
    goto LABEL_15;
  }

  v2 = sub_1007A3AB4();

  if (v2)
  {
    goto LABEL_16;
  }

  if (*(v0 + v1) <= 1u && *(v0 + v1))
  {
    goto LABEL_15;
  }

  v3 = sub_1007A3AB4();

  if (v3)
  {
    goto LABEL_16;
  }

  v4 = *(v0 + v1);
  if (v4 > 3 && *(v0 + v1) <= 5u && v4 == 4)
  {
    goto LABEL_15;
  }

  v5 = sub_1007A3AB4();

  if (v5)
  {
LABEL_16:
    v6 = *(v0 + v1);
    *(v0 + v1) = 6;
    sub_100534E1C(v6);

    return sub_100535B24();
  }

  if (*(v0 + v1) == 2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v8 = sub_1007A3AB4();

  if (v8)
  {
    goto LABEL_16;
  }

  v9 = *(v0 + v1);
  if (v9 > 3 && *(v0 + v1) <= 5u && v9 != 4)
  {
LABEL_25:

    goto LABEL_27;
  }

  v10 = sub_1007A3AB4();

  if ((v10 & 1) == 0)
  {
    if (*(v0 + v1) != 3)
    {
      v11 = sub_1007A3AB4();

      if ((v11 & 1) == 0)
      {
        return result;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_27:
  v12 = *(v0 + v1);
  *(v0 + v1) = 6;
  sub_100534E1C(v12);

  return sub_100535CF8();
}

uint64_t sub_100535B24()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100536798;
    *(v4 + 24) = v1;
    v8[4] = sub_1005367BC;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10021B6B0;
    v8[3] = &unk_100A220F8;
    v5 = _Block_copy(v8);
    swift_unknownObjectRetain();
    swift_retain_n();

    [v3 buyBookWithCompletion:v5];

    swift_unknownObjectRelease();
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload);
    *(v1 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload) = 0;
    swift_unknownObjectRetain();

    sub_100534CC4(v7);
    sub_100017E74();
    swift_allocObject();
    swift_weakInit();

    sub_1007A2CD4();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100535CF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1005367CC;
    *(v3 + 24) = v0;
    v7[4] = sub_1005367E8;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10021B6B0;
    v7[3] = &unk_100A22148;
    v4 = _Block_copy(v7);
    swift_unknownObjectRetain();
    swift_retain_n();

    [v2 buyBookWithCompletion:v4];

    swift_unknownObjectRelease();
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();

    sub_10053619C(v6);

    return swift_unknownObjectRelease();
  }
}