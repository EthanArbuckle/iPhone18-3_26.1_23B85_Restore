unsigned __int8 *sub_10003CA80()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v2);
  v7 = InstallSheetContext.itemID.getter();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = HIBYTE(v9) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
  }

  if ((v9 & 0x1000000000000000) == 0)
  {
    if ((v9 & 0x2000000000000000) != 0)
    {
      v39[0] = v7;
      v39[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      if (v7 == 43)
      {
        if (v11)
        {
          if (--v11)
          {
            v25 = 0;
            v26 = v39 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              if (!is_mul_ok(v25, 0xAuLL))
              {
                break;
              }

              v18 = __CFADD__(10 * v25, v27);
              v25 = 10 * v25 + v27;
              if (v18)
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v7 != 45)
      {
        if (v11)
        {
          v30 = 0;
          v31 = v39;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              break;
            }

            v18 = __CFADD__(10 * v30, v32);
            v30 = 10 * v30 + v32;
            if (v18)
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v11)
      {
        if (--v11)
        {
          v19 = 0;
          v20 = v39 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v19, 0xAuLL))
            {
              break;
            }

            v18 = 10 * v19 >= v21;
            v19 = 10 * v19 - v21;
            if (!v18)
            {
              break;
            }

            ++v20;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v14 = *result;
      if (v14 == 43)
      {
        if (v12 >= 1)
        {
          v11 = v12 - 1;
          if (v12 != 1)
          {
            v22 = 0;
            if (result)
            {
              v23 = result + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v22, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v18 = __CFADD__(10 * v22, v24);
                v22 = 10 * v22 + v24;
                if (v18)
                {
                  goto LABEL_63;
                }

                ++v23;
                if (!--v11)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v14 != 45)
      {
        if (v12)
        {
          v28 = 0;
          if (result)
          {
            while (1)
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v28, 0xAuLL))
              {
                goto LABEL_63;
              }

              v18 = __CFADD__(10 * v28, v29);
              v28 = 10 * v28 + v29;
              if (v18)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v12)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v11) = 1;
        goto LABEL_64;
      }

      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v15, 0xAuLL))
              {
                goto LABEL_63;
              }

              v18 = 10 * v15 >= v17;
              v15 = 10 * v15 - v17;
              if (!v18)
              {
                goto LABEL_63;
              }

              ++v16;
              if (!--v11)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v11) = 0;
LABEL_64:
          v40 = v11;
          v33 = v11;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v40 = 0;
  sub_10003F578(v7, v9, 10);
  v33 = v37;
LABEL_65:

  if ((v33 & 1) == 0)
  {
    type metadata accessor for AppLibrary();
    static AppLibrary.current.getter();
    v34 = AppLibrary.app(forAppleItemID:)();

    v35 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp;
    v36 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp);
    *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp) = v34;

    result = sub_10003D35C();
    if (*(v1 + v35))
    {
      __chkstk_darwin(result);
      *(&v38 - 2) = v1;

      withObservationTracking<A>(_:onChange:)();
    }
  }

  return result;
}

uint64_t sub_10003CF0C()
{
  v0 = sub_1000047BC(&qword_100089E28, &qword_100067208);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000047BC(&unk_100089E18, qword_100067198);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  AppLibrary.App.installation.getter();
  sub_100011C14(v7, &unk_100089E18, qword_100067198);
  AppLibrary.App.isInstalling.getter();
  AppLibrary.App.isInstalled.getter();
  AppLibrary.App.installationError.getter();
  sub_100011C14(v3, &qword_100089E28, &qword_100067208);
}

void sub_10003D088()
{
  v0 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_100007654(0, 0, v3, &unk_100067200, v9);
  }
}

uint64_t sub_10003D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003D274, v6, v5);
}

uint64_t sub_10003D274()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10003D35C();
  if (*(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp))
  {
    v3 = v0[2];
    *(swift_task_alloc() + 16) = v3;

    withObservationTracking<A>(_:onChange:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003D35C()
{
  v1 = type metadata accessor for InstallSheetContext();
  v85 = *(v1 - 8);
  v86 = v1;
  v2 = *(v85 + 64);
  __chkstk_darwin(v1);
  v84 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppLibrary.App.Installation();
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v87 = v8;
  v88 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v82 - v9;
  v10 = sub_1000047BC(&unk_100089E18, qword_100067198);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v89 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = &v82 - v14;
  v16 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for InstallSheetContext.Source();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  v27 = *(*(v26 - 8) + 64);
  result = __chkstk_darwin(v26);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp];
  if (v31)
  {
    v82 = result;
    v92 = v0;
    v83 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent];
    sub_100041ED0(&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], v30, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    v91 = v31;

    InstallSheetContext.source.getter();
    if ((*(v22 + 88))(v25, v21) == enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      (*(v22 + 96))(v25, v21);
      (*(v17 + 32))(v20, v25, v16);
      v32 = InstallSheetContext.Source.WebInstallContext.isUpdate.getter();
      (*(v17 + 8))(v20, v16);
      sub_100041F38(v30, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
      v33 = v93;
      v34 = (v32 & 1) != 0 && *&v92[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate] == 0.0;
    }

    else
    {
      sub_100041F38(v30, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
      (*(v22 + 8))(v25, v21);
      v34 = 0;
      v33 = v93;
    }

    v35 = v94;
    if ((AppLibrary.App.isInstalled.getter() & 1) != 0 && !v34)
    {
      goto LABEL_9;
    }

    AppLibrary.App.installation.getter();
    v36 = *(v35 + 48);
    if (v36(v15, 1, v33) == 1)
    {
      sub_100011C14(v15, &unk_100089E18, qword_100067198);
    }

    else
    {
      v37 = AppLibrary.App.Installation.progress.getter();
      (*(v35 + 8))(v15, v33);
      [v37 fractionCompleted];
      v39 = v38;

      if (v39 >= 1.0)
      {
LABEL_9:
        sub_10003E9C0();
      }
    }

    v40 = v89;
    AppLibrary.App.installation.getter();
    if (v36(v40, 1, v33) == 1)
    {
      sub_100011C14(v40, &unk_100089E18, qword_100067198);
      v41 = [objc_opt_self() indeterminateProgressMetadata];
      v42 = [objc_allocWithZone(ASCLocalOffer) initWithMetadata:v41 action:0];
      v43 = v92;
    }

    else
    {
      v44 = *(v35 + 32);
      v91 = v35 + 32;
      v89 = v44;
      v44(v90, v40, v33);
      v45 = objc_opt_self();
      v46 = AppLibrary.App.Installation.progress.getter();
      [v46 fractionCompleted];
      v48 = v47;

      v49 = [v45 progressMetadataWithValue:v48];
      v93 = [objc_allocWithZone(ASCLocalOffer) initWithMetadata:v49 action:0];

      if ((v83[*(v82 + 68)] & 1) == 0)
      {
        v50 = *&v92[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
        v51 = objc_opt_self();
        v52 = v50;
        v53 = [v51 whiteColor];
        v54 = [v51 whiteColor];
        v55 = [v51 whiteColor];
        v56 = [v51 whiteColor];
        v57 = [v51 systemBlueColor];
        v58 = [objc_allocWithZone(ASCOfferTheme) initWithTitleBackgroundColor:v53 titleTextColor:v54 subtitleTextColor:v55 iconTintColor:v56 progressColor:v57];

        [v52 setOfferTheme:v58];
        v35 = v94;
      }

      v59 = v90;
      v60 = AppLibrary.App.Installation.progress.getter();
      v95 = v60;
      swift_getKeyPath();
      v61 = v88;
      (*(v35 + 16))(v88, v59, v33);
      v62 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v63 = swift_allocObject();
      v43 = v92;
      *(v63 + 16) = v92;
      v89(v63 + v62, v61, v33);
      v64 = v43;
      v65 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*(v35 + 8))(v59, v33);
      v41 = *&v64[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken];
      *&v64[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken] = v65;
      v42 = v93;
    }

    v66 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup;
    v67 = *&v43[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup];
    if (v67)
    {
      v68 = *&v43[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
      v69 = v67;
      v70 = v68;
      v71 = [v69 lockupWithOffer:v42];
      [v70 setLockup:v71];
    }

    else
    {
      v73 = v84;
      v72 = v85;
      v74 = v86;
      (*(v85 + 16))(v84, v83, v86);
      InstallSheetContext.itemID.getter();
      (*(v72 + 8))(v73, v74);
      v75 = objc_allocWithZone(ASCAdamID);
      v76 = String._bridgeToObjectiveC()();

      v77 = [v75 initWithStringValue:v76];

      v78 = [objc_allocWithZone(ASCLockup) initWithID:v77 kind:ASCLockupKindApp metrics:0 icon:0 heading:0 title:0 subtitle:0 ageRating:0 offer:v42];
      v79 = *&v43[v66];
      *&v43[v66] = v78;
      v80 = v78;

      v81 = *&v43[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
      [v81 setLockup:v80];
    }
  }

  return result;
}

uint64_t sub_10003DDAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for AppLibrary.App.Installation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v9, a4, v6);
  type metadata accessor for MainActor();
  v15 = a3;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v7 + 32))(&v18[v17], v9, v6);
  sub_100007654(0, 0, v13, &unk_1000671F0, v18);
}

uint64_t sub_10003DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003E044, v7, v6);
}

uint64_t sub_10003E044()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup);
  if (v3)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v3;
    v7 = AppLibrary.App.Installation.progress.getter();
    [v7 fractionCompleted];
    v9 = v8;

    v10 = [objc_opt_self() progressMetadataWithValue:v9];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = objc_allocWithZone(ASCLocalOffer);
    v0[6] = sub_1000416DC;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10005F9E8;
    v0[5] = &unk_10007F560;
    v13 = _Block_copy(v0 + 2);
    v14 = v0[7];

    v15 = [v12 initWithMetadata:v10 action:v13];
    _Block_release(v13);

    if (*(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate) <= v9)
    {
      v16 = v0[8];
      *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate) = v9;
      v17 = *(v16 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
      v18 = [v6 lockupWithOffer:v15];
      [v17 setLockup:v18];
    }
  }

  v19 = v0[1];

  return v19();
}

void sub_10003E270()
{
  v0 = type metadata accessor for InstallSheetContext();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000047BC(&unk_100089E18, qword_100067198);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v44 - v7;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v10 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp))
  {

    return;
  }

  v11 = *(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp);

  AppLibrary.App.installation.getter();
  v12 = type metadata accessor for AppLibrary.App.Installation();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {

    sub_100011C14(v8, &unk_100089E18, qword_100067198);
LABEL_7:

    return;
  }

  v14 = AppLibrary.App.Installation.progress.getter();
  (*(v13 + 8))(v8, v12);
  v15 = [v14 isPaused];
  v47 = v14;
  if (v15)
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000105E8(v16, qword_10008C4C0);
    v17 = v10;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v20 = 136446210;
      (*(v1 + 16))(v4, v17 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v0);
      v21 = InstallSheetContext.logKey.getter();
      v46 = v17;
      v23 = v22;
      (*(v1 + 8))(v4, v0);
      v24 = sub_10000F78C(v21, v23, &v48);
      v17 = v46;

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] Resuming install", v20, 0xCu);
      sub_10001059C(v45);
    }

    v25 = v47;
    [v47 resume];

LABEL_21:

    return;
  }

  if ([v14 isPausable])
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000105E8(v26, qword_10008C4C0);
    v27 = v10;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v30 = 136446210;
      (*(v1 + 16))(v4, v27 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v0);
      v31 = InstallSheetContext.logKey.getter();
      v46 = v27;
      v33 = v32;
      (*(v1 + 8))(v4, v0);
      v34 = sub_10000F78C(v31, v33, &v48);
      v27 = v46;

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] Pausing install", v30, 0xCu);
      sub_10001059C(v45);
    }

    v25 = v47;
    [v47 pause];

    goto LABEL_21;
  }

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000105E8(v35, qword_10008C4C0);
  v36 = v10;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v39 = 136446210;
    (*(v1 + 16))(v4, v36 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v0);
    v45 = v37;
    v40 = InstallSheetContext.logKey.getter();
    v42 = v41;
    (*(v1 + 8))(v4, v0);
    v43 = sub_10000F78C(v40, v42, &v48);

    *(v39 + 4) = v43;
    v37 = v45;
    _os_log_impl(&_mh_execute_header, v45, v38, "[%{public}s] progress button pressed but no action can be taken", v39, 0xCu);
    sub_10001059C(v46);
  }
}

id sub_10003E9C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken;
  v3 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
  v6 = v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent;
  v7 = (v6 + *(type metadata accessor for LocalizedCombinedApprovalAndInstallContent() + 48));
  v8 = *v7;
  v9 = v7[1];

  v10 = String._bridgeToObjectiveC()();

  [v5 setTitle:v10 forState:0];

  [v5 addTarget:v1 action:"openAppPressed" forControlEvents:64];
  v11 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);

  return [v11 removeFromSuperview];
}

uint64_t sub_10003EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003EB58, v6, v5);
}

uint64_t sub_10003EB58()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10003EC54;

    return sub_10001EED4(0);
  }

  else
  {
    v5 = *(v0 + 32);

    **(v0 + 16) = *(v0 + 56) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10003EC54()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_10003ED98, v5, v4);
}

uint64_t sub_10003ED98()
{
  v1 = *(v0 + 32);

  **(v0 + 16) = *(v0 + 56) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003EFC8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CombinedApprovalAndInstallSheetViewController()
{
  result = qword_100089DD8;
  if (!qword_100089DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003F18C()
{
  result = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10003F51C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unsigned __int8 *sub_10003F578(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10003FAFC();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10003FAFC()
{
  v0 = String.subscript.getter();
  v4 = sub_10003FB7C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10003FB7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000FBCC(v9, 0);
  v12 = sub_10003FCD4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10003FCD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10003FEF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10003FEF4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_10003FEF4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_10003FF8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper];
  v9 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  v10 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID + 8];
  v11 = String._bridgeToObjectiveC()();
  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID + 8])
  {
    v12 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID + 8])
  {
    v14 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 lockupWithItemID:v11 versionID:v13 distributorID:v15 isForAppStore:a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] delegate:a1];

  v17 = objc_allocWithZone(UIColor);
  v48 = sub_1000618D0;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10004646C;
  v47 = a3;
  v18 = _Block_copy(&aBlock);
  v19 = [v17 initWithDynamicProvider:v18];
  _Block_release(v18);

  [v16 setBackgroundColor:v19];

  [a2 addSubview:v16];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [a2 leadingAnchor];
  v21 = [v16 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];

  [v22 setActive:1];
  v23 = [a2 trailingAnchor];
  v24 = [v16 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

  [v25 setActive:1];
  v26 = [a2 topAnchor];
  v27 = [v16 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-16.0];

  [v28 setActive:1];
  v29 = [a2 bottomAnchor];
  v30 = [v16 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  [v31 setActive:1];
  v32 = [a2 layer];
  [v32 setCornerRadius:20.0];

  v33 = [a2 layer];
  v34 = objc_allocWithZone(UIColor);
  v48 = sub_1000618F4;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10004646C;
  v47 = a4;
  v35 = _Block_copy(&aBlock);
  v36 = [v34 initWithDynamicProvider:v35];
  _Block_release(v35);

  v37 = [v36 CGColor];

  [v33 setBorderColor:v37];
  v38 = [a2 layer];
  [v38 setBorderWidth:1.0];

  v39 = objc_allocWithZone(UIColor);
  v48 = sub_1000618D0;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10004646C;
  v47 = a5;
  v40 = _Block_copy(&aBlock);
  v41 = [v39 initWithDynamicProvider:v40];
  _Block_release(v40);

  [a2 setBackgroundColor:v41];
}

id sub_10004050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_delegate];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_isIPad;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v3[v7] = v9 == 1;
  v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton;
  v11 = &selRef_boldButton;
  v12 = objc_opt_self();
  *&v3[v10] = [v12 boldButton];
  v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
  *&v3[v13] = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken] = 0;
  *(v6 + 1) = a3;
  swift_unknownObjectWeakAssign();
  sub_100041ED0(a1, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  v14 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent();
  if (*(a1 + *(v14 + 68)))
  {
    v15 = v12;
  }

  else
  {
    v15 = objc_opt_self();
    v11 = &selRef_linkButton;
  }

  v16 = [v15 *v11];
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton] = v16;
  v17 = (a1 + *(v14 + 28));
  v18 = *v17;
  v19 = v17[1];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v24.receiver = v3;
  v24.super_class = type metadata accessor for CombinedApprovalAndInstallSheetViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithTitle:detailText:symbolName:contentLayout:", v20, v21, 0, 3);

  sub_100041F38(a1, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  return v22;
}

char *sub_100040764(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v55 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallSheetContext.Source();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v16 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v17 = type metadata accessor for InstallSheetContext();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a3[v16], a1, v17);
  v19 = *(v18 + 56);
  v53 = v17;
  v19(&a3[v16], 0, 1, v17);
  v20 = InstallSheetContext.itemID.getter();
  v21 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v21 = v20;
  v21[1] = v22;
  v23 = InstallSheetContext.versionID.getter();
  v24 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v24 = v23;
  v24[1] = v25;
  v26 = InstallSheetContext.logKey.getter();
  v27 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v27 = v26;
  v27[1] = v28;
  InstallSheetContext.source.getter();
  LOBYTE(v16) = InstallSheetContext.Source.isAppStore.getter();
  v49 = *(v9 + 8);
  v49(v15, v8);
  a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = v16 & 1;
  v29 = *v27;
  v30 = v27[1];
  v31 = objc_allocWithZone(AppStoreComponentsWrapper);

  v32 = String._bridgeToObjectiveC()();

  v33 = [v31 initWithLogKey:v32];

  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v33;
  InstallSheetContext.source.getter();
  v34 = (*(v9 + 88))(v13, v8);
  if (v34 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v9 + 96))(v13, v8);
    v35 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
    goto LABEL_3;
  }

  if (v34 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    (*(v9 + 96))(v13, v8);
    v37 = *(v13 + 1);
    v38 = *(v13 + 2);
    v39 = *(v13 + 3);

LABEL_9:
    v44 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
    *v44 = v38;
    v44[1] = v39;
    goto LABEL_10;
  }

  if (v34 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    (*(v9 + 96))(v13, v8);
    v41 = v50;
    v40 = v51;
    v42 = v52;
    (*(v51 + 32))(v50, v13, v52);
    v38 = InstallSheetContext.Source.DistributorContext.id.getter();
    v39 = v43;
    (*(v40 + 8))(v41, v42);
    goto LABEL_9;
  }

  if (v34 == enum case for InstallSheetContext.Source.web(_:))
  {
    v49(v13, v8);
    goto LABEL_4;
  }

  if (v34 != enum case for InstallSheetContext.Source.webWithContext(_:))
  {
    if (v34 != enum case for InstallSheetContext.Source.appStore(_:))
    {
      v47 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v47 = 0;
      v47[1] = 0;
      v49(v13, v8);
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  (*(v9 + 96))(v13, v8);
  v35 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
LABEL_3:
  (*(*(v35 - 8) + 8))(v13, v35);
LABEL_4:
  v36 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v36 = 0;
  v36[1] = 0;
LABEL_10:
  v56.receiver = a3;
  v56.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v56, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10003FF8C(v55, v45, &unk_10007F6C8, &unk_10007F6F0, &unk_10007F718);
  sub_100045FF4();

  (*(v18 + 8))(a1, v53);
  return v45;
}

uint64_t sub_100040CCC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v46 - v4;
  v52 = type metadata accessor for InstallSheetContext();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v52);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for UITextItem.Content();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UITextItem.content.getter();
  if ((*(v16 + 88))(v19, v15) == enum case for UITextItem.Content.link(_:))
  {
    (*(v16 + 96))(v19, v15);
    v48 = v10;
    v20 = *(v10 + 32);
    v50 = v10 + 32;
    v51 = v14;
    v49 = v20;
    v20(v14, v19, v9);
    v21 = v9;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000105E8(v22, qword_10008C4C0);
    v23 = v53;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53 = v21;
      v27 = v26;
      v28 = swift_slowAlloc();
      v57 = v28;
      *v27 = 136446210;
      v29 = v52;
      (*(v5 + 16))(v8, v23 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v52);
      v30 = InstallSheetContext.logKey.getter();
      v47 = v23;
      v32 = v31;
      (*(v5 + 8))(v8, v29);
      v33 = sub_10000F78C(v30, v32, &v57);
      v23 = v47;

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] User tapped learn more link", v27, 0xCu);
      sub_10001059C(v28);

      v21 = v53;
    }

    v34 = v51;
    v35 = v48;
    v36 = type metadata accessor for TaskPriority();
    v37 = v55;
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    v38 = v54;
    (*(v35 + 16))(v54, v34, v21);
    type metadata accessor for MainActor();
    v39 = v23;
    v40 = static MainActor.shared.getter();
    v41 = v35;
    v42 = v21;
    v43 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = v40;
    *(v44 + 3) = &protocol witness table for MainActor;
    *(v44 + 4) = v39;
    v49(&v44[v43], v38, v42);
    sub_100007954(0, 0, v37, &unk_100067250, v44);

    (*(v41 + 8))(v34, v42);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
  }

  return v56;
}

id sub_100041238()
{
  v1 = [v0 closestPositionToPoint:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_msgSend(v0 "tokenizer")];
  swift_unknownObjectRelease();
  if (!v3)
  {

    return 0;
  }

  v4 = [v0 beginningOfDocument];
  v5 = [v3 start];
  v6 = [v0 offsetFromPosition:v4 toPosition:v5];

  result = [v0 attributedText];
  if (result)
  {
    v8 = result;
    v9 = [result attribute:NSLinkAttributeName atIndex:v6 effectiveRange:0];

    v10 = v9 != 0;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100028608(&v11, v12);
    }

    else
    {

      memset(v12, 0, sizeof(v12));
    }

    sub_100011C14(v12, &qword_100089020, &qword_1000663B0);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_100041418@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_10004144C()
{
  v1 = type metadata accessor for AppLibrary.App.Installation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100041510(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppLibrary.App.Installation() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003DDAC(a1, a2, v6, v7);
}

uint64_t sub_1000415AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppLibrary.App.Installation() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001020C;

  return sub_10003DFAC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000416A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000416E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100041718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003D1DC(a1, v4, v5, v6);
}

void (*sub_1000417CC())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100041708;
}

uint64_t sub_100041830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_10003C458(a1, v4, v5, v7, v6);
}

uint64_t sub_1000418F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003B738(a1, v4, v5, v6);
}

uint64_t sub_1000419A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003EAC0(a1, v4, v5, v6);
}

uint64_t sub_100041AE0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100041BB4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000121F4;

  return sub_10003B1A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100041CAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003AEA8(a1, v4, v5, v6);
}

uint64_t sub_100041D60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003AD60(a1, v4, v5, v6);
}

uint64_t sub_100041E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10003A798(a1, v4, v5, v6);
}

uint64_t sub_100041ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100041F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10004214C(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for OAuthAuthorizationViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v10[4] = sub_100043C88;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10005F9E8;
  v10[3] = &unk_10007F8D0;
  v7 = _Block_copy(v10);
  v8 = v1;
  v9 = v4;

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

void sub_1000422D8(char a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OAuthAuthorizationViewController();
  v35.receiver = v1;
  v35.super_class = v8;
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000105E8(v9, qword_10008C4C0);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v13 = 136315395;
    v14 = OAuthAuthorizationContext.logKey.getter();
    v16 = sub_10000F78C(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2085;
    OAuthAuthorizationContext.requestURL.getter();
    sub_100043C30(&qword_100089F70, &type metadata accessor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v4 + 8))(v7, v3);
    v20 = sub_10000F78C(v17, v19, aBlock);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Activating web authentication request: %{sensitive}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  OAuthAuthorizationContext.requestURL.getter();
  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 callbackWithCustomScheme:v22];

  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  v25 = objc_allocWithZone(ASWebAuthenticationSession);
  v26 = v10;
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  aBlock[4] = sub_100043B50;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000436F0;
  aBlock[3] = &unk_10007F880;
  v30 = _Block_copy(aBlock);
  v31 = [v25 initWithURL:v29 callback:v23 completionHandler:v30];
  _Block_release(v30);

  (*(v4 + 8))(v7, v3);

  [v31 setPrefersEphemeralWebBrowserSession:1];
  [v31 setPresentationContextProvider:v26];
  [v31 start];
}

void sub_100042728(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100043BC0(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100043B58(v9);
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000105E8(v18, qword_10008C4C0);
    v19 = a3;
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = OAuthAuthorizationContext.logKey.getter();
      v25 = sub_10000F78C(v23, v24, &v54);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v53 = a2;
      swift_errorRetain();
      sub_1000047BC(&unk_100089F80, &unk_100067360);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000F78C(v26, v27, &v54);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Authentication failed: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      v29 = _convertErrorToNSError(_:)();
    }

    else
    {
      v29 = 0;
    }

    v48 = [objc_opt_self() responseForError:v29];

    sub_100042FB4(v48);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000105E8(v30, qword_10008C4C0);
    (*(v11 + 16))(v15, v17, v10);
    v31 = a3;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v34 = 136446467;
      v50 = v33;
      v35 = OAuthAuthorizationContext.logKey.getter();
      v37 = sub_10000F78C(v35, v36, &v54);
      v49 = v31;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2085;
      sub_100043C30(&qword_100089F70, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v11 + 8);
      v42(v15, v10);
      v43 = sub_10000F78C(v39, v41, &v54);

      *(v34 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v50, "[%{public}s] Received authorization %{sensitive}s", v34, 0x16u);
      swift_arrayDestroy();

      v44 = v42;
    }

    else
    {

      v44 = *(v11 + 8);
      v44(v15, v10);
    }

    v45 = [objc_allocWithZone(BSMutableSettings) init];
    URL.absoluteString.getter();
    v46 = String._bridgeToObjectiveC()();

    [v45 setObject:v46 forSetting:2];

    v47 = [objc_opt_self() responseWithInfo:v45];
    sub_100042FB4(v47);

    v44(v17, v10);
  }
}

void sub_100042DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100042ED0(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100042FB4(uint64_t a1)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4C0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    v9 = OAuthAuthorizationContext.logKey.getter();
    v11 = sub_10000F78C(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Completing web authentication request", v7, 0xCu);
    sub_10001059C(v8);
  }

  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction;
  v13 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction];
  if (v13)
  {
    v14 = v13;
    if ([v14 canSendResponse])
    {
      [v14 sendResponse:a1];
    }
  }

  v15 = [objc_opt_self() clearColor];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v15;
  v29 = sub_100043AF0;
  v30 = v17;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007F7E0;
  v18 = _Block_copy(&v25);
  v19 = v4;
  v20 = v15;

  [v16 animateWithDuration:v18 animations:0.3];
  _Block_release(v18);

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v29 = sub_100043B48;
  v30 = v21;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10005F9E8;
  v28 = &unk_10007F830;
  v22 = _Block_copy(&v25);
  v23 = v19;

  [v23 dismissViewControllerAnimated:1 completion:v22];
  _Block_release(v22);
  v24 = *&v4[v12];
  *&v4[v12] = 0;
}

uint64_t sub_10004330C(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3);
  }
}

id sub_100043464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OAuthAuthorizationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OAuthAuthorizationViewController()
{
  result = qword_100089F00;
  if (!qword_100089F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100043580()
{
  result = type metadata accessor for OAuthAuthorizationContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000436F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_100043B58(v9);
}

id sub_100043834(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction;
  *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction] = 0;
  v6 = [a1 actions];
  if (v6)
  {
    sub_10001596C();
    sub_100043C30(&qword_100089370, sub_10001596C);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10005FA2C(v7);
  }

  v8 = *&v2[v5];
  *&v2[v5] = v6;

  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_sheetContext;
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v2[v9], a2, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for OAuthAuthorizationViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  (*(v11 + 8))(a2, v10);
  return v12;
}

void sub_1000439BC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 _rootSheetPresentationController];

    if (!v4)
    {
LABEL_11:
      __break(1u);
      return;
    }

    [v4 _setShouldScaleDownBehindDescendantSheets:0];
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 window];

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100043AB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043B10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043B58(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043C30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100043C9C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality:v4];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() interfaceWithIdentifier:v5];

  v7 = [objc_opt_self() protocolForProtocol:&OBJC_PROTOCOL____TtP14MarketplaceKit35AppDistributionLaunchAngelInterface_];
  [v6 setServer:v7];

  [v6 setClientMessagingExpectation:1];
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:*(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate_service)];
  v9[4] = sub_100043E68;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100043F50;
  v9[3] = &unk_10007F970;
  v8 = _Block_copy(v9);
  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void sub_100043E68()
{
  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_10008C508);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Connection invalidated", v2, 2u);
  }
}

void sub_100043F50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000440B0(void *a1)
{
  v2 = v1;
  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000105E8(v4, qword_10008C508);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    v10 = [v5 remoteToken];
    v11 = [v10 bundleID];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
    }

    v15 = sub_10000F78C(v12, v14, v28);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received connection from %s", v8, 0xCu);
    sub_10001059C(v9);
  }

  v16 = [v5 remoteProcess];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 hasEntitlement:v17];

  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1000444E4;
    *(v20 + 24) = v19;
    v28[4] = sub_100015DD4;
    v28[5] = v20;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_100015D04;
    v28[3] = &unk_10007F948;
    v21 = _Block_copy(v28);
    v22 = v2;

    [v5 configureConnection:v21];
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v5 activate];
    }
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Process not entitled, failing", v27, 2u);
    }

    return [v5 invalidate];
  }

  return result;
}

uint64_t sub_1000444AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000444FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004453C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running confirmation sheet task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 88) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 96) = [v13 initWithSceneProvidingProcess:v14 configurationIdentifier:v15];

    return _swift_task_switch(sub_100044868, 0, 0);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = *(v19 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] No identity", v20, 0xCu);
      sub_100011C14(v21, &qword_100088FD0, &qword_1000673F0);
    }

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_100044868()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_10002D514;
  v3 = swift_continuation_init();
  sub_100044918(v3, v2, v1);

  return _swift_continuation_await(v0 + 2);
}

void sub_100044918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v33 = sub_100045CE8;
  v34 = v8;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100043F50;
  v32 = &unk_10007F9E8;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();

  v11 = [v10 responderWithHandler:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v11];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v12;
  v14 = v12;
  sub_10004DA58(inited);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_10001596C();
  sub_100045D08(&qword_100089370, sub_10001596C);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 setActions:isa];

  v17 = type metadata accessor for PropertyListEncoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for ConfirmationSheetContext();
  sub_100045D08(&unk_10008A130, &type metadata accessor for ConfirmationSheetContext);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v30 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v23 + 96) = &type metadata for Data;
  *(v23 + 72) = v20;
  *(v23 + 80) = v22;
  sub_100015A00(v20, v22);
  sub_100059988(v23);
  swift_setDeallocating();
  sub_100011C14(v23 + 32, &qword_100089010, &qword_1000663A0);
  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserInfo:v24];

  v25 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v6];
  v26 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle) = v25;
  v27 = v25;

  [v27 registerObserver:a2];
  v28 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v27 activateWithContext:v28];

  sub_100015A54(v20, v22);
}

void sub_100044F00(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 info];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 objectForSetting:1];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v31;
          if (qword_100088438 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_1000105E8(v11, qword_10008C4C0);
          v12 = v6;
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *&v33 = v17;
            *v15 = 138412546;
            v18 = *&v12[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
            *(v15 + 4) = v18;
            *v16 = v18;
            *(v15 + 12) = 2080;
            if (v31)
            {
              v19 = 0x656D7269666E6F63;
            }

            else
            {
              v19 = 0x64656C65636E6163;
            }

            if (v31)
            {
              v20 = 0xE900000000000064;
            }

            else
            {
              v20 = 0xE800000000000000;
            }

            v21 = v18;
            v22 = sub_10000F78C(v19, v20, &v33);

            *(v15 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Confirmation sheet %s", v15, 0x16u);
            sub_100011C14(v16, &qword_100088FD0, &qword_1000673F0);

            sub_10001059C(v17);
          }

LABEL_26:
          **(*(a3 + 64) + 40) = v10;
          swift_continuation_resume();

          return;
        }

LABEL_21:
        if (qword_100088438 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000105E8(v23, qword_10008C4C0);
        v24 = v6;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = *&v24[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
          *(v27 + 4) = v29;
          *v28 = v29;
          v30 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%@] No response provided, defaulting to cancel.", v27, 0xCu);
          sub_100011C14(v28, &qword_100088FD0, &qword_1000673F0);
        }

        v10 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    sub_100011C14(&v33, &qword_100089020, &qword_1000663B0);
    goto LABEL_21;
  }
}

uint64_t type metadata accessor for ConfirmationSheetTask()
{
  result = qword_10008A120;
  if (!qword_10008A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045434()
{
  result = type metadata accessor for ConfirmationSheetContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10004553C()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 invalidate];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

void sub_100045674()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_1000457CC()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10004553C();
}

void sub_10004591C(uint64_t a1)
{
  sub_10004553C();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_100045C78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045CB0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045D08(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100045D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2);
  v9 = *(v2 + *(a2 + 20));
  v10 = objc_allocWithZone(type metadata accessor for MiniProductPageView(0));
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v12 = sub_100046A60(v7, v9, v10, ObjectType);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100045EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100047458(&unk_10008A2D0);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100045F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100047458(&unk_10008A2D0);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100045FB0()
{
  sub_100047458(&unk_10008A2D0);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100045FF4()
{
  swift_getObjectType();
  sub_1000047BC(&qword_10008A228, &qword_100067488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100065650;
  *(v1 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v2 = UIView.registerForTraitChanges<A>(_:handler:)();

  v3 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration);
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration) = v2;

  return swift_unknownObjectRelease();
}

void sub_1000462E4()
{
  sub_1000463AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000463AC()
{
  if (!qword_10008A1B8)
  {
    type metadata accessor for InstallSheetContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10008A1B8);
    }
  }
}

uint64_t sub_100046404(uint64_t a1)
{
  v2 = sub_1000047BC(&unk_100089360, &qword_100066520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10004646C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_1000464D4(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper];
  v5 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  v6 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID + 8];
  v7 = String._bridgeToObjectiveC()();
  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID + 8])
  {
    v8 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID + 8])
  {
    v10 = *&a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 lockupWithItemID:v7 versionID:v9 distributorID:v11 isForAppStore:a2[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] delegate:a1];

  v13 = objc_allocWithZone(UIColor);
  v42 = sub_1000618D0;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10004646C;
  v41 = &unk_10007FA38;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithDynamicProvider:v14];
  _Block_release(v14);

  [v12 setBackgroundColor:v15];

  [a2 addSubview:v12];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [a2 leadingAnchor];
  v17 = [v12 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];

  [v18 setActive:1];
  v19 = [a2 trailingAnchor];
  v20 = [v12 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  [v21 setActive:1];
  v22 = [a2 topAnchor];
  v23 = [v12 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

  [v24 setActive:1];
  v25 = [a2 bottomAnchor];
  v26 = [v12 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:16.0];

  [v27 setActive:1];
  v28 = [a2 layer];
  [v28 setCornerRadius:20.0];

  v29 = [a2 layer];
  v30 = objc_allocWithZone(UIColor);
  v42 = sub_1000618F4;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10004646C;
  v41 = &unk_10007FA60;
  v31 = _Block_copy(&aBlock);
  v32 = [v30 initWithDynamicProvider:v31];
  _Block_release(v31);

  v33 = [v32 CGColor];

  [v29 setBorderColor:v33];
  v34 = [a2 layer];
  [v34 setBorderWidth:1.0];

  v35 = objc_allocWithZone(UIColor);
  v42 = sub_1000618D0;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10004646C;
  v41 = &unk_10007FA88;
  v36 = _Block_copy(&aBlock);
  v37 = [v35 initWithDynamicProvider:v36];
  _Block_release(v36);

  [a2 setBackgroundColor:v37];
}

char *sub_100046A60(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v58 = a2;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InstallSheetContext.Source();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v17 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v18 = type metadata accessor for InstallSheetContext();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a3[v17], a1, v18);
  v20 = *(v19 + 56);
  v56 = v18;
  v20(&a3[v17], 0, 1, v18);
  v21 = InstallSheetContext.itemID.getter();
  v22 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v22 = v21;
  v22[1] = v23;
  v24 = InstallSheetContext.versionID.getter();
  v25 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v25 = v24;
  v25[1] = v26;
  v27 = InstallSheetContext.logKey.getter();
  v28 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v28 = v27;
  v28[1] = v29;
  InstallSheetContext.source.getter();
  LOBYTE(v17) = InstallSheetContext.Source.isAppStore.getter();
  v52 = *(v10 + 8);
  v52(v16, v9);
  a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = v17 & 1;
  v30 = *v28;
  v31 = v28[1];
  v32 = objc_allocWithZone(AppStoreComponentsWrapper);

  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 initWithLogKey:v33];

  *&a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v34;
  InstallSheetContext.source.getter();
  v35 = (*(v10 + 88))(v14, v9);
  if (v35 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v10 + 96))(v14, v9);
    v36 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  }

  else
  {
    if (v35 == enum case for InstallSheetContext.Source.distributor(_:))
    {
      (*(v10 + 96))(v14, v9);
      v38 = *(v14 + 1);
      v39 = *(v14 + 2);
      v40 = *(v14 + 3);

      v41 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v41 = v39;
      v41[1] = v40;
      goto LABEL_9;
    }

    if (v35 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
    {
      (*(v10 + 96))(v14, v9);
      v43 = v53;
      v42 = v54;
      v44 = v55;
      (*(v54 + 32))(v53, v14, v55);
      v45 = InstallSheetContext.Source.DistributorContext.id.getter();
      v47 = v46;
      (*(v42 + 8))(v43, v44);
      v48 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
      *v48 = v45;
      v48[1] = v47;
      goto LABEL_9;
    }

    if (v35 == enum case for InstallSheetContext.Source.web(_:))
    {
      v52(v14, v9);
      goto LABEL_4;
    }

    if (v35 != enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      if (v35 != enum case for InstallSheetContext.Source.appStore(_:))
      {
        v51 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
        *v51 = 0;
        v51[1] = 0;
        v52(v14, v9);
        goto LABEL_9;
      }

      goto LABEL_4;
    }

    (*(v10 + 96))(v14, v9);
    v36 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  }

  (*(*(v36 - 8) + 8))(v14, v36);
LABEL_4:
  v37 = &a3[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v37 = 0;
  v37[1] = 0;
LABEL_9:
  v60.receiver = a3;
  v60.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000464D4(v58, v49);
  sub_100045FF4();

  (*(v19 + 8))(a1, v56);
  return v49;
}

uint64_t sub_100046FC0(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 layer];
  v3 = objc_allocWithZone(UIColor);
  v8[4] = sub_1000618F4;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10004646C;
  v8[3] = &unk_10007FA10;
  v4 = _Block_copy(v8);
  v5 = [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  v6 = [v5 CGColor];

  [v2 setBorderColor:v6];
  [a1 setNeedsDisplay];
}

uint64_t sub_10004715C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallSheetContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100047258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InstallSheetContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100047330()
{
  result = type metadata accessor for InstallSheetContext();
  if (v1 <= 0x3F)
  {
    result = sub_1000473B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000473B4()
{
  result = qword_10008A298;
  if (!qword_10008A298)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10008A298);
  }

  return result;
}

uint64_t sub_100047458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MiniProductPageViewWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000474B4()
{
  v1[37] = v0;
  v2 = type metadata accessor for BagLanguageSource();
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for Bag();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v8 = *(*(type metadata accessor for JetPackPath() - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v9 = type metadata accessor for LocalizedStringsBundle();
  v1[46] = v9;
  v10 = *(v9 - 8);
  v1[47] = v10;
  v11 = *(v10 + 64) + 15;
  v1[48] = swift_task_alloc();
  v12 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[49] = v12;
  v13 = *(v12 - 8);
  v1[50] = v13;
  v14 = *(v13 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v15 = type metadata accessor for JetPackSigningPolicy();
  v1[53] = v15;
  v16 = *(v15 - 8);
  v1[54] = v16;
  v17 = *(v16 + 64) + 15;
  v1[55] = swift_task_alloc();
  v18 = type metadata accessor for InMemoryJetPackLoader();
  v1[56] = v18;
  v19 = *(v18 - 8);
  v1[57] = v19;
  v20 = *(v19 + 64) + 15;
  v1[58] = swift_task_alloc();
  v21 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v1[59] = v21;
  v22 = *(v21 - 8);
  v1[60] = v22;
  v23 = *(v22 + 64) + 15;
  v1[61] = swift_task_alloc();
  v24 = type metadata accessor for URL();
  v1[62] = v24;
  v25 = *(v24 - 8);
  v1[63] = v25;
  v26 = *(v25 + 64) + 15;
  v1[64] = swift_task_alloc();
  v27 = type metadata accessor for URLJetPackAssetRequest();
  v1[65] = v27;
  v28 = *(v27 - 8);
  v1[66] = v28;
  v29 = *(v28 + 64) + 15;
  v1[67] = swift_task_alloc();
  v30 = type metadata accessor for JetPackAsset();
  v1[68] = v30;
  v31 = *(v30 - 8);
  v1[69] = v31;
  v32 = *(v31 + 64) + 15;
  v1[70] = swift_task_alloc();
  v33 = type metadata accessor for URLJetPackAssetFetcher();
  v1[71] = v33;
  v34 = *(v33 - 8);
  v1[72] = v34;
  v35 = *(v34 + 64) + 15;
  v1[73] = swift_task_alloc();
  v36 = *(*(type metadata accessor for JetPackAssetSession.Configuration() - 8) + 64) + 15;
  v1[74] = swift_task_alloc();
  v37 = *(*(sub_1000047BC(&qword_10008A420, &qword_100067650) - 8) + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v38 = type metadata accessor for Date();
  v1[77] = v38;
  v39 = *(v38 - 8);
  v1[78] = v39;
  v40 = *(v39 + 64) + 15;
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();

  return _swift_task_switch(sub_100047A28, v0, 0);
}

uint64_t sub_100047A28()
{
  v73 = v0;
  v1 = v0[37];
  if (!*(v1 + 112))
  {
    v2 = v0[78];
    v3 = v0[77];
    v4 = v0[76];
    v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    v0[81] = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    swift_beginAccess();
    sub_10004A62C(v1 + v5, v4);
    if ((*(v2 + 48))(v4, 1, v3) == 1)
    {
      sub_10004A69C(v0[76]);
LABEL_5:
      if (qword_100088440 != -1)
      {
        swift_once();
      }

      v13 = v0[37];
      v14 = type metadata accessor for Logger();
      v0[82] = sub_1000105E8(v14, qword_10008C4D8);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[62];
        v18 = v0[37];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v72[0] = v20;
        *v19 = 136315138;
        sub_10004A774(&qword_100089F70, &type metadata accessor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = sub_10000F78C(v21, v22, v72);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Loading localization resource bundle from %s", v19, 0xCu);
        sub_10001059C(v20);
      }

      v24 = type metadata accessor for JetPackAssetDiskCache();
      v25 = JetPackAssetDiskCache.__allocating_init()();
      v0[83] = v25;
      v38 = v0[74];
      v40 = v0[63];
      v39 = v0[64];
      v41 = v0[61];
      v65 = v0[73];
      v67 = v0[62];
      v42 = v0[60];
      v69 = v0[59];
      v71 = v0[67];
      v43 = v0[37];
      v72[3] = v24;
      v72[4] = &protocol witness table for JetPackAssetDiskCache;
      v72[0] = v25;

      JetPackAssetSession.Configuration.init(cache:)();
      v44 = type metadata accessor for JetPackAssetSession();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();
      v0[84] = JetPackAssetSession.init(configuration:)();
      v47 = *(v43 + 120);
      v0[85] = v47;
      v48 = objc_opt_self();
      v49 = objc_opt_self();
      swift_unknownObjectRetain();
      v50 = [v49 currentProcess];
      v51 = [v48 ams_configurationWithProcessInfo:v50 bag:v47];

      URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)();
      (*(v40 + 16))(v39, v43 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url, v67);
      (*(v42 + 104))(v41, enum case for JetPackAssetRequestSourcePolicy.standard(_:), v69);
      URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
      v52 = async function pointer to JetPackAssetSession.jetPack<A>(for:fetcher:)[1];
      v53 = swift_task_alloc();
      v0[86] = v53;
      v54 = sub_10004A774(&qword_10008A428, &type metadata accessor for URLJetPackAssetFetcher);
      *v53 = v0;
      v53[1] = sub_10004820C;
      v55 = v0[73];
      v56 = v0[71];
      v57 = v0[70];
      v58 = v0[67];

      return JetPackAssetSession.jetPack<A>(for:fetcher:)(v57, v58, v55, v56, v54);
    }

    v6 = v0[80];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[77];
    (*(v8 + 32))(v6, v0[76], v9);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
    if (v11 >= 3600.0)
    {
      goto LABEL_5;
    }
  }

  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[76];
  v29 = v0[75];
  v30 = v0[74];
  v31 = v0[73];
  v32 = v0[70];
  v33 = v0[67];
  v34 = v0[64];
  v35 = v0[61];
  v59 = v0[58];
  v60 = v0[55];
  v61 = v0[52];
  v62 = v0[51];
  v63 = v0[48];
  v64 = v0[45];
  v66 = v0[44];
  v68 = v0[43];
  v70 = v0[40];

  v36 = v0[1];

  return v36();
}

uint64_t sub_10004820C()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = v2[67];
  v6 = v2[66];
  v7 = v2[65];
  v8 = v2[37];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1000490EC;
  }

  else
  {
    v9 = sub_100048388;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100048388()
{
  v1 = v0[70];
  v2 = v0[58];
  (*(v0[54] + 104))(v0[55], enum case for JetPackSigningPolicy.required(_:), v0[53]);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_1000104C4(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  JetPackAsset.streamSource.getter();
  v3 = async function pointer to InMemoryJetPackLoader.bundle(from:)[1];
  v4 = swift_task_alloc();
  v0[88] = v4;
  *v4 = v0;
  v4[1] = sub_10004849C;
  v5 = v0[58];
  v6 = v0[52];

  return InMemoryJetPackLoader.bundle(from:)(v6, v0 + 7);
}

uint64_t sub_10004849C()
{
  v2 = *v1;
  v3 = (*v1)[88];
  v4 = *v1;
  v2[89] = v0;

  v5 = v2[37];
  sub_10001059C(v2 + 7);
  if (v0)
  {
    v6 = sub_100049468;
  }

  else
  {
    v6 = sub_1000485D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000485D4()
{
  v97 = v0;
  v1 = v0[82];
  v2 = *(v0[50] + 16);
  v2(v0[51], v0[52], v0[49]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[49];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v96[0] = v89;
    *v9 = 136315138;
    v10 = JetPackResourceBundle.version.getter();
    v92 = v2;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 48;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE100000000000000;
    }

    v14 = v8;
    v15 = *(v7 + 8);
    v15(v6, v14);
    v16 = v12;
    v2 = v92;
    v17 = sub_10000F78C(v16, v13, v96);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Loaded resource bundle version %s", v9, 0xCu);
    sub_10001059C(v89);
  }

  else
  {

    v18 = v8;
    v15 = *(v7 + 8);
    v15(v6, v18);
  }

  v0[90] = v15;
  v19 = v0[89];
  v20 = v0[52];
  v22 = v0[48];
  v21 = v0[49];
  v23 = v0[45];
  v0[15] = v21;
  v0[16] = &protocol witness table for InMemoryJetPackResourceBundle;
  v24 = sub_1000104C4(v0 + 12);
  v2(v24, v20, v21);
  JetPackPath.init(_:)();
  LocalizedStringsBundle.init(resourceBundle:indexPath:)();
  if (v19)
  {
    v25 = v0[84];
    v26 = v0[83];
    v27 = v0[72];
    v90 = v0[71];
    v93 = v0[73];
    v28 = v0[69];
    v85 = v0[68];
    v87 = v0[70];
    v29 = v0[57];
    v81 = v0[56];
    v83 = v0[58];
    v30 = v0[52];
    v31 = v15;
    v32 = v0[49];
    v33 = v0[50];

    v31(v30, v32);
    (*(v29 + 8))(v83, v81);
    (*(v28 + 8))(v87, v85);
    (*(v27 + 8))(v93, v90);
    v34 = v0[82];
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96[0] = v38;
      *v37 = 136446210;
      swift_getErrorValue();
      v39 = v0[33];
      v40 = *(v0[34] - 8);
      v41 = *(v40 + 64) + 15;
      swift_task_alloc();
      (*(v40 + 16))();
      v42 = String.init<A>(describing:)();
      v44 = v43;

      v45 = sub_10000F78C(v42, v44, v96);

      *(v37 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to load localization jetpack: %{public}s", v37, 0xCu);
      sub_10001059C(v38);
    }

    v46 = v0[81];
    v47 = v0[78];
    v48 = v0[77];
    v49 = v0[75];
    v50 = v0[37];
    Date.init()();

    (*(v47 + 56))(v49, 0, 1, v48);
    swift_beginAccess();
    sub_10004A704(v49, v50 + v46);
    swift_endAccess();
    v51 = v0[80];
    v52 = v0[79];
    v53 = v0[76];
    v54 = v0[75];
    v55 = v0[74];
    v56 = v0[73];
    v57 = v0[70];
    v58 = v0[67];
    v59 = v0[64];
    v60 = v0[61];
    v78 = v0[58];
    v79 = v0[55];
    v80 = v0[52];
    v82 = v0[51];
    v84 = v0[48];
    v86 = v0[45];
    v88 = v0[44];
    v91 = v0[43];
    v94 = v0[40];

    v61 = v0[1];

    return v61();
  }

  else
  {
    v63 = v0[85];
    v64 = v0[47];
    v95 = v0[48];
    v65 = v0[46];
    v67 = v0[43];
    v66 = v0[44];
    v69 = v0[41];
    v68 = v0[42];
    v71 = v0[39];
    v70 = v0[40];
    v72 = v0[38];
    swift_unknownObjectRetain();
    Bag.init(from:)();
    (*(v68 + 16))(v67, v66, v69);
    BagLanguageSource.init(bag:)();
    type metadata accessor for AppleServicesLocalizer();
    v0[20] = v65;
    v0[21] = &protocol witness table for LocalizedStringsBundle;
    v73 = sub_1000104C4(v0 + 17);
    (*(v64 + 16))(v73, v95, v65);
    v0[25] = v72;
    v0[26] = &protocol witness table for BagLanguageSource;
    v74 = sub_1000104C4(v0 + 22);
    (*(v71 + 16))(v74, v70, v72);
    type metadata accessor for BaseObjectGraph();
    v75 = BaseObjectGraph.__allocating_init(name:_:)();
    v0[91] = v75;
    v76 = async function pointer to static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)[1];
    v77 = swift_task_alloc();
    v0[92] = v77;
    *v77 = v0;
    v77[1] = sub_100048CFC;

    return static AppleServicesLocalizer.fetch(contentsOf:for:asPartOf:)(v0 + 17, v0 + 22, v75);
  }
}

uint64_t sub_100048CFC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[92];
  v10 = *v2;
  (*v2)[93] = v1;

  v6 = v4[91];
  if (v1)
  {
    v7 = v4[37];

    v8 = sub_10004982C;
  }

  else
  {
    v7 = v4[37];

    v4[94] = a1;
    sub_10001059C(v4 + 22);
    sub_10001059C(v4 + 17);
    v8 = sub_100048E48;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100048E48()
{
  v47 = v0[94];
  v35 = v0[90];
  v1 = v0[84];
  v24 = v0[83];
  v45 = v0[73];
  v41 = v0[72];
  v43 = v0[71];
  v2 = v0[69];
  v37 = v0[68];
  v39 = v0[70];
  v3 = v0[57];
  v30 = v0[56];
  v31 = v0[58];
  v28 = v0[49];
  v29 = v0[52];
  v4 = v0[47];
  v26 = v0[48];
  v27 = v0[50];
  v25 = v0[46];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  v33 = v0[37];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v26, v25);
  v35(v29, v28);
  (*(v3 + 8))(v31, v30);
  (*(v2 + 8))(v39, v37);
  (*(v41 + 8))(v45, v43);
  v11 = *(v33 + 112);
  *(v33 + 112) = v47;

  v12 = v0[80];
  v13 = v0[79];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[70];
  v19 = v0[67];
  v20 = v0[64];
  v21 = v0[61];
  v32 = v0[58];
  v34 = v0[55];
  v36 = v0[52];
  v38 = v0[51];
  v40 = v0[48];
  v42 = v0[45];
  v44 = v0[44];
  v46 = v0[43];
  v48 = v0[40];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000490EC()
{
  v46 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];

  (*(v4 + 8))(v3, v5);
  v6 = v0[87];
  v7 = v0[82];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = v0[33];
    v13 = *(v0[34] - 8);
    v14 = *(v13 + 64) + 15;
    swift_task_alloc();
    (*(v13 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    v18 = sub_10000F78C(v15, v17, &v45);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to load localization jetpack: %{public}s", v10, 0xCu);
    sub_10001059C(v11);
  }

  v19 = v0[81];
  v20 = v0[78];
  v21 = v0[77];
  v22 = v0[75];
  v23 = v0[37];
  Date.init()();

  (*(v20 + 56))(v22, 0, 1, v21);
  swift_beginAccess();
  sub_10004A704(v22, v23 + v19);
  swift_endAccess();
  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[76];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[73];
  v30 = v0[70];
  v31 = v0[67];
  v32 = v0[64];
  v33 = v0[61];
  v36 = v0[58];
  v37 = v0[55];
  v38 = v0[52];
  v39 = v0[51];
  v40 = v0[48];
  v41 = v0[45];
  v42 = v0[44];
  v43 = v0[43];
  v44 = v0[40];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100049468()
{
  v52 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v49 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[57];
  v9 = v0[58];
  v10 = v0[56];

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v49, v4);
  v11 = v0[89];
  v12 = v0[82];
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v51 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = v0[33];
    v18 = *(v0[34] - 8);
    v19 = *(v18 + 64) + 15;
    swift_task_alloc();
    (*(v18 + 16))();
    v20 = String.init<A>(describing:)();
    v22 = v21;

    v23 = sub_10000F78C(v20, v22, &v51);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to load localization jetpack: %{public}s", v15, 0xCu);
    sub_10001059C(v16);
  }

  v24 = v0[81];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[75];
  v28 = v0[37];
  Date.init()();

  (*(v25 + 56))(v27, 0, 1, v26);
  swift_beginAccess();
  sub_10004A704(v27, v28 + v24);
  swift_endAccess();
  v29 = v0[80];
  v30 = v0[79];
  v31 = v0[76];
  v32 = v0[75];
  v33 = v0[74];
  v34 = v0[73];
  v35 = v0[70];
  v36 = v0[67];
  v37 = v0[64];
  v38 = v0[61];
  v41 = v0[58];
  v42 = v0[55];
  v43 = v0[52];
  v44 = v0[51];
  v45 = v0[48];
  v46 = v0[45];
  v47 = v0[44];
  v48 = v0[43];
  v50 = v0[40];

  v39 = v0[1];

  return v39();
}

uint64_t sub_10004982C()
{
  v65 = v0;
  v52 = v0[90];
  v1 = v0[84];
  v41 = v0[83];
  v62 = v0[73];
  v58 = v0[72];
  v60 = v0[71];
  v2 = v0[69];
  v54 = v0[68];
  v56 = v0[70];
  v3 = v0[57];
  v48 = v0[56];
  v50 = v0[58];
  v45 = v0[49];
  v46 = v0[52];
  v4 = v0[47];
  v43 = v0[48];
  v44 = v0[50];
  v42 = v0[46];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v43, v42);
  v52(v46, v45);
  (*(v3 + 8))(v50, v48);
  (*(v2 + 8))(v56, v54);
  (*(v58 + 8))(v62, v60);
  sub_10001059C(v0 + 22);
  sub_10001059C(v0 + 17);
  v11 = v0[93];
  v12 = v0[82];
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = v0[33];
    v18 = *(v0[34] - 8);
    v19 = *(v18 + 64) + 15;
    swift_task_alloc();
    (*(v18 + 16))();
    v20 = String.init<A>(describing:)();
    v22 = v21;

    v23 = sub_10000F78C(v20, v22, &v64);

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to load localization jetpack: %{public}s", v15, 0xCu);
    sub_10001059C(v16);
  }

  v24 = v0[81];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[75];
  v28 = v0[37];
  Date.init()();

  (*(v25 + 56))(v27, 0, 1, v26);
  swift_beginAccess();
  sub_10004A704(v27, v28 + v24);
  swift_endAccess();
  v29 = v0[80];
  v30 = v0[79];
  v31 = v0[76];
  v32 = v0[75];
  v33 = v0[74];
  v34 = v0[73];
  v35 = v0[70];
  v36 = v0[67];
  v37 = v0[64];
  v38 = v0[61];
  v47 = v0[58];
  v49 = v0[55];
  v51 = v0[52];
  v53 = v0[51];
  v55 = v0[48];
  v57 = v0[45];
  v59 = v0[44];
  v61 = v0[43];
  v63 = v0[40];

  v39 = v0[1];

  return v39();
}

uint64_t sub_100049C9C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for LocalizerLookupStrategy();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100049D5C, v1, 0);
}

uint64_t sub_100049D5C()
{
  v1 = v0[16];
  v0[14] = sub_100003A90();
  v0[15] = v2;
  v0[21] = v2;
  v0[22] = sub_100003EFC();
  v0[23] = sub_100003524();
  v0[24] = v3;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100049E0C;
  v5 = v0[17];

  return sub_1000474B4();
}

uint64_t sub_100049E0C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100049F1C, v2, 0);
}

uint64_t sub_100049F1C()
{
  if (!*(v0[17] + 112))
  {
    v14 = v0[21];
    v15 = v0[22];

    if (v15)
    {
      v16 = v0[22];
      v19 = *(v16 + 64);
      v18 = v16 + 64;
      v17 = v19;
      v9 = v0[24];
      v20 = -1;
      v21 = -1 << *(v0[22] + 32);
      if (-v21 < 64)
      {
        v20 = ~(-1 << -v21);
      }

      v22 = v20 & v17;
      v23 = (63 - v21) >> 6;
      v66 = v0[22];

      v25 = 0;
      for (i = v0[23]; v22; result = )
      {
        v26 = v9;
        v27 = v25;
LABEL_13:
        v28 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v29 = (v27 << 10) | (16 * v28);
        v30 = (*(v66 + 48) + v29);
        v31 = *v30;
        v32 = v30[1];
        v33 = (*(v66 + 56) + v29);
        v34 = *v33;
        v35 = v33[1];
        v0[2] = i;
        v0[3] = v26;

        v36._countAndFlagsBits = v31;
        v36._object = v32;
        String.append(_:)(v36);

        v37._countAndFlagsBits = 16448;
        v37._object = 0xE200000000000000;
        String.append(_:)(v37);
        v0[4] = 16448;
        v0[5] = 0xE200000000000000;
        v0[6] = v34;
        v0[7] = v35;
        sub_10000F728();
        i = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v9 = v38;
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v27 >= v23)
        {
          v62 = v0[24];

          j = i;
          goto LABEL_31;
        }

        v22 = *(v18 + 8 * v27);
        ++v25;
        if (v22)
        {
          v26 = v9;
          v25 = v27;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_30:
    j = v0[23];
    v9 = v0[24];
    goto LABEL_31;
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  (*(v4 + 104))(v5, enum case for LocalizerLookupStrategy.default(_:), v6);

  j = AppleServicesLocalizer.string(forKey:with:using:)();
  v9 = v8;

  (*(v4 + 8))(v5, v6);
  v10._countAndFlagsBits = j;
  v10._object = v9;
  v11 = AppleServicesLocalizer.isLocalizedString(_:)(v10);
  v12 = v0[22];
  if (!v11)
  {

    if (v12)
    {
      v39 = v0[22];
      v42 = *(v39 + 64);
      v41 = v39 + 64;
      v40 = v42;
      v9 = v0[24];
      v43 = -1;
      v44 = -1 << *(v0[22] + 32);
      if (-v44 < 64)
      {
        v43 = ~(-1 << -v44);
      }

      v45 = v43 & v40;
      v46 = (63 - v44) >> 6;
      v68 = v0[22];

      v47 = 0;
      for (j = v0[23]; v45; result = )
      {
        v48 = j;
        v49 = v9;
        v50 = v47;
LABEL_24:
        v51 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v52 = (v50 << 10) | (16 * v51);
        v53 = (*(v68 + 48) + v52);
        v54 = *v53;
        v55 = v53[1];
        v56 = (*(v68 + 56) + v52);
        v57 = *v56;
        v58 = v56[1];
        v0[8] = v48;
        v0[9] = v49;

        v59._countAndFlagsBits = v54;
        v59._object = v55;
        String.append(_:)(v59);

        v60._countAndFlagsBits = 16448;
        v60._object = 0xE200000000000000;
        String.append(_:)(v60);
        v0[10] = 16448;
        v0[11] = 0xE200000000000000;
        v0[12] = v57;
        v0[13] = v58;
        sub_10000F728();
        j = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v9 = v61;
      }

      while (1)
      {
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v50 >= v46)
        {
          v63 = v0[24];

          goto LABEL_31;
        }

        v45 = *(v41 + 8 * v50);
        ++v47;
        if (v45)
        {
          v48 = j;
          v49 = v9;
          v47 = v50;
          goto LABEL_24;
        }
      }

LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_30;
  }

  v13 = v0[24];

LABEL_31:
  v64 = v0[20];

  v65 = v0[1];

  return v65(j, v9);
}

uint64_t sub_10004A3F0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10004A69C(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalizationJetPack()
{
  result = qword_10008A318;
  if (!qword_10008A318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A4DC()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10004A5C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A5C8()
{
  if (!qword_10008A328)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10008A328);
    }
  }
}

uint64_t sub_10004A62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A69C(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_10008A420, &qword_100067650);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A774(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10004A7BC(uint64_t a1, void *a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_10008A430, &qword_100067668);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1000047BC(&qword_10008A430, &qword_100067668);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004A86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1000047BC(&qword_10008A430, &qword_100067668);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10004A93C, 0, 0);
}

uint64_t sub_10004A93C()
{
  v1 = SBSCreateOpenApplicationService();
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v11 = v0[21];
    v6 = v0[19];
    v7 = v0[20];
    v10 = String._bridgeToObjectiveC()();
    v0[26] = v10;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10004AB28;
    swift_continuation_init();
    v0[17] = v5;
    v8 = sub_1000104C4(v0 + 14);
    sub_10004C8EC();
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v8, v4, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10004A7BC;
    v0[13] = &unk_10007FAB0;
    [v2 openApplication:v10 withOptions:v11 completion:?];
    (*(v3 + 8))(v8, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10004AB28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_10004ACB4;
  }

  else
  {
    v3 = sub_10004AC38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004AC38()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004ACB4()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_10004AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 264) = a5;
  *(v5 + 160) = a3;
  *(v5 + 168) = a4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  v6 = type metadata accessor for MarketplaceDisplayOption();
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v9 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v5 + 208) = v10;
  v11 = *(v10 - 8);
  *(v5 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10004AE98, 0, 0);
}

id sub_10004AE98()
{
  v1 = *(v0 + 144) == 0xD000000000000012 && 0x800000010006A6C0 == *(v0 + 152);
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = *(v0 + 200);
    v5 = *(v0 + 160);
    _StringGuts.grow(_:)(36);

    *(v0 + 136) = v5;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x383D746D3FLL;
    v7._object = 0xE500000000000000;
    String.append(_:)(v7);
    URL.init(string:)();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_100011C14(*(v0 + 200), &qword_1000893C0, &unk_1000663F0);
    }

    else
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v13 = *(v0 + 208);
      URL._bridgeToObjectiveC()(v9);
      v15 = v14;
      [v10 openSensitiveURL:v14 withOptions:0];

      (*(v12 + 8))(v11, v13);
    }

    v16 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v22 = *(v0 + 176);
    v23 = *(v0 + 264);
    *v21 = *(v0 + 160);
    *(v21 + 16) = v23 & 1;
    (*(v20 + 104))(v21, enum case for MarketplaceDisplayOption.productPage(_:), v22);
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    sub_10004C950();
    v24 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
    *(v0 + 232) = v24;
    v25 = v24;
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(v0 + 120) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 128) = v27;
    AnyHashable.init<A>(_:)();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100066310;
    *(v28 + 32) = v25;
    *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
    *(inited + 72) = v28;
    v29 = v25;
    sub_100059988(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [objc_opt_self() optionsWithDictionary:isa];
    *(v0 + 240) = v31;

    v32 = swift_task_alloc();
    *(v0 + 248) = v32;
    *v32 = v0;
    v32[1] = sub_10004B360;
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);

    return sub_10004A86C(v34, v33, v31);
  }
}

uint64_t sub_10004B360()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_10004B4F8;
  }

  else
  {
    v3 = sub_10004B474;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004B474()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004B4F8()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004B584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for MarketplaceDisplayOption();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = *(*(sub_1000047BC(&qword_1000893C0, &unk_1000663F0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v4[27] = v9;
  v10 = *(v9 - 8);
  v4[28] = v10;
  v11 = *(v10 + 64) + 15;
  v4[29] = swift_task_alloc();
  v12 = type metadata accessor for CharacterSet();
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10004B738, 0, 0);
}

id sub_10004B738()
{
  v1 = v0[19] == 0xD000000000000012 && 0x800000010006A6C0 == v0[20];
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v3 = v0[31];
    v2 = v0[32];
    v4 = v0[30];
    v5 = v0[22];
    v0[17] = v0[21];
    v0[18] = v5;
    static CharacterSet.urlQueryAllowed.getter();
    sub_10000F728();
    v6 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v8 = v7;
    (*(v3 + 8))(v2, v4);
    if (v8)
    {
      v9 = v0[27];
      v10 = v0[28];
      v11 = v0[26];
      _StringGuts.grow(_:)(34);

      v12._countAndFlagsBits = v6;
      v12._object = v8;
      String.append(_:)(v12);
      URL.init(string:)();

      if ((*(v10 + 48))(v11, 1, v9) == 1)
      {
        v13 = v0[26];

        sub_100011C14(v13, &qword_1000893C0, &unk_1000663F0);
      }

      else
      {
        (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v20 = result;
        v22 = v0[28];
        v21 = v0[29];
        v23 = v0[27];

        URL._bridgeToObjectiveC()(v24);
        v26 = v25;
        [v20 openSensitiveURL:v25 withOptions:0];

        (*(v22 + 8))(v21, v23);
      }
    }

    v27 = v0[32];
    v28 = v0[29];
    v30 = v0[25];
    v29 = v0[26];

    v31 = v0[1];

    return v31();
  }

  else
  {
    v14 = v0[24];
    v15 = v0[25];
    v17 = v0[22];
    v16 = v0[23];
    *v15 = v0[21];
    v15[1] = v17;
    (*(v14 + 104))(v15, enum case for MarketplaceDisplayOption.searchResults(_:), v16);
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    sub_10004C950();

    v18 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
    v0[33] = v18;
    v32 = v18;
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[16] = v34;
    AnyHashable.init<A>(_:)();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100066310;
    *(v35 + 32) = v32;
    *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
    *(inited + 72) = v35;
    v36 = v32;
    sub_100059988(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v38 = [objc_opt_self() optionsWithDictionary:isa];
    v0[34] = v38;

    v39 = swift_task_alloc();
    v0[35] = v39;
    *v39 = v0;
    v39[1] = sub_10004BC48;
    v41 = v0[19];
    v40 = v0[20];

    return sub_10004A86C(v41, v40, v38);
  }
}

uint64_t sub_10004BC48()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10004BDF4;
  }

  else
  {
    v3 = sub_10004BD5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004BD5C()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004BDF4()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10004BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for MarketplaceDisplayOption();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10004BF50, 0, 0);
}

uint64_t sub_10004BF50()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  *v2 = v0[19];
  v2[1] = v4;
  (*(v1 + 104))(v2, enum case for MarketplaceDisplayOption.authentication(_:), v3);
  type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
  sub_10004C950();

  v5 = static UISceneConnectionOptionDefinition.createAction(payload:responder:)();
  v0[24] = v5;
  v6 = v5;
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065650;
  v0[15] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[16] = v8;
  AnyHashable.init<A>(_:)();
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100066310;
  *(v9 + 32) = v6;
  *(inited + 96) = sub_1000047BC(&qword_10008A448, &qword_100067678);
  *(inited + 72) = v9;
  v10 = v6;
  sub_100059988(inited);
  swift_setDeallocating();
  sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() optionsWithDictionary:isa];
  v0[25] = v12;

  v13 = swift_task_alloc();
  v0[26] = v13;
  *v13 = v0;
  v13[1] = sub_10004C224;
  v15 = v0[17];
  v14 = v0[18];

  return sub_10004A86C(v15, v14, v12);
}

uint64_t sub_10004C224()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10004C3AC;
  }

  else
  {
    v3 = sub_10004C338;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004C338()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004C3AC()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 216);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004C41C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_10004C4AC, 0, 0);
}

uint64_t sub_10004C4AC()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(LSApplicationRecord);
  v0[2] = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 2];
  v0[4] = v3;
  v4 = v0[2];
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v0[5] = v11;
      v12 = swift_task_alloc();
      v0[6] = v12;
      *v12 = v0;
      v12[1] = sub_10004C684;

      return sub_10004A86C(v9, v11, 0);
    }

    v15 = v0[1];
  }

  else
  {
    v14 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_10004C684()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10004C858;
  }

  else
  {
    v3 = sub_10004C7C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004C7C4()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004C858()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

unint64_t sub_10004C8EC()
{
  result = qword_10008A438;
  if (!qword_10008A438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008A438);
  }

  return result;
}

unint64_t sub_10004C950()
{
  result = qword_10008A440;
  if (!qword_10008A440)
  {
    type metadata accessor for MarketplaceSceneConnectionOptionDefinition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A440);
  }

  return result;
}

uint64_t sub_10004C9C8()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running license resolution task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  v0[3] = v11;
  v12 = v0[2];
  if (v11)
  {
    v13 = v11;
    v14 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithSceneProvidingProcess:v15 configurationIdentifier:v16];
    v0[4] = v17;

    v18 = swift_task_alloc();
    v0[5] = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v17;
    v19 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v20 = swift_task_alloc();
    v0[6] = v20;
    *v20 = v0;
    v20[1] = sub_10004CD74;

    return withCheckedContinuation<A>(isolation:function:_:)(v20, 0, 0, 0x29286E7572, 0xE500000000000000, sub_10004E748, v18, &type metadata for () + 8);
  }

  else
  {
    v21 = v12;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[2];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = *(v24 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey);
      *(v25 + 4) = v27;
      *v26 = v27;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] No identity", v25, 0xCu);
      sub_100011C14(v26, &qword_100088FD0, &qword_1000673F0);
    }

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_10004CD74()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10004CE8C, 0, 0);
}

uint64_t sub_10004CE8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10004CEF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35[-v9];
  v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  v40 = sub_10004E820;
  v41 = v13;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100043F50;
  v39 = &unk_10007FB00;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();
  v16 = a2;
  v17 = [v15 responderWithHandler:v14];
  _Block_release(v14);

  v18 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v17];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v18;
  v20 = v18;
  sub_10004DA58(inited);
  swift_setDeallocating();
  v21 = *(inited + 16);
  swift_arrayDestroy();
  sub_10001596C();
  sub_10004E8B8(&qword_100089370, sub_10001596C);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v11 setActions:isa];

  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for LicenseResolutionContext();
  sub_10004E8B8(&qword_10008A4A8, &type metadata accessor for LicenseResolutionContext);
  v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v28 = v27;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v37 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v29 + 96) = &type metadata for Data;
  *(v29 + 72) = v26;
  *(v29 + 80) = v28;
  sub_100015A00(v26, v28);
  sub_100059988(v29);
  swift_setDeallocating();
  sub_100011C14(v29 + 32, &qword_100089010, &qword_1000663A0);
  v30 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setUserInfo:v30];

  v31 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v11];
  v32 = *&v16[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle];
  *&v16[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle] = v31;
  v33 = v31;

  [v33 registerObserver:v16];
  v34 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v33 activateWithContext:v34];

  sub_100015A54(v26, v28);
}

uint64_t sub_10004D564(uint64_t a1, void *a2)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4C0);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Dismissing license resolution sheet", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  sub_1000047BC(&qword_100089A80, &unk_100066A90);
  return CheckedContinuation.resume(returning:)();
}

id sub_10004D704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LicenseResolutionTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LicenseResolutionTask()
{
  result = qword_10008A490;
  if (!qword_10008A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004D81C()
{
  result = type metadata accessor for LicenseResolutionContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10004D924()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_10004DA58(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000047BC(&qword_10008A4C0, &qword_100067700);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10001596C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10001596C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10004DD24(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000047BC(&qword_10008A4D0, &unk_100067710);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10004E8B8(&qword_10008A4D8, &type metadata accessor for MetricsFieldInclusionRequest);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10004E8B8(&unk_10008A4E0, &type metadata accessor for MetricsFieldInclusionRequest);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10004E044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000047BC(&qword_10008A4C8, &qword_100067708);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = v2 + 56;
    while (1)
    {
      v4 = *(v2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v6 = result & ~(-1 << *(v2 + 32));
      v7 = v6 >> 6;
      v8 = *(v3 + 8 * (v6 >> 6));
      v9 = 1 << v6;
      if ((v9 & v8) == 0)
      {
        *(v3 + 8 * v7) = v9 | v8;
        v10 = *(v2 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v12;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10004E144()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_10004E29C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10004D924();
}

void sub_10004E3EC(uint64_t a1)
{
  sub_10004D924();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_10004E750()
{
  v1 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004E820(uint64_t a1)
{
  v3 = *(*(sub_1000047BC(&qword_100089A80, &unk_100066A90) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_10004D564(a1, v4);
}

uint64_t sub_10004E8A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004E8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004E914(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InstallSheetContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004E9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InstallSheetContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocalizedInstallSheetContent()
{
  result = qword_10008A548;
  if (!qword_10008A548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004EAC4()
{
  result = type metadata accessor for InstallSheetContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[206] = a3;
  v3[205] = a2;
  v3[204] = a1;
  v4 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v3[207] = v4;
  v5 = *(v4 - 8);
  v3[208] = v5;
  v6 = *(v5 + 64) + 15;
  v3[209] = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext.InstallType();
  v3[210] = v7;
  v8 = *(v7 - 8);
  v3[211] = v8;
  v9 = *(v8 + 64) + 15;
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();
  v10 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v3[216] = v10;
  v11 = *(v10 - 8);
  v3[217] = v11;
  v12 = *(v11 + 64) + 15;
  v3[218] = swift_task_alloc();
  v13 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v3[219] = v13;
  v14 = *(v13 - 8);
  v3[220] = v14;
  v15 = *(v14 + 64) + 15;
  v3[221] = swift_task_alloc();
  v16 = type metadata accessor for InstallSheetContext.Source();
  v3[222] = v16;
  v17 = *(v16 - 8);
  v3[223] = v17;
  v18 = *(v17 + 64) + 15;
  v3[224] = swift_task_alloc();

  return _swift_task_switch(sub_10004EDC0, 0, 0);
}

uint64_t sub_10004EDC0()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  v4 = type metadata accessor for InstallSheetContext();
  *(v0 + 1800) = v4;
  v5 = *(v4 - 8);
  *(v0 + 1808) = v5;
  (*(v5 + 16))(v2 + v3, v1, v4);
  *(v0 + 16) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 12;
  v6 = swift_task_alloc();
  *(v0 + 1816) = v6;
  *v6 = v0;
  v6[1] = sub_10004EEE0;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 16);
}

uint64_t sub_10004EEE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1816);
  v6 = *v2;
  *(v3 + 1824) = a1;
  *(v3 + 1832) = a2;

  return _swift_task_switch(sub_10004EFE4, 0, 0);
}

uint64_t sub_10004EFE4()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1640);
  String.append(_:)(*(v0 + 1824));
  v5._countAndFlagsBits = 10333;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = InstallSheetContext.learnMoreURL.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(v0 + 1840) = 91;
  *(v0 + 1848) = 0xE100000000000000;
  InstallSheetContext.source.getter();
  v8 = (*(v2 + 88))(v1, v3);
  if (v8 != enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    if (v8 == enum case for InstallSheetContext.Source.distributor(_:))
    {
      v19 = *(v0 + 1832);
      v20 = *(v0 + 1792);
      v21 = *(v0 + 1784);
      v22 = *(v0 + 1776);

      (*(v21 + 96))(v20, v22);
      v23 = *v20;
      *(v0 + 2032) = *v20;
      v24 = v20[1];
      *(v0 + 2040) = v24;
      v25 = v20[3];

      *(v0 + 736) = v23;
      *(v0 + 744) = v24;
      *(v0 + 752) = 0u;
      *(v0 + 768) = 1;

      v26 = swift_task_alloc();
      *(v0 + 2048) = v26;
      *v26 = v0;
      v26[1] = sub_100050478;
      v27 = *(v0 + 1648);
      v18 = v0 + 736;
      goto LABEL_7;
    }

    if (v8 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
    {
      v28 = *(v0 + 1832);
      v29 = *(v0 + 1792);
      v30 = *(v0 + 1784);
      v31 = *(v0 + 1776);
      v32 = *(v0 + 1744);
      v33 = *(v0 + 1736);
      v34 = *(v0 + 1728);

      (*(v30 + 96))(v29, v31);
      (*(v33 + 32))(v32, v29, v34);
      v35 = InstallSheetContext.Source.DistributorContext.name.getter();
      *(v0 + 2120) = v36;
      *(v0 + 576) = v35;
      *(v0 + 584) = v36;
      *(v0 + 592) = 0u;
      *(v0 + 608) = 1;
      v37 = swift_task_alloc();
      *(v0 + 2128) = v37;
      *v37 = v0;
      v37[1] = sub_100050A3C;
      v38 = *(v0 + 1648);
      v18 = v0 + 576;
      goto LABEL_7;
    }

    if (v8 == enum case for InstallSheetContext.Source.web(_:))
    {
      v40 = *(v0 + 1792);
      v41 = *(v0 + 1720);
      v42 = *(v0 + 1688);
      v43 = *(v0 + 1680);
      v44 = *(v0 + 1640);
      (*(*(v0 + 1784) + 96))(v40, *(v0 + 1776));
      v46 = *v40;
      v45 = v40[1];
      *(v0 + 2248) = v45;
      *(v0 + 2256) = v40[2];
      *(v0 + 2264) = v40[3];
      InstallSheetContext.type.getter();
      v47 = (*(v42 + 88))(v41, v43);
      if (v47 == enum case for InstallSheetContext.InstallType.app(_:))
      {
        v48 = *(v0 + 1832);

        *(v0 + 456) = v46;
        *(v0 + 464) = v45;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 5;
        v49 = swift_task_alloc();
        *(v0 + 2272) = v49;
        *v49 = v0;
        v49[1] = sub_100051248;
        v50 = *(v0 + 1648);
        v18 = v0 + 456;
        goto LABEL_7;
      }

      if (v47 == enum case for InstallSheetContext.InstallType.marketplace(_:))
      {
        v67 = *(v0 + 1832);

        *(v0 + 336) = v46;
        *(v0 + 344) = v45;
        *(v0 + 352) = 0;
        *(v0 + 360) = 0;
        *(v0 + 368) = 3;
        v68 = swift_task_alloc();
        *(v0 + 2328) = v68;
        *v68 = v0;
        v68[1] = sub_100051810;
        v69 = *(v0 + 1648);
        v18 = v0 + 336;
        goto LABEL_7;
      }
    }

    else
    {
      if (v8 == enum case for InstallSheetContext.Source.webWithContext(_:))
      {
        v51 = *(v0 + 1792);
        v52 = *(v0 + 1712);
        v53 = *(v0 + 1688);
        v54 = *(v0 + 1680);
        v55 = *(v0 + 1672);
        v56 = *(v0 + 1664);
        v57 = *(v0 + 1656);
        v58 = *(v0 + 1640);
        (*(*(v0 + 1784) + 96))(v51, *(v0 + 1776));
        (*(v56 + 32))(v55, v51, v57);
        InstallSheetContext.type.getter();
        v59 = (*(v53 + 88))(v52, v54);
        if (v59 == enum case for InstallSheetContext.InstallType.app(_:))
        {
          v60 = *(v0 + 1832);
          v61 = *(v0 + 1672);

          v62 = InstallSheetContext.Source.WebInstallContext.domain.getter();
          *(v0 + 2384) = v63;
          *(v0 + 176) = v62;
          v64 = v0 + 176;
          *(v0 + 192) = 0;
          *(v0 + 200) = 0;
          *(v0 + 184) = v63;
          *(v0 + 208) = 5;
          v65 = swift_task_alloc();
          *(v0 + 2392) = v65;
          *v65 = v0;
          v66 = sub_100051DCC;
        }

        else
        {
          if (v59 != enum case for InstallSheetContext.InstallType.marketplace(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v73 = *(v0 + 1832);
          v74 = *(v0 + 1672);

          v75 = InstallSheetContext.Source.WebInstallContext.domain.getter();
          *(v0 + 2456) = v76;
          *(v0 + 56) = v75;
          v64 = v0 + 56;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 64) = v76;
          *(v0 + 88) = 3;
          v65 = swift_task_alloc();
          *(v0 + 2464) = v65;
          *v65 = v0;
          v66 = sub_100052390;
        }

        v65[1] = v66;
        v77 = *(v0 + 1648);
        v18 = v64;
        goto LABEL_7;
      }

      if (v8 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        v70 = *(v0 + 1832);

        *(v0 + 1016) = 6;
        *(v0 + 1024) = 0;
        *(v0 + 1040) = 0;
        *(v0 + 1032) = 0;
        *(v0 + 1048) = 12;
        v71 = swift_task_alloc();
        *(v0 + 1856) = v71;
        *v71 = v0;
        v71[1] = sub_10004F770;
        v72 = *(v0 + 1648);
        v18 = v0 + 1016;
        goto LABEL_7;
      }
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v9 = *(v0 + 1832);
  v10 = *(v0 + 1792);
  v11 = *(v0 + 1784);
  v12 = *(v0 + 1776);
  v13 = *(v0 + 1768);
  v14 = *(v0 + 1760);
  v15 = *(v0 + 1752);

  (*(v11 + 96))(v10, v12);
  (*(v14 + 32))(v13, v10, v15);
  *(v0 + 856) = 6;
  *(v0 + 864) = 0;
  *(v0 + 880) = 0;
  *(v0 + 872) = 0;
  *(v0 + 888) = 12;
  v16 = swift_task_alloc();
  *(v0 + 1928) = v16;
  *v16 = v0;
  v16[1] = sub_10004FCF4;
  v17 = *(v0 + 1648);
  v18 = v0 + 856;
LABEL_7:

  return sub_100049C9C(v18);
}

uint64_t sub_10004F770(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1856);
  v6 = *v2;
  *(v3 + 1864) = a1;
  *(v3 + 1872) = a2;

  return _swift_task_switch(sub_10004F874, 0, 0);
}

uint64_t sub_10004F874()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1632);
  *v4 = *(v0 + 1864);
  v4[1] = v1;
  *(v0 + 1056) = v3;
  *(v0 + 1064) = v2;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 0;
  v5 = swift_task_alloc();
  *(v0 + 1880) = v5;
  *v5 = v0;
  v5[1] = sub_10004F938;
  v6 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1056);
}

uint64_t sub_10004F938(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1880);
  v5 = *(*v2 + 1848);
  v7 = *v2;
  *(v3 + 1888) = a1;
  *(v3 + 1896) = a2;

  return _swift_task_switch(sub_10004FA5C, 0, 0);
}

uint64_t sub_10004FA5C()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 1888);
  *(v2 + 24) = v1;
  *(v0 + 1096) = 7;
  *(v0 + 1104) = 0;
  *(v0 + 1120) = 0;
  *(v0 + 1112) = 0;
  *(v0 + 1128) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1904) = v3;
  *v3 = v0;
  v3[1] = sub_10004FB20;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1096);
}

uint64_t sub_10004FB20(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1904);
  v6 = *v2;
  *(v3 + 1912) = a1;
  *(v3 + 1920) = a2;

  return _swift_task_switch(sub_10004FC24, 0, 0);
}

uint64_t sub_10004FC24()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1912);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;
  v5 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_10004FCF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1928);
  v6 = *v2;
  *(v3 + 1936) = a1;
  *(v3 + 1944) = a2;

  return _swift_task_switch(sub_10004FDF8, 0, 0);
}

uint64_t sub_10004FDF8()
{
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1632);
  *v4 = *(v0 + 1936);
  v4[1] = v1;
  *(v0 + 896) = v3;
  *(v0 + 904) = v2;
  *(v0 + 912) = 0u;
  *(v0 + 928) = 0;
  v5 = swift_task_alloc();
  *(v0 + 1952) = v5;
  *v5 = v0;
  v5[1] = sub_10004FEBC;
  v6 = *(v0 + 1648);

  return sub_100049C9C(v0 + 896);
}

uint64_t sub_10004FEBC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1952);
  v5 = *(*v2 + 1848);
  v7 = *v2;
  *(v3 + 1960) = a1;
  *(v3 + 1968) = a2;

  return _swift_task_switch(sub_10004FFE0, 0, 0);
}

uint64_t sub_10004FFE0()
{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 1960);
  *(v2 + 24) = v1;
  *(v0 + 936) = 7;
  *(v0 + 944) = 0;
  *(v0 + 960) = 0;
  *(v0 + 952) = 0;
  *(v0 + 968) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1976) = v3;
  *v3 = v0;
  v3[1] = sub_1000500A4;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 936);
}

uint64_t sub_1000500A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1976);
  v6 = *v2;
  *(v3 + 1984) = a1;
  *(v3 + 1992) = a2;

  return _swift_task_switch(sub_1000501A8, 0, 0);
}

uint64_t sub_1000501A8()
{
  v1 = *(v0 + 1992);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1632);
  *(v3 + 32) = *(v0 + 1984);
  *(v3 + 40) = v1;
  v4 = InstallSheetContext.Source.AppStoreSheetContext.appName.getter();
  *(v0 + 2000) = v5;
  *(v0 + 976) = v4;
  *(v0 + 984) = v5;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 10;
  v6 = swift_task_alloc();
  *(v0 + 2008) = v6;
  *v6 = v0;
  v6[1] = sub_100050274;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 976);
}

uint64_t sub_100050274(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2008);
  v5 = *(*v2 + 2000);
  v7 = *v2;
  *(v3 + 2016) = a1;
  *(v3 + 2024) = a2;

  return _swift_task_switch(sub_100050398, 0, 0);
}

uint64_t sub_100050398()
{
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v1 = *(v0 + 2024);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2016);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100050478(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2048);
  v5 = *(*v2 + 2040);
  v7 = *v2;
  *(v3 + 2056) = a1;
  *(v3 + 2064) = a2;

  return _swift_task_switch(sub_10005059C, 0, 0);
}

uint64_t sub_10005059C()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2032);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2056);
  v5[1] = v1;
  *(v0 + 776) = v2;
  *(v0 + 792) = v4;
  *(v0 + 800) = v3;
  *(v0 + 808) = 2;
  v6 = swift_task_alloc();
  *(v0 + 2072) = v6;
  *v6 = v0;
  v6[1] = sub_100050664;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 776);
}

uint64_t sub_100050664(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2072);
  v5 = *(*v2 + 2040);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2080) = a1;
  *(v3 + 2088) = a2;

  return _swift_task_switch(sub_1000507A4, 0, 0);
}

uint64_t sub_1000507A4()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2080);
  *(v2 + 24) = v1;
  *(v0 + 816) = 7;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2096) = v3;
  *v3 = v0;
  v3[1] = sub_100050868;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 816);
}

uint64_t sub_100050868(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2096);
  v6 = *v2;
  *(v3 + 2104) = a1;
  *(v3 + 2112) = a2;

  return _swift_task_switch(sub_10005096C, 0, 0);
}

uint64_t sub_10005096C()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 2104);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;
  v5 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100050A3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2128);
  v5 = *(*v2 + 2120);
  v7 = *v2;
  *(v3 + 2136) = a1;
  *(v3 + 2144) = a2;

  return _swift_task_switch(sub_100050B60, 0, 0);
}

uint64_t sub_100050B60()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1744);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2136);
  v5[1] = v1;
  v6 = InstallSheetContext.Source.DistributorContext.name.getter();
  *(v0 + 2152) = v7;
  *(v0 + 616) = v6;
  *(v0 + 624) = v7;
  *(v0 + 632) = v3;
  *(v0 + 640) = v2;
  *(v0 + 648) = 2;
  v8 = swift_task_alloc();
  *(v0 + 2160) = v8;
  *v8 = v0;
  v8[1] = sub_100050C3C;
  v9 = *(v0 + 1648);

  return sub_100049C9C(v0 + 616);
}

uint64_t sub_100050C3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2160);
  v5 = *(*v2 + 2152);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2168) = a1;
  *(v3 + 2176) = a2;

  return _swift_task_switch(sub_100050D7C, 0, 0);
}

uint64_t sub_100050D7C()
{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2168);
  *(v2 + 24) = v1;
  *(v0 + 656) = 7;
  *(v0 + 664) = 0;
  *(v0 + 680) = 0;
  *(v0 + 672) = 0;
  *(v0 + 688) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2184) = v3;
  *v3 = v0;
  v3[1] = sub_100050E40;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 656);
}

uint64_t sub_100050E40(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2184);
  v6 = *v2;
  *(v3 + 2192) = a1;
  *(v3 + 2200) = a2;

  return _swift_task_switch(sub_100050F44, 0, 0);
}

uint64_t sub_100050F44()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 1744);
  v3 = *(v0 + 1632);
  *(v3 + 32) = *(v0 + 2192);
  *(v3 + 40) = v1;
  v4 = InstallSheetContext.Source.DistributorContext.appName.getter();
  v6 = v5;
  *(v0 + 2208) = v5;
  v7 = InstallSheetContext.Source.DistributorContext.name.getter();
  *(v0 + 2216) = v8;
  *(v0 + 696) = v4;
  *(v0 + 704) = v6;
  *(v0 + 712) = v7;
  *(v0 + 720) = v8;
  *(v0 + 728) = 8;
  v9 = swift_task_alloc();
  *(v0 + 2224) = v9;
  *v9 = v0;
  v9[1] = sub_100051028;
  v10 = *(v0 + 1648);

  return sub_100049C9C(v0 + 696);
}

uint64_t sub_100051028(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2224);
  v5 = *(*v2 + 2216);
  v6 = *(*v2 + 2208);
  v8 = *v2;
  *(v3 + 2232) = a1;
  *(v3 + 2240) = a2;

  return _swift_task_switch(sub_100051168, 0, 0);
}

uint64_t sub_100051168()
{
  (*(*(v0 + 1736) + 8))(*(v0 + 1744), *(v0 + 1728));
  v1 = *(v0 + 2240);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2232);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051248(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2272);
  v5 = *(*v2 + 2248);
  v7 = *v2;
  *(v3 + 2280) = a1;
  *(v3 + 2288) = a2;

  return _swift_task_switch(sub_10005136C, 0, 0);
}

uint64_t sub_10005136C()
{
  v1 = *(v0 + 2288);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2280);
  v5[1] = v1;
  *(v0 + 496) = v2;
  *(v0 + 512) = v4;
  *(v0 + 520) = v3;
  *(v0 + 528) = 6;
  v6 = swift_task_alloc();
  *(v0 + 2296) = v6;
  *v6 = v0;
  v6[1] = sub_100051434;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100051434(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2296);
  v5 = *(*v2 + 2264);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2304) = a1;
  *(v3 + 2312) = a2;

  return _swift_task_switch(sub_100051574, 0, 0);
}

uint64_t sub_100051574()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2304);
  *(v2 + 24) = v1;
  *(v0 + 536) = 7;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 552) = 0;
  *(v0 + 568) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2320) = v3;
  *v3 = v0;
  v3[1] = sub_100051638;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 536);
}

uint64_t sub_100051638(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[192] = v2;
  v4[193] = a1;
  v4[194] = a2;
  v5 = v3[290];
  v7 = *v2;

  return _swift_task_switch(sub_100051740, 0, 0);
}

uint64_t sub_100051740()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1544);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;
  v5 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051810(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2328);
  v5 = *(*v2 + 2248);
  v7 = *v2;
  *(v3 + 2336) = a1;
  *(v3 + 2344) = a2;

  return _swift_task_switch(sub_100051934, 0, 0);
}

uint64_t sub_100051934()
{
  v1 = *(v0 + 2344);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1840);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2336);
  v5[1] = v1;
  *(v0 + 376) = v2;
  *(v0 + 392) = v4;
  *(v0 + 400) = v3;
  *(v0 + 408) = 4;
  v6 = swift_task_alloc();
  *(v0 + 2352) = v6;
  *v6 = v0;
  v6[1] = sub_1000519F8;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 376);
}

uint64_t sub_1000519F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2352);
  v5 = *(*v2 + 2264);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2360) = a1;
  *(v3 + 2368) = a2;

  return _swift_task_switch(sub_100051B38, 0, 0);
}

uint64_t sub_100051B38()
{
  v1 = *(v0 + 2368);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2360);
  *(v2 + 24) = v1;
  *(v0 + 416) = 8;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2376) = v3;
  *v3 = v0;
  v3[1] = sub_100051BF4;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 416);
}

uint64_t sub_100051BF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[195] = v2;
  v4[196] = a1;
  v4[197] = a2;
  v5 = v3[297];
  v7 = *v2;

  return _swift_task_switch(sub_100051CFC, 0, 0);
}

uint64_t sub_100051CFC()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1632);
  *(v2 + 32) = *(v0 + 1568);
  *(v2 + 40) = v1;
  v3 = *(v0 + 1632);
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v4 = swift_task_alloc();
  *(v0 + 2560) = v4;
  *v4 = v0;
  v4[1] = sub_100052B5C;
  v5 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100051DCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2392);
  v5 = *(*v2 + 2384);
  v7 = *v2;
  *(v3 + 2400) = a1;
  *(v3 + 2408) = a2;

  return _swift_task_switch(sub_100051EF0, 0, 0);
}

uint64_t sub_100051EF0()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2400);
  v5[1] = v1;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v0 + 2416) = v7;
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 232) = v3;
  *(v0 + 240) = v2;
  *(v0 + 248) = 6;
  v8 = swift_task_alloc();
  *(v0 + 2424) = v8;
  *v8 = v0;
  v8[1] = sub_100051FC8;
  v9 = *(v0 + 1648);

  return sub_100049C9C(v0 + 216);
}

uint64_t sub_100051FC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2424);
  v5 = *(*v2 + 2416);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2432) = a1;
  *(v3 + 2440) = a2;

  return _swift_task_switch(sub_100052108, 0, 0);
}

uint64_t sub_100052108()
{
  v1 = *(v0 + 2440);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2432);
  *(v2 + 24) = v1;
  *(v0 + 256) = 7;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 288) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2448) = v3;
  *v3 = v0;
  v3[1] = sub_1000521C4;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 256);
}

uint64_t sub_1000521C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[198] = v2;
  v4[199] = a1;
  v4[200] = a2;
  v5 = v3[306];
  v7 = *v2;

  return _swift_task_switch(sub_1000522CC, 0, 0);
}

uint64_t sub_1000522CC()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1632);
  *(v3 + 32) = *(v0 + 1592);
  *(v3 + 40) = v1;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v0 + 2528) = v5;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 9;
  v6 = swift_task_alloc();
  *(v0 + 2536) = v6;
  *v6 = v0;
  v6[1] = sub_100052958;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 296);
}

uint64_t sub_100052390(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2464);
  v5 = *(*v2 + 2456);
  v7 = *v2;
  *(v3 + 2472) = a1;
  *(v3 + 2480) = a2;

  return _swift_task_switch(sub_1000524B4, 0, 0);
}

uint64_t sub_1000524B4()
{
  v1 = *(v0 + 2480);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1840);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1632);
  *v5 = *(v0 + 2472);
  v5[1] = v1;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v0 + 2488) = v7;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  *(v0 + 128) = 4;
  v8 = swift_task_alloc();
  *(v0 + 2496) = v8;
  *v8 = v0;
  v8[1] = sub_10005258C;
  v9 = *(v0 + 1648);

  return sub_100049C9C(v0 + 96);
}

uint64_t sub_10005258C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2496);
  v5 = *(*v2 + 2488);
  v6 = *(*v2 + 1848);
  v8 = *v2;
  *(v3 + 2504) = a1;
  *(v3 + 2512) = a2;

  return _swift_task_switch(sub_1000526CC, 0, 0);
}

uint64_t sub_1000526CC()
{
  v1 = *(v0 + 2512);
  v2 = *(v0 + 1632);
  *(v2 + 16) = *(v0 + 2504);
  *(v2 + 24) = v1;
  *(v0 + 136) = 8;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 144) = 0;
  *(v0 + 168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2520) = v3;
  *v3 = v0;
  v3[1] = sub_10005278C;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 136);
}

uint64_t sub_10005278C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[201] = v2;
  v4[202] = a1;
  v4[203] = a2;
  v5 = v3[315];
  v7 = *v2;

  return _swift_task_switch(sub_100052894, 0, 0);
}

uint64_t sub_100052894()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1632);
  *(v3 + 32) = *(v0 + 1616);
  *(v3 + 40) = v1;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v0 + 2528) = v5;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 9;
  v6 = swift_task_alloc();
  *(v0 + 2536) = v6;
  *v6 = v0;
  v6[1] = sub_100052958;
  v7 = *(v0 + 1648);

  return sub_100049C9C(v0 + 296);
}

uint64_t sub_100052958(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2536);
  v5 = *(*v2 + 2528);
  v7 = *v2;
  *(v3 + 2544) = a1;
  *(v3 + 2552) = a2;

  return _swift_task_switch(sub_100052A7C, 0, 0);
}

uint64_t sub_100052A7C()
{
  (*(*(v0 + 1664) + 8))(*(v0 + 1672), *(v0 + 1656));
  v1 = *(v0 + 2552);
  v2 = *(v0 + 1632);
  *(v2 + 192) = *(v0 + 2544);
  *(v2 + 200) = v1;
  *(v0 + 1136) = 1;
  *(v0 + 1144) = 0;
  *(v0 + 1160) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1168) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2560) = v3;
  *v3 = v0;
  v3[1] = sub_100052B5C;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1136);
}

uint64_t sub_100052B5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2560);
  v6 = *v2;
  *(v3 + 2568) = a1;
  *(v3 + 2576) = a2;

  return _swift_task_switch(sub_100052C60, 0, 0);
}

uint64_t sub_100052C60()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 1632);
  *(v2 + 48) = *(v0 + 2568);
  *(v2 + 56) = v1;
  *(v0 + 1176) = 10;
  *(v0 + 1184) = 0;
  *(v0 + 1200) = 0;
  *(v0 + 1192) = 0;
  *(v0 + 1208) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2584) = v3;
  *v3 = v0;
  v3[1] = sub_100052D24;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1176);
}

uint64_t sub_100052D24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2584);
  v6 = *v2;
  *(v3 + 2592) = a1;
  *(v3 + 2600) = a2;

  return _swift_task_switch(sub_100052E28, 0, 0);
}

uint64_t sub_100052E28()
{
  v1 = *(v0 + 2600);
  v2 = *(v0 + 1632);
  *(v2 + 64) = *(v0 + 2592);
  *(v2 + 72) = v1;
  *(v0 + 1216) = 11;
  *(v0 + 1224) = 0;
  *(v0 + 1240) = 0;
  *(v0 + 1232) = 0;
  *(v0 + 1248) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2608) = v3;
  *v3 = v0;
  v3[1] = sub_100052EEC;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1216);
}

uint64_t sub_100052EEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2608);
  v6 = *v2;
  *(v3 + 2616) = a1;
  *(v3 + 2624) = a2;

  return _swift_task_switch(sub_100052FF0, 0, 0);
}

uint64_t sub_100052FF0()
{
  v1 = *(v0 + 2624);
  v2 = *(v0 + 1632);
  *(v2 + 80) = *(v0 + 2616);
  *(v2 + 88) = v1;
  *(v0 + 1256) = 2;
  *(v0 + 1264) = 0;
  *(v0 + 1280) = 0;
  *(v0 + 1272) = 0;
  *(v0 + 1288) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2632) = v3;
  *v3 = v0;
  v3[1] = sub_1000530B4;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1256);
}

uint64_t sub_1000530B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2632);
  v6 = *v2;
  *(v3 + 2640) = a1;
  *(v3 + 2648) = a2;

  return _swift_task_switch(sub_1000531B8, 0, 0);
}

uint64_t sub_1000531B8()
{
  v1 = *(v0 + 2648);
  v2 = *(v0 + 1632);
  *(v2 + 96) = *(v0 + 2640);
  *(v2 + 104) = v1;
  *(v0 + 1296) = 12;
  *(v0 + 1304) = 0;
  *(v0 + 1320) = 0;
  *(v0 + 1312) = 0;
  *(v0 + 1328) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2656) = v3;
  *v3 = v0;
  v3[1] = sub_100053278;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1296);
}

uint64_t sub_100053278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2656);
  v6 = *v2;
  *(v3 + 2664) = a1;
  *(v3 + 2672) = a2;

  return _swift_task_switch(sub_10005337C, 0, 0);
}

uint64_t sub_10005337C()
{
  v1 = *(v0 + 2672);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  v5 = *(v0 + 1680);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1632);
  *(v7 + 112) = *(v0 + 2664);
  *(v7 + 120) = v1;
  InstallSheetContext.type.getter();
  *(v0 + 52) = enum case for InstallSheetContext.InstallType.marketplace(_:);
  v8 = *(v4 + 104);
  *(v0 + 2680) = v8;
  *(v0 + 2688) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v3);
  v9 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 49) = v9 & 1;
  v10 = *(v4 + 8);
  *(v0 + 2696) = v10;
  *(v0 + 2704) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v9)
  {
    v11 = 14;
  }

  else
  {
    v11 = 13;
  }

  v10(v3, v5);
  v10(v2, v5);
  *(v0 + 1336) = v11;
  *(v0 + 1344) = 0;
  *(v0 + 1360) = 0;
  *(v0 + 1352) = 0;
  *(v0 + 1368) = 12;
  v12 = swift_task_alloc();
  *(v0 + 2712) = v12;
  *v12 = v0;
  v12[1] = sub_1000534FC;
  v13 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1336);
}

uint64_t sub_1000534FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2712);
  if (*(*v2 + 49))
  {
    v5 = 14;
  }

  else
  {
    v5 = 13;
  }

  v7 = *v2;
  *(v3 + 2720) = a1;
  *(v3 + 2728) = a2;

  sub_100018FBC(v5, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_10005362C, 0, 0);
}

uint64_t sub_10005362C()
{
  v1 = *(v0 + 2728);
  v2 = *(v0 + 1632);
  *(v2 + 128) = *(v0 + 2720);
  *(v2 + 136) = v1;
  *(v0 + 1376) = 15;
  *(v0 + 1384) = 0;
  *(v0 + 1400) = 0;
  *(v0 + 1392) = 0;
  *(v0 + 1408) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2736) = v3;
  *v3 = v0;
  v3[1] = sub_1000536F0;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1376);
}

uint64_t sub_1000536F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2736);
  v6 = *v2;
  *(v3 + 2744) = a1;
  *(v3 + 2752) = a2;

  return _swift_task_switch(sub_1000537F4, 0, 0);
}

uint64_t sub_1000537F4()
{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2704);
  v3 = *(v0 + 2696);
  v4 = *(v0 + 2688);
  v5 = *(v0 + 2680);
  v6 = *(v0 + 52);
  v7 = *(v0 + 1704);
  v8 = *(v0 + 1696);
  v9 = *(v0 + 1680);
  v10 = *(v0 + 1640);
  v11 = *(v0 + 1632);
  *(v11 + 144) = *(v0 + 2744);
  *(v11 + 152) = v1;
  InstallSheetContext.type.getter();
  v5(v8, v6, v9);
  v12 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 50) = v12 & 1;
  if (v12)
  {
    v13 = 17;
  }

  else
  {
    v13 = 16;
  }

  v3(v8, v9);
  v3(v7, v9);
  *(v0 + 1416) = v13;
  *(v0 + 1424) = 0;
  *(v0 + 1440) = 0;
  *(v0 + 1432) = 0;
  *(v0 + 1448) = 12;
  v14 = swift_task_alloc();
  *(v0 + 2760) = v14;
  *v14 = v0;
  v14[1] = sub_100053944;
  v15 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1416);
}

uint64_t sub_100053944(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2760);
  if (*(*v2 + 50))
  {
    v5 = 17;
  }

  else
  {
    v5 = 16;
  }

  v7 = *v2;
  *(v3 + 2768) = a1;
  *(v3 + 2776) = a2;

  sub_100018FBC(v5, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100053A74, 0, 0);
}

uint64_t sub_100053A74()
{
  v1 = *(v0 + 2776);
  v2 = *(v0 + 1632);
  *(v2 + 160) = *(v0 + 2768);
  *(v2 + 168) = v1;
  *(v0 + 1456) = 18;
  *(v0 + 1464) = 0;
  *(v0 + 1480) = 0;
  *(v0 + 1472) = 0;
  *(v0 + 1488) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2784) = v3;
  *v3 = v0;
  v3[1] = sub_100053B38;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1456);
}

uint64_t sub_100053B38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2784);
  v6 = *v2;
  *(v3 + 2792) = a1;
  *(v3 + 2800) = a2;

  return _swift_task_switch(sub_100053C3C, 0, 0);
}

uint64_t sub_100053C3C()
{
  v1 = *(v0 + 2800);
  v2 = *(v0 + 1632);
  *(v2 + 176) = *(v0 + 2792);
  *(v2 + 184) = v1;
  *(v0 + 1496) = 5;
  *(v0 + 1504) = 0;
  *(v0 + 1520) = 0;
  *(v0 + 1512) = 0;
  *(v0 + 1528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 2808) = v3;
  *v3 = v0;
  v3[1] = sub_100053D00;
  v4 = *(v0 + 1648);

  return sub_100049C9C(v0 + 1496);
}

uint64_t sub_100053D00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2808);
  v6 = *v2;
  *(v3 + 2816) = a1;
  *(v3 + 2824) = a2;

  return _swift_task_switch(sub_100053E04, 0, 0);
}

uint64_t sub_100053E04()
{
  v1 = v0[353];
  v2 = v0[352];
  v3 = v0[226];
  v4 = v0[225];
  v5 = v0[224];
  v6 = v0[221];
  v7 = v0[218];
  v13 = v0[215];
  v14 = v0[214];
  v15 = v0[213];
  v16 = v0[212];
  v17 = v0[209];
  v8 = v0[206];
  v9 = v0[205];
  v10 = v0[204];

  (*(v3 + 8))(v9, v4);
  *(v10 + 208) = v2;
  *(v10 + 216) = v1;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100053F24()
{
  v1 = type metadata accessor for InstallSheetContext.Source();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  InstallSheetContext.source.getter();
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
    (*(*(v8 - 8) + 8))(v5, v8);
    return 1;
  }

  if (v7 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    goto LABEL_4;
  }

  if (v7 == enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    (*(v2 + 96))(v5, v1);
    v10 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
    goto LABEL_7;
  }

  if (v7 != enum case for InstallSheetContext.Source.web(_:))
  {
    if (v7 != enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      if (v7 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        return 1;
      }

      goto LABEL_4;
    }

    (*(v2 + 96))(v5, v1);
    v10 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
LABEL_7:
    (*(*(v10 - 8) + 8))(v5, v10);
    return 0;
  }

LABEL_4:
  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t sub_100054164@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InstallSheetContext.Source();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + *(type metadata accessor for LocalizedInstallSheetContent() + 72);
  InstallSheetContext.source.getter();
  v21 = (*(v16 + 88))(v19, v15);
  if (v21 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v11 + 32))(v14, v19, v10);
    InstallSheetContext.Source.AppStoreSheetContext.iconURL.getter();
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v31;
  if (v21 == enum case for InstallSheetContext.Source.distributor(_:))
  {
    goto LABEL_5;
  }

  if (v21 != enum case for InstallSheetContext.Source.distributorWithContext(_:))
  {
    if (v21 != enum case for InstallSheetContext.Source.web(_:))
    {
      if (v21 == enum case for InstallSheetContext.Source.webWithContext(_:))
      {
        (*(v16 + 96))(v19, v15);
        v27 = v28;
        v26 = v29;
        (*(v28 + 32))(v5, v19, v29);
        InstallSheetContext.Source.WebInstallContext.iconURL.getter();
        return (*(v27 + 8))(v5, v26);
      }

      if (v21 != enum case for InstallSheetContext.Source.appStore(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_6:
      v24 = type metadata accessor for URL();
      return (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    }

LABEL_5:
    (*(v16 + 8))(v19, v15);
    goto LABEL_6;
  }

  (*(v16 + 96))(v19, v15);
  v25 = v30;
  (*(v30 + 32))(v9, v19, v6);
  InstallSheetContext.Source.DistributorContext.iconURL.getter();
  return (*(v25 + 8))(v9, v6);
}

uint64_t sub_100054600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10005595C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000559CC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000559CC(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000559CC(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10005486C()
{
  v1 = *v0;
  result = os_transaction_get_description();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

uint64_t sub_10005489C()
{
  v2 = v0;
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v48 - v5;
  v7 = sub_1000047BC(&qword_10008A6C8, &qword_1000677F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = *(v2 + 16);
  swift_unknownObjectRetain();
  v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  timestamp = os_transaction_get_timestamp();
  if (v19 < timestamp)
  {
    __break(1u);
  }

  else
  {
    v1 = timestamp;
    v53 = v12;
    v56 = v6;
    v12 = objc_opt_self();
    v21 = [v12 nanoseconds];
    sub_100055810();
    Measurement.init(value:unit:)();
    if (qword_100088440 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_1000105E8(v22, qword_10008C4D8);
  (*(v8 + 16))(v15, v17, v7);
  swift_unknownObjectRetain();
  v23 = v15;
  v24 = v7;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v52 = v26;
  v27 = os_log_type_enabled(v25, v26);
  v54 = v1;
  v55 = v17;
  if (v27)
  {
    v50 = v25;
    v51 = v2;
    v28 = v23;
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v29 = 33555202;
    *(v29 + 4) = v1;
    *(v29 + 6) = 2080;
    swift_unknownObjectRetain();
    if (os_transaction_get_description())
    {
      v30 = String.init(cString:)();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v34 = sub_10000F78C(v30, v32, &v57);

    *(v29 + 8) = v34;
    *(v29 + 16) = 2080;
    v35 = [v12 milliseconds];
    v36 = v53;
    Measurement<>.converted(to:)();

    v37 = Measurement<>.formatted()();
    v39 = v38;
    v33 = *(v8 + 8);
    v33(v36, v24);
    v33(v28, v24);
    v40 = sub_10000F78C(v37, v39, &v57);

    *(v29 + 18) = v40;
    v41 = v50;
    _os_log_impl(&_mh_execute_header, v50, v52, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v29, 0x1Au);
    swift_arrayDestroy();

    v2 = v51;
  }

  else
  {

    v33 = *(v8 + 8);
    v33(v23, v24);
  }

  v42 = type metadata accessor for TaskPriority();
  v43 = v56;
  (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v45 = v54;
  v44[4] = v18;
  v44[5] = v45;
  swift_unknownObjectRetain();
  sub_100054600(0xD000000000000019, 0x800000010006A830, v43, &unk_100067800, v44);
  swift_unknownObjectRelease();

  v33(v55, v24);
  v46 = *(v2 + 16);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100054DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100054E90, 0, 0);
}

uint64_t sub_100054E90()
{
  v1 = *(v0 + 48);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_100054F5C;
  v3 = *(v0 + 48);

  return sub_100055358(0xB469471F80140000, 0, 0, 0, 1);
}

uint64_t sub_100054F5C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10005528C;
  }

  else
  {
    v6 = sub_1000550CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000550CC()
{
  v17 = v0;
  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4D8);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 33554946;
    *(v7 + 4) = v6;
    *(v7 + 6) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = String.init(cString:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = sub_10000F78C(description, v11, &v16);

    *(v7 + 8) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[TXN%hx] 🐏 Releasing transaction (%s)", v7, 0x10u);
    sub_10001059C(v8);
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10005528C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1000552F0()
{
  sub_10005489C();

  return swift_deallocClassInstance();
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100055458, 0, 0);
}

uint64_t sub_100055458()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100055A34(&qword_10008A6D8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100055A34(&unk_10008A6E0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000555E8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000555E8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000557A4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000557A4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_100055810()
{
  result = qword_10008A6D0;
  if (!qword_10008A6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008A6D0);
  }

  return result;
}

uint64_t sub_10005585C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005589C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_100054DD0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005595C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000559CC(uint64_t a1)
{
  v2 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100055A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100055AFC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000295D4(v3, a2);
  sub_1000105E8(v3, a2);
  return Logger.init(subsystem:category:)();
}

id sub_100055B78(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue);
  v2 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue + 8);

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_100055C40()
{
  ObjectType = swift_getObjectType();
  swift_stdlib_random();
  v7 = 5129543;
  v8 = 0xE300000000000000;
  v6 = 0;
  sub_100055D00();
  v2._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v2);

  v3 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
  *v3 = 5129543;
  *(v3 + 1) = 0xE300000000000000;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

unint64_t sub_100055D00()
{
  result = qword_10008A720;
  if (!qword_10008A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008A720);
  }

  return result;
}

uint64_t sub_100055D70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MetricsPipeline();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricsData.Configuration();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100055ED8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MetricsPipeline();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for MetricsData.Configuration();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for InstallConfirmationAppStoreMetrics()
{
  result = qword_10008A780;
  if (!qword_10008A780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100056074()
{
  type metadata accessor for MetricsPipeline();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsData.Configuration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
      if (v2 <= 0x3F)
      {
        sub_100056128();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100056128()
{
  if (!qword_10008A790)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10008A790);
    }
  }
}

uint64_t sub_10005618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v89 = type metadata accessor for MetricsPipeline.Configuration();
  v84 = *(v89 - 8);
  v5 = *(v84 + 64);
  v6 = __chkstk_darwin(v89);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for Bag();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v13 = v86[6];
  v14 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = a3;
  (*(v79 + 16))(a3 + v13, a2);
  v81 = a2;
  v16 = InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter();
  if (v17 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v18 = v16;
  v19 = v17;
  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v91 = 0;
  v22 = [v20 JSONObjectWithData:isa options:0 error:&v91];

  if (!v22)
  {
    v26 = v91;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005A554(v18, v19);

LABEL_7:
    v25 = sub_100059AC4(&_swiftEmptyArrayStorage);
    goto LABEL_8;
  }

  v23 = v91;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000047BC(&qword_10008A800, &qword_1000678C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005A554(v18, v19);
    goto LABEL_7;
  }

  v24 = sub_10005A030(v90, &off_10007E458);

  sub_10005A554(v18, v19);
  swift_arrayDestroy();
  v25 = v24;
LABEL_8:
  *(v15 + v86[7]) = v25;
  v76 = v15;
  v78 = "pStoreMetrics.swift";
  v27 = type metadata accessor for AMSMetricsEventRecorder();
  v28 = v88;
  v29 = *(v87 + 16);
  v30 = v85;
  v29(v12, v85, v88);
  v31 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:)();
  v29(v12, v30, v28);
  v92 = &type metadata for InstallConfirmationAppStoreMetrics.Linter;
  v93 = sub_10005A500();
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v92 = v27;
  v93 = &protocol witness table for AMSMetricsEventRecorder;
  v77 = v31;
  v91 = v31;

  MetricsPipeline.Configuration.withRecorder(_:)();
  (*(v84 + 8))(v8, v89);
  sub_10001059C(&v91);
  MetricsPipeline.init(from:)();
  sub_1000047BC(&qword_10008A7E8, &qword_1000678B0);
  v32 = sub_1000047BC(&qword_10008A7F0, &qword_1000678B8);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v82 = *(*(v32 - 8) + 72);
  v34 = v82;
  v35 = swift_allocObject();
  v75 = v35;
  *(v35 + 16) = xmmword_100067830;
  v36 = v35 + v33;
  v83 = v36;
  v69 = v32;
  v37 = *(v32 + 48);
  static MetricsEventType.click.getter();
  *(v36 + v37) = &_swiftEmptySetSingleton;
  v38 = v36 + v34;
  *&v71 = *(v32 + 48);
  static MetricsEventType.page.getter();
  v39 = sub_1000047BC(&qword_10008A7F8, &qword_1000678C0);
  v68 = type metadata accessor for MetricsFieldInclusionRequest();
  v89 = *(v68 - 8);
  v40 = *(v89 + 72);
  v41 = *(v89 + 80);
  v42 = (v41 + 32) & ~v41;
  v74 = 3 * v40;
  v72 = 2 * v40;
  v67 = v41;
  v84 = v39;
  v43 = swift_allocObject();
  v73 = xmmword_100066A20;
  *(v43 + 16) = xmmword_100066A20;
  static MetricsFieldInclusionRequest.pageFields.getter();
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  static MetricsFieldInclusionRequest.crossfireReferral.getter();
  v44 = sub_10004DD24(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v38 + v71) = v44;
  v45 = v82;
  v66 = 2 * v82;
  v46 = v83;
  v47 = v69;
  v65 = *(v69 + 48);
  static MetricsEventType.search.getter();
  v48 = swift_allocObject();
  v71 = xmmword_100065650;
  *(v48 + 16) = xmmword_100065650;
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  v49 = sub_10004DD24(v48);
  swift_setDeallocating();
  v50 = *(v89 + 8);
  v89 += 8;
  v70 = v50;
  v51 = v68;
  v50(v48 + v42, v68);
  swift_deallocClassInstance();
  *(v46 + 2 * v45 + v65) = v49;
  v52 = v46 + v66 + v45;
  v53 = *(v47 + 48);
  static MetricsEventType.impressions.getter();
  v54 = swift_allocObject();
  *(v54 + 16) = v73;
  static MetricsFieldInclusionRequest.impressions.getter();
  static MetricsFieldInclusionRequest.pageFields.getter();
  static MetricsFieldInclusionRequest.pageReferrer.getter();
  v55 = sub_10004DD24(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v52 + v53) = v55;
  v56 = v82;
  v57 = v83;
  v58 = *(v47 + 48);
  static MetricsEventType.media.getter();
  *(v57 + 4 * v56 + v58) = &_swiftEmptySetSingleton;
  v59 = v57 + 5 * v56;
  v60 = *(v47 + 48);
  static MetricsEventType.pageRender.getter();
  v61 = swift_allocObject();
  *(v61 + 16) = v71;
  static MetricsFieldInclusionRequest.pageFields.getter();
  v62 = sub_10004DD24(v61);
  swift_setDeallocating();
  v70(v61 + v42, v51);
  swift_deallocClassInstance();
  *(v59 + v60) = v62;
  sub_100059BF4(v75, &qword_10008A7F0, &qword_1000678B8, &qword_10008A828, &qword_1000678E0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100059BF4(&_swiftEmptyArrayStorage, &qword_10008A808, &qword_1000678D0, &qword_10008A810, &qword_1000678D8);
  v63 = v76 + v86[5];
  MetricsData.Configuration.init(defaultTopic:defaultIncludingFields:defaultExcludingFields:shouldFlush:)();

  (*(v79 + 8))(v81, v80);
  return (*(v87 + 8))(v85, v88);
}

uint64_t sub_100056B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[42] = v23;
  v9[43] = v8;
  v9[40] = a7;
  v9[41] = a8;
  v9[38] = a5;
  v9[39] = a6;
  v9[36] = a3;
  v9[37] = a4;
  v9[34] = a1;
  v9[35] = a2;
  v10 = type metadata accessor for MetricsFieldsContext();
  v9[44] = v10;
  v11 = *(v10 - 8);
  v9[45] = v11;
  v12 = *(v11 + 64) + 15;
  v9[46] = swift_task_alloc();
  v13 = type metadata accessor for LintedMetricsEvent();
  v9[47] = v13;
  v14 = *(v13 - 8);
  v9[48] = v14;
  v15 = *(v14 + 64) + 15;
  v9[49] = swift_task_alloc();
  v16 = type metadata accessor for MetricsData();
  v9[50] = v16;
  v17 = *(v16 - 8);
  v9[51] = v17;
  v18 = *(v17 + 64) + 15;
  v9[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v9[53] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[54] = v20;
  v9[55] = v19;

  return _swift_task_switch(sub_100056CF0, v20, v19);
}

uint64_t sub_100056CF0()
{
  v34 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v4 = *(v2 + *(v3 + 28));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v1;
  sub_10005A1F0(v4, sub_100059298, 0, isUniquelyReferenced_nonNull_native, &v33, 71);

  v32 = *(v0 + 368);
  v6 = *(v0 + 344);
  v30 = *(v0 + 416);
  v31 = *(v0 + 328);
  v29 = *(v0 + 320);
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = v33;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  sub_100028608((v0 + 16), (v0 + 48));

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v13;
  sub_1000592E4((v0 + 48), 0x79546E6F69746361, 0xEA00000000006570, v14);
  v15 = v33;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  sub_100028608((v0 + 80), (v0 + 112));

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v15;
  sub_1000592E4((v0 + 112), 0x644965676170, 0xE600000000000000, v16);
  v17 = v33;
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = 0x6C61646F4DLL;
  *(v0 + 152) = 0xE500000000000000;
  sub_100028608((v0 + 144), (v0 + 176));
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v17;
  sub_1000592E4((v0 + 176), 0x7073694465676170, 0xEF6570795479616CLL, v18);
  v19 = v33;
  *(v0 + 232) = &type metadata for String;
  *(v0 + 208) = 0x6174736E49707041;
  *(v0 + 216) = 0xEA00000000006C6CLL;
  sub_100028608((v0 + 208), (v0 + 240));
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v19;
  sub_1000592E4((v0 + 240), 0x6570795465676170, 0xE800000000000000, v20);
  v21 = v6 + *(v3 + 20);
  static MetricsData.makeMetricsClickData(targetID:targetType:fields:configuration:)();

  MetricsFieldsContext.init()();
  v22 = async function pointer to MetricsPipeline.process(_:using:)[1];
  v23 = swift_task_alloc();
  *(v0 + 448) = v23;
  *v23 = v0;
  v23[1] = sub_100057034;
  v24 = *(v0 + 416);
  v25 = *(v0 + 392);
  v26 = *(v0 + 368);
  v27 = *(v0 + 344);

  return MetricsPipeline.process(_:using:)(v25, v24, v26);
}

uint64_t sub_100057034()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v11 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    (*(v2[45] + 8))(v2[46], v2[44]);
    v4 = v2[54];
    v5 = v2[55];
    v6 = sub_10005723C;
  }

  else
  {
    v8 = v2[48];
    v7 = v2[49];
    v9 = v2[47];
    (*(v2[45] + 8))(v2[46], v2[44]);
    (*(v8 + 8))(v7, v9);
    v4 = v2[54];
    v5 = v2[55];
    v6 = sub_10005719C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10005719C()
{
  v1 = v0[53];

  v2 = v0[49];
  v3 = v0[46];
  (*(v0[51] + 8))(v0[52], v0[50]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005723C()
{
  v1 = v0[53];

  if (qword_100088448 != -1)
  {
    swift_once();
  }

  v2 = v0[57];
  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[57];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error recording button click: %{public}@", v8, 0xCu);
    sub_100011C14(v9, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
    v11 = v0[57];
  }

  v12 = v0[49];
  v13 = v0[46];
  (*(v0[51] + 8))(v0[52], v0[50]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100057420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = type metadata accessor for MetricsFieldsContext();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = type metadata accessor for LintedMetricsEvent();
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  v11 = *(v10 + 64) + 15;
  v5[34] = swift_task_alloc();
  v12 = *(*(type metadata accessor for JSONContext() - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v13 = *(*(type metadata accessor for JSONObject() - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v14 = type metadata accessor for JSNetworkPerformanceMetrics();
  v5[37] = v14;
  v15 = *(v14 - 8);
  v5[38] = v15;
  v16 = *(v15 + 64) + 15;
  v5[39] = swift_task_alloc();
  v17 = type metadata accessor for MetricsData();
  v5[40] = v17;
  v18 = *(v17 - 8);
  v5[41] = v18;
  v19 = *(v18 + 64) + 15;
  v5[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[44] = v21;
  v5[45] = v20;

  return _swift_task_switch(sub_100057688, v21, v20);
}

uint64_t sub_100057688()
{
  v28 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v24 = v0[42];
  v25 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v26 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  sub_1000047BC(&qword_100089500, &qword_100066630);
  inited = swift_initStackObject();
  *(inited + 32) = 0x644965676170;
  *(inited + 16) = xmmword_100066A20;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6570795465676170;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v5;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7073694465676170;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0xEF6570795479616CLL;
  *(inited + 144) = 0x6C61646F4DLL;
  *(inited + 152) = 0xE500000000000000;

  v9 = sub_100059AC4(inited);
  swift_setDeallocating();
  sub_1000047BC(&qword_100089508, &qword_100066638);
  swift_arrayDestroy();
  v10 = type metadata accessor for InstallConfirmationAppStoreMetrics();
  v11 = *(v4 + *(v10 + 28));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v9;
  sub_10005A1F0(v11, sub_100059298, 0, isUniquelyReferenced_nonNull_native, v27, 89);

  v13 = sub_100059988(&_swiftEmptyArrayStorage);
  v27[3] = sub_1000047BC(&qword_100089A88, &unk_100067870);
  v27[0] = v13;
  JSONObject.init(wrapping:)();
  JSONContext.init()();
  JSNetworkPerformanceMetrics.init(deserializing:using:)();
  v14 = v4 + *(v10 + 20);
  static MetricsData.makeMetricsPageData(fields:timingMetrics:configuration:)();

  (*(v2 + 8))(v1, v25);
  MetricsFieldsContext.init()();
  v15 = async function pointer to MetricsPipeline.process(_:using:)[1];
  v16 = swift_task_alloc();
  v0[46] = v16;
  *v16 = v0;
  v16[1] = sub_100057970;
  v17 = v0[42];
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[28];

  return MetricsPipeline.process(_:using:)(v18, v17, v19);
}

uint64_t sub_100057970()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v11 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    (*(v2[30] + 8))(v2[31], v2[29]);
    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_100057BA0;
  }

  else
  {
    v8 = v2[33];
    v7 = v2[34];
    v9 = v2[32];
    (*(v2[30] + 8))(v2[31], v2[29]);
    (*(v8 + 8))(v7, v9);
    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_100057AD8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100057AD8()
{
  v1 = v0[43];

  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[31];
  (*(v0[41] + 8))(v0[42], v0[40]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100057BA0()
{
  v1 = v0[43];

  if (qword_100088448 != -1)
  {
    swift_once();
  }

  v2 = v0[47];
  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error recording page event: %{public}@", v8, 0xCu);
    sub_100011C14(v9, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
    v11 = v0[47];
  }

  v12 = v0[39];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[34];
  v16 = v0[31];
  (*(v0[41] + 8))(v0[42], v0[40]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100057DA4()
{
  v0 = type metadata accessor for LintedMetricsEvent();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_1000047BC(&qword_10008A830, &qword_100067918);

  LintedMetricsEvent.init(fields:issues:)();
  return Promise.__allocating_init(value:)();
}

unint64_t sub_100057E50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100057F90(a1, a2, v6);
}

unint64_t sub_100057EC8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100058048(a1, v4);
}