void sub_19A702774(void *a1)
{
  v2 = v1;
  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCA9E0);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB574();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "_boundingPathMayHaveChanged", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      return;
    }

    v46 = Strong;
    sub_19A5F5028(0, &qword_1EAFCA578);
    v9 = a1;
    v10 = sub_19A7AB924();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  else if (Strong)
  {
LABEL_26:

    return;
  }

  v11 = sub_19A7A9364();
  v12 = sub_19A7AB5A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_19A5EE000, v11, v12, "Responder to restore bounding path may have changed", v13, 2u);
    MEMORY[0x19A907A30](v13, -1, -1);
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v47 = v14;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 window];
      if (v16)
      {
        v45 = v16;

        Strong = v45;
        goto LABEL_26;
      }

      v17 = [objc_opt_self() mainBundle];
      v18 = [v17 bundleIdentifier];

      if (v18)
      {
        v19 = sub_19A7AB014();
        v21 = v20;

        if (v19 == 0xD000000000000013 && 0x800000019A7CB470 == v21)
        {

LABEL_21:
          v23 = sub_19A7A9364();
          v24 = sub_19A7AB584();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_19A5EE000, v23, v24, "Responder to restore is not in a window, dismissing", v25, 2u);
            MEMORY[0x19A907A30](v25, -1, -1);
          }

          sub_19A6FFDDC();
          v26 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingViewControllers;
          swift_beginAccess();
          v27 = *(v2 + v26);
          if ((v27 & 0xC000000000000001) != 0)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = sub_19A7ABDF4() | 0x8000000000000000;
          }

          else
          {
            v32 = -1 << *(v27 + 32);
            v29 = ~v32;
            v28 = v27 + 64;
            v33 = -v32;
            if (v33 < 64)
            {
              v34 = ~(-1 << v33);
            }

            else
            {
              v34 = -1;
            }

            v30 = v34 & *(v27 + 64);
            v31 = v27;
          }

          v35 = 0;
          v36 = (v29 + 64) >> 6;
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          while (1)
          {
            v37 = v35;
            v38 = v30;
            v39 = v35;
            if (!v30)
            {
              break;
            }

LABEL_38:
            v40 = (v38 - 1) & v38;
            v41 = (v39 << 9) | (8 * __clz(__rbit64(v38)));
            v42 = *(*(v31 + 56) + v41);
            v43 = *(*(v31 + 48) + v41);
            v44 = v42;
            if (!v43)
            {
LABEL_44:
              sub_19A62B858();

              return;
            }

            while (1)
            {
              sub_19A70255C(v43, 0, 0, 0, 0);

              v35 = v39;
              v30 = v40;
              if ((v31 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_40:
              if (sub_19A7ABE24())
              {
                sub_19A5F5028(0, &qword_1EAFCB0E0);
                swift_dynamicCast();
                v43 = v48;
                swift_dynamicCast();
                v44 = v48;
                v39 = v35;
                v40 = v30;
                if (v48)
                {
                  continue;
                }
              }

              goto LABEL_44;
            }
          }

          while (1)
          {
            v39 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v39 >= v36)
            {
              goto LABEL_44;
            }

            v38 = *(v28 + 8 * v39);
            ++v37;
            if (v38)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
          return;
        }

        v22 = sub_19A7AC064();

        if (v22)
        {
          goto LABEL_21;
        }
      }
    }

    Strong = v47;
    goto LABEL_26;
  }
}

uint64_t sub_19A702CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A60F860;

  return sub_19A700A54(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19A702DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A702E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_19A702ECC()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) becomeFirstResponder];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_19A702F18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_19A5F5028(0, &qword_1ED8B2000);
    v6 = sub_19A7AB254();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);
}

uint64_t sub_19A702FFC(uint64_t a1)
{
  v2 = sub_19A7A97A4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_19A7A9A64();
}

uint64_t sub_19A7030C4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCEBA0);
  __swift_project_value_buffer(v0, qword_1EAFCEBA0);
  return sub_19A7A9374();
}

uint64_t sub_19A703144()
{
  result = sub_19A7AAFE4();
  qword_1EAFCEBB8 = result;
  return result;
}

id static NSNotificationName.stickerCreationProgress.getter()
{
  if (qword_1EAFCB628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAFCEBB8;

  return v1;
}

char *sub_19A7031D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v54 = a2;
  v55 = a3;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v52 - v6;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker] = 0;
  v7 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  v8 = sub_19A7A8F64();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_asset] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrack] = 0;
  v9 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackPreferredTransform];
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v9[48] = 1;
  v10 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescription] = 0;
  v12 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceDimmingColor;
  v16 = objc_opt_self();
  v17 = [v16 secondarySystemBackgroundColor];
  v18 = objc_opt_self();
  v19 = [v18 traitCollectionWithUserInterfaceStyle_];
  v20 = [v17 resolvedColorWithTraitCollection_];

  v21 = [v20 colorWithAlphaComponent_];
  *&v4[v15] = v21;
  v22 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceDimmingColor;
  v23 = [v16 systemBackgroundColor];
  v24 = [v18 traitCollectionWithUserInterfaceStyle_];
  v25 = [v23 resolvedColorWithTraitCollection_];

  v26 = [v25 colorWithAlphaComponent_];
  *&v4[v22] = v26;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView] = 0;
  v27 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_activityIndicator;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v27] = v28;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer] = 0;
  v29 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_stickerNotAvailableTip;
  *&v4[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  v31 = v52;
  v30 = v53;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_image] = v52;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhoto] = v30;
  v32 = &v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_localIdentifier];
  v33 = v55;
  *v32 = v54;
  *(v32 + 1) = v33;
  v34 = objc_allocWithZone(type metadata accessor for LiveButton());
  v35 = v31;
  v36 = v30;
  v37 = [v34 init];
  v38 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton;
  *&v4[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton] = v37;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = *&v4[v38];
  v40 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v39[v40] = 1;
  [v39 setNeedsUpdateConfiguration];
  v41 = type metadata accessor for StickerLivePhotoConfirmationController();
  v57.receiver = v4;
  v57.super_class = v41;
  v42 = objc_msgSendSuper2(&v57, sel_initWithNibName_bundle_, 0, 0);
  v43 = *&v42[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton];
  v44 = v42;
  [v43 addTarget:v44 action:sel_handleLiveButton forControlEvents:64];
  sub_19A7068E8();
  v45 = sub_19A7AB394();
  v46 = v56;
  (*(*(v45 - 8) + 56))(v56, 1, 1, v45);
  sub_19A7AB354();
  v47 = v44;
  v48 = sub_19A7AB344();
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v47;
  sub_19A6816F0(0, 0, v46, &unk_19A7BEE18, v49);

  sub_19A5F5028(0, &qword_1EAFCEC68);
  sub_19A7AB7D4();
  MEMORY[0x19A905AE0]();

  swift_unknownObjectRelease();

  return v47;
}

void sub_19A7037E0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = &OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition;
  if (v2 != 1)
  {
    v3 = &OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition;
  }

  v4 = *&v0[*v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19A7052B4();
    [v6 videoPreviewTimeRange];

    v7 = sub_19A703948();
    v8 = v5;
    sub_19A76425C(v4, v9, 0.25);
  }
}

char *sub_19A703948()
{
  v1 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_image);
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhoto);
    v6 = objc_allocWithZone(type metadata accessor for LivePhotoView());
    v7 = v4;
    v8 = v5;
    v9 = v7;
    v10 = v0;
    v11 = sub_19A76360C(v9, v8);
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v0 + v1);
    *(v10 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_19A703A08()
{
  v1 = v0;
  v2 = sub_19A7ABA34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem);
  }

  else
  {
    if (sub_19A7AA624())
    {
      sub_19A5F5028(0, &qword_1EAFCD118);
      sub_19A5F5028(0, &qword_1EAFCD110);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_19A7AB944();
      v6 = sub_19A7AB5E4();
    }

    else
    {
      sub_19A5F5028(0, &qword_1EAFCD108);
      sub_19A7ABA14();
      sub_19A5F5028(0, &qword_1EAFCD110);
      sub_19A7AB0A4();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_19A7AB944();
      v7 = sub_19A7ABA44();
      [v7 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    }

    v8 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_19A703C90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:0 completion:0];
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      sub_19A5FCD88(v4);
      swift_unknownObjectRelease();
    }
  }
}

id sub_19A703D38()
{
  v1 = v0;
  v2 = sub_19A7ABA34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem;
  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem);
  }

  else
  {
    if (sub_19A7AA624())
    {
      sub_19A5F5028(0, &qword_1EAFCD118);
      sub_19A5F5028(0, &qword_1EAFCD110);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_19A7AB944();
      v6 = sub_19A7AB5E4();
    }

    else
    {
      sub_19A5F5028(0, &qword_1EAFCD108);
      sub_19A7ABA14();
      sub_19A5F5028(0, &qword_1EAFCD110);
      sub_19A7AB0A4();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_19A7AB944();
      v7 = sub_19A7ABA44();
      [v7 setRole_];
      v8 = v7;
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    }

    v9 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

void sub_19A703FE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_19A708790();
  }
}

id sub_19A70403C()
{
  v1 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_didTapLivePhotoView_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_19A7040C0()
{
  v46.receiver = v0;
  v46.super_class = type metadata accessor for StickerLivePhotoConfirmationController();
  objc_msgSendSuper2(&v46, sel_loadView);
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  [v1 setLeftBarButtonItem_];

  v3 = [v0 navigationItem];
  sub_19A7AB0A4();
  v4 = sub_19A7AAFE4();

  [v3 setTitle_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19A7B9920;
  *(v5 + 32) = sub_19A703A08();
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v5 + 48) = sub_19A703D38();
  sub_19A5F5028(0, &qword_1EAFCD118);
  v6 = sub_19A7AB234();

  [v0 setToolbarItems_];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = sub_19A703948();
  [v10 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = *&v0[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_activityIndicator];
  [result addSubview_];

  v14 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView;
  [*&v0[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView] setUserInteractionEnabled_];
  v15 = *&v0[v14];
  v16 = sub_19A70403C();
  [v15 addGestureRecognizer_];

  v17 = *&v0[v14];
  v18 = sub_19A7052B4();
  [v17 addInteraction_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_19A7B9930;
  v20 = [*&v0[v14] leftAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v22 = [result leftAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v19 + 32) = v23;
  v24 = [*&v0[v14] rightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = result;
  v26 = [result rightAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v19 + 40) = v27;
  v28 = [*&v0[v14] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = result;
  v30 = [result safeAreaLayoutGuide];

  v31 = [v30 centerYAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  *(v19 + 48) = v32;
  v33 = [*&v0[v14] topAnchor];
  result = [v0 view];
  if (result)
  {
    v34 = result;
    v35 = objc_opt_self();
    v36 = [v34 safeAreaLayoutGuide];

    v37 = [v36 topAnchor];
    v38 = [v33 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v37 multiplier:1.0];

    *(v19 + 56) = v38;
    v39 = [v13 centerXAnchor];
    v40 = [*&v0[v14] centerXAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v19 + 64) = v41;
    v42 = [v13 centerYAnchor];
    v43 = [*&v0[v14] centerYAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v19 + 72) = v44;
    sub_19A5F5028(0, &qword_1ED8B2030);
    v45 = sub_19A7AB234();

    [v35 activateConstraints_];

    [*&v0[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer] setEnabled_];
    result = [*&v0[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem] setEnabled_];
    *(*&v0[v14] + OBJC_IVAR____TtC10StickerKit13LivePhotoView_startPlaybackWhenReady) = 1;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_19A704804(void *a1)
{
  v2 = v1;
  v4 = sub_19A7A8FF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A703948();
  [a1 locationInView_];
  v10 = v9;
  v12 = v11;

  v13 = sub_19A7052B4();
  v14 = [v13 subjectIndexAtPoint_];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
    [v14 integerValue];
    sub_19A7A8FE4();
    v16 = sub_19A7A8FC4();
    (*(v5 + 8))(v7, v4);
    [v15 highlightSubjectAtIndexSet:v16 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    if (*(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache))
    {

      sub_19A6A1954();
    }
  }

  else
  {
    v17 = sub_19A7052B4();
    v18 = [*(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
    sub_19A7A8FD4();

    v19 = sub_19A7A8FC4();
    (*(v5 + 8))(v7, v4);
    [v17 highlightSubjectAtIndexSet:v19 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    if (*(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache))
    {

      sub_19A6A1954();
    }
  }
}

void sub_19A704AE8()
{
  v1 = v0;
  v2 = sub_19A7A8FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton);
  v7 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v6[v7] = (v6[v7] & 1) == 0;
  [v6 setNeedsUpdateConfiguration];
  v8 = sub_19A70403C();
  [v8 setEnabled_];

  if (v6[v7] == 1)
  {
    v9 = sub_19A7052B4();
    [v9 highlightSubjectAtIndexSet:0 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    if (*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache))
    {

      sub_19A6A1954();
    }

    v10 = sub_19A703948();
    sub_19A765330();
  }

  else
  {
    v11 = sub_19A703948();
    sub_19A765640();

    v12 = sub_19A7052B4();
    v13 = [*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) allSubjectIndexes];
    sub_19A7A8FD4();

    v14 = sub_19A7A8FC4();
    (*(v3 + 8))(v5, v2);
    [v12 highlightSubjectAtIndexSet:v14 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    if (*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache))
    {

      sub_19A6A1954();
    }
  }
}

uint64_t sub_19A704D94()
{
  v1 = v0;
  v2 = sub_19A7A8F64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v5 = *(v43 - 8);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCECE0);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = v15 + v14;
  v40 = v15;
  v41 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker;
  v17 = *(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker);
  if (v17)
  {
    v18 = v17;
    MEMORY[0x19A905020]();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v37 = *(v3 + 56);
  v38 = v3 + 56;
  v37(v16, v19, 1, v2);
  v20 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  swift_beginAccess();
  v39 = v20;
  sub_19A6240BC(v1 + v20, v16 + v13);
  sub_19A6240BC(v16, v12);
  sub_19A70B8BC(v12, v8);
  v42 = v3;
  v21 = *(v3 + 48);
  v22 = (v3 + 32);
  if (v21(v8, 1, v2) == 1)
  {
    sub_19A5F2B54(v8, &qword_1EAFCD800);
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = (v3 + 32);
    v36 = v1;
    v34 = *v22;
    v34(v45, v8, v2);
    v23 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_19A76C64C(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_19A76C64C(v24 > 1, v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v22 = v35;
    v34(&v23[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25], v45, v2);
    v1 = v36;
  }

  sub_19A6240BC(v16 + v13, v12);
  sub_19A70B8BC(v12, v8);
  if (v21(v8, 1, v2) == 1)
  {
    sub_19A5F2B54(v8, &qword_1EAFCD800);
  }

  else
  {
    v26 = *v22;
    (*v22)(v45, v8, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_19A76C64C(0, *(v23 + 2) + 1, 1, v23);
    }

    v27 = v42;
    v29 = *(v23 + 2);
    v28 = *(v23 + 3);
    if (v29 >= v28 >> 1)
    {
      v23 = sub_19A76C64C(v28 > 1, v29 + 1, 1, v23);
    }

    *(v23 + 2) = v29 + 1;
    v26(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v29], v45, v2);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_19A69E9BC(v23);

  v30 = *(v1 + v41);
  *(v1 + v41) = 0;

  v31 = v44;
  v37(v44, 1, 1, v2);
  v32 = v39;
  swift_beginAccess();
  sub_19A6264EC(v31, v1 + v32);
  return swift_endAccess();
}

id sub_19A7052B4()
{
  v1 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF9E8]) init];
    [v4 setDelegate_];
    v3 = v4;
    [v3 setSubjectViewUserInteractionDisabled_];
    v5 = sub_19A703948();
    [v5 addInteraction_];

    [v3 setUsesLightDimmingViewInLightMode_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19A705388()
{
  v1 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF9F0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_19A7053FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a4;
  v4[41] = sub_19A7AB354();
  v4[42] = sub_19A7AB344();
  v6 = sub_19A7AB2E4();
  v4[43] = v6;
  v4[44] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A705498, v6, v5);
}

uint64_t sub_19A705498()
{
  v1 = v0[40];
  v2 = [*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhoto) videoAsset];
  v0[45] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_asset);
  *(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_asset) = v2;
  v4 = v2;

  if (v4)
  {
    v5 = *MEMORY[0x1E6987608];
    v0[2] = v0;
    v0[7] = v0 + 38;
    v0[3] = sub_19A70564C;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCEC70);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A7067F8;
    v0[13] = &block_descriptor_21;
    v0[14] = v6;
    [v4 loadTracksWithMediaType:v5 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_19A70564C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_19A7060E0;
  }

  else
  {
    v5 = sub_19A70577C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19A70577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 304);
  if (v5 >> 62)
  {
    v6 = sub_19A7ABBE4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x19A906130](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE68140](v6, a2, a3, a4);
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;

LABEL_9:
  *(v4 + 376) = v8;
  v9 = *(v4 + 320);
  v10 = *(v9 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrack);
  *(v9 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrack) = v8;
  v8;

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEC80);
    v11 = sub_19A7A9134();
    *(v4 + 384) = v11;
    v12 = sub_19A7AB344();
    *(v4 + 392) = v12;
    v13 = swift_task_alloc();
    *(v4 + 400) = v13;
    *v13 = v4;
    v13[1] = sub_19A705950;
    a4 = MEMORY[0x1E69E85E0];
    v6 = v4 + 144;
    a2 = v11;
    a3 = v12;

    return MEMORY[0x1EEE68140](v6, a2, a3, a4);
  }

  v14 = *(v4 + 8);

  return v14();
}

uint64_t sub_19A705950()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A706294;
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A705A74;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19A705A74()
{
  v1 = v0[40];
  v2 = v0[18];
  v3 = v0[19];
  v0[52] = v2;
  v0[53] = v3;
  v4 = v0[20];
  v5 = v0[21];
  v0[54] = v4;
  v0[55] = v5;
  v6 = v0[22];
  v7 = v0[23];
  v0[56] = v6;
  v0[57] = v7;
  v8 = v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackPreferredTransform;
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEC88);
  v9 = sub_19A7A9114();
  v0[58] = v9;
  v10 = sub_19A7AB344();
  v0[59] = v10;
  v11 = swift_task_alloc();
  v0[60] = v11;
  *v11 = v0;
  v11[1] = sub_19A705B98;
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 36, v9, v10, v12);
}

uint64_t sub_19A705B98()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A706460;
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A705CBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19A705CBC()
{
  v1 = *(v0 + 320);
  v14 = *(v0 + 288);
  v2 = v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSize;
  v3 = *(v0 + 416);
  v4 = *(v0 + 432);
  v5 = *(v0 + 448);
  *v2 = v14;
  *(v2 + 16) = 0;
  *(v0 + 192) = v3;
  *(v0 + 208) = v4;
  *(v0 + 224) = v5;
  v6 = CGSizeApplyAffineTransform(v14, (v0 + 192));
  v7 = v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed;
  *v7 = fabs(v6.width);
  *(v7 + 8) = fabs(v6.height);
  *(v7 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEC90);
  v8 = sub_19A7A9124();
  *(v0 + 496) = v8;
  v9 = sub_19A7AB344();
  *(v0 + 504) = v9;
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_19A705DF8;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE68140](v0 + 312, v8, v9, v11);
}

uint64_t sub_19A705DF8()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A70662C;
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = sub_19A705F1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19A705F1C()
{

  v1 = *(v0 + 312);
  if (v1 >> 62)
  {
    result = sub_19A7ABBE4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x19A906130](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 320);
  v6 = *(v5 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescription);
  *(v5 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescription) = v4;
  v7 = v4;

  if (v4)
  {
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 376);
    v11 = *(v0 + 360);
    v12 = *(v0 + 320);
    v20 = *(v0 + 432);
    v21 = *(v0 + 416);
    Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
    v14 = v12 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions;
    *v14 = Dimensions;
    *(v14 + 8) = 0;
    v23.width = Dimensions;
    v23.height = (Dimensions >> 32);
    v15 = v12 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSize;
    *v15 = v23;
    *(v15 + 16) = 0;
    *(v0 + 240) = v21;
    *(v0 + 256) = v20;
    *(v0 + 272) = v9;
    *(v0 + 280) = v8;
    v16 = CGSizeApplyAffineTransform(v23, (v0 + 240));

    v17 = v12 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed;
    *v17 = fabs(v16.width);
    *(v17 + 8) = fabs(v16.height);
    *(v17 + 16) = 0;
  }

  else
  {
    v18 = *(v0 + 376);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_19A7060E0()
{
  v1 = v0[45];

  swift_willThrow();

  v2 = v0[46];
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCEBA0);
  v4 = v2;
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB584();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_19A5EE000, v5, v6, "Error retrieving asset properties: %@", v7, 0xCu);
    sub_19A5F2B54(v8, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v8, -1, -1);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_19A706294()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[51];
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCEBA0);
  v5 = v3;
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A5EE000, v6, v7, "Error retrieving asset properties: %@", v8, 0xCu);
    sub_19A5F2B54(v9, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_19A706460()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[61];
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCEBA0);
  v5 = v3;
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A5EE000, v6, v7, "Error retrieving asset properties: %@", v8, 0xCu);
    sub_19A5F2B54(v9, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_19A70662C()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[65];
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCEBA0);
  v5 = v3;
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A5EE000, v6, v7, "Error retrieving asset properties: %@", v8, 0xCu);
    sub_19A5F2B54(v9, &unk_1EAFCD7D0);
    MEMORY[0x19A907A30](v9, -1, -1);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_19A7067F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_19A5F5028(0, &qword_1EAFCEC98);
    **(*(v4 + 64) + 40) = sub_19A7AB254();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_19A7068E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_19A7A8DF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  v12 = sub_19A7052B4();
  [v12 setAnalysis_];

  v13 = [objc_opt_self() systemPhotoLibraryURL];
  sub_19A7A8D94();

  sub_19A7A8D54();
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_19A7A8DD4();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A5F2B54(v4, &qword_1EAFCDA28);
    if (qword_1EAFCB620 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1EAFCEBA0);
    v16 = sub_19A7A9364();
    v17 = sub_19A7AB584();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_19A5EE000, v16, v17, "Cannot create Photo Library URL", v18, 2u);
      MEMORY[0x19A907A30](v18, -1, -1);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    [*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_image) size];
    v20 = v19;
    v22 = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DF9F8]);
    v24 = sub_19A7AAFE4();
    v25 = sub_19A7A8D64();
    v26 = [v23 initWithLocalIdentifier:v24 photoLibraryURL:v25 imageSize:32 requestType:{v20, v22}];

    v27 = sub_19A705388();
    if (v26)
    {
      v28 = v27;
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_19A70B81C;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A65E348;
      aBlock[3] = &block_descriptor_126_0;
      v30 = _Block_copy(aBlock);
      v31 = v26;

      [v28 processRequest:v31 progressHandler:0 completionHandler:v30];
      _Block_release(v30);

      v14(v11, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_19A706D40(uint64_t a1)
{
  v2 = sub_19A7AA764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AA7B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_19A7052B4();
    [v12 setAnalysis_];

    v13 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction;
    [*&v11[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] set:*&v11[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_image] photosImageForRemoveBackground:?];
    [*&v11[v13] setActiveInteractionTypes_];
    sub_19A5F5028(0, &qword_1ED8B2040);
    v14 = sub_19A7AB794();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    aBlock[4] = sub_19A70B824;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A6815D4;
    aBlock[3] = &block_descriptor_132;
    v16 = _Block_copy(aBlock);
    v19 = v6;
    v17 = v16;
    v18 = v11;

    sub_19A7AA784();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19A70B874(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
    sub_19A612560();
    sub_19A7ABB54();
    MEMORY[0x19A905BE0](0, v9, v5, v17);
    _Block_release(v17);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_19A707090(unint64_t a1, uint64_t a2, void *a3, void *a4, id a5)
{
  v53 = a3;
  v8 = sub_19A7AABD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - v13;
  v59 = sub_19A7A9304();
  v15 = *(v59 - 8);
  v16 = MEMORY[0x1EEE9AC00](v59);
  v56 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v55 = &v44 - v19;
  if (a1)
  {
    v60 = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
LABEL_33:
      v20 = sub_19A7ABBE4();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v11;
    v49 = v9;
    v50 = v8;
    v51 = a4;
    v52 = a5;
    if (v20)
    {
      v11 = 0;
      v58 = a1 & 0xC000000000000001;
      v9 = (v15 + 48);
      v46 = (v15 + 16);
      v47 = (v15 + 32);
      v45 = (v15 + 8);
      v54 = MEMORY[0x1E69E7CC0];
      v57 = v20;
      do
      {
        v15 = v11;
        while (1)
        {
          if (v58)
          {
            v21 = MEMORY[0x19A906130](v15, a1);
          }

          else
          {
            if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v21 = *(a1 + 8 * v15 + 32);
          }

          a4 = v21;
          v11 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          a5 = [v21 type];
          sub_19A7AB014();
          v8 = v22;

          sub_19A7A9314();
          if ((*v9)(v14, 1, v59) != 1)
          {
            break;
          }

          sub_19A5F2B54(v14, &qword_1EAFCD820);
          ++v15;
          if (v11 == v57)
          {
            goto LABEL_23;
          }
        }

        v23 = v55;
        v8 = v59;
        (*v47)(v55, v14, v59);
        a5 = [a4 data];
        v54 = sub_19A7A8E34();
        v44 = v24;

        (*v46)(v56, v23, v8);
        [a4 size];
        v25 = [a4 role];
        if (v25)
        {
          a5 = v25;
          sub_19A7AB014();
        }

        else
        {
          sub_19A7AACB4();
        }

        sub_19A7AAD24();
        sub_19A7AACD4();

        v26 = (*v45)(v55, v59);
        MEMORY[0x19A905660](v26);
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a5 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_19A7AB274();
        }

        sub_19A7AB2A4();
        v54 = v60;
      }

      while (v11 != v57);
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:
    v28 = v51;
    v27 = v52;
    v29 = v48;
    v30 = v53;
    if (v53)
    {
      v31 = v53;
      if (qword_1EAFCB620 != -1)
      {
        swift_once();
      }

      v32 = sub_19A7A9384();
      __swift_project_value_buffer(v32, qword_1EAFCEBA0);
      v33 = v30;
      v34 = sub_19A7A9364();
      v35 = sub_19A7AB584();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_19A5EE000, v34, v35, "Error in creating live photo sticker: %@ ", v36, 0xCu);
        sub_19A5F2B54(v37, &unk_1EAFCD7D0);
        MEMORY[0x19A907A30](v37, -1, -1);
        MEMORY[0x19A907A30](v36, -1, -1);
      }

      else
      {
      }
    }

    sub_19A7AAF14();
    v49[13](v29, *MEMORY[0x1E69D46E8], v50);
    v40 = sub_19A7AAE64();
    v41 = swift_allocObject();
    *(v41 + 16) = v28;
    *(v41 + 24) = v27;
    v42 = v28;
    v43 = v27;
    Sticker.saveToStore(completionHandler:)(sub_19A70B734, v41);
  }

  return result;
}

void sub_19A707730(void *a1, void *a2, char *a3, void *a4)
{
  v84 = a4;
  v7 = sub_19A7A8FF4();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A7A8C04();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A7A8F64();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  if (a1)
  {
    v75 = v15;
    v76 = v7;
    v23 = *&a3[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker];
    *&a3[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker] = a1;
    v24 = a1;

    sub_19A7AADD4();
    v25 = a3;
    v26 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
    swift_beginAccess();
    sub_19A6264EC(v22, v25 + v26);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
    v27 = *(v12 + 72);
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = swift_allocObject();
    *(v29 + 1) = xmmword_19A7B6C30;
    v77 = v24;
    MEMORY[0x19A905020]();
    v30 = v25 + v26;
    v31 = v25;
    sub_19A6240BC(v30, v20);
    if ((*(v12 + 48))(v20, 1, v11) == 1)
    {
      sub_19A5F2B54(v20, &qword_1EAFCD800);
    }

    else
    {
      v42 = v78;
      v72 = *(v12 + 32);
      v72(v78, v20, v11);
      v43 = *(v12 + 16);
      v73 = v11;
      v43(v75, v42, v11);
      v45 = v29[2];
      v44 = v29[3];
      v74 = v29;
      if (v45 >= v44 >> 1)
      {
        v74 = sub_19A76C64C(v44 > 1, v45 + 1, 1, v74);
      }

      v46 = v73;
      (*(v12 + 8))(v78, v73);
      v29 = v74;
      v47 = v75;
      v74[2] = v45 + 1;
      v72(v29 + v28 + v45 * v27, v47, v46);
      v31 = v25;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v49 = v76;
    if (Strong)
    {
      v50 = sub_19A7052B4();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_beginAccess();
        v51 = swift_unknownObjectWeakLoadStrong();
        if (v51)
        {
          [v51 keepInteractionAliveWithInteraction_];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v31 = v25;
      }

      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7BECA0;
    *(inited + 32) = 1701869940;
    v53 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = 0x6E69676562;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 72) = v53;
    strcpy((inited + 80), "stickerScore");
    v54 = MEMORY[0x1E69E63B0];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = 0x3FF0000000000000;
    *(inited + 120) = v54;
    *(inited + 128) = 0x73736572676F7270;
    *(inited + 136) = 0xE800000000000000;
    v55 = MEMORY[0x1E69E6448];
    *(inited + 144) = 0;
    *(inited + 168) = v55;
    *(inited + 176) = 0x4972656B63697473;
    *(inited + 184) = 0xEA00000000007344;
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
    *(inited + 192) = v29;
    swift_bridgeObjectRetain_n();
    v56 = sub_19A69C220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCE0);
    swift_arrayDestroy();
    if (qword_1EAFCB628 != -1)
    {
      swift_once();
    }

    v85 = 0u;
    v86 = 0u;
    v57 = qword_1EAFCEBB8;
    sub_19A64EC2C(v56);

    v58 = v79;
    sub_19A7A8BD4();
    v59 = [objc_opt_self() defaultCenter];
    v60 = sub_19A7A8BB4();
    [v59 postNotification_];

    (*(v80 + 8))(v58, v81);
    v61 = v84;
    v62 = [v84 selectedSubjectIndexes];
    v63 = v82;
    sub_19A7A8FD4();

    v64 = sub_19A7A8FC4();
    (*(v83 + 8))(v63, v49);
    v65 = sub_19A7AB234();
    v66 = swift_allocObject();
    v66[2] = v31;
    v66[3] = v29;
    v66[4] = 0x3FF0000000000000;
    v87 = sub_19A70B73C;
    v88 = v66;
    *&v85 = MEMORY[0x1E69E9820];
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_19A708440;
    *(&v86 + 1) = &block_descriptor_110;
    v67 = _Block_copy(&v85);
    v68 = v31;

    v69 = swift_allocObject();
    v69[2] = v68;
    v69[3] = v29;
    v69[4] = 0x3FF0000000000000;
    v87 = sub_19A70B798;
    v88 = v69;
    *&v85 = MEMORY[0x1E69E9820];
    *(&v85 + 1) = 1107296256;
    *&v86 = sub_19A702F18;
    *(&v86 + 1) = &block_descriptor_116;
    v70 = _Block_copy(&v85);
    v71 = v68;

    [v61 createStickerRepresentationsAtIndexSet:v64 type:2 stickerIDs:v65 progress:v67 completion:v70];

    _Block_release(v70);
    _Block_release(v67);
  }

  else if (a2)
  {
    v32 = a2;
    if (qword_1EAFCB620 != -1)
    {
      swift_once();
    }

    v33 = sub_19A7A9384();
    __swift_project_value_buffer(v33, qword_1EAFCEBA0);
    v34 = a2;
    v35 = sub_19A7A9364();
    v36 = sub_19A7AB584();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v85 = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_19A7AC124();
      v41 = sub_19A62540C(v39, v40, &v85);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_19A5EE000, v35, v36, "Unable to save sticker to store: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x19A907A30](v38, -1, -1);
      MEMORY[0x19A907A30](v37, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_19A70816C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_19A7A8C04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7BECA0;
  *(inited + 32) = 1701869940;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x657461647075;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v13;
  strcpy((inited + 80), "stickerScore");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v14 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a2;
  *(inited + 120) = v14;
  *(inited + 128) = 0x73736572676F7270;
  *(inited + 136) = 0xE800000000000000;
  v15 = a1;
  v16 = MEMORY[0x1E69E6448];
  *(inited + 144) = v15;
  *(inited + 168) = v16;
  *(inited + 176) = 0x4972656B63697473;
  *(inited + 184) = 0xEA00000000007344;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
  *(inited + 192) = a5;

  v17 = sub_19A69C220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCE0);
  swift_arrayDestroy();
  if (qword_1EAFCB628 != -1)
  {
    swift_once();
  }

  memset(v22, 0, sizeof(v22));
  v18 = qword_1EAFCEBB8;
  sub_19A64EC2C(v17);

  sub_19A7A8BD4();
  v19 = [objc_opt_self() defaultCenter];
  v20 = sub_19A7A8BB4();
  [v19 postNotification_];

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_19A708440(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  sub_19A7A8F64();
  v4 = sub_19A7AB254();

  v3(v4, a2);
}

uint64_t sub_19A7084C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_19A7A8C04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7BECA0;
  *(inited + 32) = 1701869940;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 6581861;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v13;
  strcpy((inited + 80), "stickerScore");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v14 = MEMORY[0x1E69E63B0];
  *(inited + 96) = a1;
  *(inited + 120) = v14;
  *(inited + 128) = 0x73736572676F7270;
  *(inited + 136) = 0xE800000000000000;
  v15 = MEMORY[0x1E69E6448];
  *(inited + 144) = 1120403456;
  *(inited + 168) = v15;
  *(inited + 176) = 0x4972656B63697473;
  *(inited + 184) = 0xEA00000000007344;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
  *(inited + 192) = a6;

  v16 = sub_19A69C220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFCE0);
  swift_arrayDestroy();
  if (qword_1EAFCB628 != -1)
  {
    swift_once();
  }

  memset(v21, 0, sizeof(v21));
  v17 = qword_1EAFCEBB8;
  sub_19A64EC2C(v16);

  sub_19A7A8BD4();
  v18 = [objc_opt_self() defaultCenter];
  v19 = sub_19A7A8BB4();
  [v18 postNotification_];

  return (*(v9 + 8))(v11, v8);
}

void sub_19A708790()
{
  v1 = v0;
  v2 = sub_19A7A8FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker;
  v10 = *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker];
  if (v10)
  {
    v11 = *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton];
    v12 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
    swift_beginAccess();
    if (*(v11 + v12) == 1)
    {
      *&v1[v9] = 0;
      v13 = sub_19A7A8F64();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      v14 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
      swift_beginAccess();
      sub_19A6264EC(v8, &v1[v14]);
      swift_endAccess();
      v15 = sub_19A703948();
      v16 = *(*&v15[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
      [v16 pause];

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_19A70A894(v1, v10, 1);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v21 = v10;
      sub_19A704D94();
      v22 = sub_19A7052B4();
      v23 = [*&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] selectedSubjectIndexes];
      sub_19A7A8FD4();

      v24 = sub_19A7A8FC4();
      (*(v3 + 8))(v5, v2);
      sub_19A7A8F64();
      v25 = sub_19A7AB234();
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      aBlock[4] = sub_19A70B7A4;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A702F18;
      aBlock[3] = &block_descriptor_122;
      v27 = _Block_copy(aBlock);
      v28 = v1;

      [v22 createStickerRepresentationsAtIndexSet:v24 type:5 stickerIDs:v25 progress:0 completion:v27];

      _Block_release(v27);
    }
  }

  else
  {
    if (qword_1EAFCB620 != -1)
    {
      swift_once();
    }

    v17 = sub_19A7A9384();
    __swift_project_value_buffer(v17, qword_1EAFCEBA0);
    v29 = sub_19A7A9364();
    v18 = sub_19A7AB584();
    if (os_log_type_enabled(v29, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_19A5EE000, v29, v18, "We don't have a live photo sticker to confirm", v19, 2u);
      MEMORY[0x19A907A30](v19, -1, -1);
    }

    v20 = v29;
  }
}

void sub_19A708C14(uint64_t a1, uint64_t a2, void *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_19A70A320(v29);
      v5 = 0.0;
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      if ((v30 & 1) == 0)
      {
        v7 = *&v29[2];
        v8 = *&v29[3];
        v5 = *v29;
        v6 = *&v29[1];
      }

      v9 = sub_19A703948();
      [v9 convertRect:0 toView:{v5, v6, v7, v8}];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      sub_19A78D368(v11, v13, v15, v17);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a3)
  {
    v18 = a3;
    if (qword_1EAFCB620 != -1)
    {
      swift_once();
    }

    v19 = sub_19A7A9384();
    __swift_project_value_buffer(v19, qword_1EAFCEBA0);
    v20 = a3;
    v21 = sub_19A7A9364();
    v22 = sub_19A7AB584();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_19A7AC124();
      v27 = sub_19A62540C(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_19A5EE000, v21, v22, "Failed to create sticker representations. %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x19A907A30](v24, -1, -1);
      MEMORY[0x19A907A30](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_19A708ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StickerNotAvailableTip(0);
  v4[4] = swift_task_alloc();
  sub_19A7AB354();
  v4[5] = sub_19A7AB344();
  v6 = sub_19A7AB2E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A708F98, v6, v5);
}

uint64_t sub_19A708F98()
{
  sub_19A7A9624();
  sub_19A65F298(v0[2] + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_stickerNotAvailableTip, v0[4]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_19A70B874(&qword_1EAFCD0F8, type metadata accessor for StickerNotAvailableTip);
  *v1 = v0;
  v1[1] = sub_19A65E5A8;
  v3 = v0[3];

  return MEMORY[0x1EEDE6730](v3, v2);
}

id sub_19A709304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerLivePhotoConfirmationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_19A7094FC(void *a1)
{
  v1 = a1;
  v2 = [v1 livePhoto];
  if (v2)
  {
    v3 = v2;
    [v2 size];
    v5 = v4;
  }

  else
  {

    return 0.0;
  }

  return v5;
}

double PHLivePhotoView.intrinsicContentSize.getter()
{
  v1 = [v0 livePhoto];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 size];
  v4 = v3;

  return v4;
}

uint64_t type metadata accessor for StickerLivePhotoConfirmationController()
{
  result = qword_1EAFCEC48;
  if (!qword_1EAFCEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A709650()
{
  sub_19A7097FC(319, &qword_1ED8B3718, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19A7097FC(319, &qword_1EAFCEC60, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_19A7097FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_19A709870(void *a1)
{
  v2 = v1;
  v4 = sub_19A7A8FF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v8 = sub_19A7A9384();
  __swift_project_value_buffer(v8, qword_1EAFCEBA0);
  v9 = sub_19A7A9364();
  v10 = sub_19A7AB564();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19A5EE000, v9, v10, "did complete subject analysis", v11, 2u);
    MEMORY[0x19A907A30](v11, -1, -1);
  }

  if ([a1 isSubjectHighlightAvailable])
  {
    v12 = sub_19A703D38();
    [v12 setEnabled_];

    v13 = sub_19A7052B4();
    v14 = [v13 selectedSubjectIndexes];
    sub_19A7A8FD4();

    v15 = sub_19A7A8FC4();
    (*(v5 + 8))(v7, v4);
    sub_19A7A8F64();
    v16 = MEMORY[0x1E69E7CC0];
    v17 = sub_19A7AB234();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v13;
    v42 = sub_19A70B724;
    v43 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A702F18;
    v41 = &block_descriptor_101_0;
    v19 = _Block_copy(aBlock);
    v20 = v2;
    v21 = v13;

    [v21 createStickerRepresentationsAtIndexSet:v15 type:5 stickerIDs:v17 progress:0 completion:v19];

    _Block_release(v19);
    type metadata accessor for StickerUIPreviewCache();
    v22 = swift_allocObject();
    v23 = sub_19A69D18C(v16);
    *(v22 + 16) = a1;
    *(v22 + 24) = v23;
    v24 = a1;
    sub_19A6A1954();
    *&v20[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache] = v22;

    return;
  }

  v25 = sub_19A7A9364();
  v26 = sub_19A7AB584();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_19A5EE000, v25, v26, "no subject highlight available", v27, 2u);
    MEMORY[0x19A907A30](v27, -1, -1);
  }

  v28 = sub_19A703D38();
  v39 = [v28 customView];

  if (!v39)
  {
    goto LABEL_17;
  }

  v29 = sub_19A703A08();
  v30 = [v29 customView];

  if (!v30)
  {

LABEL_17:
    sub_19A7A9604();
    v41 = type metadata accessor for StickerNotAvailableTip(0);
    v42 = sub_19A70B874(&qword_1EAFCD0F8, type metadata accessor for StickerNotAvailableTip);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
    sub_19A65F298(&v2[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_stickerNotAvailableTip], boxed_opaque_existential_1);
    v36 = *&v2[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem];
    v37 = sub_19A7A9614();
    [v2 presentViewController:v37 animated:1 completion:0];
    swift_unknownObjectWeakAssign();

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_19A7B6C40;
  *(v31 + 32) = v30;
  v32 = v30;
  v33 = sub_19A794190(v39, v31);

  if (v33)
  {
    [v2 presentViewController:v33 animated:1 completion:0];
  }

  v34 = v39;
}

void sub_19A709E64(void *a1, void *a2)
{
  v4 = [a1 sourceImage];
  [a1 compositionTime];
  v5 = sub_19A70A08C(v4, *&v13.a, *&v13.b, *&v13.c, a2);
  [a1 renderSize];
  v7 = v6;
  [v4 extent];
  v8 = (v7 - CGRectGetWidth(v14)) * 0.5;
  [a1 renderSize];
  v10 = v9;
  [v4 extent];
  Height = CGRectGetHeight(v15);
  CGAffineTransformMakeTranslation(&v13, v8, (v10 - Height) * 0.5);
  v12 = [v5 imageByApplyingTransform_];
  [a1 finishWithImage:v12 context:0];
}

void sub_19A709FAC(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + *a3);
    v7 = Strong;
    v8 = v6;
    sub_19A709E64(a1, v8);
  }
}

id sub_19A70A08C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v11 = HIDWORD(a3);
  v12 = sub_19A7052B4();
  *&v47.a = a2;
  *&v47.b = __PAIR64__(v11, v8);
  *&v47.c = a4;
  v13 = [v12 videoPreviewSubjectMatteAtCompositionTime_];

  if (!v13)
  {
    return [objc_allocWithZone(MEMORY[0x1E695F658]) init];
  }

  v14 = v13;
  [a1 extent];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v14 extent];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v48.origin.x = v24;
  v48.origin.y = v26;
  v48.size.width = v28;
  v48.size.height = v30;
  if (!CGRectIsEmpty(v48))
  {
    v49.origin.x = v16;
    v49.origin.y = v18;
    v49.size.width = v20;
    v49.size.height = v22;
    rect = v22;
    v31 = v20;
    v32 = v18;
    v33 = v16;
    Width = CGRectGetWidth(v49);
    v50.origin.x = v24;
    v50.origin.y = v26;
    v50.size.width = v28;
    v50.size.height = v30;
    v35 = Width / CGRectGetWidth(v50);
    v51.origin.x = v33;
    v51.origin.y = v32;
    v51.size.width = v31;
    v51.size.height = rect;
    Height = CGRectGetHeight(v51);
    v52.origin.x = v24;
    v52.origin.y = v26;
    v52.size.width = v28;
    v52.size.height = v30;
    v37 = CGRectGetHeight(v52);
    CGAffineTransformMakeScale(&v47, v35, Height / v37);
    v38 = [v14 imageByApplyingTransform_];

    v14 = v38;
  }

  v39 = (v5 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackPreferredTransform);
  if ((*(v5 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackPreferredTransform + 48) & 1) == 0)
  {
    v40 = v39[1];
    *&v47.a = *v39;
    *&v47.c = v40;
    *&v47.tx = v39[2];
    if ((vk_imageOrientationFromTransform() & 0xFFFFFFFFFFFFFFFCLL) == 4)
    {
      v41 = [v14 imageByApplyingCGOrientation_];

      v14 = v41;
    }
  }

  v42 = [a5 CGColor];
  v43 = [objc_allocWithZone(MEMORY[0x1E695F610]) initWithCGColor_];

  v44 = sub_19A70B5F4(v43, a1, v14);
  return v44;
}

void sub_19A70A320(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache) && (, sub_19A6A17B4(v48), , v48[0]))
  {
    Width = *&v48[3];
    v6 = *&v48[4];
    v4 = *&v48[1];
    v7 = *&v48[2];
    sub_19A5F2B54(v48, &qword_1EAFCD120);
    v8 = 0;
  }

  else
  {
    v8 = 1;
    v7 = 0.0;
    Width = 0.0;
    v6 = 0.0;
  }

  v9 = *(v1 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton);
  v10 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  if (*(v9 + v10) == 1)
  {
    v11 = sub_19A703948();
    v12 = *(*&v11[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
    if (v12)
    {
      [v12 currentTime];

      if ((*(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed + 16) & 1) == 0)
      {
        v13 = (v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed);
        if ((*(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed + 16) & 1) == 0)
        {
          v43 = *(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed);
          v38 = *v13;
          v40 = v13[1];
          v14 = *(v2 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView);
          sub_19A76597C();
          v4 = v15;
          v7 = v16;
          Width = v17;
          v6 = v18;

          v19 = sub_19A7052B4();
          [v19 videoPreviewNormalizedCropRect];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v62.origin.x = 0.0;
          v62.origin.y = 0.0;
          v62.size.width = 0.0;
          v62.size.height = 0.0;
          v49.origin.x = v21;
          v41 = v23;
          v49.origin.y = v23;
          v49.size.width = v25;
          v49.size.height = v27;
          if (CGRectEqualToRect(v49, v62))
          {
            if (qword_1EAFCB620 != -1)
            {
              swift_once();
            }

            v28 = sub_19A7A9384();
            __swift_project_value_buffer(v28, qword_1EAFCEBA0);
            v29 = sub_19A7A9364();
            v30 = sub_19A7AB584();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_19A5EE000, v29, v30, "Could not get video preview normalized crop rect.", v31, 2u);
              MEMORY[0x19A907A30](v31, -1, -1);
            }

            v8 = 0;
          }

          else
          {
            v50.origin.x = v4;
            v50.origin.y = v7;
            v50.size.width = Width;
            v50.size.height = v6;
            v32 = CGRectGetWidth(v50) / v38;
            v51.origin.x = v4;
            v51.origin.y = v7;
            v51.size.width = Width;
            v51.size.height = v6;
            Height = CGRectGetHeight(v51);
            CGAffineTransformMakeScale(&v47, v32, Height / v40);
            v34 = CGSizeApplyAffineTransform(v43, &v47);
            v52.origin.x = v21;
            v52.origin.y = v41;
            v52.size.width = v25;
            v52.size.height = v27;
            MidY = CGRectGetMidY(v52);
            v53.origin.x = 0.0;
            v53.origin.y = 0.0;
            v53.size.width = 1.0;
            v53.size.height = 1.0;
            v35 = CGRectGetMidY(v53);
            v8 = 0;
            if (v34.width != 0.0 && v43.height != 0.0)
            {
              v42 = v34.height * (v41 - (MidY - v35 + MidY - v35));
              v54.origin.x = v4;
              v54.origin.y = v7;
              v54.size.width = Width;
              v54.size.height = v6;
              v45 = (CGRectGetWidth(v54) - v34.width) * 0.5;
              v55.origin.x = v4;
              v55.origin.y = v7;
              v55.size.width = Width;
              v55.size.height = v6;
              v44 = (CGRectGetHeight(v55) - v34.height) * 0.5;
              v56.origin.x = v4;
              v56.origin.y = v7;
              v56.size.width = Width;
              v56.size.height = v6;
              MinX = CGRectGetMinX(v56);
              v57.origin.x = v21 * v34.width;
              v57.origin.y = v42;
              v57.size.width = v25 * v34.width;
              v57.size.height = v27 * v34.height;
              v46 = v45 + MinX + CGRectGetMinX(v57);
              v58.origin.x = v4;
              v58.origin.y = v7;
              v58.size.width = Width;
              v58.size.height = v6;
              MinY = CGRectGetMinY(v58);
              v59.origin.x = v21 * v34.width;
              v59.origin.y = v42;
              v59.size.width = v25 * v34.width;
              v59.size.height = v27 * v34.height;
              v7 = v44 + MinY + CGRectGetMinY(v59);
              v60.origin.x = v21 * v34.width;
              v60.origin.y = v42;
              v60.size.width = v25 * v34.width;
              v60.size.height = v27 * v34.height;
              Width = CGRectGetWidth(v60);
              v61.origin.x = v21 * v34.width;
              v61.origin.y = v42;
              v61.size.width = v25 * v34.width;
              v61.size.height = v27 * v34.height;
              v6 = CGRectGetHeight(v61);
              v8 = 0;
              v4 = v46;
            }
          }
        }
      }
    }

    else
    {
    }
  }

  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = Width;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
}

uint64_t sub_19A70A7D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A7053FC(a1, v4, v5, v6);
}

uint64_t sub_19A70A894(uint64_t a1, void *a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v34 - v6 + 40;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_19A70A320(v34);
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    if ((v35 & 1) == 0)
    {
      v12 = *&v34[2];
      v13 = *&v34[3];
      v10 = *v34;
      v11 = *&v34[1];
    }

    v14 = sub_19A703948();
    [v14 convertRect:0 toView:{v10, v11, v12, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stickerPhotosViewControllerWithDidCreate:a2 isLive:a3 & 1 sourceFrame:{v16, v18, v20, v22}];
      swift_unknownObjectRelease();
    }

    v24 = [v9 _hostedWindowScene];
    if (v24)
    {
      v25 = v24;
      MEMORY[0x19A905020]();
      v26 = sub_19A7A8F64();
      (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
      v27 = [objc_allocWithZone(type metadata accessor for StickerPhotosCreationResult()) init];
      v28 = *&v27[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker];
      *&v27[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sticker] = a2;
      v29 = a2;

      v30 = OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_stickerUUID;
      swift_beginAccess();
      sub_19A70B7AC(v7, &v27[v30]);
      swift_endAccess();
      v27[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_isLive] = a3 & 1;
      *&v27[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_representations] = 0;

      v31 = &v27[OBJC_IVAR____TtC10StickerKitP33_19FC6B4034B7CA5830119A91FEF116A027StickerPhotosCreationResult_sourceFrame];
      *v31 = v16;
      v31[1] = v18;
      v31[2] = v20;
      v31[3] = v22;
      v32 = sub_19A6DF438(1, v27, 1, 0);

      sub_19A5F2B54(v7, &qword_1EAFCD800);
      [v25 sendAction_];
    }

    if (qword_1ED8B2D18 != -1)
    {
      swift_once();
    }

    sub_19A778B08(1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A70ABB8()
{
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoSticker) = 0;
  v1 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhotoStickerRecentUUID;
  v2 = sub_19A7A8F64();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_asset) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrack) = 0;
  v3 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackPreferredTransform;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 48) = 1;
  v4 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackNaturalSizeTransformed;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescription) = 0;
  v6 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackFormatDescriptionDimensions;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSize;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_assetTrackEncodedSizeTransformed;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceDimmingColor;
  v10 = objc_opt_self();
  v11 = [v10 secondarySystemBackgroundColor];
  v12 = objc_opt_self();
  v13 = [v12 traitCollectionWithUserInterfaceStyle_];
  v14 = [v11 resolvedColorWithTraitCollection_];

  v15 = [v14 colorWithAlphaComponent_];
  *(v0 + v9) = v15;
  v16 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceDimmingColor;
  v17 = [v10 systemBackgroundColor];
  v18 = [v12 traitCollectionWithUserInterfaceStyle_];
  v19 = [v17 resolvedColorWithTraitCollection_];

  v20 = [v19 colorWithAlphaComponent_];
  *(v0 + v16) = v20;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___livePhotoView) = 0;
  v21 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_activityIndicator;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v21) = v22;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___cancelButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___addStickerButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalyzer) = 0;
  v23 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_stickerNotAvailableTip;
  *(v0 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  sub_19A7ABE34();
  __break(1u);
}

void sub_19A70AF74()
{
  v1 = v0;
  v2 = sub_19A7A8FF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAFCB620 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1EAFCEBA0);
  v7 = sub_19A7A9364();
  v8 = sub_19A7AB564();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19A5EE000, v7, v8, "Live sticker video preview complete", v9, 2u);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  v10 = [*&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_livePhoto] videoAsset];
  if (v10)
  {
    v11 = v10;
    v44 = v3;
    v12 = sub_19A7052B4();
    [v12 videoPreviewTimeRange];
    v50 = aBlock;
    v51 = v46;
    v52 = v47;
    v53 = v48;
    v54 = v49;

    sub_19A7AB8C4();
    v14 = v13;
    v15 = sub_19A7A9364();
    if (v14 <= 0.0)
    {
      v35 = sub_19A7AB584();
      if (os_log_type_enabled(v15, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_19A5EE000, v15, v35, "Live sticker video preview did not pass gating, falling back to still sticker.", v36, 2u);
        MEMORY[0x19A907A30](v36, -1, -1);
      }

      v37 = *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_liveButton];
      v38 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
      swift_beginAccess();
      v37[v38] = 0;
      [v37 setNeedsUpdateConfiguration];
      [v37 setHidden_];
      v39 = sub_19A703948();
      sub_19A765640();

      v40 = sub_19A7052B4();
      v41 = [*&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController____lazy_storage___imageAnalysisInteraction] allSubjectIndexes];
      sub_19A7A8FD4();

      v42 = sub_19A7A8FC4();
      (*(v44 + 8))(v5, v2);
      [v40 highlightSubjectAtIndexSet:v42 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

      if (*&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_previewCache])
      {

        sub_19A6A1954();

        return;
      }
    }

    else
    {
      v16 = sub_19A7AB564();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_19A5EE000, v15, v16, "Live sticker Video preview available", v17, 2u);
        MEMORY[0x19A907A30](v17, -1, -1);
      }

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_19A70B5AC;
      v49 = v18;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v46 = sub_19A6DB1A8;
      v47 = &block_descriptor_91;
      v19 = _Block_copy(&aBlock);
      v20 = objc_opt_self();

      v21 = [v20 videoCompositionWithAsset:v11 applyingCIFiltersWithHandler:v19];
      _Block_release(v19);

      v22 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition;
      v23 = *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition];
      *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_lightAppearanceComposition] = v21;

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_19A70B5D0;
      v49 = v24;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v46 = sub_19A6DB1A8;
      v47 = &block_descriptor_95;
      v25 = _Block_copy(&aBlock);

      v26 = [v20 videoCompositionWithAsset:v11 applyingCIFiltersWithHandler:v25];
      _Block_release(v25);

      v27 = OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition;
      v28 = *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition];
      *&v1[OBJC_IVAR____TtC10StickerKit38StickerLivePhotoConfirmationController_darkAppearanceComposition] = v26;

      v29 = [v1 traitCollection];
      v30 = [v29 userInterfaceStyle];

      if (v30 == 1)
      {
        v31 = v22;
      }

      else
      {
        v31 = v27;
      }

      v32 = *&v1[v31];
      v33 = v32;
      v34 = sub_19A703948();
      sub_19A76425C(v32, &v50, 0.25);
    }
  }
}

id sub_19A70B5F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() blendWithAlphaMaskFilter];
  [v6 setInputImage_];
  [v6 setMaskImage_];
  v7 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithColor_];
  [a2 extent];
  v8 = [v7 imageByCroppingToRect_];

  v9 = [v8 imageByCompositingOverImage_];
  [v6 setBackgroundImage_];

  result = [v6 outputImage];
  if (result)
  {
    v11 = result;

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_106Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A70B7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_19A70B824()
{
  v0 = sub_19A7052B4();
  [v0 beginImageSubjectAnalysisIfNecessary];
}

uint64_t sub_19A70B874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A70B8BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A70B964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A708ED0(a1, v4, v5, v6);
}

uint64_t sub_19A70BA5C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B2208);
  __swift_project_value_buffer(v0, qword_1ED8B2208);
  return sub_19A7A9374();
}

uint64_t sub_19A70BADC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  v6 = *(v1 + 32);
  v18 = sub_19A70E914;
  v19 = v1;
  os_unfair_lock_lock(v6 + 4);
  sub_19A6FBE70(&v20);
  os_unfair_lock_unlock(v6 + 4);
  v16 = v1;
  v17 = v20;
  v13 = sub_19A70E920;
  v14 = &v15;
  os_unfair_lock_lock(v6 + 4);
  sub_19A60FBD4(v7);
  os_unfair_lock_unlock(v6 + 4);
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_19A62D7FC(v5, a1);
  }

  if (qword_1EAFCB640 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v8, qword_1EAFDD760);
  sub_19A62D798(v10, a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_19A5F2B54(v5, &unk_1EAFCF180);
  }

  return result;
}

void sub_19A70BCC0(uint64_t a1)
{
  v36 = sub_19A7A9094();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for EmojiKeyboardWaypoint();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  _s9ConverterCMa();
  sub_19A66B648(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19A5F2B54(v10, &unk_1EAFCF180);
    if (qword_1ED8B2200 != -1)
    {
      swift_once();
    }

    v18 = sub_19A7A9384();
    __swift_project_value_buffer(v18, qword_1ED8B2208);
    v19 = v36;
    (*(v2 + 16))(v4, a1, v36);
    v20 = sub_19A7A9364();
    v21 = sub_19A7AB5A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      sub_19A70E8CC(&qword_1EAFCD6D8, MEMORY[0x1E6969C28]);
      v24 = sub_19A7AC024();
      v26 = v25;
      (*(v2 + 8))(v4, v19);
      v27 = sub_19A62540C(v24, v26, &v37);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_19A5EE000, v20, v21, "Failed to convert indexPath to waypoint %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x19A907A30](v23, -1, -1);
      MEMORY[0x19A907A30](v22, -1, -1);
    }

    else
    {

      (*(v2 + 8))(v4, v19);
    }
  }

  else
  {
    sub_19A62D7FC(v10, v17);
    if (qword_1ED8B2200 != -1)
    {
      swift_once();
    }

    v28 = sub_19A7A9384();
    __swift_project_value_buffer(v28, qword_1ED8B2208);
    sub_19A62D798(v17, v14);
    v29 = v36;
    (*(v2 + 16))(v7, a1, v36);
    v30 = sub_19A7A9364();
    v31 = sub_19A7AB574();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      v33 = *(v14 + 1);
      sub_19A62D860(v14);
      *(v32 + 4) = v33;
      *(v32 + 12) = 2048;
      v34 = sub_19A7A9064();
      (*(v2 + 8))(v7, v29);
      *(v32 + 14) = v34;
      _os_log_impl(&dword_19A5EE000, v30, v31, "Did visit %ld item in %ld", v32, 0x16u);
      MEMORY[0x19A907A30](v32, -1, -1);
    }

    else
    {
      (*(v2 + 8))(v7, v29);
      sub_19A62D860(v14);
    }

    sub_19A70C95C(v17);
    sub_19A62D860(v17);
  }
}

uint64_t sub_19A70C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for EmojiKeyboardWaypoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = *(v2 + 32);
  v26 = v2;
  v27 = a1;
  v23 = sub_19A70E8B0;
  v24 = &v25;
  os_unfair_lock_lock(v14 + 4);
  sub_19A60EEF8(v15);
  os_unfair_lock_unlock(v14 + 4);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    return sub_19A62D7FC(v13, v22);
  }

  v16 = v22;
  sub_19A5F2B54(v13, &unk_1EAFCF180);
  sub_19A7A8ED4();
  v17 = sub_19A7A8EF4();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 0, 1, v17);
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v19 = *(v4 + 28);
  v18(&v7[v19], 1, 1, v17);
  *v7 = a1;
  sub_19A66C134(v10, &v7[v19]);
  if (a1)
  {
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
  }

  sub_19A62D7FC(v7, v16);
  return sub_19A70C95C(v16);
}

uint64_t sub_19A70C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EmojiKeyboardWaypoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  swift_beginAccess();
  v13 = *(a1 + 24);
  if (*(v13 + 16) && (v14 = sub_19A695774(a2), (v15 & 1) != 0))
  {
    sub_19A62D798(*(v13 + 56) + *(v7 + 72) * v14, v12);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v7 + 56);
  v17(v12, v16, 1, v6);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_19A5F2B54(v12, &unk_1EAFCF180);
    return (v17)(a3, 1, 1, v6);
  }

  else
  {
    sub_19A62D798(v12, v9);
    sub_19A5F2B54(v12, &unk_1EAFCF180);
    sub_19A70C6B4(a3);
    return sub_19A62D860(v9);
  }
}

uint64_t sub_19A70C6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_19A7A8EF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = type metadata accessor for EmojiKeyboardWaypoint();
  sub_19A60F0CC(v2 + *(v16 + 28), v5, &unk_1EAFCE4E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19A5F2B54(v5, &unk_1EAFCE4E0);
LABEL_5:
    v21 = 1;
    v20 = v24;
    return (*(*(v16 - 8) + 56))(v20, v21, 1, v16);
  }

  (*(v7 + 32))(v15, v5, v6);
  sub_19A7A8EE4();
  sub_19A7A8E94();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v18 = sub_19A7A8EB4();
  v17(v13, v6);
  v17(v15, v6);
  if ((v18 & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = v24;
  sub_19A62D798(v2, v24);
  v20 = v19;
  v21 = 0;
  return (*(*(v16 - 8) + 56))(v20, v21, 1, v16);
}

uint64_t sub_19A70C95C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EmojiKeyboardWaypoint();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8B2200 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1ED8B2208);
  sub_19A62D798(a1, v6);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB574();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    v12 = sub_19A712D80();
    v14 = v13;
    sub_19A62D860(v6);
    v15 = sub_19A62540C(v12, v14, v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_19A5EE000, v8, v9, "Updating cache with %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x19A907A30](v11, -1, -1);
    MEMORY[0x19A907A30](v10, -1, -1);
  }

  else
  {

    v16 = sub_19A62D860(v6);
  }

  v17 = *(v2 + 32);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v22[-2] = v2;
  v22[-1] = a1;
  MEMORY[0x1EEE9AC00](v18);
  v22[-2] = sub_19A70E894;
  v22[-1] = v19;
  os_unfair_lock_lock(v17 + 4);
  sub_19A5F57B8(v20);
  os_unfair_lock_unlock(v17 + 4);
  return sub_19A70D2CC();
}

uint64_t sub_19A70CBAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = *a2;
  sub_19A62D798(a2, &v10 - v5);
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  sub_19A7300F4(v6, v7);
  result = swift_endAccess();
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_19A70CCBC()
{
  _s11PersistenceCMa();
  inited = swift_initStackObject();
  v2 = [objc_opt_self() standardUserDefaults];
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v2;
  v3 = *(v0 + 32);
  os_unfair_lock_lock(v3 + 4);
  sub_19A5F5774(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_setDeallocating();
}

void sub_19A70CD80(uint64_t a1)
{
  v2 = sub_19A62CD24();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCECF0);
    v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD988) - 8);
    v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_19A7B6C30;
    v7 = (v6 + v5);
    v8 = v4[14];
    *v7 = 0;
    if (qword_1EAFCB640 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for EmojiKeyboardWaypoint();
    v10 = __swift_project_value_buffer(v9, qword_1EAFDD760);
    sub_19A62D798(v10, v7 + v8);
    v11 = sub_19A69CAE4(v6);
    swift_setDeallocating();
    sub_19A5F2B54(v7, &qword_1EAFCD988);
    swift_deallocClassInstance();
    v3 = v11;
  }

  v12 = sub_19A70DE60(v3);

  swift_beginAccess();
  *(a1 + 24) = v12;

  v13 = sub_19A70D15C(v12);

  *(a1 + 16) = v13;
  if (qword_1ED8B2200 != -1)
  {
    swift_once();
  }

  v14 = sub_19A7A9384();
  __swift_project_value_buffer(v14, qword_1ED8B2208);

  v15 = sub_19A7A9364();
  v16 = sub_19A7AB574();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315394;
    type metadata accessor for UIKeyboardEmojiCategoryType(0);
    type metadata accessor for EmojiKeyboardWaypoint();
    sub_19A70E8CC(&qword_1EAFCC8D0, type metadata accessor for UIKeyboardEmojiCategoryType);

    v19 = sub_19A7AAF54();
    v21 = v20;

    v22 = sub_19A62540C(v19, v21, &v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_19A7AB064();
    v25 = sub_19A62540C(v23, v24, &v26);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_19A5EE000, v15, v16, "Did load from persistence %s for category %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A907A30](v18, -1, -1);
    MEMORY[0x19A907A30](v17, -1, -1);
  }
}

uint64_t sub_19A70D15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  sub_19A70D8B8(a1, v5);
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) == 1)
  {
    v10 = v5;
LABEL_5:
    sub_19A5F2B54(v10, &unk_1EAFCF180);
    return 0;
  }

  sub_19A70C6B4(v7);
  sub_19A62D860(v5);
  if (v9(v7, 1, v8) == 1)
  {
    v10 = v7;
    goto LABEL_5;
  }

  v12 = *v7;
  sub_19A62D860(v7);
  return v12;
}

uint64_t sub_19A70D2CC()
{
  v1 = sub_19A7AA7D4();
  v21 = *(v1 - 8);
  v22 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v19 - v5;
  v6 = sub_19A7AA764();
  v7 = MEMORY[0x1EEE9AC00](v6);
  if (*(v0 + 40))
  {

    sub_19A7AA7F4();
  }

  v8 = *(v0 + 32);
  MEMORY[0x1EEE9AC00](v7);
  *(&v19 - 2) = sub_19A70D89C;
  *(&v19 - 1) = v0;
  os_unfair_lock_lock(v8 + 4);
  sub_19A60F150(aBlock);
  os_unfair_lock_unlock(v8 + 4);
  v9 = aBlock[0];
  MEMORY[0x1EEE9AC00](v10);
  *(&v19 - 2) = sub_19A70E84C;
  *(&v19 - 1) = v0;
  os_unfair_lock_lock(v8 + 4);
  sub_19A6FB524(aBlock);
  os_unfair_lock_unlock(v8 + 4);
  v11 = aBlock[0];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  aBlock[4] = sub_19A70E868;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_22;
  _Block_copy(aBlock);
  v23 = MEMORY[0x1E69E7CC0];
  sub_19A70E8CC(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  sub_19A7ABB54();
  sub_19A7AA804();
  swift_allocObject();
  v13 = sub_19A7AA7E4();

  *(v0 + 40) = v13;

  sub_19A631AE0();
  v14 = sub_19A7AB794();
  sub_19A7AA7C4();
  v15 = v20;
  sub_19A7AA814();
  v16 = v22;
  v17 = *(v21 + 8);
  v17(v4, v22);
  sub_19A7AB714();

  return (v17)(v15, v16);
}

uint64_t sub_19A70D688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();

  v5 = sub_19A70DE60(v4);

  *(a1 + 24) = v5;

  *a2 = v5;
  return result;
}

uint64_t sub_19A70D720@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();

  v3 = sub_19A70D15C(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_19A70D790(uint64_t a1, void *a2)
{
  _s11PersistenceCMa();
  inited = swift_initStackObject();
  v5 = [objc_opt_self() standardUserDefaults];
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v5;
  sub_19A62C7D4(a1, a2);
  swift_setDeallocating();
}

uint64_t sub_19A70D830()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A70D8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v48 - v7;
  v8 = sub_19A7A8EF4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v48 - v13;
  v14 = type metadata accessor for EmojiKeyboardWaypoint();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  if (v24)
  {
    v59 = v17;
    v50 = a2;
    v25 = 0;
    v26 = __clz(__rbit64(v24));
    v27 = (v24 - 1) & v24;
    v28 = (v22 + 63) >> 6;
LABEL_9:
    v31 = *(a1 + 56);
    v49 = v18;
    v55 = *(v18 + 72);
    sub_19A62D798(v31 + v55 * v26, v20);
    v32 = (v9 + 48);
    v53 = (v9 + 8);
    v54 = (v9 + 32);
    v60 = a1;

    v51 = (v9 + 48);
    v52 = a1 + 64;
    v56 = v20;
    v57 = v12;
    while (v27)
    {
      v34 = v25;
LABEL_17:
      sub_19A62D798(*(v60 + 56) + (__clz(__rbit64(v27)) | (v34 << 6)) * v55, v63);
      v35 = v59;
      v36 = &v20[*(v59 + 28)];
      v37 = v61;
      sub_19A60F0CC(v36, v61, &unk_1EAFCE4E0);
      v38 = *v32;
      v39 = (*v32)(v37, 1, v8);
      v40 = v58;
      if (v39 == 1)
      {
        sub_19A7A8E74();
        if (v38(v37, 1, v8) != 1)
        {
          sub_19A5F2B54(v61, &unk_1EAFCE4E0);
        }
      }

      else
      {
        (*v54)(v62, v37, v8);
      }

      sub_19A60F0CC(v63 + *(v35 + 28), v40, &unk_1EAFCE4E0);
      if (v38(v40, 1, v8) == 1)
      {
        v41 = v57;
        sub_19A7A8E74();
        v42 = v8;
        if (v38(v40, 1, v8) != 1)
        {
          sub_19A5F2B54(v40, &unk_1EAFCE4E0);
        }
      }

      else
      {
        v41 = v57;
        (*v54)(v57, v40, v8);
        v42 = v8;
      }

      v27 &= v27 - 1;
      v43 = v62;
      v44 = sub_19A7A8EC4();
      v45 = *v53;
      (*v53)(v41, v42);
      v45(v43, v42);
      if (v44)
      {
        v20 = v56;
        sub_19A62D860(v56);
        result = sub_19A62D7FC(v63, v20);
        v25 = v34;
      }

      else
      {
        result = sub_19A62D860(v63);
        v25 = v34;
        v20 = v56;
      }

      v8 = v42;
      v32 = v51;
      v21 = v52;
    }

    while (1)
    {
      v34 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v34 >= v28)
      {

        v46 = v50;
        sub_19A62D7FC(v20, v50);
        return (*(v49 + 56))(v46, 0, 1, v59);
      }

      v27 = *(v21 + 8 * v34);
      ++v25;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = 0;
    v28 = (v22 + 63) >> 6;
    while (v28 - 1 != v24)
    {
      v25 = v24 + 1;
      v30 = *(a1 + 72 + 8 * v24);
      v29 -= 64;
      ++v24;
      if (v30)
      {
        v59 = v17;
        v50 = a2;
        v27 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) - v29;
        goto LABEL_9;
      }
    }

    v47 = *(v18 + 56);

    return v47(a2, 1, 1);
  }

  return result;
}

uint64_t sub_19A70DE60(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_19A70DFC0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_19A70E4E4(v8, v4, v2);
  result = MEMORY[0x19A907A30](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_19A70DFC0(unint64_t *a1, uint64_t a2, void *a3)
{
  v48 = a2;
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v47 - v5;
  v6 = sub_19A7A8EF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCECE8);
  v13 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v47 - v15);
  v17 = type metadata accessor for EmojiKeyboardWaypoint();
  v60 = *(v17 - 8);
  v61 = v17;
  result = MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v65 = a3;
  v24 = a3[8];
  v23 = a3 + 8;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v58 = (v7 + 48);
  v59 = v28;
  v52 = (v7 + 32);
  v50 = 0;
  v51 = (v7 + 8);
  v57 = v16;
  while (v27)
  {
    v30 = __clz(__rbit64(v27));
    v67 = (v27 - 1) & v27;
LABEL_12:
    v33 = v30 | (v21 << 6);
    v34 = v65[7];
    v35 = *(v65[6] + 8 * v33);
    v36 = *(v60 + 72);
    v56 = v33;
    sub_19A62D798(v34 + v36 * v33, v20);
    *v16 = v35;
    v37 = v63;
    sub_19A62D798(v20, v16 + *(v63 + 48));
    v38 = v16;
    v39 = v62;
    sub_19A60F0CC(v38, v62, &qword_1EAFCECE8);
    v40 = *(v61 + 28);
    v66 = v39 + *(v37 + 48);
    v41 = v64;
    sub_19A60F0CC(v66 + v40, v64, &unk_1EAFCE4E0);
    if ((*v58)(v41, 1, v6) == 1)
    {
      v29 = v57;
      sub_19A5F2B54(v57, &qword_1EAFCECE8);
      sub_19A5F2B54(v41, &unk_1EAFCE4E0);
      sub_19A62D860(v66);
      result = sub_19A62D860(v20);
      v16 = v29;
      v28 = v59;
      v27 = v67;
    }

    else
    {
      v42 = v53;
      (*v52)(v53, v41, v6);
      v43 = v55;
      sub_19A7A8EE4();
      v44 = v54;
      sub_19A7A8E94();
      v45 = *v51;
      (*v51)(v43, v6);
      LOBYTE(v43) = sub_19A7A8EB4();
      v45(v44, v6);
      v45(v42, v6);
      v16 = v57;
      sub_19A5F2B54(v57, &qword_1EAFCECE8);
      sub_19A62D860(v66);
      result = sub_19A62D860(v20);
      v28 = v59;
      v27 = v67;
      if (v43)
      {
        *(v49 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
          return sub_19A70E55C(v49, v48, v50, v65);
        }
      }
    }
  }

  v31 = v21;
  while (1)
  {
    v21 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v21 >= v28)
    {
      return sub_19A70E55C(v49, v48, v50, v65);
    }

    v32 = v23[v21];
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v67 = (v32 - 1) & v32;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_19A70E4E4(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_19A70DFC0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_19A70E55C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EmojiKeyboardWaypoint();
  v38 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD990);
  result = sub_19A7ABE94();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v36;
  v35 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v39 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v37;
    v25 = *(v38 + 72);
    sub_19A62D798(v22 + v25 * v21, v37);
    sub_19A62D7FC(v24, v17);
    sub_19A7AC184();
    MEMORY[0x19A9065D0](v23);
    result = sub_19A7AC1B4();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v17 = v36;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v17 = v36;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v13 + 48) + 8 * v29) = v23;
    result = sub_19A62D7FC(v17, *(v13 + 56) + v29 * v25);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    v14 = v39;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_19A70E8CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19A70E938()
{
  v0 = [objc_opt_self() sharedPreferencesController];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 preferencesActions];

    if (v2)
    {
      [v2 BOOLForPreferenceKey_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_19A70E9E4()
{
  v1 = OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___highlightView;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___highlightView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___highlightView];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() systemBlueColor];
    [v4 setBackgroundColor_];

    v6 = [v4 layer];
    [v6 setCornerRadius_];

    v7 = [v0 contentView];
    [v0 insertSubview:v4 belowSubview:v7];

    v0[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_createdHighlightView] = 1;
    v8 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_19A70EB10()
{
  v1 = OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleTap];
    [v4 setCancelsTouchesInView_];
    [v4 setDelaysTouchesBegan_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_19A70EBC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask))
  {

    sub_19A7AB3B4();
  }

  v6 = sub_19A7AB394();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_19A7AB354();

  v8 = sub_19A7AB344();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  *(v1 + v5) = sub_19A6816F0(0, 0, v4, &unk_19A7BEF90, v9);
}

uint64_t sub_19A70ED70()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCECF8);
  __swift_project_value_buffer(v0, qword_1EAFCECF8);
  return sub_19A7A9374();
}

void sub_19A70EDF0()
{
  v1 = v0;
  v111 = sub_19A7AA614();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC948);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = &v93 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC950);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v93 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC958);
  MEMORY[0x1EEE9AC00](v110);
  v7 = &v93 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCED68);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v93 - v15;
  v17 = type metadata accessor for PaddleView();
  v117.receiver = v1;
  v117.super_class = v17;
  objc_msgSendSuper2(&v117, sel_layoutSubviews);
  [v1 bounds];
  v19 = v18;
  [v1 bounds];
  v22 = v21 + 2.0;
  v114 = v21 + 2.0 + 20.0;
  v23 = OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_hostingController;
  v24 = *&v1[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_hostingController];
  v25 = &selRef_entitlementValueForBalloonHost_expectedClass_;
  v115 = v1;
  if (!v24)
  {
    v26 = v107;
    v102 = v11;
    v101 = v8;
    v105 = v16;
    v106 = v14;
    v27 = v19 + 26.0;
    v28 = *&v1[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_style] == 1;
    v100 = OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_hostingController;
    v104 = v7;
    v103 = v10;
    if (v28)
    {
      v29 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v27 * -0.5 cornerRadii:{v22 * -0.5 - v114 + 1.0, v19 + 26.0, v114, 8.0, 8.0}];
      v30 = [v29 CGPath];

      v43 = v19 * 0.5;
      v31 = v22 * 0.5;
    }

    else
    {
      v31 = v22 * 0.5;
      v32 = CGPointMake(v22 * 0.5, v20);
      v98 = v32;
      v33 = v19;
      v97 = v19 * 0.5;
      v96 = v27 * 0.5;
      v34 = -(v19 * 0.5);
      v93 = 1.5 - v22 * 0.5;
      v95 = -9.0 - v22 * 0.5;
      v35 = -(v27 * 0.5);
      v99 = v33;
      v94 = -20.0 - v22 * 0.5;
      v36 = -(v22 * 0.5) - v114 + 1.0;
      v37 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v37 moveToPoint_];
      [v37 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
      v38 = v93;
      [v37 addLineToPoint_];
      v39 = v34;
      v40 = v95;
      [v37 addCurveToPoint:v35 controlPoint1:-20.0 - v31 controlPoint2:{v39, v95, v35, -8.0 - v31}];
      [v37 addLineToPoint_];
      [v37 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
      v41 = v96;
      [v37 addLineToPoint_];
      v42 = v36;
      v43 = v97;
      [v37 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
      v19 = v99;
      [v37 addLineToPoint_];
      [v37 addCurveToPoint:v43 controlPoint1:v38 controlPoint2:{v41, -8.0 - v22 * 0.5, v43, v40}];
      [v37 addLineToPoint_];
      [v37 _addRoundedCornerWithTrueCorner_radius_corner_clockwise_];
      [v37 addLineToPoint_];
      [v37 closePath];
      v44 = [v37 CGPath];
    }

    v45 = v111;
    v46 = v109;
    v47 = v108;
    sub_19A7AA034();
    sub_19A7A9814();
    v48 = v118;
    v49 = v119;
    v50 = v120;
    v51 = v121;
    *(v116 + 7) = v123;
    *(&v116[1] + 7) = v124;
    *(&v116[2] + 7) = v125;
    v52 = v122;
    v111 = sub_19A7AA654();
    v109 = v53;
    sub_19A7AA604();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC960);
    (*(v46 + 16))(v26 + *(v54 + 52), v47, v45);
    *v26 = v48;
    *(v26 + 8) = v49;
    *(v26 + 16) = v50;
    *(v26 + 24) = v51;
    *(v26 + 32) = v52;
    *(v26 + *(v54 + 56)) = 256;
    sub_19A6327A4(v48, v49, v50, v51, v52);
    v55 = sub_19A7AA654();
    v108 = v56;
    (*(v46 + 8))(v47, v45);
    v57 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC968) + 36);
    v58 = v116[1];
    *(v57 + 33) = v116[0];
    *v57 = v48;
    *(v57 + 8) = v49;
    *(v57 + 16) = v50;
    *(v57 + 24) = v51;
    *(v57 + 32) = v52;
    *(v57 + 49) = v58;
    *(v57 + 64) = *(&v116[1] + 15);
    *(v57 + 80) = 256;
    v59 = v109;
    *(v57 + 88) = v111;
    *(v57 + 96) = v59;
    v60 = v108;
    *(v57 + 104) = v55;
    *(v57 + 112) = v60;
    sub_19A7AA2C4();
    v61 = sub_19A7AA2F4();

    v62 = v113;
    sub_19A62376C(v26, v113, &qword_1EAFCC948);
    v63 = v62 + *(v112 + 36);
    *v63 = v61;
    *(v63 + 8) = xmmword_19A7BEED0;
    *(v63 + 24) = 0x4020000000000000;
    sub_19A7AA654();
    sub_19A7A9864();
    v64 = v104;
    sub_19A62376C(v62, v104, &qword_1EAFCC950);
    v65 = (v64 + *(v110 + 36));
    v66 = v127;
    *v65 = v126;
    v65[1] = v66;
    v65[2] = v128;
    v67 = v103;
    sub_19A62376C(v64, v103, &qword_1EAFCC958);
    v68 = (v67 + *(v101 + 36));
    *v68 = v43;
    v68[1] = v31;
    v69 = sub_19A7A99A4();
    LOBYTE(v61) = sub_19A7A9F04();
    v70 = v67;
    v71 = v105;
    sub_19A62376C(v70, v105, &qword_1EAFCC8E0);
    v72 = v71 + *(v102 + 36);
    *v72 = v69;
    *(v72 + 8) = v61;
    v73 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCED70));
    sub_19A711108(v71, v106);
    v74 = sub_19A7A9C84();
    sub_19A711178(v71);
    v25 = &selRef_entitlementValueForBalloonHost_expectedClass_;
    v75 = [v74 view];
    if (!v75)
    {
      goto LABEL_20;
    }

    v76 = v75;
    v77 = v115;
    [v115 addSubview_];

    v23 = v100;
    v78 = *&v77[v100];
    *&v77[v100] = v74;

    v24 = *&v77[v23];
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  v79 = [v24 v25[183]];
  if (!v79)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v80 = v79;
  v81 = [objc_opt_self() clearColor];
  [v80 setBackgroundColor_];

  v77 = v115;
  v82 = *&v115[v23];
  if (!v82)
  {
    goto LABEL_11;
  }

  v83 = [v82 v25[183]];
  if (!v83)
  {
    goto LABEL_19;
  }

  v84 = v83;
  v77 = v115;
  [v115 bounds];
  [v84 setFrame_];

LABEL_11:
  v85 = OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView;
  v86 = *&v77[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView];
  if (v86)
  {
    v87 = v86;
    v88 = [v87 superview];
    if (!v88 || (v89 = v88, sub_19A5F5028(0, &qword_1EAFCA430), v90 = v77, v91 = sub_19A7AB924(), v89, v90, (v91 & 1) == 0))
    {
      [v77 addSubview_];
    }

    v92 = *&v77[v85];
    if (v92)
    {
      [v92 setCenter_];
    }
  }
}

id sub_19A70FABC(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView] = 0;
  v3 = &v1[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_style];
  *v3 = 0;
  v3[8] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_hostingController] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PaddleView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_19A70FB7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaddleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19A70FCB8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_setSelected_, a1 & 1);
  if ([v1 isSelected])
  {
    v3 = sub_19A70E9E4();
    v4 = [v1 contentView];
    [v1 insertSubview:v3 belowSubview:v4];

LABEL_5:
    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_createdHighlightView))
  {
    v4 = sub_19A70E9E4();
    [v4 removeFromSuperview];
    goto LABEL_5;
  }

LABEL_6:
  v5 = [v1 contentView];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];
}

id sub_19A70FDDC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_style];
  *v9 = 0;
  v9[8] = 0;
  v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_createdHighlightView] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___highlightView] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___tapGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor] = 0;
  v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView] = 1;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_19A70EB10();
  [v10 addGestureRecognizer_];

  return v10;
}

void sub_19A70FF44()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor];
  if (v1)
  {
    v32[0] = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v29 = 0.0;
    v2 = v1;
    [v2 getRed:v32 green:&v31 blue:&v30 alpha:&v29];
    v3 = v32[0];
    v4 = v31;
    v5 = v30;
    v6 = v29;
    v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v17[0] = 0;
    v17[1] = 0;
    v18 = v3;
    v20 = 0;
    v19 = 0;
    v21 = v4;
    v22 = 0;
    v23 = 0;
    v24 = v5;
    v26 = 0;
    v25 = 0;
    v27 = v6;
    v28 = 0;
    v8 = [objc_opt_self() valueWithCAColorMatrix_];
    [v7 setValue:v8 forKey:*MEMORY[0x1E6979AC0]];

    v9 = [v0 contentView];
    v10 = [v9 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A7B6C30;
    *(v11 + 56) = sub_19A5F5028(0, &unk_1EAFCC180);
    *(v11 + 32) = v7;
    v12 = v7;
    v13 = sub_19A7AB234();

    [v10 setFilters_];
  }

  else
  {
    v14 = [v0 contentView];
    v15 = [v14 layer];

    v16 = sub_19A7AB234();
    [v15 setFilters_];
  }
}

void sub_19A710240(char a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle;
  if (*(v1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle) != (a1 & 1))
  {
    v3 = OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask;
    if (*(v1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask))
    {

      sub_19A7AB3B4();
    }

    *(v1 + v3) = 0;

    if (*(v1 + v2) == 1)
    {
      v4 = [v1 window];
      if (!v4)
      {
        return;
      }

      v5 = v4;
      [v1 center];
      v7 = v6;
      v9 = v8;
      v10 = [v1 superview];
      [v5 convertPoint:v10 fromView:{v7, v9}];
      v12 = v11;
      v14 = v13;

      type metadata accessor for PaddleView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v15 setUserInteractionEnabled_];
      v16 = [v5 addSubview_];
      v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v16);
      v18 = &v15[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_style];
      *v18 = v17;
      v18[8] = v19 & 1;
      [v1 bounds];
      [v15 setBounds_];
      [v15 setCenter_];

      v20 = [v1 contentView];
      v21 = [v20 snapshotViewAfterScreenUpdates_];

      v22 = *&v15[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView];
      *&v15[OBJC_IVAR____TtC10StickerKitP33_9B62E14B6CA571F9D4DD89006C891CC510PaddleView_previewView] = v21;
    }

    else
    {
      v23 = sub_19A710F38();
      if (v23)
      {
        [v23 removeFromSuperview];
      }

      v15 = 0;
    }

    v24 = *(v1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView);
    *(v1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView) = v15;

    sub_19A6A0EF8(v24);
  }
}

uint64_t sub_19A7104E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_19A7ABDC4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_19A7AB354();
  v4[9] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A7105D8, v7, v6);
}

uint64_t sub_19A7105D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = sub_19A7AC1E4();
    v4 = v3;
    sub_19A7AC0F4();
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_19A710724;

    return sub_19A776184(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_19A710724()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_19A710940;
  }

  else
  {
    v8 = sub_19A7108BC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A7108BC()
{
  v1 = *(v0 + 96);

  v2 = v1[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle];
  v1[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle] = 0;
  sub_19A710240(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A710940()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

id sub_19A7109BC()
{
  v1 = sub_19A710F38();
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19A710E38(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_19A5F5028(0, &qword_1EAFCCC08);
  sub_19A63D890();
  sub_19A7AB494();
  v8 = a4;
  v9 = a1;
  v10 = sub_19A7AB484();

  v11.receiver = v9;
  v11.super_class = type metadata accessor for BaseEmojiAndStickerCollectionViewCell();
  objc_msgSendSuper2(&v11, *a5, v10, v8);

  sub_19A70EBC8();
}

uint64_t sub_19A710F38()
{
  result = *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView);
  if (result == 1)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView) = 0;
  }

  return result;
}

void sub_19A710F58()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_style;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_createdHighlightView) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___highlightView) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_showsPaddle) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_hidePaddleTask) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell____lazy_storage___paddleView) = 1;
  sub_19A7ABE34();
  __break(1u);
}

uint64_t sub_19A711108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCED68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A711178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCED68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A7111E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A7104E4(a1, v4, v5, v6);
}

id sub_19A711294(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = &v5[OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_19A7AAFE4();
  v10 = [a2 newFunctionWithName_];

  v11 = sub_19A7AAFE4();
  v12 = [a2 newFunctionWithName_];

  v13 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v13 setVertexFunction_];
  [v13 setFragmentFunction_];
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
    __break(1u);
  }

  [v15 setPixelFormat_];

  [v13 setPipelineLibrary_];
  v23[0] = 0;
  v16 = [a1 newRenderPipelineStateWithDescriptor:v13 error:v23];
  if (v16)
  {
    v17 = v16;
    v18 = v23[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *&v5[OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_pipelineState] = v17;
    v22.receiver = v5;
    v22.super_class = type metadata accessor for StickerComicShaderBase();
    v19 = objc_msgSendSuper2(&v22, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v23[0];
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicShaderBase();
    swift_deallocPartialClassInstance();
  }

  return v19;
}

void sub_19A711538(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v6 = [v5 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v7 setTexture_];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v9 setLoadAction_];

  v10 = [v5 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v11 setClearColor_];

  v12 = [a2 renderCommandEncoderWithDescriptor_];
  if (v12)
  {
    [v12 setRenderPipelineState_];
  }
}

id sub_19A7116E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = &v5[OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_19A7AAFE4();
  v10 = [a2 newFunctionWithName_];

  v11 = sub_19A7AAFE4();
  v12 = [a2 newFunctionWithName_];

  v13 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v13 setVertexFunction_];
  [v13 setFragmentFunction_];
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
    __break(1u);
  }

  [v15 setPixelFormat_];

  [v13 setPipelineLibrary_];
  v23[0] = 0;
  v16 = [a1 newRenderPipelineStateWithDescriptor:v13 error:v23];
  if (v16)
  {
    v17 = v16;
    v18 = v23[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *&v5[OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_pipelineState] = v17;
    v22.receiver = v5;
    v22.super_class = type metadata accessor for StickerComicShaderBase();
    v19 = objc_msgSendSuper2(&v22, sel_init);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v23[0];
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicShaderBase();
    swift_deallocPartialClassInstance();
  }

  return v19;
}

void sub_19A711988(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19A711538(a1, a3);
  if (v5)
  {
    v6 = v5;
    [v5 setFragmentTexture:a2 atIndex:0];
    [v6 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
    [v6 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))(v6);
    [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v6 endEncoding];

    swift_unknownObjectRelease();
  }
}

id sub_19A711B68(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19A711BC4(id result, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_viewSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemContentSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___containerInsetOrigin];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_index] = result;
  *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfItems] = a2;
  v9 = &v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration];
  v10 = *(a3 + 48);
  *(v9 + 2) = *(a3 + 32);
  *(v9 + 3) = v10;
  *(v9 + 64) = *(a3 + 128);
  v11 = *(a3 + 112);
  *(v9 + 6) = *(a3 + 96);
  *(v9 + 7) = v11;
  v12 = *(a3 + 80);
  *(v9 + 4) = *(a3 + 64);
  *(v9 + 5) = v12;
  v13 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 1) = v13;
  v14 = *(*(a3 + 120) + 16);
  v15 = __OFADD__(a2, v14);
  v16 = a2 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = *(a3 + 8);
  v19 = ceil(v17 / v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups] = v20;
  if ((v20 * v18) >> 64 == (v20 * v18) >> 63)
  {
    *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_maxItemCount] = v20 * v18;
    v21.receiver = v3;
    v21.super_class = type metadata accessor for ImageGlyphSectionSolver();
    return objc_msgSendSuper2(&v21, sel_init);
  }

LABEL_14:
  __break(1u);
  return result;
}

double sub_19A711D4C()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize + 16))
  {
    sub_19A7121D8();
    v4 = 0uLL;
    if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 128) == 1)
    {
      v4 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_viewSize);
    }

    v2.f64[1] = v3;
    v5 = vbslq_s8(vcgeq_f64(v4, v2), v4, v2);
    v6 = vbicq_s8(v5, vclezq_f64(v5));
    *v1 = v6;
    v1[1].i8[0] = 0;
  }

  else
  {
    v6.i64[0] = v1->i64[0];
  }

  return *v6.i64;
}

double sub_19A711DD0()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemSize;
  if ((*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemSize + 16) & 1) == 0)
  {
    return *v1;
  }

  v2 = sub_19A711E88();
  v3 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration;
  v4 = 64;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v4 = 32;
  }

  v5 = 80;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v5 = 48;
  }

  v6 = 24;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v6 = 56;
  }

  v7 = *(v3 + v4);
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v8 = 72;
  }

  else
  {
    v8 = 40;
  }

  result = v2 + v7 + *(v3 + v5);
  v10 = *(v3 + v6) + *(v3 + v8) + *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemContentSize + 8);
  *v1 = result;
  *(v1 + 8) = v10;
  *(v1 + 16) = 0;
  return result;
}

double sub_19A711E88()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemContentSize;
  if ((*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemContentSize + 16) & 1) == 0)
  {
    return *v1;
  }

  sub_19A712318();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  return result;
}

double sub_19A711ECC()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___containerInsetOrigin;
  if ((*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___containerInsetOrigin + 16) & 1) == 0)
  {
    return *v1;
  }

  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 88);
  result = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 96);
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  return result;
}

double sub_19A711F04(uint64_t a1)
{
  v3 = sub_19A711DD0();
  v4 = v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration;
  v5 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 16) == 1)
  {
    sub_19A7121D8();
    v7 = 0.0;
    if (*(v4 + 128) == 1)
    {
      v7 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_viewSize);
    }

    if (v6 <= v7)
    {
      v6 = v7;
    }

    if (v6 > 0.0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0.0;
    }

    sub_19A7121D8();
    v5 = v8 - v9;
  }

  v10 = v3 * a1 + v5 + sub_19A711ECC();
  sub_19A711E88();
  return v10;
}

uint64_t sub_19A712018(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 120);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *v5++;
      v9 = v10;
      if (v10 <= a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A659B5C(0, *(v6 + 16) + 1, 1);
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19A659B5C((v7 > 1), v8 + 1, 1);
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 8 * v8 + 32) = v9;
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v6 + 16);

  result = a1 + v11;
  if (__OFADD__(a1, v11))
  {
    __break(1u);
  }

  else
  {

    return sub_19A712134(result);
  }

  return result;
}

uint64_t sub_19A712134(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 8);
  if ((*(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration) & 1) == 0)
  {
    if (v2)
    {
      if (result == 0x8000000000000000 && v2 == -1)
      {
        goto LABEL_19;
      }

      result /= v2;
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v2 == -1)
  {
    goto LABEL_18;
  }

  result %= v2;
LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 16) != 1)
  {
    return result;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    goto LABEL_16;
  }

  v4 = __OFSUB__(v5, result);
  result = v5 - result;
  if (v4)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_19A7121D8()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v2 = *(v1 + 8);
    sub_19A711E88();
    if (!__OFSUB__(v2, 1))
    {
      if (!__OFSUB__(*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups), 1))
      {
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_numberOfGroups);
  sub_19A711E88();
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_9;
  }

  if (__OFSUB__(*(v1 + 8), 1))
  {
LABEL_11:
    __break(1u);
  }
}

void sub_19A712318()
{
  v1 = __OFSUB__(*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration + 8), 1);
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    if (!v1)
    {
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v1)
  {
    goto LABEL_10;
  }
}

int8x16_t sub_19A7123DC()
{
  sub_19A712318();
  v1 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemContentSize;
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  v4 = sub_19A711E88();
  v5 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration;
  v6 = 64;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v6 = 32;
  }

  v7 = 80;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v7 = 48;
  }

  v8 = 24;
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v8 = 56;
  }

  v9 = *(v5 + v6);
  if (*(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_configuration))
  {
    v10 = 72;
  }

  else
  {
    v10 = 40;
  }

  v11 = *(v5 + v8) + *(v5 + v10);
  v12 = *(v1 + 8);
  v13 = v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___itemSize;
  *v13 = v4 + v9 + *(v5 + v7);
  *(v13 + 8) = v11 + v12;
  *(v13 + 16) = 0;
  sub_19A7121D8();
  v16 = 0uLL;
  if (*(v5 + 128) == 1)
  {
    v16 = *(v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver_viewSize);
  }

  v17 = (v0 + OBJC_IVAR____TtC10StickerKit23ImageGlyphSectionSolver____lazy_storage___sectionSize);
  v14.f64[1] = v15;
  v18 = vbslq_s8(vcgeq_f64(v16, v14), v16, v14);
  result = vbicq_s8(v18, vclezq_f64(v18));
  *v17 = result;
  v17[1].i8[0] = 0;
  return result;
}

id sub_19A712510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageGlyphSectionSolver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A7125D4()
{
  v23 = sub_19A7AA764();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A7AA7B4();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AA7D4();
  v22 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v0 + 80);
  v30 = v0;
  v31 = 1;
  v27 = sub_19A712C50;
  v28 = &v29;
  os_unfair_lock_lock(v13 + 4);
  sub_19A5F57B8(v14);
  os_unfair_lock_unlock(v13 + 4);
  sub_19A631AE0();
  v15 = sub_19A7AB794();
  sub_19A7AA7C4();
  sub_19A7AA814();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_19A712C34;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_23;
  v18 = _Block_copy(aBlock);

  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A6A7AC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  v19 = v23;
  sub_19A7ABB54();
  MEMORY[0x19A905B40](v12, v5, v2, v18);
  _Block_release(v18);

  (*(v26 + 8))(v2, v19);
  (*(v24 + 8))(v5, v25);
  return (v16)(v12, v22);
}

uint64_t sub_19A712984()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 80);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v1 + 4);
    sub_19A6FB608(&v2);
    os_unfair_lock_unlock(v1 + 4);
    if (v2 == 1)
    {
      sub_19A712A58();
    }
  }

  return result;
}

void sub_19A712A58()
{
  v1 = sub_19A7A8C04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[10];
  v15 = v0;
  v16 = 0;
  v12 = sub_19A712C24;
  v13 = &v14;
  os_unfair_lock_lock(v5 + 4);
  sub_19A5F5774(v6);
  os_unfair_lock_unlock(v5 + 4);
  v7 = v0[9];
  v8 = v0[2];
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  sub_19A7A8BD4();
  v10 = sub_19A7A8BB4();
  (*(v2 + 8))(v4, v1);
  [v7 postNotification_];
}

uint64_t sub_19A712BB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmojiKeyboardWaypoint()
{
  result = qword_1EAFCEDE0;
  if (!qword_1EAFCEDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A712CDC()
{
  type metadata accessor for UIKeyboardEmojiCategoryType(319);
  if (v0 <= 0x3F)
  {
    sub_19A6EA854();
    if (v1 <= 0x3F)
    {
      sub_19A6CF2C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19A712D80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD818);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - v6;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_19A7ABCB4();
  MEMORY[0x19A905510](0xD000000000000024, 0x800000019A7CBD30);
  v8 = [objc_opt_self() emojiCategoryStringForCategoryType_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_19A7AB014();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x19A905510](v10, v12);

  MEMORY[0x19A905510](0x6E496D657469202CLL, 0xED0000203A786564);
  v25[0] = v1[1];
  v13 = sub_19A7AC024();
  MEMORY[0x19A905510](v13);

  MEMORY[0x19A905510](0xD000000000000012, 0x800000019A7CBD60);
  v14 = v1[3];
  v25[0] = v1[2];
  v25[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
  v15 = sub_19A7AB064();
  MEMORY[0x19A905510](v15);

  MEMORY[0x19A905510](0x657461657263202CLL, 0xED0000203A744164);
  v16 = type metadata accessor for EmojiKeyboardWaypoint();
  sub_19A713D84(v1 + *(v16 + 28), v7);
  v17 = sub_19A7A8EF4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_19A5F2B54(v7, &unk_1EAFCE4E0);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    sub_19A7A8FA4();
    v21 = sub_19A7A8FB4();
    (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
    v22 = sub_19A7A8E64();
    v19 = v23;
    sub_19A5F2B54(v4, &qword_1EAFCD818);
    (*(v18 + 8))(v7, v17);
    v20 = v22;
  }

  MEMORY[0x19A905510](v20, v19);

  MEMORY[0x19A905510](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_19A71311C()
{
  v0 = type metadata accessor for EmojiKeyboardWaypoint();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  __swift_allocate_value_buffer(v0, qword_1EAFDD760);
  v6 = __swift_project_value_buffer(v0, qword_1EAFDD760);
  sub_19A7A8ED4();
  v7 = sub_19A7A8EF4();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 1) = 0;
  v9 = *(v0 + 28);
  v8(&v2[v9], 1, 1, v7);
  *v2 = 0;
  sub_19A66C134(v5, &v2[v9]);
  return sub_19A62D7FC(v2, v6);
}

uint64_t sub_19A7132AC()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A713388()
{
  sub_19A7AB0B4();
}

uint64_t sub_19A713450()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A713528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A713F0C();
  *a1 = result;
  return result;
}

void sub_19A713558(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000065707954;
  v3 = 0x79726F6765746163;
  v4 = 0xEE00726569666974;
  v5 = 0x6E6564496D657469;
  if (*v1 != 2)
  {
    v5 = 0x4164657461657263;
    v4 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = 0x65646E496D657469;
    v2 = 0xE900000000000078;
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

uint64_t sub_19A7135F0()
{
  v1 = 0x79726F6765746163;
  v2 = 0x6E6564496D657469;
  if (*v0 != 2)
  {
    v2 = 0x4164657461657263;
  }

  if (*v0)
  {
    v1 = 0x65646E496D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A713684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A713F0C();
  *a1 = result;
  return result;
}

uint64_t sub_19A7136AC(uint64_t a1)
{
  v2 = sub_19A713CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A7136E8(uint64_t a1)
{
  v2 = sub_19A713CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A713724@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEDF0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for EmojiKeyboardWaypoint();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 36);
  v15 = sub_19A7A8EF4();
  v16 = *(*(v15 - 8) + 56);
  v32 = v14;
  v16(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A713CEC();
  sub_19A7AC1C4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_19A5F2B54(v13 + v32, &unk_1EAFCE4E0);
  }

  else
  {
    v17 = v30;
    v36 = 0;
    v18 = sub_19A7ABF14();
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    *v13 = v20;
    v35 = 1;
    v21 = sub_19A7ABF14();
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v21;
    }

    v13[1] = v24;
    v34 = 2;
    v13[2] = sub_19A7ABF04();
    v13[3] = v25;
    v33 = 3;
    sub_19A713D40(&qword_1EAFCEE00);
    v28 = v6;
    v26 = v31;
    sub_19A7ABF24();
    (*(v17 + 8))(v9, v26);
    sub_19A66C134(v28, v13 + v32);
    sub_19A62D798(v13, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_19A62D860(v13);
  }
}

uint64_t sub_19A713A94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEE08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A713CEC();
  sub_19A7AC1D4();
  v8[15] = 0;
  sub_19A7ABFD4();
  if (!v1)
  {
    v8[14] = 1;
    sub_19A7ABFD4();
    v8[13] = 2;
    sub_19A7ABF94();
    type metadata accessor for EmojiKeyboardWaypoint();
    v8[12] = 3;
    sub_19A7A8EF4();
    sub_19A713D40(&qword_1EAFCEE10);
    sub_19A7ABFA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19A713CEC()
{
  result = qword_1EAFCEDF8;
  if (!qword_1EAFCEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEDF8);
  }

  return result;
}

uint64_t sub_19A713D40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A7A8EF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A713D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A713E08()
{
  result = qword_1EAFCEE18;
  if (!qword_1EAFCEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEE18);
  }

  return result;
}

unint64_t sub_19A713E60()
{
  result = qword_1EAFCEE20;
  if (!qword_1EAFCEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEE20);
  }

  return result;
}

unint64_t sub_19A713EB8()
{
  result = qword_1EAFCEE28;
  if (!qword_1EAFCEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEE28);
  }

  return result;
}

uint64_t sub_19A713F0C()
{
  v0 = sub_19A7ABEC4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for Signposts.Signpost()
{
  result = qword_1EAFCA8D8;
  if (!qword_1EAFCA8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19A713FCC()
{
  result = sub_19A714060();
  if (v1 <= 0x3F)
  {
    result = sub_19A7A9384();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_19A714060()
{
  result = qword_1EAFCA400;
  if (!qword_1EAFCA400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCA400);
  }

  return result;
}

uint64_t sub_19A7140EC(const char *a1, void (*a2)(void))
{
  v5 = sub_19A7A9354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signposts.Signpost();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A714368(v2, v11);
  v12 = sub_19A7A9364();
  v13 = sub_19A7AB574();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v17 = sub_19A7ABCD4();
    v26 = a1;
    v27 = v6;
    v18 = v17;
    v19 = a2;
    v21 = v20;
    sub_19A7143CC(v11);
    v22 = sub_19A62540C(v18, v21, &v29);
    a2 = v19;
    v6 = v27;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_19A5EE000, v12, v13, v26, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x19A907A30](v16, -1, -1);
    v23 = v15;
    v5 = v28;
    MEMORY[0x19A907A30](v23, -1, -1);
  }

  else
  {

    v24 = sub_19A7143CC(v11);
  }

  a2(v24);
  sub_19A7A9344();
  sub_19A7A9334();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A714368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signposts.Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A7143CC(uint64_t a1)
{
  v2 = type metadata accessor for Signposts.Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A714428()
{
  v0 = type metadata accessor for Signposts.Signpost();
  __swift_allocate_value_buffer(v0, qword_1EAFDD518);
  v1 = __swift_project_value_buffer(v0, qword_1EAFDD518);
  *v1 = "LoadEmojiCollectionView";
  *(v1 + 8) = 23;
  *(v1 + 16) = 2;
  sub_19A714060();
  *(v1 + 24) = sub_19A7ABA84();
  return sub_19A7A9374();
}

uint64_t sub_19A71455C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19A7145C8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19A64BD6C;
}

id AvatarEditorRemoteViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AvatarEditorRemoteViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

uint64_t type metadata accessor for AvatarEditorRemoteViewController()
{
  result = qword_1EAFCEE30;
  if (!qword_1EAFCEE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AvatarEditorRemoteViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AvatarEditorRemoteViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AvatarEditorRemoteViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarEditorRemoteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AvatarEditorRemoteViewController.avatarEditorRemoteViewControllerShouldDismiss()()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A714B04()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A714CA8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  [v2 sendAction_];
}

uint64_t sub_19A714D38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  return v1;
}

void sub_19A714DAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v75 - v2;
  v4 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];
  v5 = objc_allocWithZone(MEMORY[0x1E69DD6A0]);
  v6 = v4;
  v7 = [v5 init];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD688]) initWithProcessIdentity:v6 sceneSpecification:v7];
  v77 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  ObjectType = v8;
  v9 = v0;
  sub_19A7AB654();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v10 = ObjectType;
  [ObjectType setDelegate_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v11 = ObjectType;
  sub_19A7AB864();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v3, 1, v12);
  v15 = MEMORY[0x1E69E7D40];
  if (v14 == 1)
  {
    v16 = sub_19A5F783C(v3);
    v17 = &off_1E751B000;
  }

  else
  {
    v18 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x60))();
    v20 = v19;
    v21 = type metadata accessor for ActivitityTypeConfiguration();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
    *v23 = v18;
    v23[1] = v20;
    v78.receiver = v22;
    v78.super_class = v21;
    objc_msgSendSuper2(&v78, sel_init);
    swift_getOpaqueTypeConformance2();
    sub_19A6D5134();
    sub_19A7A9504();
    v16 = (*(v13 + 8))(v3, v12);
    v17 = &off_1E751B000;
  }

  if ((*((*v15 & *v9) + 0xB8))(v16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7AB644();

    v24 = ObjectType;
    v25 = [ObjectType keyboardSuppressionController];

    if (v25)
    {
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEE58);
      sub_19A7AB064();
      v26 = sub_19A7AAFE4();

      v27 = [v25 suppressKeyboardFocusRequestsForReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
    }

    *(v9 + OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression) = v27;
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v28 = ObjectType;
  (*((*v15 & *v9) + 0xB0))(ObjectType);

  v29 = [objc_allocWithZone(MEMORY[0x1E69DD698]) v17[118]];
  [v29 setDelegate_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v30 = ObjectType;
  [ObjectType setActivationController_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644();

  v31 = ObjectType;
  v32 = [ObjectType sceneViewController];

  [v9 addChildViewController_];
  v33 = [v32 view];
  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = v33;
  v35 = [v9 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  [v35 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v34 setFrame_];
  v45 = [v9 view];
  if (!v45)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v46 = v45;
  v76 = v29;
  [v45 addSubview_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_19A7BB2E0;
  v48 = [v34 topAnchor];
  v49 = [v9 view];
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = v49;
  v51 = MEMORY[0x1E69DDCE0];
  v52 = *MEMORY[0x1E69DDCE0];
  v53 = [v49 topAnchor];

  v54 = [v48 constraintEqualToAnchor:v53 constant:v52];
  *(v47 + 32) = v54;
  v55 = [v34 bottomAnchor];
  v56 = [v9 view];
  if (!v56)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v57 = v56;
  v58 = v51[2];
  v59 = [v56 bottomAnchor];

  v60 = [v55 constraintEqualToAnchor:v59 constant:v58];
  *(v47 + 40) = v60;
  v61 = [v34 leftAnchor];
  v62 = [v9 view];
  if (!v62)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v63 = v62;
  v64 = v51[1];
  v65 = [v62 leftAnchor];

  v66 = [v61 constraintEqualToAnchor:v65 constant:-v64];
  *(v47 + 48) = v66;
  v67 = [v34 rightAnchor];
  v68 = [v9 view];
  if (v68)
  {
    v69 = v68;
    v70 = v51[3];
    v71 = objc_opt_self();
    v72 = [v69 rightAnchor];

    v73 = [v67 constraintEqualToAnchor:v72 constant:v70];
    *(v47 + 56) = v73;
    sub_19A5F5028(0, &qword_1ED8B2030);
    v74 = sub_19A7AB234();

    [v71 activateConstraints_];

    v29 = v76;
LABEL_17:
    [v32 didMoveToParentViewController_];

    return;
  }

LABEL_23:
  __break(1u);
}

id ActivitityTypeConfiguration.__allocating_init(activityType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ActivitityTypeConfiguration.activityType.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ActivitityTypeConfiguration.activityType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id ActivitityTypeConfiguration.init(activityType:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ActivitityTypeConfiguration.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_19A716EC8(a1);
  v5 = v4;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t ActivitityTypeConfiguration.init(bsxpcCoder:)(void *a1)
{
  sub_19A716EC8(a1);
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

void ActivitityTypeConfiguration.encode(withBSXPCCoder:)(void *a1)
{
  swift_beginAccess();

  v2 = sub_19A7AAFE4();

  v3 = sub_19A7AAFE4();
  [a1 encodeObject:v2 forKey:v3];
}

uint64_t ActivitityTypeConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19A6A60B4(a1, v11);
  if (!v12)
  {
    sub_19A612E20(v11);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = &v10[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
  swift_beginAccess();
  if (v4 == *v6 && v5 == *(v6 + 1))
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_19A7AC064();
  }

  return v8 & 1;
}

id sub_19A715D2C()
{
  v0 = type metadata accessor for ActivitityTypeConfiguration();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EAFCB2B0 = result;
  return result;
}

id static ActivitityTypeConfiguration.ConfigurationSetting.defaultValue.getter()
{
  if (qword_1EAFCB2A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EAFCB2B0;

  return v0;
}

void static ActivitityTypeConfiguration.ConfigurationSetting.defaultValue.setter(uint64_t a1)
{
  if (qword_1EAFCB2A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAFCB2B0;
  qword_1EAFCB2B0 = a1;
}

uint64_t (*static ActivitityTypeConfiguration.ConfigurationSetting.defaultValue.modify())()
{
  if (qword_1EAFCB2A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_19A715F18@<X0>(void *a1@<X8>)
{
  if (qword_1EAFCB2A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EAFCB2B0;
  *a1 = qword_1EAFCB2B0;

  return v2;
}

void sub_19A715FA4(id *a1)
{
  v1 = qword_1EAFCB2A0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EAFCB2B0;
  qword_1EAFCB2B0 = v2;
}

id ActivitityTypeConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitityTypeConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19A7161E4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    sub_19A714DAC();
  }

  else
  {
    __break(1u);
  }
}

id RemoteBaseSceneHostingController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id RemoteBaseSceneHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id RemoteBaseSceneHostingController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  sub_19A7AB664();
  *&v3[OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression] = 0;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id RemoteBaseSceneHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RemoteBaseSceneHostingController.init(coder:)(void *a1)
{
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  sub_19A7AB664();
  *&v1[OBJC_IVAR____TtC10StickerKit32RemoteBaseSceneHostingController_keyboardSuppression] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteBaseSceneHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_19A716A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, sel_initWithInfo_responder_, a3, a4);
}

id sub_19A716B10(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_19A716B6C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7.receiver = a1;
  v7.super_class = a4();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithXPCDictionary_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_19A716BFC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_19A716C98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), double a7)
{
  v12 = a1;
  if (a3)
  {
    v17[4] = a3;
    v17[5] = a4;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_19A6DB1A8;
    v17[3] = a5;
    v13 = _Block_copy(v17);
  }

  else
  {
    v13 = 0;
  }

  v14 = a6(a1);
  v18.receiver = v7;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, v12, a2, v13, a7);
  sub_19A60126C(a3);

  _Block_release(v13);
  return v15;
}

id sub_19A716E90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19A716EC8(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &qword_1EAFCA418);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_19A7AAFE4();
  v6 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v5];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
    sub_19A625DC4(&v12, &v13);
    swift_dynamicCast();
    v7 = v11;
    v8 = &v1[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
    *v8 = v10;
    *(v8 + 1) = v7;
    v9.receiver = v1;
    v9.super_class = ObjectType;
    objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for RemoteBaseSceneHostingController()
{
  result = qword_1EAFCAB88;
  if (!qword_1EAFCAB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A7170B4()
{
  sub_19A6D649C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_19A7172C8(void *a1)
{

  return sub_19A7173C4(a1, &OBJC_IVAR____TtC10StickerKit34StickerComicGaussBlurExpressShader_sigma);
}

id sub_19A717364(void *a1)
{

  return sub_19A7173C4(a1, &OBJC_IVAR____TtC10StickerKit41StickerComicGaussBlurExpressPassTwoShader_sigma);
}

id sub_19A7173C4(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + *a2);
  v5 = vcvt_f32_f64(*(v2 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
  v6 = v3;
  return [a1 setFragmentBytes:&v5 length:16 atIndex:0];
}

id sub_19A717464(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19A7174C0(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
  return [a1 setFragmentBytes:v3 length:8 atIndex:0];
}

id sub_19A717538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicSobelShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A717590()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCEE70);
  __swift_project_value_buffer(v0, qword_1EAFCEE70);
  return sub_19A7A9374();
}

void sub_19A717694(uint64_t a1, char a2)
{
  sub_19A717FD0(v2 + OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent, v14);
  if (v15)
  {
    sub_19A6C0AB4(v14, v11);
    sub_19A718008(v14);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v6 + 16))(a1, a2 & 1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_19A718008(v14);
  }

  if (qword_1EAFCB648 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1EAFCEE70);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB5A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19A5EE000, v8, v9, "Presenting avatar record", v10, 2u);
    MEMORY[0x19A907A30](v10, -1, -1);
  }
}

void sub_19A717870(uint64_t a1, uint64_t a2, char a3)
{
  sub_19A717FD0(v3 + OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent, v20);
  if (v20[3])
  {
    sub_19A6C0AB4(v20, v17);
    sub_19A718008(v20);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v8 + 24))(a1, a2, a3 & 1, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_19A718008(v20);
  }

  if (qword_1EAFCB648 != -1)
  {
    swift_once();
  }

  v9 = sub_19A7A9384();
  __swift_project_value_buffer(v9, qword_1EAFCEE70);

  v10 = sub_19A7A9364();
  v11 = sub_19A7AB5A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    v20[0] = a1;
    v20[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
    v14 = sub_19A7AB064();
    v16 = sub_19A62540C(v14, v15, v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_19A5EE000, v10, v11, "Dismissed avatar record: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x19A907A30](v13, -1, -1);
    MEMORY[0x19A907A30](v12, -1, -1);
  }
}

id sub_19A717B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarPickerCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_10StickerKit24AvatarPickerViewDelegate_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A717BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A717C34(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

id sub_19A717C94()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEEA0);
  sub_19A7A9E74();
  [v1 setDelegate_];

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_19A7A96B4();
  v3 = [v2 avatarPickerView];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v7)
  {
    v4 = sub_19A7AAFE4();

    [v2 selectAvatarRecordWithIdentifier:v4 animated:0];
  }

  return v3;
}

uint64_t sub_19A717E04@<X0>(void *a1@<X8>)
{
  sub_19A717FD0(v1, v8);
  v3 = type metadata accessor for AvatarPickerCoordinator();
  v4 = objc_allocWithZone(v3);
  sub_19A717FD0(v8, v4 + OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = sub_19A718008(v8);
  *a1 = v5;
  return result;
}

uint64_t sub_19A717E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A718518();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19A717EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A718518();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19A717F50()
{
  sub_19A718518();
  sub_19A7A9D24();
  __break(1u);
}

unint64_t sub_19A717F7C()
{
  result = qword_1EAFCEE98;
  if (!qword_1EAFCEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEE98);
  }

  return result;
}

double sub_19A718038@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A7180B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A74A73C();
}

void sub_19A71819C(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent;
    sub_19A717FD0(v1 + OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent, v24);
    if (v24[3])
    {
      sub_19A6C0AB4(v24, v21);
      swift_unknownObjectRetain();
      sub_19A718008(v24);
      v4 = v22;
      v5 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_19A717FD0(v1 + v3, v20);
      v6 = [a1 identifier];
      v7 = sub_19A7AB014();
      v9 = v8;

      (*(v5 + 8))(v20, v7, v9, v4, v5);

      sub_19A718008(v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_19A718008(v24);
    }

    if (qword_1EAFCB648 != -1)
    {
      swift_once();
    }

    v10 = sub_19A7A9384();
    __swift_project_value_buffer(v10, qword_1EAFCEE70);
    swift_unknownObjectRetain();
    v11 = sub_19A7A9364();
    v12 = sub_19A7AB5A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;
      v15 = [a1 identifier];
      v16 = sub_19A7AB014();
      v18 = v17;

      v19 = sub_19A62540C(v16, v18, v24);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_19A5EE000, v11, v12, "Selected avatar record: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x19A907A30](v14, -1, -1);
      MEMORY[0x19A907A30](v13, -1, -1);
    }

    swift_unknownObjectRelease();
  }
}

void sub_19A71840C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v3[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEEA0);
    sub_19A7A9E74();
    v0 = v4;
    sub_19A717FD0(v4 + OBJC_IVAR____TtC10StickerKit23AvatarPickerCoordinator_parent, v3);

    v1 = v3[7];
    sub_19A718008(v3);
    v2 = sub_19A7AAFE4();

    [v1 selectAvatarRecordWithIdentifier:v2 animated:0];
  }
}

unint64_t sub_19A718518()
{
  result = qword_1EAFCEEA8;
  if (!qword_1EAFCEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEEA8);
  }

  return result;
}

uint64_t LayoutDirectionTraitConfiguration.layoutDirection.getter()
{
  v1 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LayoutDirectionTraitConfiguration.layoutDirection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LayoutDirectionTraitConfiguration.__allocating_init(layoutDirection:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v3[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id LayoutDirectionTraitConfiguration.init(layoutDirection:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v1[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  swift_beginAccess();
  *&v1[v4] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id LayoutDirectionTraitConfiguration.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v3[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  v5 = sub_19A7AAFE4();
  v6 = [a1 decodeInt64ForKey_];

  swift_beginAccess();
  *&v3[v4] = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

id LayoutDirectionTraitConfiguration.init(bsxpcCoder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v1[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  v5 = sub_19A7AAFE4();
  v6 = [a1 decodeInt64ForKey_];

  swift_beginAccess();
  *&v1[v4] = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

void LayoutDirectionTraitConfiguration.encode(withBSXPCCoder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_19A7AAFE4();
  [a1 encodeInt64:v4 forKey:v5];
}

BOOL LayoutDirectionTraitConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19A6A60B4(a1, v9);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      v3 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
      swift_beginAccess();
      v4 = *(v1 + v3);
      v5 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
      swift_beginAccess();
      v6 = *&v8[v5];

      return v4 == v6;
    }
  }

  else
  {
    sub_19A612E20(v9);
  }

  return 0;
}

id sub_19A718C74()
{
  v0 = type metadata accessor for LayoutDirectionTraitConfiguration();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v1[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  swift_beginAccess();
  *&v1[v2] = -1;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1ED8B25D0 = result;
  return result;
}

id static LayoutDirectionTraitConfiguration.ConfigurationSetting.defaultValue.getter()
{
  if (qword_1ED8B25C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ED8B25D0;

  return v0;
}

void static LayoutDirectionTraitConfiguration.ConfigurationSetting.defaultValue.setter(uint64_t a1)
{
  if (qword_1ED8B25C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED8B25D0;
  qword_1ED8B25D0 = a1;
}

uint64_t (*static LayoutDirectionTraitConfiguration.ConfigurationSetting.defaultValue.modify())()
{
  if (qword_1ED8B25C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_19A718E80@<X0>(void *a1@<X8>)
{
  if (qword_1ED8B25C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED8B25D0;
  *a1 = qword_1ED8B25D0;

  return v2;
}

void sub_19A718F0C(id *a1)
{
  v1 = qword_1ED8B25C0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1ED8B25D0;
  qword_1ED8B25D0 = v2;
}

id LayoutDirectionTraitConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LayoutDirectionTraitConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A7190D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_19A7AB354();
  v5[4] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A71916C, v7, v6);
}

uint64_t sub_19A71916C()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19A7191D8()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EmojiKeyboardPrewarmAuditor.emojiKeyboardDidLaunch()()
{
  v1 = sub_19A7A8EF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (qword_1EAFCAA48 != -1)
  {
    swift_once();
  }

  v6 = sub_19A7A9384();
  __swift_project_value_buffer(v6, qword_1EAFCAA50);
  v7 = sub_19A7A9364();
  v8 = sub_19A7AB574();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19A5EE000, v7, v8, "Emoji keyboard did launch. Resetting prewarming timeout count.", v9, 2u);
    MEMORY[0x19A907A30](v9, -1, -1);
  }

  sub_19A7A8ED4();
  v10 = sub_19A7A8EA4();
  (*(v2 + 8))(v4, v1);
  v11 = sub_19A7AAFE4();
  [v5 setObject:v10 forKey:v11];

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v13 = sub_19A7AAFE4();
  [v5 setObject:v12 forKey:v13];
}

void sub_19A719490(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_19A7194C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_19A719510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A71954C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x79726F6765746163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6564496D657469;
    }

    else
    {
      v5 = 0x4164657461657263;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00726569666974;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65646E496D657469;
    }

    else
    {
      v5 = 0x79726F6765746163;
    }

    if (v4)
    {
      v6 = 0xE900000000000078;
    }

    else
    {
      v6 = 0xEC00000065707954;
    }
  }

  v7 = 0x6E6564496D657469;
  v8 = 0xEE00726569666974;
  if (a2 != 2)
  {
    v7 = 0x4164657461657263;
    v8 = 0xE900000000000074;
  }

  if (a2)
  {
    v3 = 0x65646E496D657469;
    v2 = 0xE900000000000078;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A7AC064();
  }

  return v11 & 1;
}

uint64_t sub_19A7196BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x676E6970706F7264;
    }

    if (v3 == 2)
    {
      v5 = 0x800000019A7C5140;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x697373696D736964;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000015;
  v8 = 0x800000019A7C5140;
  if (a2 != 2)
  {
    v7 = 0x676E6970706F7264;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x697373696D736964;
    v6 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A7AC064();
  }

  return v11 & 1;
}

uint64_t sub_19A719800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x6669636570736E55;
    }

    if (v2)
    {
      v3 = 0x800000019A7C4F70;
    }

    else
    {
      v3 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6A65526567616D49;
    v3 = 0xEE006E6F69746365;
  }

  else if (a1 == 3)
  {
    v3 = 0x800000019A7C4FA0;
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x6572617774666F53;
    v3 = 0xED0000726F727245;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x6669636570736E55;
    }

    if (a2)
    {
      v5 = 0x800000019A7C4F70;
    }

    else
    {
      v5 = 0xEB00000000646569;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE006E6F69746365;
    if (v4 != 0x6A65526567616D49)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000019A7C4FA0;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED0000726F727245;
    if (v4 != 0x6572617774666F53)
    {
LABEL_31:
      v7 = sub_19A7AC064();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_19A7199E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7475706E496465;
  v3 = 0x696669646F6D6E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7265696669646F6DLL;
    }

    else
    {
      v5 = 0x65646F4379656BLL;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007367616C46;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465696669646F6DLL;
    }

    else
    {
      v5 = 0x696669646F6D6E75;
    }

    if (v4)
    {
      v6 = 0xED00007475706E49;
    }

    else
    {
      v6 = 0xEF7475706E496465;
    }
  }

  v7 = 0x7265696669646F6DLL;
  v8 = 0xED00007367616C46;
  if (a2 != 2)
  {
    v7 = 0x65646F4379656BLL;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465696669646F6DLL;
    v2 = 0xED00007475706E49;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A7AC064();
  }

  return v11 & 1;
}

uint64_t sub_19A719B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_19A719BB8()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCEED0);
  __swift_project_value_buffer(v0, qword_1EAFCEED0);
  return sub_19A7A9374();
}

void sub_19A719C34()
{
  v1 = v0;
  if (qword_1EAFCB650 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCEED0);

  oslog = sub_19A7A9364();
  v3 = sub_19A7AB5A4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = 0xE400000000000000;
    v7 = 1701602409;
    v8 = 0x800000019A7C5140;
    v9 = 0xD000000000000015;
    if (*(v1 + 72) != 2)
    {
      v9 = 0x676E6970706F7264;
      v8 = 0xE800000000000000;
    }

    if (*(v1 + 72))
    {
      v7 = 0x697373696D736964;
      v6 = 0xEA0000000000676ELL;
    }

    if (*(v1 + 72) <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (*(v1 + 72) <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v12 = sub_19A62540C(v10, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_19A5EE000, oslog, v3, "State did change to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x19A907A30](v5, -1, -1);
    MEMORY[0x19A907A30](v4, -1, -1);
  }
}

uint64_t sub_19A719E14()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A719ED8()
{
  sub_19A7AB0B4();
}

uint64_t sub_19A719F88()
{
  sub_19A7AC184();
  sub_19A7AB0B4();

  return sub_19A7AC1B4();
}

uint64_t sub_19A71A048@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A71E7E0();
  *a1 = result;
  return result;
}

void sub_19A71A078(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0x800000019A7C5140;
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0x676E6970706F7264;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x697373696D736964;
    v2 = 0xEA0000000000676ELL;
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

uint64_t sub_19A71A0F8(uint64_t a1)
{
  v2 = sub_19A7A8C04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_19A7AB394();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    sub_19A7AB354();

    v11 = sub_19A7AB344();
    v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    *(v13 + 2) = v11;
    *(v13 + 3) = v14;
    *(v13 + 4) = v10;
    (*(v3 + 32))(&v13[v12], v5, v2);

    sub_19A6816F0(0, 0, v7, &unk_19A7BFB00, v13);
  }

  return result;
}

uint64_t sub_19A71A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  sub_19A7AB354();
  v5[18] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A71A3F0, v7, v6);
}

uint64_t sub_19A71A3F0()
{
  v28 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v3 = sub_19A7A9384();
    __swift_project_value_buffer(v3, qword_1EAFCEED0);
    v4 = sub_19A7A9364();
    v5 = sub_19A7AB5A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v5, "Did scroll to latest sticker", v6, 2u);
      MEMORY[0x19A907A30](v6, -1, -1);
    }

    v7 = sub_19A7A8BF4();
    if (v7)
    {
      v8 = v7;
      *(v0 + 112) = 0xD000000000000036;
      *(v0 + 120) = 0x800000019A7CC290;
      sub_19A7ABC54();
      if (*(v8 + 16) && (v9 = sub_19A6955D8(v0 + 16), (v10 & 1) != 0))
      {
        sub_19A6120B4(*(v8 + 56) + 32 * v9, v0 + 56);
        sub_19A6A0B0C(v0 + 16);

        if (*(v0 + 80))
        {
          type metadata accessor for CGRect(0);
          if (swift_dynamicCast())
          {
            v11 = *(v0 + 16);
            v12 = *(v0 + 24);
            v13 = *(v0 + 32);
            v14 = *(v0 + 40);
            v15 = sub_19A7A9364();
            v16 = sub_19A7AB5A4();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v18 = swift_slowAlloc();
              v27 = v18;
              *v17 = 136315138;
              v30.origin.x = v11;
              v30.origin.y = v12;
              v30.size.width = v13;
              v30.size.height = v14;
              v19 = NSStringFromCGRect(v30);
              v20 = sub_19A7AB014();
              v22 = v21;

              v23 = sub_19A62540C(v20, v22, &v27);

              *(v17 + 4) = v23;
              _os_log_impl(&dword_19A5EE000, v15, v16, "targetFrame: %s", v17, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v18);
              MEMORY[0x19A907A30](v18, -1, -1);
              MEMORY[0x19A907A30](v17, -1, -1);
            }

            *(v2 + 24) = v11;
            *(v2 + 32) = v12;
            *(v2 + 40) = v13;
            *(v2 + 48) = v14;
            *(v2 + 56) = 0;
            if (*(v2 + 72) == 2)
            {

LABEL_24:
              sub_19A71A828();
              goto LABEL_25;
            }

            v26 = sub_19A7AC064();

            if (v26)
            {
              goto LABEL_24;
            }
          }

LABEL_25:

          goto LABEL_19;
        }
      }

      else
      {

        sub_19A6A0B0C(v0 + 16);
        *(v0 + 56) = 0u;
        *(v0 + 72) = 0u;
      }
    }

    else
    {

      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    sub_19A5F2B54(v0 + 56, &unk_1EAFCD750);
  }

LABEL_19:
  v24 = *(v0 + 8);

  return v24();
}

void sub_19A71A828()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  if (v0[7])
  {
LABEL_2:
    if (*(v0 + 72) <= 1u && *(v0 + 72))
    {
    }

    else
    {
      v10 = sub_19A7AC064();

      if ((v10 & 1) == 0)
      {
        if (qword_1EAFCB650 != -1)
        {
          swift_once();
        }

        v11 = sub_19A7A9384();
        __swift_project_value_buffer(v11, qword_1EAFCEED0);

        v30 = sub_19A7A9364();
        v12 = sub_19A7AB584();

        if (os_log_type_enabled(v30, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v31 = v14;
          *v13 = 136315138;
          v15 = 0xD000000000000015;
          v16 = 0x800000019A7C5140;
          if (*(v1 + 72) != 2)
          {
            v15 = 0x676E6970706F7264;
            v16 = 0xE800000000000000;
          }

          v17 = 0xE400000000000000;
          if (*(v1 + 72))
          {
            v18 = 0x697373696D736964;
          }

          else
          {
            v18 = 1701602409;
          }

          if (*(v1 + 72))
          {
            v17 = 0xEA0000000000676ELL;
          }

          if (*(v1 + 72) <= 1u)
          {
            v19 = v18;
          }

          else
          {
            v19 = v15;
          }

          if (*(v1 + 72) <= 1u)
          {
            v20 = v17;
          }

          else
          {
            v20 = v16;
          }

          v21 = sub_19A62540C(v19, v20, &v31);

          *(v13 + 4) = v21;
          _os_log_impl(&dword_19A5EE000, v30, v12, "Skipping animation because state is %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x19A907A30](v14, -1, -1);
          MEMORY[0x19A907A30](v13, -1, -1);
        }

        else
        {
          v28 = v30;
        }

        return;
      }
    }

    *(v0 + 72) = 2;
    sub_19A719C34();
    v22 = sub_19A7AB394();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    sub_19A7AB354();

    v24 = sub_19A7AB344();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    v25[5] = v2;

    sub_19A6816F0(0, 0, v5, &unk_19A7BFA88, v25);

    return;
  }

  v7 = *(v0 + 5);
  v6 = *(v0 + 6);
  v9 = *(v0 + 3);
  v8 = *(v0 + 4);
  if (*(v0 + 72) == 2)
  {
    goto LABEL_31;
  }

  v27 = sub_19A7AC064();

  if ((v27 & 1) == 0)
  {
    if (*(v0 + 72) <= 1u && *(v0 + 72))
    {
LABEL_31:

      goto LABEL_36;
    }

    v29 = sub_19A7AC064();

    if ((v29 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

LABEL_36:
  *(v0 + 5) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 56) = 1;
  *(v0 + 72) = 3;
  sub_19A719C34();

  sub_19A71C33C(v9, v8, v7, v6);
}

uint64_t sub_19A71ADD4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_19A7AB354();
  v2[4] = sub_19A7AB344();
  v4 = sub_19A7AB2E4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19A71AE6C, v4, v3);
}

uint64_t sub_19A71AE6C()
{
  if ([objc_opt_self() useNewCollectionView])
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_19A71AF54;
    v2 = v0[2];

    return sub_19A71B0D4(v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19A71AF54()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_19A71B074, v3, v2);
}

uint64_t sub_19A71B074()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A71B0D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19A7ABDC4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_19A7AB354();
  v2[7] = sub_19A7AB344();
  v5 = sub_19A7AB2E4();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19A71B1C8, v5, v4);
}

uint64_t sub_19A71B1C8()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v0[3] + 16);
    v0[10] = v2;
    if (v2)
    {
      [v1 addSubview_];
      v3 = sub_19A7AC1E4();
      v5 = v4;
      sub_19A7AC0F4();
      v6 = swift_task_alloc();
      v0[11] = v6;
      *v6 = v0;
      v6[1] = sub_19A71B4C4;

      return sub_19A776184(v3, v5, 0, 0, 1);
    }

    v12 = v1;

    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v13 = sub_19A7A9384();
    __swift_project_value_buffer(v13, qword_1EAFCEED0);
    v14 = sub_19A7A9364();
    v15 = sub_19A7AB584();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19A5EE000, v14, v15, "Sticker view not found during moveStickerView", v16, 2u);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    sub_19A71BA38();
  }

  else
  {

    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1EAFCEED0);
    v9 = sub_19A7A9364();
    v10 = sub_19A7AB584();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19A5EE000, v9, v10, "Window is nil during moveStickerView", v11, 2u);
      MEMORY[0x19A907A30](v11, -1, -1);
    }

    sub_19A71BA38();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_19A71B4C4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_19A71F4B0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_19A71B658;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_19A71B658()
{
  v1 = v0[10];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

void sub_19A71B6D0(uint64_t a1)
{
  if ([objc_opt_self() useNewCollectionView])
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = objc_opt_self();
      v20 = v2;
      v4 = [v3 activeInstance];
      if (v4 && (v5 = v4, v6 = [v4 window], v5, v6))
      {
        if (qword_1EAFCB650 != -1)
        {
          swift_once();
        }

        v7 = sub_19A7A9384();
        __swift_project_value_buffer(v7, qword_1EAFCEED0);
        v8 = v6;
        v9 = sub_19A7A9364();
        v10 = sub_19A7AB5A4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 67109120;
          *(v11 + 4) = [v8 isHidden];

          _os_log_impl(&dword_19A5EE000, v9, v10, "keyboardWindow.hidden %{BOOL}d", v11, 8u);
          MEMORY[0x19A907A30](v11, -1, -1);
        }

        else
        {

          v9 = v8;
        }

        [v8 addSubview:v20];
        sub_19A71A828();
      }

      else
      {
        if (qword_1EAFCB650 != -1)
        {
          swift_once();
        }

        v12 = sub_19A7A9384();
        __swift_project_value_buffer(v12, qword_1EAFCEED0);
        v13 = sub_19A7A9364();
        v14 = sub_19A7AB584();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_19A5EE000, v13, v14, "Keyboard window is nil during dismissAndPrepare", v15, 2u);
          MEMORY[0x19A907A30](v15, -1, -1);
        }

        sub_19A71BA38();
      }
    }

    else
    {
      if (qword_1EAFCB650 != -1)
      {
        swift_once();
      }

      v16 = sub_19A7A9384();
      __swift_project_value_buffer(v16, qword_1EAFCEED0);
      v17 = sub_19A7A9364();
      v18 = sub_19A7AB584();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19A5EE000, v17, v18, "stickerView is nil during dismissAndPrepare", v19, 2u);
        MEMORY[0x19A907A30](v19, -1, -1);
      }

      sub_19A71BA38();
    }
  }
}

void sub_19A71BA38()
{
  v1 = v0;
  if (qword_1EAFCB650 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCEED0);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Drop animation did complete", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *(v1 + 16);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + 16) = 0;

  *(v1 + 72) = 0;
  sub_19A719C34();
  v8 = sub_19A7AAFE4();
  v9 = [objc_opt_self() defaultCenter];
  [v9 postNotificationName:v8 object:0 userInfo:0];
}

void sub_19A71BBCC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v7 = v6;
    v28 = a2;
    v13 = sub_19A7AACC4();
    v15 = v14;
    v16 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_19A612F68(v13, v15);
    v17 = sub_19A7A8E14();
    v18 = [v16 initWithData_];

    sub_19A612F14(v13, v15);
    if (v18)
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      [v19 setContentMode_];
      v20 = [a1 view];
      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = v20;
      v22 = [v20 window];

      if (v22)
      {
        [v22 addSubview_];
        [v19 setFrame_];
        sub_19A612F14(v13, v15);

        v23 = *(v7 + 16);
        *(v7 + 16) = v19;
      }

      else
      {

        sub_19A612F14(v13, v15);
        v23 = v18;
      }
    }

    else
    {
      if (qword_1EAFCB650 != -1)
      {
        swift_once();
      }

      v24 = sub_19A7A9384();
      __swift_project_value_buffer(v24, qword_1EAFCEED0);
      v25 = sub_19A7A9364();
      v26 = sub_19A7AB584();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_19A5EE000, v25, v26, "Could not decode sticker representation", v27, 2u);
        MEMORY[0x19A907A30](v27, -1, -1);
      }

      sub_19A71BA38();
      sub_19A612F14(v13, v15);
      v23 = v28;
    }
  }
}

void sub_19A71BEA0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
    v3 = v1;
    v4 = [v2 initWithMass:1.0 stiffness:9.8696 damping:6.0947 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:2.0];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = 0x3FE3333333333333;
    v14[4] = sub_19A71EF6C;
    v14[5] = v6;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_19A6815D4;
    v14[3] = &block_descriptor_75_2;
    v7 = _Block_copy(v14);
    v8 = v3;

    [v5 addAnimations_];
    _Block_release(v7);
    [v5 startAnimation];

    v9 = *(v0 + 64);
    *(v0 + 64) = v5;
  }

  else
  {
    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v10 = sub_19A7A9384();
    __swift_project_value_buffer(v10, qword_1EAFCEED0);
    v11 = sub_19A7A9364();
    v12 = sub_19A7AB584();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19A5EE000, v11, v12, "Sticker view not found during startLiftAnimation", v13, 2u);
      MEMORY[0x19A907A30](v13, -1, -1);
    }

    sub_19A71BA38();
  }
}

void sub_19A71C100(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v25 setContentMode_];
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 keyWindow];

  v12 = v25;
  if (v11)
  {
    v12 = v11;
    [v12 addSubview_];
    v13 = [v12 coordinateSpace];

    v14 = [v12 screen];
    v15 = [v14 coordinateSpace];

    [v13 convertRect:v15 toCoordinateSpace:{a2, a3, a4, a5}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v25 setFrame_];
    v24 = *(v5 + 16);
    *(v5 + 16) = v25;

    sub_19A71BEA0();
    *(v5 + 72) = 1;
    sub_19A719C34();
    sub_19A71A828();
  }
}

void sub_19A71C33C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = *(v4 + 16);
  if (v13)
  {
    v64 = v12;
    v14 = qword_1EAFCB650;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_19A7A9384();
    __swift_project_value_buffer(v16, qword_1EAFCEED0);
    v17 = sub_19A7A9364();
    v18 = sub_19A7AB574();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_19A5EE000, v17, v18, "Starting drop animation", v19, 2u);
      MEMORY[0x19A907A30](v19, -1, -1);
    }

    v20 = *(v5 + 64);
    if (v20)
    {
      [v20 stopAnimation_];
    }

    v65 = v5;
    v21 = [objc_opt_self() activeInstance];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 window];

      if (v23)
      {
        v24 = [v15 window];
        if (!v24 || (v25 = v24, sub_19A71EC78(), v26 = v23, v27 = sub_19A7AB924(), v25, v26, (v27 & 1) == 0))
        {
          [v23 addSubview_];
        }
      }
    }

    v63 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:322.2728 damping:29.91993 initialVelocity:{0.0, 0.0}];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v63 timingParameters:0.5232];
    v61 = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v15;
    *(v29 + 24) = a1;
    *(v29 + 32) = a2;
    *(v29 + 40) = a3;
    *(v29 + 48) = a4;
    v70 = sub_19A71E9F4;
    v71 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_19A6815D4;
    v69 = &block_descriptor_28;
    v30 = _Block_copy(&aBlock);
    v31 = v15;

    [v28 addAnimations_];
    _Block_release(v30);
    v62 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:3.0 assetResourcesForLivePhoto:{300.0, 50.0, 2.0, 2.0} + 3];
    v32 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v62 timingParameters:0.9205];
    v60 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = a1;
    *(v33 + 32) = a2;
    *(v33 + 40) = a3;
    *(v33 + 48) = a4;
    v70 = sub_19A71EA5C;
    v71 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_19A6815D4;
    v69 = &block_descriptor_34;
    v34 = _Block_copy(&aBlock);
    v35 = v31;

    [v32 &selRef:v34 setDestinationAlphaBlendFactor:?];
    _Block_release(v34);
    v36 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:118.6 damping:13.379 initialVelocity:{0.0, 0.0}];
    v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v36 timingParameters:0.9975];
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = a1;
    *(v38 + 32) = a2;
    *(v38 + 40) = a3;
    *(v38 + 48) = a4;
    v70 = sub_19A71EAC4;
    v71 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_19A6815D4;
    v69 = &block_descriptor_40_0;
    v39 = _Block_copy(&aBlock);
    v40 = v35;

    [v37 &selRef:v39 setDestinationAlphaBlendFactor:?];
    _Block_release(v39);
    v41 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:30.0 initialVelocity:{0.0, 0.0}];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.49875];
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v70 = sub_19A71EB5C;
    v71 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = sub_19A6815D4;
    v69 = &block_descriptor_46_0;
    v44 = _Block_copy(&aBlock);
    v45 = v40;

    [v42 &selRef:v44 setDestinationAlphaBlendFactor:?];
    _Block_release(v44);
    v46 = sub_19A7AB394();
    v47 = v64;
    (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
    sub_19A7AB354();
    v48 = v61;
    v49 = v60;
    v50 = v37;
    v51 = v42;
    v52 = v65;

    v53 = sub_19A7AB344();
    v54 = swift_allocObject();
    v55 = MEMORY[0x1E69E85E0];
    v54[2] = v53;
    v54[3] = v55;
    v54[4] = v48;
    v54[5] = v49;
    v54[6] = v50;
    v54[7] = v51;
    v54[8] = v52;
    sub_19A6816F0(0, 0, v47, &unk_19A7BFA98, v54);
  }

  else
  {
    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v56 = sub_19A7A9384();
    __swift_project_value_buffer(v56, qword_1EAFCEED0);
    v57 = sub_19A7A9364();
    v58 = sub_19A7AB584();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_19A5EE000, v57, v58, "Sticker view not found during startDropAnimation", v59, 2u);
      MEMORY[0x19A907A30](v59, -1, -1);
    }

    sub_19A71BA38();
  }
}

uint64_t sub_19A71CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = sub_19A7AB354();
  v8[8] = sub_19A7AB344();
  v10 = sub_19A7AB2E4();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_19A71CC48, v10, v9);
}

uint64_t sub_19A71CC48()
{
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v1 = sub_19A7AB344();
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v10;
  *(v2 + 32) = v9;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_19A71CD50;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v3, v4, v6, v1, v5, &unk_19A7BFAA8, v2, v7);
}

uint64_t sub_19A71CD50()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19A71CEB0, v3, v2);
}

uint64_t sub_19A71CEB0()
{

  sub_19A71BA38();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A71CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = sub_19A7AB354();
  v6[25] = sub_19A7AB344();
  v8 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A71D000, v8, v7);
}

uint64_t sub_19A71D000()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 32) = v4;
  *(inited + 16) = xmmword_19A7BB2E0;
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v32 = *v5;
  v33 = inited;
  v31 = inited & 0xC000000000000001;
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v10 = v2;
  v11 = 0;
  do
  {
    if (v31)
    {
      v14 = MEMORY[0x19A906130](v11, v33);
    }

    else
    {
      v14 = *(v33 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v0[23];
    v17 = v0[22];
    v18 = sub_19A7AB394();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v16, 1, 1, v18);
    v20 = v15;
    v21 = sub_19A7AB344();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = MEMORY[0x1E69E85E0];
    v22[4] = v20;
    sub_19A702E48(v16, v17);
    v23 = (*(v19 + 48))(v17, 1, v18);
    v24 = v0[22];
    if (v23 == 1)
    {
      sub_19A5F2B54(v0[22], &unk_1EAFCD690);
      if (v22[2])
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_19A7AB384();
      (*(v19 + 8))(v24, v18);
      if (v22[2])
      {
LABEL_9:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_19A7AB2E4();
        v27 = v26;
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    v25 = 0;
    v27 = 0;
LABEL_12:
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_19A7BFAC8;
    *(v28 + 24) = v22;

    if (v27 | v25)
    {
      v0[10] = 0;
      v0[11] = 0;
      v12 = v0 + 10;
      v0[12] = v25;
      v0[13] = v27;
    }

    else
    {
      v12 = 0;
    }

    ++v11;
    v13 = v0[23];
    v0[14] = 1;
    v0[15] = v12;
    v0[16] = v32;
    swift_task_create();

    sub_19A5F2B54(v13, &unk_1EAFCD690);
  }

  while (v11 != 4);
  swift_setDeallocating();
  swift_arrayDestroy();

  v29 = v0[1];

  return v29();
}