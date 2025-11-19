uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIKitDialogBridge.ActivePresentation(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 4) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 4))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void UIKitDialogBridge.updateExistingDialog(allDialogs:id:)(uint64_t a1, Swift::UInt32 *a2)
{
  v3 = v2;
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v6 & 1) != 0))
  {
    outlined init with copy of ConfirmationDialog(*(a1 + 56) + 184 * v5, v16);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  outlined init with copy of BoundInputsView?(v16, v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
  if (v15)
  {
    v7 = v14[0];
    outlined destroy of ConfirmationDialog(v14);
  }

  else
  {
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *(v3 + 48);
  if (v8)
  {
    outlined init with copy of BoundInputsView?(v16, v12, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    if (v13)
    {
      outlined init with take of ConfirmationDialog(v12, v14);
      v9 = [v8 popoverPresentationController];
      if (v9)
      {
        v10 = v9;
        UIKitDialogBridge.updateAnchor(dialog:presentationController:)(v14, v9);
      }

      outlined destroy of ConfirmationDialog(v14);
    }

    else
    {
      v11 = v8;
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v12, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

    if ((v7 ^ (*(v3 + 44) > 1u)))
    {
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        [v8 dismissViewControllerAnimated:1 completion:0];
        UIKitDialogBridge.reset()();
      }

      outlined init with copy of BoundInputsView?(v16, v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      if (v15)
      {

        outlined destroy of ConfirmationDialog(v14);
        v12[0] = v7;
        dispatch thunk of AnyLocation.set(_:transaction:)();

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }

      else
      {
        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v16, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v14, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitDialogBridge.showNewDialog(_:id:)(uint64_t a1, int *a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v70 - v6;
  v8 = type metadata accessor for DialogActionContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  result = AGWeakAttributeGetAttribute();
  v17 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    result = AGWeakAttributeGetAttribute();
    if (result != v17)
    {
      if (*(v2 + 44) < 2u)
      {
LABEL_56:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v78 = a1;
      v71 = v15;
      MEMORY[0x1EEE9AC00](result);
      type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(0, &lazy cache variable for type metadata for (PlatformItemList, PlatformItemList));
      static Update.ensure<A>(_:)();
      v70[0] = v81;
      v18 = v80;
      PlatformItemList.mergedContentItem.getter(v81, v14);
      v19 = *v14;
      v20 = *v14;
      _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v14, type metadata accessor for PlatformItemList.Item);
      if (v19)
      {
        v21 = [v20 string];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = *(v2 + 104);
      v80 = *(v2 + 96);
      v81 = v25;

      DialogActionContext.init(visiting:presentationType:environment:actionDelegate:)(v18, 1, &v80, v2, v11);
      type metadata accessor for PlatformAlertController();
      v26 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:0];
      v27 = v78;
      v28 = *(v78 + 120) == 2;
      v79 = v26;
      [v26 setSeverity_];
      v29 = *(v27 + 104);
      if (v29 != 2)
      {
        if (v29)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        [v79 setOverrideUserInterfaceStyle_];
      }

      v70[1] = v18;
      v31 = v79;
      if (*(v78 + 112))
      {

        v32 = UIKitDialogBridge.resolveIcon(_:)();
        [v31 setImage_];
      }

      v33 = swift_allocObject();
      swift_weakInit();
      v34 = &v31[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
      v35 = *&v31[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
      *v34 = partial apply for closure #2 in UIKitDialogBridge.showNewDialog(_:id:);
      v34[1] = v33;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v35);

      if (*(v78 + 64) == 1)
      {
        v36 = MEMORY[0x18D00C850](*(v78 + 48), *(v78 + 56));
        [v79 setTitle_];
      }

      if (v24)
      {

        v37 = MEMORY[0x18D00C850](v22, v24);
      }

      else
      {
        v37 = 0;
      }

      v38 = v79;
      v76 = v2;
      v77 = v24;
      [v79 setMessage_];

      v39 = v11[1];
      v72 = v9;
      v73 = v7;
      v74 = v11;
      v75 = v8;
      if (v39 >> 62)
      {
        v40 = __CocoaSet.count.getter();
        if (v40)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
LABEL_21:
          if (v40 >= 1)
          {
            v41 = 0;
            v42 = *(v78 + 84);
            while (1)
            {
              if ((v39 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x18D00E9C0](v41, v39);
                if ((v42 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v43 = *(v39 + 8 * v41 + 32);
                if ((v42 & 1) == 0)
                {
LABEL_29:
                  if ([v43 style] != 2)
                  {
                    v44 = Color.Resolved.kitColor.getter();
                    objc_opt_self();
                    v45 = swift_dynamicCastObjCClass();
                    if (!v45)
                    {
                    }

                    [v43 _setImageTintColor_];
                    [v43 _setTitleTextColor_];

                    v38 = v79;
                  }
                }
              }

              ++v41;
              [v38 addAction_];

              if (v40 == v41)
              {
                goto LABEL_33;
              }
            }
          }

          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_33:
      v46 = v76;
      v38[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing] = *(v76 + 88);
      static _GraphInputs.defaultInterfaceIdiom.getter();
      v47 = static Solarium.isEnabled(for:)();
      v48 = v74;
      v49 = v75;
      if (v47)
      {
        [v38 setPreferredAction_];
      }

      v50 = [v38 popoverPresentationController];
      if (v50)
      {
        UIKitDialogBridge.updateAnchor(dialog:presentationController:)(v78, v50);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v52 = Strong;
      v53 = [Strong presentedViewController];
      if (v53)
      {
        v54 = v53;
        if (([v53 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v55 = [v54 preferredTransition];
            if (v55)
            {

              _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
              v56 = swift_dynamicCastClass();
              if (v56)
              {
                v57 = v56;
                v58 = swift_unknownObjectWeakLoadStrong();
                if (v58)
                {
                  v59 = v58;
                  v60 = v54;
                  v61 = [v59 window];
                  if (v61)
                  {
                    v62 = v61;

                    v59 = v62;
                  }

                  else
                  {
                    [v57 setPreferredTransition_];
                  }
                }
              }
            }

            [v52 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      v63 = swift_unknownObjectWeakLoadStrong();
      if (!v63)
      {
        goto LABEL_55;
      }

      v64 = v63;

      v65 = v79;
      [v64 presentViewController:v79 animated:1 completion:0];

      swift_beginAccess();
      v66 = *(v46 + 48);
      *(v46 + 48) = v65;

      v67 = v48;
      v68 = v73;
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v67, v73, type metadata accessor for DialogActionContext);
      (*(v72 + 56))(v68, 0, 1, v49);
      v69 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
      swift_beginAccess();
      outlined assign with take of DialogActionContext?(v68, v46 + v69);
      result = swift_endAccess();
      *(v46 + 40) = v71;
      *(v46 + 44) = 1;
    }
  }

  return result;
}

void UIKitDialogBridge.updateExistingAlert(allAlerts:id:)(uint64_t a1, Swift::UInt32 *a2)
{
  v3 = v2;
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a2), (v6 & 1) != 0))
  {
    v7 = (*(a1 + 56) + 248 * v5);
    v8 = v7[3];
    v10 = *v7;
    v9 = v7[1];
    v27[2] = v7[2];
    v27[3] = v8;
    v27[0] = v10;
    v27[1] = v9;
    v11 = v7[7];
    v13 = v7[4];
    v12 = v7[5];
    v27[6] = v7[6];
    v27[7] = v11;
    v27[4] = v13;
    v27[5] = v12;
    v14 = v7[11];
    v16 = v7[8];
    v15 = v7[9];
    v27[10] = v7[10];
    v27[11] = v14;
    v27[8] = v16;
    v27[9] = v15;
    v18 = v7[13];
    v17 = v7[14];
    v19 = v7[12];
    v28 = *(v7 + 30);
    v27[13] = v18;
    v27[14] = v17;
    v27[12] = v19;
    memmove(&__dst, v7, 0xF8uLL);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&__dst, v20, v21, v22);
    v23 = LOBYTE(v27[0]);
    outlined init with copy of AlertStorage(v27, &v46);
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v61 = v45;
    v54 = v38;
    v55 = v39;
    v56 = v40;
    v57 = v41;
    v50 = v34;
    v51 = v35;
    v52 = v36;
    v53 = v37;
    v46 = __dst;
    v47 = v31;
    v48 = v32;
    v49 = v33;
  }

  else
  {
    _s7SwiftUI12AlertStorageVSgWOi0_(&v46);
    v23 = 0;
  }

  swift_beginAccess();
  v24 = *(v3 + 48);
  if (v24)
  {
    if ((v23 ^ (*(v3 + 44) > 1u)))
    {
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v46, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    }

    else
    {
      v25 = v24;
      v26 = v25;
      if ((v23 & 1) == 0)
      {
        [v25 dismissViewControllerAnimated:1 completion:0];
        UIKitDialogBridge.reset()();
      }

      v42 = v58;
      v43 = v59;
      v44 = v60;
      v45 = v61;
      v38 = v54;
      v39 = v55;
      v40 = v56;
      v41 = v57;
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      __dst = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      if (_s7SwiftUI12AlertStorageVSgWOg(&__dst) == 1)
      {
      }

      else
      {
        v29 = v23;

        dispatch thunk of AnyLocation.set(_:transaction:)();

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v46, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitDialogBridge.showNewAlert(_:id:)(uint64_t a1, int *a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = v87 - v5;
  v96 = type metadata accessor for DialogActionContext(0);
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v97 = (v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v100 = *(a1 + 48);
  v95 = v12;
  v13 = *(a1 + 65);
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v90 = *(a1 + 88);
  v91 = v11;
  v98 = *(a1 + 96);
  v16 = *(a1 + 97);
  v17 = *(a1 + 208);
  *&v114[32] = *(a1 + 192);
  *&v114[48] = v17;
  *&v114[64] = *(a1 + 224);
  *&v114[80] = *(a1 + 240);
  v18 = *(a1 + 176);
  *v114 = *(a1 + 160);
  *&v114[16] = v18;
  v92 = v10;
  v19 = *a2;
  result = AGWeakAttributeGetAttribute();
  v21 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    return result;
  }

  result = AGWeakAttributeGetAttribute();
  if (result == v21)
  {
    return result;
  }

  v88 = v19;
  if (*(v99 + 44) < 2u)
  {
LABEL_65:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v87[1] = v14;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role)(0, &lazy cache variable for type metadata for (PlatformItemList, PlatformItemList));
  static Update.ensure<A>(_:)();
  v89 = v108;
  v87[3] = v109;
  PlatformItemList.mergedContentItem.getter(v109, v9);
  v22 = *v9;
  v23 = *v9;
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v9, type metadata accessor for PlatformItemList.Item);
  if (v22)
  {
    v24 = [v23 string];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = v99;
  v29 = *(v99 + 104);
  v108 = *(v99 + 96);
  *&v109 = v29;

  v30 = v89;

  DialogActionContext.init(visiting:presentationType:environment:actionDelegate:)(v30, 0, &v108, v28, v97);
  type metadata accessor for PlatformAlertController();
  v31 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:1];
  v32 = v16 == 2;
  v33 = v31;
  v34 = v32;
  [v31 setSeverity_];
  if (v13 != 2)
  {
    if (v13)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v33 setOverrideUserInterfaceStyle_];
  }

  if (v15)
  {

    v36 = UIKitDialogBridge.resolveIcon(_:)();
    [v33 setImage_];
  }

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = &v33[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
  v39 = *&v33[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_onDismissAction];
  *v38 = partial apply for closure #2 in UIKitDialogBridge.showNewAlert(_:id:);
  v38[1] = v37;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v39);

  v40 = MEMORY[0x18D00C850](v100, v95);
  [v33 setTitle_];

  if (v27)
  {

    v41 = MEMORY[0x18D00C850](v25, v27);
  }

  else
  {
    v41 = 0;
  }

  v42 = v98;
  [v33 setMessage_];

  v43 = v97[1];
  v87[2] = v27;
  if (v43 >> 62)
  {
    v44 = __CocoaSet.count.getter();
    v100 = v33;
    if (v44)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v100 = v33;
    if (v44)
    {
LABEL_22:
      if (v44 >= 1)
      {
        v45 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x18D00E9C0](v45, v43);
            if ((v42 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);
            if ((v42 & 1) == 0)
            {
LABEL_30:
              if ([v46 style] != 2)
              {
                v47 = Color.Resolved.kitColor.getter();
                objc_opt_self();
                v48 = swift_dynamicCastObjCClass();
                if (!v48)
                {
                }

                [v46 _setImageTintColor_];
                [v46 _setTitleTextColor_];

                v33 = v100;
                v42 = v98;
              }
            }
          }

          ++v45;
          [v33 addAction_];

          if (v44 == v45)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

LABEL_34:
  v49 = *(v97 + *(v96 + 32));
  if (v49 >> 62)
  {
    v50 = __CocoaSet.count.getter();
    if (v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
LABEL_36:
      if (v50 < 1)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v51 = 0;
      do
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x18D00E9C0](v51, v49);
        }

        else
        {
          v52 = *(v49 + 8 * v51 + 32);
        }

        v53 = v52;
        ++v51;
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        *(&v110 + 1) = partial apply for closure #3 in UIKitDialogBridge.showNewAlert(_:id:);
        *&v111 = v54;
        v108 = MEMORY[0x1E69E9820];
        *&v109 = 1107296256;
        *(&v109 + 1) = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        *&v110 = &block_descriptor_80;
        v55 = _Block_copy(&v108);
        v56 = v53;

        [v100 addTextFieldWithConfigurationHandler_];
        _Block_release(v55);
      }

      while (v50 != v51);
    }
  }

  v57 = v100;
  if (*v114)
  {
    v108 = *v114;
    v111 = *&v114[40];
    v112 = *&v114[56];
    v113 = *&v114[72];
    v109 = *&v114[8];
    v110 = *&v114[24];
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
    v59 = objc_allocWithZone(v58);
    v105 = *&v114[48];
    v106 = *&v114[64];
    v107 = *&v114[80];
    v102 = *v114;
    v103 = *&v114[16];
    v104 = *&v114[32];
    outlined init with copy of BoundInputsView?(v114, v101, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, type metadata accessor for AnyAccessibilityValue?);
    outlined init with copy of BoundInputsView(&v102, v101);
    v60 = specialized UIHostingController.init(rootView:)(&v108);
    v61 = *&v60[direct field offset for UIHostingController.host];
    v62 = objc_opt_self();
    v63 = v61;
    v64 = [v62 clearColor];
    [v63 setBackgroundColor_];

    [v57 setContentViewController_];
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v114, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, type metadata accessor for AnyAccessibilityValue?);
  }

  v57[OBJC_IVAR____TtC7SwiftUI23PlatformAlertController_allowsSecureDrawing] = *(v99 + 88);
  [v57 setPreferredAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_63;
  }

  v66 = Strong;
  v67 = [Strong presentedViewController];
  if (v67)
  {
    v68 = v67;
    if (([v67 isBeingDismissed] & 1) == 0)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v69 = [v68 preferredTransition];
        if (v69)
        {

          _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_2(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
          v70 = swift_dynamicCastClass();
          if (v70)
          {
            v71 = v70;
            v72 = swift_unknownObjectWeakLoadStrong();
            if (v72)
            {
              v73 = v72;
              v74 = v68;
              v75 = [v73 window];
              if (v75)
              {
                v76 = v75;

                v73 = v76;
              }

              else
              {
                [v71 setPreferredTransition_];
              }

              v57 = v100;
            }
          }
        }

        [v66 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  v77 = swift_unknownObjectWeakLoadStrong();
  if (!v77)
  {
    goto LABEL_64;
  }

  v78 = v77;

  v79 = swift_allocObject();
  v80 = v99;
  swift_weakInit();
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  v82 = v91;
  *(v81 + 24) = v92;
  *(v81 + 28) = v82;
  *&v104 = partial apply for closure #4 in UIKitDialogBridge.showNewAlert(_:id:);
  *(&v104 + 1) = v81;
  *&v102 = MEMORY[0x1E69E9820];
  *(&v102 + 1) = 1107296256;
  *&v103 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v103 + 1) = &block_descriptor_26_0;
  v83 = _Block_copy(&v102);

  [v78 presentViewController:v57 animated:1 completion:v83];
  _Block_release(v83);

  swift_beginAccess();
  v84 = *(v80 + 48);
  *(v80 + 48) = v57;

  v85 = v94;
  outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v97, v94, type metadata accessor for DialogActionContext);
  (*(v93 + 56))(v85, 0, 1, v96);
  v86 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  outlined assign with take of DialogActionContext?(v85, v80 + v86);
  result = swift_endAccess();
  *(v80 + 40) = v88;
  *(v80 + 44) = 0;
  return result;
}

void UIKitDialogBridge.updateAnchor(dialog:presentationController:)(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [a2 setBarButtonItem_];
  }

  else
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      [a2 setSourceView_];
      (*(*(v7 + 8) + 8))(ObjectType);
      ViewGraph.transform.getter();

      type metadata accessor for CGRect(0);
      Anchor.convert(to:)();
      v9 = v13;
      v10 = v14;
      v11 = fmin(v13, v14) < 0.0;
      if (v13 <= 0.0 && v11)
      {
        v9 = 0.0;
      }

      if (v11 && v14 <= 0.0)
      {
        v10 = 0.0;
      }

      [a2 setSourceRect_];
      static _GraphInputs.defaultInterfaceIdiom.getter();
      if (static Solarium.isEnabled(for:)())
      {
        [a2 setCanOverlapSourceViewRect_];
      }
    }
  }
}

uint64_t UIKitDialogBridge.reset()()
{
  v1 = v0;
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  UIKitDialogBridge.stopTrackingUpdates()();
  v5 = *(v0 + 40);
  if (!*(v0 + 44))
  {
    swift_beginAccess();
    v9 = *(v0 + 80);
    if (v9)
    {
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v11 & 1) != 0))
      {
        v12 = (*(v9 + 56) + 248 * v10);
        v14 = v12[2];
        v13 = v12[3];
        v15 = v12[1];
        v48 = *v12;
        v49 = v15;
        v50 = v14;
        v51 = v13;
        v16 = v12[4];
        v17 = v12[5];
        v18 = v12[7];
        v54 = v12[6];
        v55 = v18;
        v52 = v16;
        v53 = v17;
        v19 = v12[8];
        v20 = v12[9];
        v21 = v12[11];
        v58 = v12[10];
        v59 = v21;
        v56 = v19;
        v57 = v20;
        v22 = v12[12];
        v23 = v12[13];
        v24 = v12[14];
        v63 = *(v12 + 30);
        v61 = v23;
        v62 = v24;
        v60 = v22;
        memmove(&v64, v12, 0xF8uLL);
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v64, v25, v26, v27);
        outlined init with copy of AlertStorage(&v48, &v32);
      }

      else
      {
        _s7SwiftUI12AlertStorageVSgWOi0_(&v64);
      }

      v60 = v76;
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v56 = v72;
      v57 = v73;
      v58 = v74;
      v59 = v75;
      v52 = v68;
      v53 = v69;
      v54 = v70;
      v55 = v71;
      v48 = v64;
      v49 = v65;
      v50 = v66;
      v51 = v67;
      if (_s7SwiftUI12AlertStorageVSgWOg(&v48) != 1)
      {
        v44 = v76;
        v45 = v77;
        v46 = v78;
        v40 = v72;
        v41 = v73;
        v42 = v74;
        v43 = v75;
        v36 = v68;
        v37 = v69;
        v38 = v70;
        v39 = v71;
        v32 = v64;
        v33 = v65;
        v47 = v79;
        v34 = v66;
        v35 = v67;

        swift_endAccess();
        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v32, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
        v80 = 0;
        goto LABEL_20;
      }

      v44 = v76;
      v45 = v77;
      v46 = v78;
      v47 = v79;
      v40 = v72;
      v41 = v73;
      v42 = v74;
      v43 = v75;
      v36 = v68;
      v37 = v69;
      v38 = v70;
      v39 = v71;
      v32 = v64;
      v33 = v65;
      v34 = v66;
      v35 = v67;
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v32, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    }

    goto LABEL_18;
  }

  if (*(v0 + 44) == 1)
  {
    swift_beginAccess();
    v6 = *(v0 + 64);
    if (v6)
    {
      if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
      {
        outlined init with copy of ConfirmationDialog(*(v6 + 56) + 184 * v7, &v64);
        if (v65)
        {

          _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v64, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
          swift_endAccess();
          LOBYTE(v48) = 0;
LABEL_20:
          dispatch thunk of AnyLocation.set(_:transaction:)();

          goto LABEL_21;
        }
      }

      else
      {
        LOWORD(v75) = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
      }

      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v64, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
    }

LABEL_18:
    swift_endAccess();
  }

LABEL_21:
  *(v1 + 40) = 0;
  *(v1 + 44) = 2;
  swift_beginAccess();
  v28 = *(v1 + 48);
  *(v1 + 48) = 0;

  swift_beginAccess();
  *(v1 + 64) = 0;

  v29 = type metadata accessor for DialogActionContext(0);
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  v30 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  outlined assign with take of DialogActionContext?(v4, v1 + v30);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = 0;
}

uint64_t UIKitDialogBridge.resolveIcon(_:)()
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for Text.Style?, MEMORY[0x1E6981008]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  *&v21[0] = v8;
  *(&v21[0] + 1) = v7;
  v9 = type metadata accessor for Text.Style();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);

  MEMORY[0x18D008220](v10);
  ImageResolutionContext.init(environment:textStyle:transaction:)();
  Image.resolve(in:)();
  if (v23)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    outlined destroy of Image.Resolved(v21);
  }

  else
  {
    v17 = v21[4];
    v18[0] = v22[0];
    *(v18 + 12) = *(v22 + 12);
    v13 = v21[0];
    v14 = v21[1];
    v15 = v21[2];
    v16 = v21[3];
    outlined init with copy of GraphicsImage(v21, v19);
    v11 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, 0);
    outlined destroy of Image.Resolved(v21);
    v19[4] = v17;
    v20[0] = v18[0];
    *(v20 + 12) = *(v18 + 12);
    v19[0] = v13;
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    outlined destroy of GraphicsImage(v19);
  }

  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v6, MEMORY[0x1E697FE88]);
  return v11;
}

void UIKitDialogBridge.updateAlertActionsEnabled(_:)(unint64_t a1)
{
  v3 = type metadata accessor for PlatformItemList.Item();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v39 - v8);
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for DialogActionContext(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 44))
  {
    swift_beginAccess();
    v17 = *(v1 + 48);
    if (v17)
    {
      v45 = v16;
      v18 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
      swift_beginAccess();
      outlined init with copy of DialogActionContext?(v1 + v18, v12);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        outlined destroy of CustomRecursiveStringConvertible?(v12, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
        return;
      }

      v46 = v9;
      v44 = v6;
      v19 = v45;
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v12, v45, type metadata accessor for DialogActionContext);
      v20 = v17;
      v21 = [v20 actions];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
LABEL_36:
        v23 = __CocoaSet.count.getter();
        if (v23)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_8:
          v39 = v20;
          v40 = v1;
          v43 = v4;
          if (v23 < 1)
          {
            __break(1u);
            return;
          }

          v41 = 0;
          v4 = 0;
          v19 = *(v19 + v13[7]);
          v42 = a1;
          while (1)
          {
            v24 = (v22 & 0xC000000000000001) != 0 ? MEMORY[0x18D00E9C0](v4, v22) : *(v22 + 8 * v4 + 32);
            v13 = v24;
            if (*(v19 + 16))
            {
              v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
              if (v26)
              {
                v1 = *(*(v19 + 56) + 8 * v25);
                if ((v1 & 0x8000000000000000) == 0 && v1 < *(a1 + 16))
                {
                  break;
                }
              }
            }

LABEL_11:
            if (v23 == ++v4)
            {

              _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v45, type metadata accessor for DialogActionContext);
              if (v41)
              {
                *(v40 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList) = a1;
              }

              return;
            }
          }

          v27 = a1;
          a1 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v20 = *(v43 + 72) * v1;
          v28 = v46;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v27 + a1 + v20, v46, type metadata accessor for PlatformItemList.Item);
          if (v1 >= *(*v45 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v29 = v44;
          _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(*v45 + a1 + v20, v44, type metadata accessor for PlatformItemList.Item);
          v30 = *v29;
          v31 = *v28;
          if (*v29)
          {
            if (v31)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
              v32 = v31;
              v33 = v30;
              v34 = static NSObject.== infix(_:_:)();

              if (v34)
              {
LABEL_23:
                v35 = *(v44 + 528);
                v36 = *(v46 + 528);
                if (v35 == 4)
                {
                  v37 = v36 == 4;
                }

                else
                {
                  v37 = v35 == v36;
                }

                a1 = v42;
                if (v37)
                {
                  v38 = [v13 isEnabled];
                  if (v38 != *(v46 + 56))
                  {
                    [v13 setEnabled_];
                    v41 = 1;
                  }
                }

                goto LABEL_32;
              }
            }
          }

          else if (!v31)
          {
            goto LABEL_23;
          }

          a1 = v42;
LABEL_32:

          _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v44, type metadata accessor for PlatformItemList.Item);
          _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v46, type metadata accessor for PlatformItemList.Item);
          goto LABEL_11;
        }
      }

      _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v19, type metadata accessor for DialogActionContext);
    }
  }
}

void UIKitDialogBridge.startTrackingUpdates(actions:)()
{
  v14 = *MEMORY[0x1E69E9840];
  static Semantics.v5.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    Attribute = AGWeakAttributeGetAttribute();
    v2 = *MEMORY[0x1E698D3F8];
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      v3 = Attribute;
      v4 = AGGraphGetAttributeSubgraph();
      IsValid = AGSubgraphIsValid();

      if (IsValid)
      {
        MEMORY[0x18D00ABE0]();
        v6 = OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector;
        swift_beginAccess();
        if (AGWeakAttributeGetAttribute() == v2)
        {
          swift_endAccess();
          v7 = AGGraphGetAttributeSubgraph();
          AGGraphClearUpdate();
          v8 = AGSubgraphGetCurrent();
          AGSubgraphSetCurrent();
          swift_weakInit();
          v13 = v3;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          lazy protocol witness table accessor for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions();
          Attribute.init<A>(body:value:flags:update:)();
          outlined destroy of weak AnyGestureResponder?(v12);
          AGGraphGetFlags();
          AGGraphSetFlags();
          v9 = AGCreateWeakAttribute();
          swift_beginAccess();
          *(v0 + v6) = v9;
          AGSubgraphSetCurrent();

          AGGraphSetUpdate();
        }

        else
        {
          v10 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v10);
          MEMORY[0x1EEE9AC00](v11);
          AGGraphMutateAttribute();
          AGGraphGetFlags();
          AGGraphSetFlags();
        }

        static Update.end()();
      }
    }
  }
}

uint64_t UIKitDialogBridge.stopTrackingUpdates()()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
  swift_beginAccess();
  Attribute = AGWeakAttributeGetAttribute();
  v3 = *MEMORY[0x1E698D3F8];
  swift_endAccess();
  if (Attribute != v3)
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  result = swift_beginAccess();
  *v1 = 0;
  return result;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    AGGraphGetValue();

    UIKitDialogBridge.updateAlertActionsEnabled(_:)(v1);
  }

  return result;
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
    swift_beginAccess();
    *v1 = 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_actionsChangeDetector);
    swift_beginAccess();
    *v1 = 0;
  }

  return result;
}

uint64_t closure #1 in UIKitDialogBridge.showNewDialog(_:id:)@<X0>(void *a1@<X8>)
{
  AGGraphClearUpdate();
  v2 = *AGGraphGetValue();

  v3 = *AGGraphGetValue();

  result = AGGraphSetUpdate();
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t closure #2 in UIKitDialogBridge.showNewDialog(_:id:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    static Semantics.v4.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v1;
      *(v2 + 24) = 0;

      onNextMainRunLoop(do:)();
    }

    else
    {
      dismissActually #1 () in UIKitDialogBridge.dismiss(triggerCancellation:)(v1, 0);
    }
  }

  return result;
}

void closure #3 in UIKitDialogBridge.showNewAlert(_:id:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v0[8] = 0;
  PlatformTextFieldCoordinator.configure(field:)(v0);
  outlined destroy of weak FallbackResponderProvider?(v0);
  PlatformTextFieldCoordinator.update()();
}

uint64_t closure #4 in UIKitDialogBridge.showNewAlert(_:id:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UIKitDialogBridge.startTrackingUpdates(actions:)();
  }

  return result;
}

Swift::Void __swiftcall UIKitDialogBridge.performDialogAction(_:)(UIAlertAction a1)
{
  v3 = type metadata accessor for PlatformItemList.Item();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = (v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext);
  swift_beginAccess();
  v8 = type metadata accessor for DialogActionContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) || (v10 = *(v7 + *(v8 + 28)), !*(v10 + 16)) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1.super.isa), (v12 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList))
  {
    v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastPlatformItemList);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9(v7, 1, v8))
  {
    return;
  }

  v14 = *v7;

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v13 >= *(v14 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6, type metadata accessor for PlatformItemList.Item);

  v15 = *(v6 + 456);
  v21[2] = *(v6 + 440);
  v21[3] = v15;
  v22 = v6[472];
  v16 = *(v6 + 424);
  v21[0] = *(v6 + 408);
  v21[1] = v16;
  outlined init with copy of BoundInputsView?(v21, v20, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v6, type metadata accessor for PlatformItemList.Item);
  v17 = *(&v21[0] + 1);
  if (*(&v21[0] + 1) != 1)
  {
    outlined copy of AppIntentExecutor?(*(&v21[0] + 1));
    v18 = _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v21, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
    if (v17)
    {
      v17(v18);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);
    }
  }
}

uint64_t dismissActually #1 () in UIKitDialogBridge.dismiss(triggerCancellation:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DialogActionContext.CancelType(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = *(a1 + 40);
  if (*(a1 + 44))
  {
    if (*(a1 + 44) == 1)
    {
      swift_beginAccess();
      v15 = *(a1 + 64);
      if (v15)
      {
        if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v17 & 1) != 0))
        {
          outlined init with copy of ConfirmationDialog(*(v15 + 56) + 184 * v16, &v79);
          if (v80)
          {

            _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v79, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
            swift_endAccess();
            LOBYTE(v63) = 0;
            goto LABEL_26;
          }
        }

        else
        {
          LOWORD(v90) = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v79 = 0u;
        }

        _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v79, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, type metadata accessor for AnyAccessibilityValue?);
      }

      swift_endAccess();
      if ((a2 & 1) == 0)
      {
        return UIKitDialogBridge.reset()();
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((a2 & 1) == 0)
    {
      return UIKitDialogBridge.reset()();
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v18 = *(a1 + 80);
  if (!v18)
  {
LABEL_19:
    swift_endAccess();
    goto LABEL_20;
  }

  if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 248 * v19);
    v23 = v21[2];
    v22 = v21[3];
    v24 = v21[1];
    v63 = *v21;
    v64 = v24;
    v65 = v23;
    v66 = v22;
    v25 = v21[4];
    v26 = v21[5];
    v27 = v21[7];
    v69 = v21[6];
    v70 = v27;
    v67 = v25;
    v68 = v26;
    v28 = v21[8];
    v29 = v21[9];
    v30 = v21[11];
    v73 = v21[10];
    v74 = v30;
    v71 = v28;
    v72 = v29;
    v31 = v21[12];
    v32 = v21[13];
    v33 = v21[14];
    v78 = *(v21 + 30);
    v76 = v32;
    v77 = v33;
    v75 = v31;
    memmove(&v79, v21, 0xF8uLL);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v79, v34, v35, v36);
    outlined init with copy of AlertStorage(&v63, &v47);
  }

  else
  {
    _s7SwiftUI12AlertStorageVSgWOi0_(&v79);
  }

  v75 = v91;
  v76 = v92;
  v77 = v93;
  v78 = v94;
  v71 = v87;
  v72 = v88;
  v73 = v89;
  v74 = v90;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v70 = v86;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  if (_s7SwiftUI12AlertStorageVSgWOg(&v63) == 1)
  {
    v59 = v91;
    v60 = v92;
    v61 = v93;
    v62 = v94;
    v55 = v87;
    v56 = v88;
    v57 = v89;
    v58 = v90;
    v51 = v83;
    v52 = v84;
    v53 = v85;
    v54 = v86;
    v47 = v79;
    v48 = v80;
    v49 = v81;
    v50 = v82;
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v47, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
    goto LABEL_19;
  }

  v59 = v91;
  v60 = v92;
  v61 = v93;
  v55 = v87;
  v56 = v88;
  v57 = v89;
  v58 = v90;
  v51 = v83;
  v52 = v84;
  v53 = v85;
  v54 = v86;
  v47 = v79;
  v48 = v80;
  v62 = v94;
  v49 = v81;
  v50 = v82;

  swift_endAccess();
  _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v47, &lazy cache variable for type metadata for AlertStorage?, &type metadata for AlertStorage, type metadata accessor for AnyAccessibilityValue?);
  v95 = 0;
LABEL_26:
  dispatch thunk of AnyLocation.set(_:transaction:)();

  if ((a2 & 1) == 0)
  {
    return UIKitDialogBridge.reset()();
  }

LABEL_21:
  v37 = a1 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext;
  swift_beginAccess();
  v38 = type metadata accessor for DialogActionContext(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v39 = *(v38 + 24);
    if (!(*(v5 + 48))(v37 + v39, 1, v4))
    {
      _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(v37 + v39, v10, type metadata accessor for DialogActionContext.CancelType);
      outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v10, v7, type metadata accessor for DialogActionContext.CancelType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v7, v13, type metadata accessor for PlatformItemList.Item);
        v40 = type metadata accessor for PlatformItemList.Item();
        (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
      }

      else
      {
        _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(v7, v13, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, type metadata accessor for DialogActionContext?);
      }

      v41 = type metadata accessor for PlatformItemList.Item();
      if ((*(*(v41 - 8) + 48))(v13, 1, v41) == 1)
      {
        outlined destroy of CustomRecursiveStringConvertible?(v13, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      }

      else
      {
        LOBYTE(v83) = v13[472];
        v42 = *(v13 + 456);
        v81 = *(v13 + 440);
        v82 = v42;
        v43 = *(v13 + 424);
        v79 = *(v13 + 408);
        v80 = v43;
        outlined init with copy of BoundInputsView?(&v79, &v63, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
        _s7SwiftUI16PlatformItemListV0D0VWOhTm_3(v13, type metadata accessor for PlatformItemList.Item);
        v44 = *(&v79 + 1);
        if (*(&v79 + 1) != 1)
        {
          outlined copy of AppIntentExecutor?(*(&v79 + 1));
          v45 = _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v79, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, type metadata accessor for AnyAccessibilityValue?);
          if (v44)
          {
            v44(v45);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v44);
          }
        }
      }
    }
  }

  return UIKitDialogBridge.reset()();
}

uint64_t UIKitDialogBridge.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 16);
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  outlined destroy of CustomRecursiveStringConvertible?(v0 + OBJC_IVAR____TtC7SwiftUI17UIKitDialogBridge_lastActionContext, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
}

id PlatformAlertController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformAlertController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for UIKitDialogBridge.ActivePresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitDialogBridge.ActivePresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for UIKitDialogBridge.ActivePresentation(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for UIKitDialogBridge.ActivePresentation(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t UIKitDialogBridge.descriptionChildren.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 && (type metadata accessor for PlatformAlertController(), type metadata accessor for CustomRecursiveStringConvertible(), v2 = v1, (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      v5 = (*(v4 + 32))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v5;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  outlined destroy of CustomRecursiveStringConvertible?(&v7, &lazy cache variable for type metadata for CustomRecursiveStringConvertible?, type metadata accessor for CustomRecursiveStringConvertible);
  return MEMORY[0x1E69E7CC0];
}

uint64_t UIKitDialogBridge.descriptionAttributes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(String, String)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v3 = v1;
  v4 = [v3 title];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v10 = [v3 message];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 64) = 0x6567617373656DLL;
    *(inited + 72) = 0xE700000000000000;
    *(inited + 80) = v12;
    *(inited + 88) = v14;
  }

  v15 = [v3 preferredAction];
  if (!v15)
  {
LABEL_13:
    v26 = [v3 severity];

    if (v26 == 1)
    {
      v28 = *(inited + 16);
      v27 = *(inited + 24);
      if (v28 >= v27 >> 1)
      {
        inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, inited);
      }

      *(inited + 16) = v28 + 1;
      v29 = (inited + 32 * v28);
      v29[4] = 0x7974697265766573;
      v29[5] = 0xE800000000000000;
      v29[6] = 0x6C61636974697263;
      v29[7] = 0xE800000000000000;
    }

    v9 = specialized _arrayForceCast<A, B>(_:)(inited);

    return v9;
  }

  v16 = v15;
  v17 = [v3 actions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Collection<>.firstIndex(of:)(v16, v18);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    v24 = *(inited + 16);
    v23 = *(inited + 24);
    if (v24 >= v23 >> 1)
    {
      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, inited);
    }

    *(inited + 16) = v24 + 1;
    v25 = (inited + 32 * v24);
    v25[4] = 0x6572726566657270;
    v25[5] = 0xEF6E6F6974634164;
    v25[6] = 0;
    v25[7] = 0xE000000000000000;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CustomRecursiveStringConvertible.descriptionName.getter in conformance UIKitDialogBridge()
{
  if (*(*v0 + 44) == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7472656C41;
  }
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12ViewIdentityVAH12AlertStorageVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI12kl6V_AI12mN4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s7i74UI17UIKitDialogBridgeC20preferencesDidChangeyyAA16PreferenceValuesVFSbAA12kl10V3key_AA12mN69V5valuet_tcfu0_33_14f01767912779fd21523009348d4058AhI_AkLtSbTf3nnpk_nTf1nnc_nTm(v12, v7, v5, a3);
  result = MEMORY[0x18D0110E0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v26 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v26 + 48) + 4 * v12);
    outlined init with copy of ConfirmationDialog(*(v26 + 56) + 184 * v12, v25);
    v23 = v13;
    outlined init with copy of ConfirmationDialog(v25, &v24);
    outlined init with copy of BoundInputsView?(&v23, &v21, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    v19 = v21;
    outlined init with take of ConfirmationDialog(&v22, v20);
    v14 = v20[0];
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v19, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v23, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    result = outlined destroy of ConfirmationDialog(v25);
    if (v14 == 1)
    {
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v17, a2, v18, v26);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v17, a2, v18, v26);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v17 = result;
  v31 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    outlined init with copy of NavigationDestinationPresentation(*(a3 + 56) + 96 * v13, v30);
    v28 = v14;
    outlined init with copy of NavigationDestinationPresentation(v30, &v29);
    outlined init with copy of (key: Namespace.ID, value: NavigationDestinationPresentation)(&v28, &v22);
    v19 = v22;
    v20[2] = v25;
    v20[3] = v26;
    v21[0] = v27[0];
    *(v21 + 9) = *(v27 + 9);
    v20[0] = v23;
    v20[1] = v24;
    outlined init with copy of NavigationDestinationPresentation(v20, v18);
    LOBYTE(v14) = v18[88];
    outlined destroy of NavigationDestinationPresentation(v18);
    outlined destroy of (key: Namespace.ID, value: NavigationDestinationPresentation)(&v19);
    outlined destroy of (key: Namespace.ID, value: NavigationDestinationPresentation)(&v28);
    result = outlined destroy of NavigationDestinationPresentation(v30);
    if ((v14 & 1) == 0)
    {
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v17, a2, v31, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v17, a2, v31, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12ViewIdentityVAH12AlertStorageVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI12kl6V_AI12mN4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n03_s7i74UI17UIKitDialogBridgeC20preferencesDidChangeyyAA16PreferenceValuesVFSbAA12kl10V3key_AA12mN69V5valuet_tcfu0_33_14f01767912779fd21523009348d4058AhI_AkLtSbTf3nnpk_nTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?()
{
  if (!lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog)?)
  {
    type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)(255, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog));
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog)?);
    }
  }
}

uint64_t outlined assign with take of DialogActionContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double _s7SwiftUI12AlertStorageVSgWOi0_(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s7SwiftUI12AlertStorageVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions()
{
  result = lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions;
  if (!lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitDialogBridge.UpdateAlertActions and conformance UIKitDialogBridge.UpdateAlertActions);
  }

  return result;
}

uint64_t outlined init with copy of DialogActionContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DialogActionContext?(0, &lazy cache variable for type metadata for DialogActionContext?, type metadata accessor for DialogActionContext);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for UIKitDialogBridge.UpdateAlertActions(uint64_t a1, uint64_t a2)
{
  result = swift_weakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for NavigationRequest(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v9 = *(a2 + 5);
        *(a1 + 40) = v9;
        *(a1 + 48) = *(a2 + 6);
        v10 = **(v9 - 8);

        v10(a1 + 16, (a2 + 1), v9);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = *(a2 + 4);

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = *(a2 + 5);
          (**(v15 - 8))(a1 + 8, a2 + 8, v15);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v37 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = *(a2 + 4);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 5);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v26 = *(a2 + 8);
          v27 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v28 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = *(a2 + 4);

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = *(a2 + 5);
          (**(v11 - 8))(a1 + 8, a2 + 8, v11);
        }

        else
        {
          v29 = *(a2 + 8);
          v30 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v5 = *(a2 + 5);

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = *(a2 + 6);
          (**(v5 - 8))(a1 + 16, (a2 + 1), v5);
        }

        else
        {
          v22 = a2[1];
          v23 = a2[2];
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (*(a2 + 8) == 1)
        {
          *(a1 + 56) = *(a2 + 56);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = *(a2 + 8);
        }

        *(a1 + 72) = *(a2 + 9);
        v24 = *(a2 + 11);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = *(a2 + 3);
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = *(a2 + 4);
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (*(a2 + 6) == 1)
        {
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = *(a2 + 6);
        }

        *(a1 + 56) = *(a2 + 7);
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = *(a2 + 2);
        if (v33)
        {
          v34 = *(a2 + 3);
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = a2[3];
        v20 = a2[4];
        v21 = a2[5];
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  v38 = *(a2 + 104);
  v39 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v39;
  *(a1 + 104) = v38;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 20);

  return a1;
}

uint64_t assignWithTake for NavigationRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for NavigationRequest(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 168) = 1;
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
      result = 0.0;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for NavigationRequest.Action(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0x16)
    {
      v4 = *a1 + 22;
    }

    switch(v4)
    {
      case 0u:
        goto LABEL_32;
      case 1u:

        goto LABEL_32;
      case 2u:

        __swift_destroy_boxed_opaque_existential_1(a1 + 16);
        break;
      case 3u:

        break;
      case 4u:
      case 5u:

        goto LABEL_32;
      case 6u:

        goto LABEL_32;
      case 0xAu:
      case 0x11u:
        __swift_destroy_boxed_opaque_existential_1(a1);

        goto LABEL_32;
      case 0xBu:
        __swift_destroy_boxed_opaque_existential_1(a1);
        break;
      case 0xCu:
      case 0xDu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 8);
        }

        if (*(a1 + 56) != 1)
        {
        }

        goto LABEL_32;
      case 0xEu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 8);
        }

        v5 = *(a1 + 56);
        goto LABEL_27;
      case 0x12u:

        if (*(a1 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 16);
        }

        if (*(a1 + 64) != 1)
        {
        }

        goto LABEL_32;
      case 0x13u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v5 = *(a1 + 48);
LABEL_27:
        if (v5 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15u:
        if (*a1)
        {
        }

        if (*(a1 + 16))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }

    v6 = *(a2 + 96);
    if (v6 >= 0x16)
    {
      v6 = *a2 + 22;
    }

    switch(v6)
    {
      case 0u:
        v7 = a2[1];
        *a1 = *a2;
        *(a1 + 8) = v7;
        *(a1 + 96) = 0;

        return a1;
      case 1u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 96) = 1;

        goto LABEL_59;
      case 2u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v15 = a2[5];
        *(a1 + 40) = v15;
        *(a1 + 48) = a2[6];
        v16 = **(v15 - 8);

        v16(a1 + 16, (a2 + 2), v15);
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        v9 = 2;
        goto LABEL_99;
      case 3u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 96) = 3;

        return a1;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v12 = 4;
        goto LABEL_63;
      case 5u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v12 = 5;
        goto LABEL_63;
      case 6u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        *(a1 + 16) = a2[2];
        *(a1 + 96) = 6;

LABEL_59:

        return a1;
      case 7u:
        v17 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *a1 = v17;
        v9 = 7;
        goto LABEL_99;
      case 8u:
        *a1 = *a2;
        v9 = 8;
        goto LABEL_99;
      case 9u:
        v14 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *a1 = v14;
        v9 = 9;
        goto LABEL_99;
      case 0xAu:
        v22 = a2[3];
        *(a1 + 24) = v22;
        *(a1 + 32) = a2[4];
        (**(v22 - 8))(a1, a2);
        *(a1 + 40) = a2[5];
        *(a1 + 48) = a2[6];
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v12 = 10;
        goto LABEL_63;
      case 0xBu:
        v11 = a2[3];
        *(a1 + 24) = v11;
        *(a1 + 32) = a2[4];
        (**(v11 - 8))(a1, a2);
        v9 = 11;
        goto LABEL_99;
      case 0xCu:
        *a1 = *a2;
        v13 = a2[4];

        if (v13)
        {
          *(a1 + 32) = v13;
          *(a1 + 40) = a2[5];
          (**(v13 - 8))(a1 + 8, (a2 + 1), v13);
        }

        else
        {
          v31 = *(a2 + 1);
          v32 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v31;
          *(a1 + 24) = v32;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v33 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v33;
        v34 = 12;
        goto LABEL_93;
      case 0xDu:
        *a1 = *a2;
        v20 = a2[4];

        if (v20)
        {
          *(a1 + 32) = v20;
          *(a1 + 40) = a2[5];
          (**(v20 - 8))(a1 + 8, (a2 + 1), v20);
        }

        else
        {
          v37 = *(a2 + 1);
          v38 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v37;
          *(a1 + 24) = v38;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        v39 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v39;
        *(a1 + 88) = *(a2 + 88);
        v34 = 13;
        goto LABEL_93;
      case 0xEu:
        *a1 = *a2;
        v10 = a2[4];

        if (v10)
        {
          *(a1 + 32) = v10;
          *(a1 + 40) = a2[5];
          (**(v10 - 8))(a1 + 8, (a2 + 1), v10);
        }

        else
        {
          v29 = *(a2 + 1);
          v30 = *(a2 + 3);
          *(a1 + 40) = a2[5];
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (a2[7] == 1)
        {
          *(a1 + 48) = *(a2 + 3);
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = a2[7];
        }

        *(a1 + 64) = a2[8];
        *(a1 + 72) = *(a2 + 72);
        v9 = 14;
        goto LABEL_99;
      case 0xFu:
        *a1 = *a2;
        v9 = 15;
        goto LABEL_99;
      case 0x10u:
        v8 = *a2;
        *(a1 + 7) = *(a2 + 7);
        *a1 = v8;
        v9 = 16;
        goto LABEL_99;
      case 0x11u:
        v18 = a2[3];
        *(a1 + 24) = v18;
        *(a1 + 32) = a2[4];
        (**(v18 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v12 = 17;
LABEL_63:
        *(a1 + 96) = v12;

        return a1;
      case 0x12u:
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v21 = a2[5];

        if (v21)
        {
          *(a1 + 40) = v21;
          *(a1 + 48) = a2[6];
          (**(v21 - 8))(a1 + 16, (a2 + 2), v21);
        }

        else
        {
          v40 = *(a2 + 1);
          v41 = *(a2 + 2);
          *(a1 + 48) = a2[6];
          *(a1 + 16) = v40;
          *(a1 + 32) = v41;
        }

        if (a2[8] == 1)
        {
          *(a1 + 56) = *(a2 + 7);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = a2[8];
        }

        *(a1 + 72) = a2[9];
        v42 = a2[11];
        *(a1 + 80) = a2[10];
        *(a1 + 88) = v42;
        v34 = 18;
LABEL_93:
        *(a1 + 96) = v34;

        return a1;
      case 0x13u:
        v28 = a2[3];
        if (v28)
        {
          *(a1 + 24) = v28;
          *(a1 + 32) = a2[4];
          (**(v28 - 8))(a1, a2);
        }

        else
        {
          v43 = *a2;
          v44 = *(a2 + 1);
          *(a1 + 32) = a2[4];
          *a1 = v43;
          *(a1 + 16) = v44;
        }

        if (a2[6] == 1)
        {
          *(a1 + 40) = *(a2 + 5);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = a2[6];
        }

        *(a1 + 56) = a2[7];
        v9 = 19;
        goto LABEL_99;
      case 0x14u:
        *a1 = *a2;
        v9 = 20;
        goto LABEL_99;
      case 0x15u:
        if (*a2)
        {
          v19 = a2[1];
          *a1 = *a2;
          *(a1 + 8) = v19;
        }

        else
        {
          *a1 = *a2;
        }

        v35 = a2[2];
        if (v35)
        {
          v36 = a2[3];
          *(a1 + 16) = v35;
          *(a1 + 24) = v36;
        }

        else
        {
          *(a1 + 16) = *(a2 + 1);
        }

        v9 = 21;
LABEL_99:
        *(a1 + 96) = v9;
        break;
      default:
        v23 = *a2;
        v24 = *(a2 + 2);
        *(a1 + 16) = *(a2 + 1);
        *(a1 + 32) = v24;
        *a1 = v23;
        v25 = *(a2 + 3);
        v26 = *(a2 + 4);
        v27 = *(a2 + 5);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v26;
        *(a1 + 80) = v27;
        *(a1 + 48) = v25;
        break;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationRequest.Action(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0x16)
    {
      v4 = *a1 + 22;
    }

    switch(v4)
    {
      case 0u:
        goto LABEL_32;
      case 1u:

        goto LABEL_32;
      case 2u:

        __swift_destroy_boxed_opaque_existential_1(a1 + 16);
        break;
      case 3u:

        break;
      case 4u:
      case 5u:

        goto LABEL_32;
      case 6u:

        goto LABEL_32;
      case 0xAu:
      case 0x11u:
        __swift_destroy_boxed_opaque_existential_1(a1);

        goto LABEL_32;
      case 0xBu:
        __swift_destroy_boxed_opaque_existential_1(a1);
        break;
      case 0xCu:
      case 0xDu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 8);
        }

        if (*(a1 + 56) != 1)
        {
        }

        goto LABEL_32;
      case 0xEu:

        if (*(a1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 8);
        }

        v5 = *(a1 + 56);
        goto LABEL_27;
      case 0x12u:

        if (*(a1 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 16);
        }

        if (*(a1 + 64) != 1)
        {
        }

        goto LABEL_32;
      case 0x13u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v5 = *(a1 + 48);
LABEL_27:
        if (v5 == 1)
        {
          break;
        }

        goto LABEL_32;
      case 0x15u:
        if (*a1)
        {
        }

        if (*(a1 + 16))
        {
LABEL_32:
        }

        break;
      default:
        break;
    }

    v6 = *(a2 + 96);
    if (v6 >= 0x16)
    {
      v6 = *a2 + 22;
    }

    switch(v6)
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 96) = 0;
        return a1;
      case 1u:
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *(a1 + 32) = *(a2 + 32);
        v7 = 1;
        goto LABEL_60;
      case 2u:
        v13 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v13;
        *(a1 + 64) = *(a2 + 64);
        v14 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v14;
        v7 = 2;
        goto LABEL_60;
      case 3u:
        v15 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v15;
        v7 = 3;
        goto LABEL_60;
      case 4u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 4;
        goto LABEL_60;
      case 5u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 5;
        goto LABEL_60;
      case 6u:
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
        v7 = 6;
        goto LABEL_60;
      case 7u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 7;
        goto LABEL_60;
      case 8u:
        *a1 = *a2;
        v7 = 8;
        goto LABEL_60;
      case 9u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 9;
        goto LABEL_60;
      case 0xAu:
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 42) = *(a2 + 42);
        v7 = 10;
        goto LABEL_60;
      case 0xBu:
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        *(a1 + 32) = *(a2 + 32);
        v7 = 11;
        goto LABEL_60;
      case 0xCu:
        v11 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v11;
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = *(a2 + 80);
        v12 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v12;
        v7 = 12;
        goto LABEL_60;
      case 0xDu:
        v20 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v20;
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 73) = *(a2 + 73);
        v21 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v21;
        v7 = 13;
        goto LABEL_60;
      case 0xEu:
        v8 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v8;
        *(a1 + 57) = *(a2 + 57);
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        v7 = 14;
        goto LABEL_60;
      case 0xFu:
        *a1 = *a2;
        v7 = 15;
        goto LABEL_60;
      case 0x10u:
        *a1 = *a2;
        *(a1 + 7) = *(a2 + 7);
        v7 = 16;
        goto LABEL_60;
      case 0x11u:
        v17 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v17;
        *(a1 + 64) = *(a2 + 64);
        v18 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v18;
        v7 = 17;
        goto LABEL_60;
      case 0x12u:
        v22 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v22;
        v23 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v23;
        v24 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v24;
        v7 = 18;
        goto LABEL_60;
      case 0x13u:
        v29 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v29;
        v30 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v30;
        v7 = 19;
        goto LABEL_60;
      case 0x14u:
        *a1 = *a2;
        v7 = 20;
        goto LABEL_60;
      case 0x15u:
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        v7 = 21;
LABEL_60:
        *(a1 + 96) = v7;
        break;
      default:
        v26 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v26;
        *(a1 + 96) = *(a2 + 96);
        v27 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v27;
        v28 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v28;
        break;
    }
  }

  return a1;
}

uint64_t storeEnumTagSinglePayload for NavigationRequest.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 234;
    if (a3 >= 0xEA)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationRequest.Action(uint64_t a1)
{
  result = *(a1 + 96);
  if (result >= 0x16)
  {
    return (*a1 + 22);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationRequest.Action(uint64_t result, unsigned int a2)
{
  if (a2 > 0x15)
  {
    v2 = a2 - 22;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 22;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

__n128 static NavigationRequest.editingChanged<A>(forSelectionType:list:newValue:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *(a4 + 104) = *a1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 96) = 8;
  *(a4 + 120) = v5;
  *(a4 + 136) = v6 & 1 | 0x4000000000000000;
  *(a4 + 144) = v7;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  return result;
}

__n128 static NavigationRequest.updateView<A>(_:from:identifier:shouldTargetSourceColumn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a5);
  outlined init with copy of NavigationLinkSelectionIdentifier(a3, a6 + 8);
  *(a6 + 72) = a4;
  *(a6 + 96) = 14;
  v10 = *(a2 + 16);
  *(a6 + 104) = *a2;
  *(a6 + 120) = v10;
  result = *(a2 + 32);
  *(a6 + 136) = result;
  *(a6 + 152) = 0;
  *(a6 + 160) = 0;
  return result;
}

__n128 static NavigationRequest.programmaticallyPresentView<A>(_:from:transaction:depth:identifier:dismiss:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a7);
  *(a8 + 8) = a3;
  outlined init with copy of NavigationLinkSelectionIdentifier(a4, a8 + 16);
  *(a8 + 80) = a5;
  *(a8 + 88) = a6;
  *(a8 + 96) = 18;

  v14 = Transaction.disablesAnimations.getter();
  v15 = *(a2 + 16);
  *(a8 + 104) = *a2;
  *(a8 + 120) = v15;
  result = *(a2 + 32);
  *(a8 + 136) = result;
  *(a8 + 152) = v14 & 1;
  *(a8 + 160) = 0;
  return result;
}

void NavigationRequest.KeyKind.previous.getter(void *a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  v4 = v1[4] >> 62;
  if (!v4)
  {
    v9 = *v1;
    goto LABEL_7;
  }

  if (v4 == 1 && v1[2] != 6)
  {
    v9 = v1[1];
    v3 = v1[2];
    v2 = v1[3];
LABEL_7:
    v10 = v3;
    v8 = 0x1FFFFFFFELL;
    if (v10 > 2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if ((v10 - 3) < 2)
      {
        goto LABEL_15;
      }

      v6 = 2;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      if (!v10)
      {
        goto LABEL_15;
      }

      v6 = v10 != 1 && v2 == 3;
    }

    v8 = 0;
    v5 = v9;
    v7 = v2;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0x1FFFFFFFELL;
LABEL_15:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = 0;
  a1[4] = v8;
  a1[5] = 0;
}

uint64_t NavigationRequest.TargetedRequest.targeted(to:action:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *a1;
  v15 = a1[1];
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  outlined init with copy of NavigationRequest(v3, v20);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v14 = *(v3 + 168);
    v15 = *(v3 + 184);
    v6 = *(v3 + 200);
    v7 = *(v3 + 208);
  }

  outlined init with copy of NavigationRequest.Action?(a2, v16);
  if (v17 == 255)
  {
    outlined init with copy of NavigationRequest.Action?(v3 + 216, v18);
    if (v17 != 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v16, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v18[4] = v16[4];
    v18[5] = v16[5];
    v19 = v17;
    v18[0] = v16[0];
    v18[1] = v16[1];
    v18[2] = v16[2];
    v18[3] = v16[3];
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 280) = 0u;
  *(a3 + 296) = 0u;
  *(a3 + 264) = 0u;
  *(a3 + 312) = -1;
  v8 = v20[9];
  *(a3 + 128) = v20[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v21;
  v9 = v20[5];
  *(a3 + 64) = v20[4];
  *(a3 + 80) = v9;
  v10 = v20[7];
  *(a3 + 96) = v20[6];
  *(a3 + 112) = v10;
  v11 = v20[1];
  *a3 = v20[0];
  *(a3 + 16) = v11;
  v12 = v20[3];
  *(a3 + 32) = v20[2];
  *(a3 + 48) = v12;
  *(a3 + 184) = v15;
  *(a3 + 168) = v14;
  *(a3 + 200) = v6;
  *(a3 + 208) = v7;
  return outlined assign with take of NavigationRequest.Action?(v18, a3 + 216);
}

uint64_t static NavigationRequest.setInitialPossibilities<A>(_:stack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v15);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  result = (*(v13 + 32))(v18 + v17, v16, a5);
  *a7 = partial apply for closure #1 in static NavigationRequest.setInitialPossibilities<A>(_:stack:);
  *(a7 + 8) = v18;
  *(a7 + 96) = 0;
  *(a7 + 104) = a2;
  *(a7 + 112) = a3;
  *(a7 + 160) = 0;
  *(a7 + 120) = a4;
  *(a7 + 128) = 0;
  *(a7 + 136) = 0;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  return result;
}

unint64_t NavigationRequest.description.getter()
{
  _StringGuts.grow(_:)(43);

  v1 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x203A79656B5B205DLL, 0xE800000000000000);
  v2 = v0[17] >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = 0xE500000000000000;
      v3 = 0x74696C7073;
      goto LABEL_7;
    }

    v3 = NavigationState.ListKey.description.getter();
  }

  else
  {
    v3 = NavigationState.StackContent.Key.debugDescription.getter(v0[13], v0[14]);
  }

  v5 = v4;
LABEL_7:
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

__n128 static NavigationRequest.presentView<A>(_:from:identifier:binding:shouldTargetSourceColumn:transaction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, uint64_t a9)
{
  *a8 = specialized AnyNavigationLinkPresentedView.init<A>(_:)(a1, a9);
  outlined init with copy of NavigationLinkSelectionIdentifier(a3, a8 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(a8 + 72) = partial apply for closure #1 in View.actionSheet(isPresented:content:);
  *(a8 + 80) = v16;
  *(a8 + 88) = a7;
  *(a8 + 96) = 13;

  v17 = Transaction.disablesAnimations.getter();
  v18 = Transaction.animation.getter();
  v19 = *(a2 + 16);
  *(a8 + 104) = *a2;
  *(a8 + 120) = v19;
  result = *(a2 + 32);
  *(a8 + 136) = result;
  *(a8 + 152) = v17 & 1;
  *(a8 + 160) = v18;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NavigationRequest.KeyKind()
{
  v1 = v0[4] >> 62;
  if (!v1)
  {
    return NavigationState.StackContent.Key.debugDescription.getter(*v0, v0[1]);
  }

  if (v1 == 1)
  {
    return NavigationState.ListKey.description.getter();
  }

  return 0x74696C7073;
}

uint64_t NavigationRequest.Action.equivalenceClass.getter()
{
  outlined init with copy of NavigationRequest.Action(v0, &v3);
  result = 25;
  switch(v15)
  {
    case 0:
      outlined destroy of NavigationRequest.Action(&v3);
      return 5;
    case 1:
    case 4:
      outlined destroy of NavigationRequest.Action(&v3);
      return 20;
    case 2:
      outlined destroy of ToolbarItemPlacement.Role?(&v3, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      return 20;
    case 3:
    case 5:
      outlined destroy of NavigationRequest.Action(&v3);
      return 15;
    case 6:
      outlined destroy of NavigationRequest.Action(&v3);
      return 30;
    case 7:
      return 30;
    case 8:
      return result;
    case 9:
      return 60;
    case 10:
    case 17:

      outlined destroy of AnyNavigationLinkPresentedValue(&v3);
      return 40;
    case 13:

      outlined destroy of NavigationLinkSelectionIdentifier(&v4);
      return 40;
    case 14:

      outlined destroy of NavigationLinkSelectionIdentifier(&v4);
      return 80;
    case 18:

      outlined destroy of NavigationLinkSelectionIdentifier(&v5);
      return 50;
    case 19:
      outlined destroy of NavigationRequest.Action(&v3);
      return 50;
    case 20:
      return 70;
    case 21:
      outlined destroy of NavigationRequest.Action(&v3);
      return 80;
    case 22:
      result = v8 | v3 | v9 | v14 | v13 | v12 | v11 | v10 | v7 | v6 | v5 | v4;
      if (!result)
      {
        return result;
      }

      v2 = v9 | v8 | v14 | v13 | v12 | v11 | v10 | v7 | v6 | v5 | v4;
      if (v3 == 1 && !v2)
      {
        return 6;
      }

      if (v3 == 4 && !v2)
      {
        return 70;
      }

LABEL_22:
      outlined destroy of NavigationRequest.Action(&v3);
      return 0x7FFFFFFFFFFFFFFFLL;
    default:
      goto LABEL_22;
  }
}

uint64_t NavigationRequest.debugDescription.getter()
{
  _StringGuts.grow(_:)(105);
  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD584F0);
  v1 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x203A79656B5B205DLL, 0xE800000000000000);
  v2 = *(v0 + 136) >> 62;
  if (!v2)
  {
    v3 = NavigationState.StackContent.Key.debugDescription.getter(*(v0 + 104), *(v0 + 112));
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = NavigationState.ListKey.description.getter();
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0xE500000000000000;
  v3 = 0x74696C7073;
LABEL_7:
  MEMORY[0x18D00C9B0](v3, v5);

  MEMORY[0x18D00C9B0](0xD000000000000017, 0x800000018CD59900);
  if (*(v0 + 152))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 152))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v6, v7);

  MEMORY[0x18D00C9B0](0x616D696E615B205DLL, 0xEE00203A6E6F6974);
  if (*(v0 + 160))
  {
    v8 = Animation.description.getter();
    v10 = v9;
  }

  else
  {
    v10 = 0xEC0000006E6F6974;
    v8 = 0x616D696E61206F4ELL;
  }

  MEMORY[0x18D00C9B0](v8, v10);

  MEMORY[0x18D00C9B0](0xD000000000000014, 0x800000018CD59920);
  v11 = NavigationRequest.skipFirstColumn.getter();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v13, v14);

  return 0;
}

uint64_t NavigationRequest.TargetedRequest.description.getter()
{
  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v21, "Request for ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  v1 = *(v0 + 200);
  if (v1 >> 1 == 0xFFFFFFFF)
  {
    v2 = (v0 + 104);
    v3 = (v0 + 112);
    v4 = (v0 + 120);
    v5 = (v0 + 128);
    v1 = *(v0 + 136);
    v6 = (v0 + 144);
  }

  else
  {
    v2 = (v0 + 168);
    v3 = (v0 + 176);
    v4 = (v0 + 184);
    v5 = (v0 + 192);
    v6 = (v0 + 208);
  }

  v7 = *v4;
  v8 = *v3;
  v9 = *v2;
  if (!(v1 >> 62))
  {
    v12 = NavigationState.StackContent.Key.debugDescription.getter(v9, v8);
    goto LABEL_8;
  }

  if (v1 >> 62 == 1)
  {
    v10 = *v6;
    v11 = *v5;
    v21[2] = v9;
    v21[3] = v8;
    v21[4] = v7;
    v21[5] = v11;
    v22 = v1 & 1;
    v23 = v10;
    v12 = NavigationState.ListKey.description.getter();
LABEL_8:
    v14 = v13;
    goto LABEL_10;
  }

  v14 = 0xE500000000000000;
  v12 = 0x74696C7073;
LABEL_10:
  MEMORY[0x18D00C9B0](v12, v14);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  outlined init with copy of NavigationRequest.Action?(v0 + 216, v17);
  if (v18 == 255)
  {
    outlined init with copy of NavigationRequest.Action(v0, v19);
    if (v18 != 255)
    {
      outlined destroy of ToolbarItemPlacement.Role?(v17, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v19[4] = v17[4];
    v19[5] = v17[5];
    v20 = v18;
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v19[3] = v17[3];
  }

  v15 = NavigationRequest.Action.description.getter();
  MEMORY[0x18D00C9B0](v15);

  outlined destroy of NavigationRequest.Action(v19);
  return v21[0];
}

unint64_t NavigationRequest.Action.description.getter()
{
  outlined init with copy of NavigationRequest.Action(v0, v25);
  v1 = *v25;
  v2 = *&v25[16];
  result = 0x43676E6974696465;
  switch(v29)
  {
    case 1:
      outlined destroy of NavigationRequest.Action(v25);
      return 0x68746150746573;
    case 2:
      v21 = *v25;
      v22 = *&v25[16];
      v23 = *&v25[32];
      *&v24 = *&v25[48];
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v20, "setSelection: ");
      HIBYTE(v20[1]) = -18;
      v11 = MEMORY[0x1E6981948];
      _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](v19);
      _StringGuts.grow(_:)(20);

      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v12);

      MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD54850);

      outlined destroy of AnyListSelection(v19);
      v13 = v20[0];
      outlined destroy of ToolbarItemPlacement.Role?(&v21, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, v11);
      return v13;
    case 3:
      v5 = *&v25[24];
      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD598A0);
      v6 = type metadata accessor for NavigationDestinationResolverBase();
      v7 = MEMORY[0x18D00CC60](v1, v6);
      v9 = v8;

      MEMORY[0x18D00C9B0](v7, v9);

      MEMORY[0x18D00C9B0](0x706564202020200ALL, 0xEC000000203A6874);
      v19[0] = *(&v1 + 1);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v10);

      MEMORY[0x18D00C9B0](0x616572202020200ALL, 0xED0000203A726564);
      MEMORY[0x18D00C9B0](v2, v5);

      return v21;
    case 4:
      v14 = *&v25[16] >> 8;

      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v15 = "updateRequiredCompactColumn: ";
      v16 = 0xD00000000000001ELL;
      goto LABEL_18;
    case 5:
      v14 = *&v25[16] >> 8;

      *&v21 = 0;
      *(&v21 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v15 = "boundSelectionChange";
      v16 = 0xD00000000000001DLL;
LABEL_18:
      MEMORY[0x18D00C9B0](v16, v15 | 0x8000000000000000);
      LOBYTE(v19[0]) = v14;
      _print_unlocked<A, B>(_:_:)();
      return v21;
    case 6:
      outlined destroy of NavigationRequest.Action(v25);
      return 0x746150646E756F62;
    case 7:
    case 16:
      return 0xD000000000000014;
    case 8:
      return result;
    case 9:
      return 7368560;
    case 10:

      outlined destroy of AnyNavigationLinkPresentedValue(v25);
      return 0x56746E6573657270;
    case 11:
      outlined destroy of NavigationRequest.Action(v25);
      return 0xD000000000000010;
    case 12:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[8]);
      return 0x526563616C706572;
    case 13:

      v21 = *&v25[8];
      v22 = *&v25[24];
      v23 = *&v25[40];
      v24 = *&v25[56];
      strcpy(v19, "presentView(");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      goto LABEL_29;
    case 14:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[8]);
      return 0x6956657461647075;
    case 15:
      return 0xD000000000000012;
    case 17:

      outlined destroy of AnyNavigationLinkPresentedValue(v25);
      return 0xD000000000000012;
    case 18:

      outlined destroy of NavigationLinkSelectionIdentifier(&v25[16]);
      v4 = 9;
      goto LABEL_21;
    case 19:
      v21 = *v25;
      v22 = *&v25[16];
      v23 = *&v25[32];
      v24 = *&v25[48];
      _StringGuts.grow(_:)(31);

      v19[0] = 0xD00000000000001CLL;
      v19[1] = 0x800000018CD59720;
LABEL_29:
      v18 = NavigationLinkSelectionIdentifier.description.getter();
      MEMORY[0x18D00C9B0](v18);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      outlined destroy of NavigationLinkSelectionIdentifier(&v21);
      result = v19[0];
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      outlined destroy of NavigationRequest.Action(v25);
      result = 0xD00000000000001DLL;
      break;
    case 22:
      if (*&v25[8] | *v25 | *&v25[16] | *&v25[40] | *&v25[48] | v28 | v27 | v26 | *&v25[64] | *&v25[56] | *&v25[32] | *&v25[24])
      {
        v17 = *&v25[16] | *&v25[8] | *&v25[40] | *&v25[48] | v28 | v27 | v26 | *&v25[64] | *&v25[56] | *&v25[32] | *&v25[24];
        if (*v25 != 1 || v17)
        {
          if (*v25 != 2 || v17)
          {
            if (*v25 != 3 || v17)
            {
              if (*v25 != 4 || v17)
              {
                if (*v25 != 5 || v17)
                {
                  result = 0xD000000000000017;
                }

                else
                {
                  result = 0xD000000000000011;
                }
              }

              else
              {
                result = 0xD000000000000018;
              }
            }

            else
            {
              result = 0x6C65537261656C63;
            }
          }

          else
          {
            result = 0xD000000000000016;
          }
        }

        else
        {
          result = 0x6F6F527465736572;
        }
      }

      else
      {
        result = 0xD000000000000011;
      }

      break;
    default:
      outlined destroy of NavigationRequest.Action(v25);
      v4 = 5;
LABEL_21:
      result = v4 | 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t initializeWithCopy for NavigationRequest.ListRequest(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 40);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 16, v16);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 16);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 24);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = *(a2 + 32);

      if (v32)
      {
        v33 = *(a2 + 40);
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 8, v32);
      }

      else
      {
        v53 = *(a2 + 24);
        *v31 = *(a2 + 8);
        *(a1 + 24) = v53;
        *(a1 + 40) = *(a2 + 40);
      }

      v54 = *(a2 + 56);
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v54;
      }

      v55 = *(a2 + 72);
      v56 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = *(a2 + 32);

      if (v9)
      {
        v10 = *(a2 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 8, v9);
      }

      else
      {
        v43 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(a1 + 24) = v43;
        *(a1 + 40) = *(a2 + 40);
      }

      v44 = *(a2 + 56);
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v44;
      }

      v45 = *(a2 + 72);
      v46 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = *(a2 + 32);

      if (v20)
      {
        v21 = *(a2 + 40);
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 8, v20);
      }

      else
      {
        v47 = *(a2 + 24);
        *v19 = *(a2 + 8);
        *(a1 + 24) = v47;
        *(a1 + 40) = *(a2 + 40);
      }

      v48 = *(a2 + 56);
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 64);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);

      if (v6)
      {
        v7 = *(a2 + 48);
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 16, v6);
      }

      else
      {
        v38 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v38;
        *(a1 + 48) = *(a2 + 48);
      }

      v39 = *(a2 + 64);
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v39;
      }

      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = *(a2 + 24);
      if (v27)
      {
        v28 = *(a2 + 32);
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = *(a2 + 32);
      }

      v50 = *(a2 + 48);
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = *(a2 + 16);
      if (v51)
      {
        v52 = *(a2 + 24);
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for NavigationRequest.ListRequest(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v9 = *(a2 + 5);
        *(a1 + 40) = v9;
        *(a1 + 48) = *(a2 + 6);
        v10 = **(v9 - 8);

        v10(a1 + 16, (a2 + 1), v9);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = *(a2 + 4);

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = *(a2 + 5);
          (**(v15 - 8))(a1 + 8, a2 + 8, v15);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v37 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = *(a2 + 4);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 5);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v26 = *(a2 + 8);
          v27 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v28 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = *(a2 + 4);

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = *(a2 + 5);
          (**(v11 - 8))(a1 + 8, a2 + 8, v11);
        }

        else
        {
          v29 = *(a2 + 8);
          v30 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v5 = *(a2 + 5);

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = *(a2 + 6);
          (**(v5 - 8))(a1 + 16, (a2 + 1), v5);
        }

        else
        {
          v22 = a2[1];
          v23 = a2[2];
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (*(a2 + 8) == 1)
        {
          *(a1 + 56) = *(a2 + 56);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = *(a2 + 8);
        }

        *(a1 + 72) = *(a2 + 9);
        v24 = *(a2 + 11);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = *(a2 + 3);
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = *(a2 + 4);
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (*(a2 + 6) == 1)
        {
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = *(a2 + 6);
        }

        *(a1 + 56) = *(a2 + 7);
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = *(a2 + 2);
        if (v33)
        {
          v34 = *(a2 + 3);
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = a2[3];
        v20 = a2[4];
        v21 = a2[5];
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  *(a1 + 104) = *(a2 + 13);
  v38 = a2[7];
  *(a1 + 128) = *(a2 + 16);
  *(a1 + 112) = v38;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 152) = *(a2 + 152);
  v39 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 160) = v39;
  return a1;
}

__n128 assignWithTake for NavigationRequest.ListRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    outlined destroy of NavigationRequest.Action(a1);
    a1 = v3;
    v4 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v4;
    *(v3 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a1 + 176) = *(a2 + 176);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.ListRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for NavigationRequest.ListRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationRequest.SplitRequest(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 40);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 16, v16);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 16);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 24);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = *(a2 + 32);

      if (v32)
      {
        v33 = *(a2 + 40);
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 8, v32);
      }

      else
      {
        v53 = *(a2 + 24);
        *v31 = *(a2 + 8);
        *(a1 + 24) = v53;
        *(a1 + 40) = *(a2 + 40);
      }

      v54 = *(a2 + 56);
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v54;
      }

      v55 = *(a2 + 72);
      v56 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = *(a2 + 32);

      if (v9)
      {
        v10 = *(a2 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 8, v9);
      }

      else
      {
        v43 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(a1 + 24) = v43;
        *(a1 + 40) = *(a2 + 40);
      }

      v44 = *(a2 + 56);
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v44;
      }

      v45 = *(a2 + 72);
      v46 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = *(a2 + 32);

      if (v20)
      {
        v21 = *(a2 + 40);
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 8, v20);
      }

      else
      {
        v47 = *(a2 + 24);
        *v19 = *(a2 + 8);
        *(a1 + 24) = v47;
        *(a1 + 40) = *(a2 + 40);
      }

      v48 = *(a2 + 56);
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 64);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);

      if (v6)
      {
        v7 = *(a2 + 48);
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 16, v6);
      }

      else
      {
        v38 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v38;
        *(a1 + 48) = *(a2 + 48);
      }

      v39 = *(a2 + 64);
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v39;
      }

      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = *(a2 + 24);
      if (v27)
      {
        v28 = *(a2 + 32);
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = *(a2 + 32);
      }

      v50 = *(a2 + 48);
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = *(a2 + 16);
      if (v51)
      {
        v52 = *(a2 + 24);
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithCopy for NavigationRequest.SplitRequest(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v9 = *(a2 + 5);
        *(a1 + 40) = v9;
        *(a1 + 48) = *(a2 + 6);
        v10 = **(v9 - 8);

        v10(a1 + 16, (a2 + 1), v9);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = *(a2 + 4);

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = *(a2 + 5);
          (**(v15 - 8))(a1 + 8, a2 + 8, v15);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v37 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = *(a2 + 4);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 5);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v26 = *(a2 + 8);
          v27 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v28 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = *(a2 + 4);

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = *(a2 + 5);
          (**(v11 - 8))(a1 + 8, a2 + 8, v11);
        }

        else
        {
          v29 = *(a2 + 8);
          v30 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v5 = *(a2 + 5);

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = *(a2 + 6);
          (**(v5 - 8))(a1 + 16, (a2 + 1), v5);
        }

        else
        {
          v22 = a2[1];
          v23 = a2[2];
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (*(a2 + 8) == 1)
        {
          *(a1 + 56) = *(a2 + 56);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = *(a2 + 8);
        }

        *(a1 + 72) = *(a2 + 9);
        v24 = *(a2 + 11);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = *(a2 + 3);
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = *(a2 + 4);
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (*(a2 + 6) == 1)
        {
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = *(a2 + 6);
        }

        *(a1 + 56) = *(a2 + 7);
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = *(a2 + 2);
        if (v33)
        {
          v34 = *(a2 + 3);
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = a2[3];
        v20 = a2[4];
        v21 = a2[5];
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithTake for NavigationRequest.SplitRequest(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of NavigationRequest.Action(result);
    result = v3;
    v4 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v4;
    *(v3 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 48);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = v6;
  }

  *(result + 97) = *(a2 + 97);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.SplitRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 98))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 97);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationRequest.SplitRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 97) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for NavigationRequest.TargetedRequest(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    switch(*(a2 + 96))
    {
      case 0:
        v4 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 8) = v4;
        *(a1 + 96) = 0;
        goto LABEL_58;
      case 1:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 96) = 1;

        goto LABEL_58;
      case 2:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v9 = *(a2 + 5);
        *(a1 + 40) = v9;
        *(a1 + 48) = *(a2 + 6);
        v10 = **(v9 - 8);

        v10(a1 + 16, (a2 + 1), v9);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 96) = 2;
        break;
      case 3:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 96) = 3;

        break;
      case 4:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 4;
        goto LABEL_22;
      case 5:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v8 = 5;
        goto LABEL_22;
      case 6:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 96) = 6;

        goto LABEL_58;
      case 0xA:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 5);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 57) = *(a2 + 57);
        v8 = 10;
        goto LABEL_22;
      case 0xB:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1, a2);
        *(a1 + 96) = 11;
        break;
      case 0xC:
        *a1 = *a2;
        v15 = *(a2 + 4);

        if (v15)
        {
          *(a1 + 32) = v15;
          *(a1 + 40) = *(a2 + 5);
          (**(v15 - 8))(a1 + 8, a2 + 8, v15);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v35;
          *(a1 + 24) = v36;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v37 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v37;
        v25 = 12;
        goto LABEL_57;
      case 0xD:
        *a1 = *a2;
        v6 = *(a2 + 4);

        if (v6)
        {
          *(a1 + 32) = v6;
          *(a1 + 40) = *(a2 + 5);
          (**(v6 - 8))(a1 + 8, a2 + 8, v6);
        }

        else
        {
          v26 = *(a2 + 8);
          v27 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        v28 = *(a2 + 10);
        *(a1 + 72) = *(a2 + 9);
        *(a1 + 80) = v28;
        *(a1 + 88) = *(a2 + 88);
        v25 = 13;
        goto LABEL_57;
      case 0xE:
        *a1 = *a2;
        v11 = *(a2 + 4);

        if (v11)
        {
          *(a1 + 32) = v11;
          *(a1 + 40) = *(a2 + 5);
          (**(v11 - 8))(a1 + 8, a2 + 8, v11);
        }

        else
        {
          v29 = *(a2 + 8);
          v30 = *(a2 + 24);
          *(a1 + 40) = *(a2 + 5);
          *(a1 + 8) = v29;
          *(a1 + 24) = v30;
        }

        if (*(a2 + 7) == 1)
        {
          *(a1 + 48) = a2[3];
        }

        else
        {
          *(a1 + 48) = *(a2 + 12);
          *(a1 + 52) = *(a2 + 13);
          *(a1 + 56) = *(a2 + 7);
        }

        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 96) = 14;
        break;
      case 0x11:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 6);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 65) = *(a2 + 65);
        v8 = 17;
LABEL_22:
        *(a1 + 96) = v8;

        goto LABEL_58;
      case 0x12:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 1);
        v5 = *(a2 + 5);

        if (v5)
        {
          *(a1 + 40) = v5;
          *(a1 + 48) = *(a2 + 6);
          (**(v5 - 8))(a1 + 16, (a2 + 1), v5);
        }

        else
        {
          v22 = a2[1];
          v23 = a2[2];
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 16) = v22;
          *(a1 + 32) = v23;
        }

        if (*(a2 + 8) == 1)
        {
          *(a1 + 56) = *(a2 + 56);
        }

        else
        {
          *(a1 + 56) = *(a2 + 14);
          *(a1 + 60) = *(a2 + 15);
          *(a1 + 64) = *(a2 + 8);
        }

        *(a1 + 72) = *(a2 + 9);
        v24 = *(a2 + 11);
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = v24;
        v25 = 18;
LABEL_57:
        *(a1 + 96) = v25;
LABEL_58:

        break;
      case 0x13:
        v13 = *(a2 + 3);
        if (v13)
        {
          *(a1 + 24) = v13;
          *(a1 + 32) = *(a2 + 4);
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v31 = *a2;
          v32 = a2[1];
          *(a1 + 32) = *(a2 + 4);
          *a1 = v31;
          *(a1 + 16) = v32;
        }

        if (*(a2 + 6) == 1)
        {
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 44) = *(a2 + 11);
          *(a1 + 48) = *(a2 + 6);
        }

        *(a1 + 56) = *(a2 + 7);
        *(a1 + 96) = 19;
        break;
      case 0x15:
        if (*a2)
        {
          v14 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 8) = v14;
        }

        else
        {
          *a1 = *a2;
        }

        v33 = *(a2 + 2);
        if (v33)
        {
          v34 = *(a2 + 3);
          *(a1 + 16) = v33;
          *(a1 + 24) = v34;
        }

        else
        {
          *(a1 + 16) = a2[1];
        }

        *(a1 + 96) = 21;
        break;
      default:
        v17 = *a2;
        v18 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v18;
        *a1 = v17;
        v19 = a2[3];
        v20 = a2[4];
        v21 = a2[5];
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 64) = v20;
        *(a1 + 80) = v21;
        *(a1 + 48) = v19;
        break;
    }
  }

  v38 = *(a2 + 104);
  v39 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v39;
  *(a1 + 104) = v38;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 20);

  v40 = *(a2 + 168);
  v41 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v41;
  *(a1 + 168) = v40;
  v42 = (a1 + 216);
  v43 = (a2 + 216);
  if (*(a1 + 312) == 255)
  {
    switch(*(a2 + 312))
    {
      case 0:
LABEL_65:
        v49 = *(a2 + 28);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = v49;
        *(a1 + 312) = 0;

        return a1;
      case 1:
LABEL_77:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 29);
        *(a1 + 240) = *(a2 + 30);
        *(a1 + 248) = *(a2 + 31);
        *(a1 + 312) = 1;

        goto LABEL_85;
      case 2:
LABEL_76:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        v55 = *(a2 + 32);
        *(a1 + 256) = v55;
        *(a1 + 264) = *(a2 + 33);
        v56 = **(v55 - 8);

        v56(a1 + 232, a2 + 232, v55);
        *(a1 + 272) = *(a2 + 34);
        *(a1 + 280) = *(a2 + 35);
        v57 = 2;
        goto LABEL_121;
      case 3:
LABEL_81:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 29);
        *(a1 + 240) = *(a2 + 30);
        *(a1 + 312) = 3;

        return a1;
      case 4:
LABEL_75:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v54 = 4;
        goto LABEL_83;
      case 5:
LABEL_74:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 233) = *(a2 + 233);
        v54 = 5;
        goto LABEL_83;
      case 6:
LABEL_84:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        *(a1 + 232) = *(a2 + 29);
        *(a1 + 312) = 6;

LABEL_85:

        return a1;
      case 0xA:
LABEL_78:
        v58 = *(a2 + 30);
        *(a1 + 240) = v58;
        *(a1 + 248) = *(a2 + 31);
        (**(v58 - 8))(a1 + 216, a2 + 216);
        *(a1 + 256) = *(a2 + 32);
        *(a1 + 264) = *(a2 + 33);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 273) = *(a2 + 273);
        v54 = 10;
        goto LABEL_83;
      case 0xB:
LABEL_86:
        v61 = *(a2 + 30);
        *(a1 + 240) = v61;
        *(a1 + 248) = *(a2 + 31);
        (**(v61 - 8))(a1 + 216, a2 + 216);
        v57 = 11;
        goto LABEL_121;
      case 0xC:
LABEL_70:
        *(a1 + 216) = *(a2 + 27);
        v52 = *(a2 + 31);

        if (v52)
        {
          *(a1 + 248) = v52;
          *(a1 + 256) = *(a2 + 32);
          (**(v52 - 8))(a1 + 224, (a2 + 14), v52);
        }

        else
        {
          v74 = a2[14];
          v75 = a2[15];
          *(a1 + 256) = *(a2 + 32);
          *(a1 + 224) = v74;
          *(a1 + 240) = v75;
        }

        if (*(a2 + 34) == 1)
        {
          *(a1 + 264) = *(a2 + 264);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = *(a2 + 34);
        }

        *(a1 + 280) = *(a2 + 35);
        v76 = *(a2 + 37);
        *(a1 + 288) = *(a2 + 36);
        *(a1 + 296) = v76;
        v73 = 12;
        goto LABEL_110;
      case 0xD:
LABEL_68:
        *(a1 + 216) = *(a2 + 27);
        v51 = *(a2 + 31);

        if (v51)
        {
          *(a1 + 248) = v51;
          *(a1 + 256) = *(a2 + 32);
          (**(v51 - 8))(a1 + 224, (a2 + 14), v51);
        }

        else
        {
          v70 = a2[14];
          v71 = a2[15];
          *(a1 + 256) = *(a2 + 32);
          *(a1 + 224) = v70;
          *(a1 + 240) = v71;
        }

        if (*(a2 + 34) == 1)
        {
          *(a1 + 264) = *(a2 + 264);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = *(a2 + 34);
        }

        *(a1 + 280) = *(a2 + 35);
        v72 = *(a2 + 37);
        *(a1 + 288) = *(a2 + 36);
        *(a1 + 296) = v72;
        *(a1 + 304) = *(a2 + 304);
        v73 = 13;
        goto LABEL_110;
      case 0xE:
LABEL_79:
        *(a1 + 216) = *(a2 + 27);
        v59 = *(a2 + 31);

        if (v59)
        {
          *(a1 + 248) = v59;
          *(a1 + 256) = *(a2 + 32);
          (**(v59 - 8))(a1 + 224, (a2 + 14), v59);
        }

        else
        {
          v80 = a2[14];
          v81 = a2[15];
          *(a1 + 256) = *(a2 + 32);
          *(a1 + 224) = v80;
          *(a1 + 240) = v81;
        }

        if (*(a2 + 34) == 1)
        {
          *(a1 + 264) = *(a2 + 264);
        }

        else
        {
          *(a1 + 264) = *(a2 + 66);
          *(a1 + 268) = *(a2 + 67);
          *(a1 + 272) = *(a2 + 34);
        }

        *(a1 + 280) = *(a2 + 35);
        *(a1 + 288) = *(a2 + 288);
        v57 = 14;
        goto LABEL_121;
      case 0x11:
LABEL_82:
        v60 = *(a2 + 30);
        *(a1 + 240) = v60;
        *(a1 + 248) = *(a2 + 31);
        (**(v60 - 8))(a1 + 216, a2 + 216);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 33);
        *(a1 + 272) = *(a2 + 34);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 281) = *(a2 + 281);
        v54 = 17;
LABEL_83:
        *(a1 + 312) = v54;

        return a1;
      case 0x12:
LABEL_72:
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 224) = *(a2 + 28);
        v53 = *(a2 + 32);

        if (v53)
        {
          *(a1 + 256) = v53;
          *(a1 + 264) = *(a2 + 33);
          (**(v53 - 8))(a1 + 232, a2 + 232, v53);
        }

        else
        {
          v77 = *(a2 + 232);
          v78 = *(a2 + 248);
          *(a1 + 264) = *(a2 + 33);
          *(a1 + 248) = v78;
          *(a1 + 232) = v77;
        }

        if (*(a2 + 35) == 1)
        {
          *(a1 + 272) = a2[17];
        }

        else
        {
          *(a1 + 272) = *(a2 + 68);
          *(a1 + 276) = *(a2 + 69);
          *(a1 + 280) = *(a2 + 35);
        }

        *(a1 + 288) = *(a2 + 36);
        v79 = *(a2 + 38);
        *(a1 + 296) = *(a2 + 37);
        *(a1 + 304) = v79;
        v73 = 18;
LABEL_110:
        *(a1 + 312) = v73;

        return a1;
      case 0x13:
LABEL_66:
        v50 = *(a2 + 30);
        if (v50)
        {
          *(a1 + 240) = v50;
          *(a1 + 248) = *(a2 + 31);
          (**(v50 - 8))(a1 + 216, a2 + 216);
        }

        else
        {
          v68 = *v43;
          v69 = *(a2 + 232);
          *(a1 + 248) = *(a2 + 31);
          *v42 = v68;
          *(a1 + 232) = v69;
        }

        if (*(a2 + 33) == 1)
        {
          *(a1 + 256) = a2[16];
        }

        else
        {
          *(a1 + 256) = *(a2 + 64);
          *(a1 + 260) = *(a2 + 65);
          *(a1 + 264) = *(a2 + 33);
        }

        *(a1 + 272) = *(a2 + 34);
        v57 = 19;
        goto LABEL_121;
      case 0x15:
LABEL_87:
        if (*v43)
        {
          v62 = *(a2 + 28);
          *(a1 + 216) = *v43;
          *(a1 + 224) = v62;
        }

        else
        {
          *v42 = *v43;
        }

        v82 = *(a2 + 29);
        if (v82)
        {
          v83 = *(a2 + 30);
          *(a1 + 232) = v82;
          *(a1 + 240) = v83;
        }

        else
        {
          *(a1 + 232) = *(a2 + 232);
        }

        v57 = 21;
LABEL_121:
        *(a1 + 312) = v57;
        break;
      default:
LABEL_89:
        v63 = *v43;
        v64 = *(a2 + 248);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 248) = v64;
        *v42 = v63;
        v65 = *(a2 + 264);
        v66 = *(a2 + 280);
        v67 = *(a2 + 296);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 280) = v66;
        *(a1 + 296) = v67;
        *(a1 + 264) = v65;
        break;
    }
  }

  else if (*(a2 + 312) == 255)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
    v45 = *(a2 + 232);
    v44 = *(a2 + 248);
    *v42 = *v43;
    *(a1 + 232) = v45;
    *(a1 + 248) = v44;
    v47 = *(a2 + 280);
    v46 = *(a2 + 296);
    v48 = *(a2 + 264);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 280) = v47;
    *(a1 + 296) = v46;
    *(a1 + 264) = v48;
  }

  else if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
    switch(*(a2 + 312))
    {
      case 0:
        goto LABEL_65;
      case 1:
        goto LABEL_77;
      case 2:
        goto LABEL_76;
      case 3:
        goto LABEL_81;
      case 4:
        goto LABEL_75;
      case 5:
        goto LABEL_74;
      case 6:
        goto LABEL_84;
      case 0xA:
        goto LABEL_78;
      case 0xB:
        goto LABEL_86;
      case 0xC:
        goto LABEL_70;
      case 0xD:
        goto LABEL_68;
      case 0xE:
        goto LABEL_79;
      case 0x11:
        goto LABEL_82;
      case 0x12:
        goto LABEL_72;
      case 0x13:
        goto LABEL_66;
      case 0x15:
        goto LABEL_87;
      default:
        goto LABEL_89;
    }
  }

  return a1;
}

uint64_t assignWithTake for NavigationRequest.TargetedRequest(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1);
    v4 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v4;
    *(a1 + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 312) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 312) == 255 || a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 216);
LABEL_7:
    v7 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v7;
    *(a1 + 312) = *(a2 + 312);
    v8 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v8;
    v9 = *(a2 + 264);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v9;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationRequest.TargetedRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for NavigationRequest.TargetedRequest(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 313) = 1;
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
      result = 0.0;
      *(a1 + 120) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime()
{
  result = lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime;
  if (!lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationRequest.SelectionUpdateTime and conformance NavigationRequest.SelectionUpdateTime);
  }

  return result;
}

uint64_t View.badge(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x1FFFFFFFELL;
  }

  return BadgedView.init(badgeLabel:content:)(a1, 0, v2, 0, partial apply for closure #1 in View.badge(_:), a2);
}

uint64_t View.badge(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a3 & 1 | 0x8000000000000000;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    v7 = a1;
  }

  else
  {
    v7 = 0;
    v5 = 0x1FFFFFFFELL;
  }

  MEMORY[0x1EEE9AC00](v7);
  return BadgedView.init(badgeLabel:content:)(v8, v9, v5, a4, partial apply for closure #2 in View.badge(_:), v10);
}

uint64_t closure #1 in View.badge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t View.badge(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v2 = Text.init(_:tableName:bundle:comment:)();
    v4 = v3;
    v6 = v5;
    v8 = v7 & 1;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v8 = 0;
    v6 = 0;
  }

  View.badge(_:)(v2, v4, v8, v6);

  return outlined consume of Text?(v2, v4, v8, v6);
}

uint64_t View.badge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in View.badge<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v5, &v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  View.badge(_:)(v12, v13, v14, v15);
  return outlined consume of Text?(v6, v7, v8, v9);
}

uint64_t implicit closure #1 in View.badge<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

void Scene.badge(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  Scene.badge(_:)();
}

void type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<BadgePreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<BadgePreferenceKey>);
    }
  }
}

uint64_t ScalarDeceleration.iter(_:minValue:maxValue:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  v6 = *(v5 + 56);
  if (v6 == 0.0)
  {
    if ((a2 & 1) == 0)
    {
      v7 = *(v5 + 8);
      if (v7 < *&a1 && *(v5 + 16) * *(v5 + 24) < *&a1 - v7 + *&a1 - v7)
      {
        v8 = (v5 + 80);
        if (*(v5 + 80))
        {
LABEL_7:
          *v8 = 1;
          goto LABEL_13;
        }

LABEL_6:
        v6 = *(v5 + 40);
        v9 = *(v5 + 48);
        *(v5 + 64) = *&a1;
        *(v5 + 56) = v6;
        *(v5 + 24) = v9;
        goto LABEL_7;
      }
    }

    if ((a4 & 1) == 0)
    {
      v10 = *(v5 + 8);
      if (v10 > *&a3 && *&a3 - v10 + *&a3 - v10 < *(v5 + 16) * *(v5 + 24))
      {
        v8 = (v5 + 80);
        a1 = a3;
        if (*(v5 + 80))
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_13:
  v11 = *v5;
  if (*v5 >= a5)
  {
    v13 = *(v5 + 16);
  }

  else
  {
    v12 = *(v5 + 8);
    v13 = *(v5 + 16);
    v14 = *(v5 + 32);
    do
    {
      v15 = v13 + v14 * 0.00416666667;
      v12 = v12 + v15 * 0.00833333333;
      v14 = v6 * (*(v5 + 64) - v12) - *(v5 + 24) * v15;
      v13 = v15 + v14 * 0.00416666667;
      v11 = v11 + 0.00833333333;
    }

    while (v11 < a5);
    *(v5 + 8) = v12;
    *(v5 + 16) = v13;
    *(v5 + 32) = v14;
    *v5 = v11;
  }

  if (fabs(v13) >= *(v5 + 72))
  {
    return 0;
  }

  if (v6 == 0.0)
  {
    *(v5 + 8) = round(*(v5 + 8));
    return 1;
  }

  v17 = *(v5 + 64);
  if (vabdd_f64(v17, *(v5 + 8)) >= 0.5)
  {
    return 0;
  }

  *(v5 + 8) = v17;
  *(v5 + 16) = 0;
  result = 1;
  *(v5 + 32) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ScalarDeceleration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScalarDeceleration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized AccessibilityControlGroupViewModifier.body(content:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v4 = static AccessibilityChildBehavior.contain;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v8);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x128uLL);
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v5 + 16, 0x4000000, 0x4000000);

  *a2 = a1 & 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t View.controlGroupStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlGroupStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

unint64_t instantiation function for generic protocol witness table for ControlGroupStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ControlGroupStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedControlGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedControlGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ResolvedControlGroup@<X0>(uint64_t a1@<X8>)
{
  result = specialized AccessibilityControlGroupViewModifier.body(content:)(0, v5);
  v3 = v6;
  v4 = v7;
  *a1 = v5[0];
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t ControlGroupStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v2 + 24))(v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = *(v4 + 8);
  v12(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v12)(v10, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>)
  {
    type metadata accessor for ControlGroupStyleModifier<AutomaticControlGroupStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleModifier<AutomaticControlGroupStyle> and conformance ControlGroupStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for ControlGroupStyleModifier<AutomaticControlGroupStyle>()
{
  if (!lazy cache variable for type metadata for ControlGroupStyleModifier<AutomaticControlGroupStyle>)
  {
    lazy protocol witness table accessor for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle();
    v0 = type metadata accessor for ControlGroupStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlGroupStyleModifier<AutomaticControlGroupStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle;
  if (!lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticControlGroupStyle and conformance AutomaticControlGroupStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ControlGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ControlGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>)
  {
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ControlGroup<ControlGroupStyleConfiguration.Content>, &type metadata for ControlGroupStyleConfiguration.Content, &protocol witness table for ControlGroupStyleConfiguration.Content, type metadata accessor for ControlGroup);
    type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>, &type metadata for EnabledLargeContentView, &protocol witness table for EnabledLargeContentView, type metadata accessor for AccessibilityLargeContentViewBehaviorModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>);
    }
  }
}

void type metadata accessor for ControlGroup<ControlGroupStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<ControlGroupStyleConfiguration.Content>, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithCopy for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 24);
  LODWORD(v18) = -1;
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  else
  {
    v19 = *(v15 + 24);
  }

  v20 = v19 + 1;
  v21 = *(v16 + 24);
  if (v21 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v22 = v18 + 1;
  if (v21)
  {
    v23 = v22 >= 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v17)
  {
    v25 = v20 > 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v24)
  {
    if (!v20)
    {
      v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
      if (!v22)
      {
        __swift_assign_boxed_opaque_existential_1(v26, ((v14 + v13) & 0xFFFFFFFFFFFFFFF8));
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v22)
    {
      *(v15 + 24) = v21;
      *(v15 + 32) = *(v16 + 32);
      (**(v21 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v20)
  {
    v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_26:
  v27 = *v16;
  v28 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v27;
  *(v15 + 16) = v28;
LABEL_27:
  v29 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  *(v29 + 8) = *(v30 + 8);
  v31 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v31 + 25) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v32 + 25) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  v39 = *(v36 + 8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  v40 = v39 - 1;
  if (v38 < 0)
  {
    if (v40 < 0)
    {
      swift_weakCopyAssign();
      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v40 & 0x80000000) == 0)
  {
LABEL_47:
    v41 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v41;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 16) = *(v36 + 16);

LABEL_48:
  v42 = ((v35 + 31) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v36 + 31) & 0xFFFFFFFFFFFFFFF8);
  v44 = *v43;
  v45 = v43[2];
  v42[1] = v43[1];
  v42[2] = v45;
  *v42 = v44;
  v46 = (v42 + 55) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v43 + 55) & 0xFFFFFFFFFFFFFFF8;
  v48 = *v47;
  *(v46 + 16) = *(v47 + 16);
  *v46 = v48;
  v49 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = v49 + v12;
  v51 = v49 + v13;
  *(v49 + v12) = *v51;

  *(v50 + 8) = *(v51 + 8);

  *(v50 + 16) = *(v51 + 16);
  *(v50 + 24) = *(v51 + 24);

  *(v50 + 32) = *(v51 + 32);

  *(v50 + 40) = *(v51 + 40);
  return a1;
}

uint64_t assignWithTake for PrimitiveNavigationLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  }

  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 17);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      v25 = *v22;
      *(v21 + 16) = *(v22 + 16);
      *v21 = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *v21 = *v22;
    }

    *(v21 + 17) = v26;
  }

  v27 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v27 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  v30 = v29 - 1;
  v31 = *(v28 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  v32 = v31 - 1;
  if (v30 < 0)
  {
    if (v32 < 0)
    {
      swift_weakTakeAssign();
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v32 & 0x80000000) == 0)
  {
LABEL_23:
    v33 = *v28;
    *(v27 + 16) = *(v28 + 16);
    *v27 = v33;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v27 + 8) = *(v28 + 8);
LABEL_24:
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v28 + 31) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v42 = v41 + v12;
  v43 = v41 + v13;
  *v42 = *v43;

  *(v42 + 8) = *(v43 + 8);

  *(v42 + 16) = *(v43 + 16);
  *(v42 + 24) = *(v43 + 24);

  *(v42 + 32) = *(v43 + 32);

  *(v42 + 40) = *(v43 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for PrimitiveNavigationLink(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = *(*(*(a3 + 16) - 8) + 64) + v10;
  v12 = ((((((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a2 && *(a1 + (v11 & ~v10) + v12 + 44))
  {
    return v9 + *a1 + 1;
  }

  if (v5 == v9)
  {
    return (*(v4 + 48))();
  }

  v14 = (a1 + v11) & ~v10;
  if (v8 == v9)
  {
    return (*(v7 + 48))(v14, v8, v6);
  }

  v15 = *(v12 + v14 + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void storeEnumTagSinglePayload for PrimitiveNavigationLink(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  if (v10 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v11 + v14;
  v16 = (v11 + v14) & ~v14;
  v17 = ((((((((((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v18 = v16 + v17 + 44;
  if (v13 >= a2)
  {
    if (v13 < a3)
    {
      a1[v18] = 0;
    }

    if (a2)
    {
      if (v7 == v13)
      {
        v20 = *(v6 + 56);

        v20();
      }

      else
      {
        v21 = &a1[v15] & ~v14;
        if (v10 == v13)
        {
          v22 = *(v9 + 56);

          v22(v21);
        }

        else
        {
          v23 = v17 + v21;
          if ((a2 & 0x80000000) != 0)
          {
            *(v23 + 16) = 0;
            *v23 = a2 & 0x7FFFFFFF;
            *(v23 + 8) = 0;
          }

          else
          {
            *(v23 + 8) = a2 - 1;
          }
        }
      }
    }
  }

  else
  {
    v19 = ~v13 + a2;
    bzero(a1, v16 + v17 + 44);
    *a1 = v19;
    if (v13 < a3)
    {
      a1[v18] = 1;
    }
  }
}

uint64_t assignWithCopy for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v9 = *(v5 + 40) + 7;
  v6 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v9 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 24);
  LODWORD(v9) = -1;
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  else
  {
    v10 = *(v6 + 24);
  }

  v11 = v10 + 1;
  v12 = *(v7 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v9 = *(v7 + 24);
  }

  v13 = v9 + 1;
  if (v12)
  {
    v14 = v13 >= 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  if (v8)
  {
    v16 = v11 > 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v15)
  {
    if (!v11)
    {
      v17 = v6;
      if (!v13)
      {
        __swift_assign_boxed_opaque_existential_1(v6, v7);
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v13)
    {
      *(v6 + 24) = v12;
      *(v6 + 32) = *(v7 + 32);
      (**(v12 - 8))(v6, v7);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v11)
  {
    v17 = v6;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

LABEL_26:
  v18 = *v7;
  v19 = *(v7 + 16);
  *(v6 + 32) = *(v7 + 32);
  *v6 = v18;
  *(v6 + 16) = v19;
LABEL_27:
  v20 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  v22 = (v6 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v22 != v23)
  {
    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
    }

    v25 = *(v23 + 17);
    if (v25 >= 2)
    {
      v25 = *v23 + 2;
    }

    if (v25 == 1)
    {
      *v22 = *v23;
      *(v22 + 8) = *(v23 + 8);
      *(v22 + 16) = *(v23 + 16);
      *(v22 + 17) = 1;
    }

    else
    {
      *v22 = *v23;
      *(v22 + 8) = *(v23 + 8);
      *(v22 + 17) = 0;
    }
  }

  v26 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v23 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v26 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  v30 = *(v27 + 8);
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  v31 = v30 - 1;
  if (v29 < 0)
  {
    if (v31 < 0)
    {
      swift_weakCopyAssign();
      *(v26 + 8) = *(v27 + 8);

      *(v26 + 16) = *(v27 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v31 & 0x80000000) == 0)
  {
LABEL_47:
    v32 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v32;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v26 + 8) = *(v27 + 8);
  *(v26 + 16) = *(v27 + 16);

LABEL_48:
  v33 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  return a1;
}

uint64_t assignWithTake for NavigationDestinationPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v9 = *v8;
  v10 = *(v8 + 16);
  *(v7 + 32) = *(v8 + 32);
  *v7 = v9;
  *(v7 + 16) = v10;
  v11 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v13 != v14)
  {
    v15 = *(v13 + 17);
    if (v15 >= 2)
    {
      v15 = *v13 + 2;
    }

    if (v15 == 1)
    {
    }

    v16 = *(v14 + 17);
    if (v16 >= 2)
    {
      v16 = *v14 + 2;
    }

    if (v16 == 1)
    {
      v17 = *v14;
      *(v13 + 16) = *(v14 + 16);
      *v13 = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *v13 = *v14;
    }

    *(v13 + 17) = v18;
  }

  v19 = (v13 + 25) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v14 + 25) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v19 + 8);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  v22 = v21 - 1;
  v23 = *(v20 + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  v24 = v23 - 1;
  if (v22 < 0)
  {
    if (v24 < 0)
    {
      swift_weakTakeAssign();
      *(v19 + 8) = *(v20 + 8);

      *(v19 + 16) = *(v20 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v24 & 0x80000000) == 0)
  {
LABEL_23:
    v25 = *v20;
    *(v19 + 16) = *(v20 + 16);
    *v19 = v25;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v19 + 8) = *(v20 + 8);
LABEL_24:
  v26 = ((v19 + 31) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  v29 = v27[2];
  v26[1] = v27[1];
  v26[2] = v29;
  *v26 = v28;
  v30 = (v26 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v27 + 55) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  *(v30 + 16) = *(v31 + 16);
  *v30 = v32;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationPayload(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
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

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
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
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) < 2)
    {
      LODWORD(v17) = 0;
    }

    if (v17 >= 2)
    {
      return (v17 - 1);
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for NavigationDestinationPayload(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFD)
      {
        v20 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFD)
        {
          *(v20 + 32) = 0;
          result = 0.0;
          *v20 = 0u;
          *(v20 + 16) = 0u;
          *v20 = a2 - 2147483646;
        }

        else
        {
          *(v20 + 24) = a2 + 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

BOOL NavigationDestinationPayload.alwaysDisableLink.getter(uint64_t a1)
{
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(v1 + *(a1 + 28), v6, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (v7 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(v6, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    return 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(v6, v4);
    v2 = v5 == 0;
    if (v5)
    {
      outlined destroy of NavigationLinkPresentedValue(v4);
    }

    outlined destroy of NavigationLinkPresentedValue(v6);
  }

  return v2;
}

uint64_t static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  type metadata accessor for PrimitiveNavigationLink();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v3 = _GraphValue.value.getter();
  type metadata accessor for NavigationDestinationPayload();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v4 = _GraphValue.value.getter();
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981948]);
  result = _GraphValue.subscript.getter();
  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 8) = v6;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  return result;
}

uint64_t static PrimitiveNavigationLink._viewListCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v29 = a1[2];
  v30 = v9;
  v31 = a1[4];
  v10 = a1[1];
  v27 = *a1;
  v28 = v10;
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v11 = v27;
    v12 = v28;
    outlined init with copy of _ViewListCountInputs(&v27, &v19);
    static _GraphInputs.invalid.getter();

    *&v16 = v11;
    DWORD1(v18) = v12;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    LOBYTE(v11) = static StyleContextAcceptsPredicate.evaluate(inputs:)();
    outlined destroy of _GraphInputs(&v19);
    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v13 = v27;
  v14 = v28;
  outlined init with copy of _ViewListCountInputs(&v27, &v19);
  static _GraphInputs.invalid.getter();

  *&v24[0] = v13;
  DWORD1(v25) = v14;
  LOBYTE(v13) = static ShouldUseNavigationLinkV4.evaluate(inputs:)(v24, a3);
  v26[0] = v24[0];
  v26[1] = v24[1];
  v26[2] = v25;
  outlined destroy of _GraphInputs(v26);
  *&v19 = a2;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a5;
  if (v13)
  {
    type metadata accessor for StyledNavigationLinkButton();
  }

  else
  {
    type metadata accessor for LegacyNavigationLinkButton();
  }

  v21 = v29;
  v22 = v30;
  v23 = v31;
  v19 = v27;
  v20 = v28;
  swift_getWitnessTable();
  return static View._viewListCount(inputs:)();
}

uint64_t closure #3 in static PrimitiveNavigationLink.makeLegacyNavigationLinkViewRule(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = type metadata accessor for PrimitiveNavigationLink();
  v7 = *(v6 + 60);
  v13[2] = v6;
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981948]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.presentHandlingLegacyLinks(payload:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationDestinationPayload();
  v5 = NavigationDestinationPayload.deprecated_isActive.getter(v4);
  if (v6)
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    *(v11 + 32) = v10 & 1;

    static Update.enqueueAction(reason:_:)();
  }

  else
  {

    return PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(a1, a2);
  }
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for NavigationDestinationPayload();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a1 + *(v11 + 44), &v53, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (*(&v53 + 1) == 1)
  {
    return outlined destroy of NavigationLinkPresentedValue?(&v53, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(&v53, v56);
  v13 = v6[12];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 40);
  if (v15 == 1)
  {
    v13 = v6[13];
    v16 = *(a1 + v13 + 8);
    if (v16 == 6)
    {
      return outlined destroy of NavigationAuthority(v56);
    }

    v47 = 0;
    v48 = v16;
    v15 = 0;
    v46 = 0;
  }

  else
  {
    v18 = v14[3];
    v17 = v14[4];
    v19 = v14[1];
    v47 = v18;
    v48 = v19;
    v46 = v17 & 1 | 0x4000000000000000;
  }

  v20 = (a1 + v13);
  v44 = *v20;
  v45 = v20[2];
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a1 + v6[7], &v50, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (!*(&v51 + 1))
  {
    v42 = v15;
    outlined destroy of NavigationLinkPresentedValue(&v50);
LABEL_11:
    v43 = v2;
    *&v53 = PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
    *(&v53 + 1) = v21;
    LOBYTE(v54) = v22 & 1;
    type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v50);
    v23 = v50;

    if ((v23 & 1) == 0)
    {
      LOBYTE(v50) = 17;
      outlined init with copy of NavigationAuthority(v56, &v53);
      (*(v7 + 16))(v10, a1, v6);
      v24 = (*(v7 + 80) + 120) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = *(a2 + 16);
      *(v25 + 24) = v5;
      v26 = v43;
      v27 = *v43;
      v28 = v43[1];
      *(v25 + 32) = *(a2 + 32);
      *(v25 + 48) = v27;
      *(v25 + 64) = v28;
      *(v25 + 73) = *(v26 + 25);
      outlined init with take of NavigationAuthority(&v53, v25 + 96);
      (*(v7 + 32))(v25 + v24, v10, v6);
      v29 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      v30 = v48;
      *v29 = v44;
      v29[1] = v30;
      v31 = v46;
      v32 = v47;
      v29[2] = v45;
      v29[3] = v32;
      v29[4] = v31;
      v29[5] = v42;
      static Update.enqueueAction(reason:_:)();
    }

    return outlined destroy of NavigationAuthority(v56);
  }

  if (*(&v51 + 1) == 1)
  {
    v42 = v15;
    outlined destroy of NavigationLinkPresentedValue?(&v50, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    goto LABEL_11;
  }

  v53 = v50;
  v54 = v51;
  v55 = v52;
  v49[31] = 17;
  outlined init with copy of AnyNavigationLinkPresentedValue(&v53, &v50);
  (*(v7 + 16))(v10, a1, v6);
  outlined init with copy of NavigationAuthority(v56, v49);
  v33 = (*(v7 + 80) + 177) & ~*(v7 + 80);
  v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = *(a2 + 16);
  *(v35 + 24) = v5;
  *(v35 + 32) = *(a2 + 32);
  v36 = v48;
  *(v35 + 48) = v44;
  *(v35 + 56) = v36;
  v37 = v46;
  v38 = v47;
  *(v35 + 64) = v45;
  *(v35 + 72) = v38;
  *(v35 + 80) = v37;
  *(v35 + 88) = v15;
  v39 = v51;
  *(v35 + 96) = v50;
  *(v35 + 112) = v39;
  *(v35 + 128) = v52;
  v40 = *v2;
  v41 = v2[1];
  *(v35 + 161) = *(v2 + 25);
  *(v35 + 152) = v41;
  *(v35 + 136) = v40;
  (*(v7 + 32))(v35 + v33, v10, v6);
  outlined init with take of NavigationAuthority(v49, v35 + v34);
  static Update.enqueueAction(reason:_:)();

  outlined destroy of AnyNavigationLinkPresentedValue(&v53);
  return outlined destroy of NavigationAuthority(v56);
}

uint64_t PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = type metadata accessor for NavigationDestinationPayload();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a1 + *(v10 + 44), v35, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v36 == 1)
  {
    return outlined destroy of NavigationLinkPresentedValue?(v35, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  }

  outlined init with take of NavigationAuthority(v35, v37);
  v12 = *(v6 + 48);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 40);
  if (v14 != 1)
  {
    v17 = v13[3];
    v16 = v13[4];
    v31 = v13[1];
    v32 = v16 & 1 | 0x4000000000000000;
    v33 = v17;
    goto LABEL_7;
  }

  v12 = *(v6 + 52);
  v15 = *(a1 + v12 + 8);
  if (v15 != 6)
  {
    v14 = 0;
    v32 = 0;
    v33 = 0;
    v31 = v15;
LABEL_7:
    v18 = (a1 + v12);
    v19 = *v18;
    v20 = v18[2];
    v29 = v19;
    v30 = v20;
    v34 = 17;
    outlined init with copy of NavigationAuthority(v37, v35);
    (*(v7 + 16))(v9, a1, v6);
    v21 = (*(v7 + 80) + 168) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = *(a2 + 16);
    *(v22 + 24) = v5;
    v23 = *v2;
    v24 = v2[1];
    *(v22 + 32) = *(a2 + 32);
    *(v22 + 48) = v23;
    *(v22 + 64) = v24;
    *(v22 + 73) = *(v2 + 25);
    outlined init with take of NavigationAuthority(v35, v22 + 96);
    v26 = v30;
    v25 = v31;
    *(v22 + 120) = v29;
    *(v22 + 128) = v25;
    v27 = v32;
    v28 = v33;
    *(v22 + 136) = v26;
    *(v22 + 144) = v28;
    *(v22 + 152) = v27;
    *(v22 + 160) = v14;
    (*(v7 + 32))(v22 + v21, v9, v6);
    static Update.enqueueAction(reason:_:)();
  }

  return outlined destroy of NavigationAuthority(v37);
}

uint64_t closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = result;
  v11 = *(result + 32) >> 62;
  if (v11)
  {
    if (v11 != 1)
    {
      return result;
    }

    v37 = a6;
    v38 = a7;
    v39 = a8;
    v40 = a9;
    type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
    v12 = *AGGraphGetValue();
    v13 = type metadata accessor for NavigationDestinationPayload();
    v14 = NavigationDestinationPayload.deprecated_isActive.getter(v13);
    if (v15)
    {
      v17 = v14;
      v18 = v15;
      v19 = v16;
    }

    else
    {
      LOBYTE(v37) = 0;
      static Binding.constant(_:)();
      v17 = v34;
      v18 = v35;
      v19 = v36;
    }

    static Transaction.current.getter();
    outlined init with copy of AnyNavigationLinkPresentedValue(a2, &v37);
    LOBYTE(v41) = 0;
    v42 = v17;
    v43 = v18;
    v44 = v19 & 1;
    v45 = v12;
    v46 = 17;

    v28 = Transaction.disablesAnimations.getter();
    v29 = Transaction.animation.getter();

    v30 = v10[1];
    v47 = *v10;
    v48 = v30;
    v49 = v10[2];
    v50 = v28 & 1;
    v51 = v29;
  }

  else
  {
    v37 = a6;
    v38 = a7;
    v39 = a8;
    v40 = a9;
    type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
    v20 = *AGGraphGetValue();
    static Transaction.current.getter();
    v21 = type metadata accessor for NavigationDestinationPayload();
    v22 = NavigationDestinationPayload.deprecated_isActive.getter(v21);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
    }

    else
    {
      LOBYTE(v37) = 0;
      static Binding.constant(_:)();
      v25 = v34;
      v26 = v35;
      v27 = v36;
    }

    outlined init with copy of AnyNavigationLinkPresentedValue(a2, &v37);
    v41 = v25;
    v42 = v26;
    LOBYTE(v43) = v27 & 1;
    BYTE1(v43) = v20;
    v46 = 10;

    v31 = Transaction.disablesAnimations.getter();
    v32 = Transaction.animation.getter();

    v33 = v10[1];
    v47 = *v10;
    v48 = v33;
    v49 = v10[2];
    v50 = v31 & 1;
    v51 = v32;
  }

  NavigationAuthority.enqueueRequest(_:)(&v37);
  return outlined destroy of NavigationRequest(&v37);
}

uint64_t closure #2 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v41 = a2;
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v37[2] = v15;
  type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
  v37[1] = a1;
  PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
  LOBYTE(v50) = 1;
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v40 = v9;
  v16 = *(v9 + 16);
  v39 = v11;
  v16(v11, a3, a6);
  v17 = type metadata accessor for NavigationDestinationPayload();
  _s7SwiftUI28NavigationLinkPresentedValueOSgWOcTm_0(a3 + v17[7], &v50, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
  if (v53 == 1)
  {
    outlined destroy of NavigationLinkPresentedValue?(&v50, &lazy cache variable for type metadata for NavigationLinkPresentedValue?, &type metadata for NavigationLinkPresentedValue);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    outlined init with copy of NavigationLinkPresentedValue(&v50, &v43);
    v19 = v46;
    if (v46)
    {
      v22 = v43;
      v21 = v44;
      v20 = v45;
      v18 = v47;
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    outlined destroy of NavigationLinkPresentedValue(&v50);
  }

  v23 = *(a3 + v17[8]);
  v43 = v22;
  v44 = v21;
  v45 = v20;
  v46 = v19;
  v47 = v18;
  v48 = xmmword_18CD633F0;
  v49 = v23;
  v24 = PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
  v26 = v25;
  v27 = NavigationDestinationPayload.deprecated_isActive.getter(v17);
  if (v28)
  {
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v42 = 0;
    static Binding.constant(_:)();
    v30 = v50;
    v31 = v51;
    v29 = v52;
  }

  v50 = v23;
  v51 = v30;
  v52 = v31;
  LOBYTE(v53) = v29 & 1;
  lazy protocol witness table accessor for type PresentingToActivationProjection and conformance PresentingToActivationProjection();
  v32 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v33 = *(a3 + v17[9]);
  static Transaction.current.getter();
  v34 = (v33 & 1) == 0;
  v35 = v39;
  static NavigationRequest.presentView<A>(_:from:identifier:binding:shouldTargetSourceColumn:transaction:)(v39, v38, &v43, v24, v32, v26 & 1, v34, &v50, a6);

  outlined destroy of NavigationLinkSelectionIdentifier(&v43);
  (*(v40 + 8))(v35, a6);
  NavigationAuthority.enqueueRequest(_:)(&v50);
  return outlined destroy of NavigationRequest(&v50);
}

uint64_t closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a5;
  v17[1] = a6;
  v17[2] = a7;
  v17[3] = a8;
  type metadata accessor for PrimitiveNavigationLink.NavigationLinkViewRule();
  PrimitiveNavigationLink.NavigationLinkViewRule.isPresentingViewDestinationView.getter();
  LOBYTE(v17[0]) = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v10 = *(a4 + *(type metadata accessor for NavigationDestinationPayload() + 32));
  v15 = xmmword_18CD633F0;
  v16 = v10;
  static Transaction.current.getter();
  outlined init with copy of NavigationLinkSelectionIdentifier(v13, v17);
  v18 = 19;
  LOBYTE(a4) = Transaction.disablesAnimations.getter();

  outlined destroy of NavigationLinkSelectionIdentifier(v13);
  v11 = a3[1];
  v19 = *a3;
  v20 = v11;
  v21 = a3[2];
  v22 = a4 & 1;
  v23 = 0;
  NavigationAuthority.enqueueRequest(_:)(v17);
  return outlined destroy of NavigationRequest(v17);
}

uint64_t protocol witness for Projection.set(base:newValue:) in conformance PresentingToActivationProjection(_BYTE *a1, char *a2)
{
  v3 = *a2;
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a1 = v3;
  return result;
}

uint64_t PrimitiveNavigationLink.LegacyNavigationLinkViewRule.legacy_updateSeed.getter()
{
  type metadata accessor for Never?(0, &lazy cache variable for type metadata for Binding<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E6981948]);
  v0 = *AGGraphGetValue();

  return v0;
}

uint64_t PrimitiveNavigationLink.LegacyNavigationLinkViewRule.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationDestinationPayload();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  PrimitiveNavigationLink.NavigationLinkViewRule.payload.getter(&v30 - v11);
  PrimitiveNavigationLink.NavigationLinkViewRule.authority.getter(v34);
  outlined init with copy of NavigationAuthority??(v34, v32);
  if (v33 == 2)
  {
    outlined destroy of NavigationAuthority??(v34);
    v35 = xmmword_18CD633F0;
    *&v36 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v32, &v35);
    outlined destroy of NavigationAuthority??(v34);
  }

  outlined assign with take of NavigationAuthority?(&v35, &v12[v6[11]]);
  PrimitiveNavigationLink.NavigationLinkViewRule.listKey.getter(&v35);
  v13 = v38;
  if (v38 == 2)
  {
    v14 = 0;
    v15 = 0uLL;
    v13 = 1;
    v16 = 0uLL;
  }

  else
  {
    v14 = v37;
    v15 = v35;
    v16 = v36;
  }

  v17 = &v12[v6[12]];
  *v17 = v15;
  *(v17 + 1) = v16;
  *(v17 + 4) = v14;
  *(v17 + 5) = v13;
  v18 = PrimitiveNavigationLink.NavigationLinkViewRule.stackKey.getter();
  if (v19 == 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = 6;
  if (v19 == 7)
  {
    v23 = 0;
  }

  else
  {
    v22 = v19;
    v23 = v20;
  }

  v24 = &v12[v6[13]];
  *v24 = v21;
  *(v24 + 1) = v22;
  *(v24 + 2) = v23;
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  (*(v7 + 16))(v9, v12, v6);
  updated = PrimitiveNavigationLink.LegacyNavigationLinkViewRule.legacy_updateSeed.getter();
  LegacyNavigationLinkButton.init(label:payload:legacy_updateSeed:)(v5, v9, updated, v27, v28, v2, v31);
  return (*(v7 + 8))(v12, v6);
}

uint64_t LegacyNavigationLinkButton.init(label:payload:legacy_updateSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for LegacyNavigationLinkButton();
  v13 = *(v12 + 52);
  v14 = type metadata accessor for NavigationDestinationPayload();
  result = (*(*(v14 - 8) + 32))(a7 + v13, a2, v14);
  v16 = a7 + *(v12 + 56);
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = a5;
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance PrimitiveNavigationLink<A, B>.NavigationLinkViewRule@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, _OWORD *)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v5 = a2(0, v7);
  return (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
}

uint64_t LegacyNavigationLinkButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v58 = a2;
  v47 = *(a1 + 24);
  v4 = type metadata accessor for NavigationDestinationPayload();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v42 - v5;
  v59 = *(v3 + 40);
  v49 = type metadata accessor for LegacyNavigationLinkModifier();
  v57 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v42 - v6;
  v7 = *(v3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v48 = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  v12 = *(v3 + 32);
  v68 = &type metadata for NavigationLinkStyleConfiguration.Label;
  v69 = v11;
  v70 = v48;
  v71 = v12;
  type metadata accessor for StaticSourceWriter();
  v46 = type metadata accessor for ModifiedContent();
  v51 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v50 = &v42 - v18;
  (*(v7 + 16))(v10, v2, v3, v17);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *&v21 = v11;
  v22 = v47;
  *(&v21 + 1) = v47;
  v43 = v21;
  *&v23 = v12;
  *(&v23 + 1) = v59;
  v42 = v23;
  *(v20 + 16) = v21;
  *(v20 + 32) = v23;
  (*(v7 + 32))(v20 + v19, v10, v3);
  v68 = partial apply for closure #1 in LegacyNavigationLinkButton.body.getter;
  v69 = v20;
  v61 = v43;
  v62 = v42;
  v63 = v2;
  v24 = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  v25 = v44;
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationLinkStyleConfiguration.Label, partial apply for closure #2 in LegacyNavigationLinkButton.body.getter, v60, &type metadata for ResolvedNavigationLink, &type metadata for NavigationLinkStyleConfiguration.Label, v11, v24);

  v26 = v54;
  (*(v55 + 16))(v54, v2 + *(v3 + 52), v56);
  v27 = v2 + *(v3 + 56);
  v28 = *v27;
  v29 = *(v27 + 8);
  LODWORD(v3) = *(v27 + 16);

  v30 = v53;
  LegacyNavigationLinkModifier.init(payload:legacy_updateSeed:)(v26, v28, v29, v3, v22, v53);
  v66 = v24;
  v67 = &protocol witness table for StaticSourceWriter<A, B>;
  v31 = v46;
  WitnessTable = swift_getWitnessTable();
  v33 = v45;
  v34 = v30;
  v35 = v30;
  v36 = v49;
  MEMORY[0x18D00A570](v34, v31, v49, WitnessTable);
  (*(v57 + 8))(v35, v36);
  (*(v51 + 8))(v25, v31);
  v37 = swift_getWitnessTable();
  v64 = WitnessTable;
  v65 = v37;
  v38 = swift_getWitnessTable();
  v39 = v50;
  static ViewBuilder.buildExpression<A>(_:)(v33, v14, v38);
  v40 = *(v52 + 8);
  v40(v33, v14);
  static ViewBuilder.buildExpression<A>(_:)(v39, v14, v38);
  return (v40)(v39, v14);
}

uint64_t closure #1 in LegacyNavigationLinkButton.body.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for LegacyNavigationLinkButton() + 52);
  result = type metadata accessor for NavigationDestinationPayload();
  v4 = a1 + *(result + 40) + v2;
  if ((*(v4 + 17) & 1) != 0 || *(v4 + 8))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrimitiveNavigationLink.NavigationLinkViewRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimitiveNavigationLink.NavigationLinkViewRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for LegacyNavigationLinkButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NavigationDestinationPayload();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for LegacyNavigationLinkButton(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = (v5 + v8) & ~v8;
  (*(v6 + 8))(v9);
  v10 = *(v7 + 56) + 7;
  v11 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  }

  v12 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 17);
  if (v13 >= 2)
  {
    v13 = *v12 + 2;
  }

  if (v13 == 1)
  {
  }

  v14 = *(((v12 + 25) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  if (v14 - 1 < 0)
  {
    swift_weakDestroy();
  }
}

uint64_t initializeWithCopy for LegacyNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 48);
  v9 = v7 + 16;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 24);
  LODWORD(v18) = -1;
  if (v17 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v19 = v18 + 1;
  if (v17)
  {
    v20 = v19 > 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 || v19)
  {
    v21 = *v16;
    v22 = *(v16 + 16);
    *(v15 + 32) = *(v16 + 32);
    *v15 = v21;
    *(v15 + 16) = v22;
  }

  else
  {
    *(v15 + 24) = v17;
    *(v15 + 32) = *(v16 + 32);
    (**(v17 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  v23 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  v25 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 17);
  if (v27 >= 2)
  {
    v27 = *v26 + 2;
  }

  if (v27 == 1)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
  }

  *(v25 + 17) = v28;
  v29 = (v25 + 25) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v26 + 25) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  if (v31 - 1 < 0)
  {
    swift_weakCopyInit();
    *(v29 + 8) = *(v30 + 8);
    *(v29 + 16) = *(v30 + 16);
  }

  else
  {
    v32 = *v30;
    *(v29 + 16) = *(v30 + 16);
    *v29 = v32;
  }

  v33 = ((v29 + 31) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v30 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = *v34;
  v36 = v34[2];
  v33[1] = v34[1];
  v33[2] = v36;
  *v33 = v35;
  v37 = (v33 + 55) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  *(v37 + 16) = *(v38 + 16);
  *v37 = v39;
  v40 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = v40 + v12;
  v42 = v40 + v13;
  *v41 = *v42;
  *(v41 + 8) = *(v42 + 8);
  *(v41 + 16) = *(v42 + 16);

  return a1;
}

uint64_t assignWithCopy for LegacyNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 24);
  LODWORD(v18) = -1;
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  else
  {
    v19 = *(v15 + 24);
  }

  v20 = v19 + 1;
  v21 = *(v16 + 24);
  if (v21 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v22 = v18 + 1;
  if (v21)
  {
    v23 = v22 >= 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v17)
  {
    v25 = v20 > 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v24)
  {
    if (!v20)
    {
      v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
      if (!v22)
      {
        __swift_assign_boxed_opaque_existential_1(v26, ((v14 + v13) & 0xFFFFFFFFFFFFFFF8));
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v22)
    {
      *(v15 + 24) = v21;
      *(v15 + 32) = *(v16 + 32);
      (**(v21 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v20)
  {
    v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_26:
  v27 = *v16;
  v28 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v27;
  *(v15 + 16) = v28;
LABEL_27:
  v29 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  *(v29 + 8) = *(v30 + 8);
  v31 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v31 + 25) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v32 + 25) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  v39 = *(v36 + 8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  v40 = v39 - 1;
  if (v38 < 0)
  {
    if (v40 < 0)
    {
      swift_weakCopyAssign();
      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v40 & 0x80000000) == 0)
  {
LABEL_47:
    v41 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v41;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 16) = *(v36 + 16);

LABEL_48:
  v42 = ((v35 + 31) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v36 + 31) & 0xFFFFFFFFFFFFFFF8);
  v44 = *v43;
  v45 = v43[2];
  v42[1] = v43[1];
  v42[2] = v45;
  *v42 = v44;
  v46 = (v42 + 55) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v43 + 55) & 0xFFFFFFFFFFFFFFF8;
  v48 = *v47;
  *(v46 + 16) = *(v47 + 16);
  *v46 = v48;
  v49 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = v49 + v12;
  v51 = v49 + v13;
  *(v49 + v12) = *v51;

  *(v50 + 8) = *(v51 + 8);

  *(v50 + 16) = *(v51 + 16);
  return a1;
}