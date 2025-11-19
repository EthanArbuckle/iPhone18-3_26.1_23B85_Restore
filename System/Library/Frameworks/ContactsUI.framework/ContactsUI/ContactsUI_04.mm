void sub_199AF319C()
{
  [v0 bounds];
  v4 = UIEdgeInsetsInsetRect(v1);
  v6 = v5;
  if (v2 < 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  v8 = fmax(v3, 1.0);
  v9 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 view];

    if (!v11)
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = [v11 layer];

    [v12 setCornerRadius_];
  }

  v13 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 view];

  if (!v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v15 setBounds_];

LABEL_10:
  v16 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 view];

  if (!v18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v7;
  v30.size.height = v8;
  [v18 setCenter_];

LABEL_13:
  v20 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 view];

  if (!v22)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_199AF3648();
  v24 = 1.0;
  if (!v23)
  {
    v24 = 0.0;
  }

  [v22 setAlpha_];

LABEL_18:
  if (!sub_199AF3728(&unk_1EAF73C13, MEMORY[0x1E6996A10]))
  {
    return;
  }

  [v0 bounds];
  v25 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (v25)
  {
    v26 = v25;
    v27 = [v25 view];

    if (v27)
    {
      [v27 intrinsicContentSize];

      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_23:
  sub_199DF7E2C();
}

uint64_t sub_199AF359C(SEL *a1, uint64_t (*a2)(id))
{
  v5.super_class = CNUISharedProfileNavigationBarPalette;
  v3 = objc_msgSendSuper2(&v5, *a1);
  return a2(v3);
}

void sub_199AF35E4(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v8.receiver = a1;
  v8.super_class = CNUISharedProfileNavigationBarPalette;
  v5 = *a3;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v8, v5);
  a4(v7);
}

uint64_t sub_199AF3648()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EAF73C10);
  swift_endAccess();
  if (v1)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_199A79A04(v6, &qword_1EAF73080);
    return 0;
  }

  return result;
}

uint64_t sub_199AF3728(const void *a1, void (*a2)(void))
{
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v2, a1);
  swift_endAccess();
  if (v5)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    a2(0);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_199A79A04(v10, &qword_1EAF73080);
    return 0;
  }
}

uint64_t sub_199AF3818()
{
  if ([v0 respondsToSelector_])
  {
    v1 = [v0 _viewControllerForAncestor];
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  v3 = v0;
  while (1)
  {
    v4 = [v3 nextResponder];

    if (!v4)
    {
      break;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    v3 = v4;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_199AF38E0()
{
  if (sub_199AF3648() == 1)
  {
    v1 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
    if (v1)
    {
      v2 = v1;
      v3 = [v1 view];

      if (!v3)
      {
        __break(1u);
        return;
      }

      [v3 intrinsicContentSize];
      v5 = v4;

      v6 = v5 + 0.0 + 8.0;
    }

    else
    {
      v6 = 88.0;
    }

    [v0 frame];
    if (v6 - v7 < 0.01)
    {
      v8 = sub_199DFA9DC();
      swift_beginAccess();
      objc_setAssociatedObject(v0, &unk_1EAF73C10, v8, 1);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }
}

void sub_199AF3A20(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73CA0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v35[-v8];
  v10 = sub_199DF78DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((v5 - 1) > 1)
  {
    goto LABEL_10;
  }

  if (sub_199AF3728(&unk_1EAF73C14, MEMORY[0x1E69969A8]))
  {
    sub_199DF7A8C();

    v15 = sub_199DF78CC();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v15 = 0;
  }

  if (sub_199AF3728(&unk_1EAF73C14, MEMORY[0x1E69969A8]))
  {
    sub_199DF7A9C();

    if (v15)
    {
LABEL_7:
      sub_199A79A04(v9, &unk_1EAF73CA0);
      return;
    }
  }

  else
  {
    v16 = sub_199DF723C();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v17 = sub_199DF723C();
  v18 = (*(*(v17 - 8) + 48))(v9, 1, v17);
  sub_199A79A04(v9, &unk_1EAF73CA0);
  if (v18 == 1)
  {
LABEL_10:
    v19 = sub_199AF3648();
    if (v19)
    {
      if (v19 == 1)
      {
        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_22;
          }

          goto LABEL_30;
        }
      }

      else if (v5)
      {
        goto LABEL_30;
      }

      [v3 setPreferredHeight_];
      goto LABEL_30;
    }

    if (v5)
    {
      if (v5 != 1)
      {
LABEL_22:
        v26 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
        if (!v26)
        {
          v31 = 88.0;
LABEL_26:
          [v3 setPreferredHeight_];
          v32 = sub_199AF3818();
          if (v32)
          {
            v33 = v32;
            [v32 _scrollToRevealNavigationBarPart_animated_];
          }

          goto LABEL_30;
        }

        v27 = v26;
        v28 = [v26 view];

        if (v28)
        {
          [v28 intrinsicContentSize];
          v30 = v29;

          v31 = v30 + 0.0 + 8.0;
          goto LABEL_26;
        }

        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v20 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
      if (v20)
      {
        v21 = v20;
        v22 = [v20 view];

        if (!v22)
        {
          goto LABEL_33;
        }

        [v22 intrinsicContentSize];
        v24 = v23;

        v25 = v24 + 0.0 + 8.0;
      }

      else
      {
        v25 = 88.0;
      }

      [v3 setPreferredHeight_];
    }

LABEL_30:
    v35[8] = v5;
    v34 = sub_199DFA9DC();
    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_1EAF73C10, v34, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

void sub_199AF3E98(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  [a1 contentOffset];
  v4 = v3;
  [a1 adjustedContentInset];
  v6 = v4 + v5;
  [v13 bounds];
  v8 = v7;
  if ([a1 isTracking])
  {
    v9 = v6 > 5.0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6 <= 5.0 || v8 >= 1.0)
    {
      goto LABEL_15;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_199AF3A20(v11, 0);
LABEL_15:
  v12 = -v6;
  if (v6 >= 0.0)
  {
    v12 = 0.0;
  }

  sub_199AF3FAC(v12);
  sub_199AF38E0();
}

void sub_199AF3FAC(CGFloat a1)
{
  v2 = v1;
  v4 = sub_199AF3818();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    if (v6)
    {
      v7 = sub_199AF41EC();

      if (v7)
      {
        a1 = 0.0;
      }
    }
  }

  [v2 setClipsToBounds_];
  v8 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (v10)
    {
      CGAffineTransformMakeTranslation(&v11, 0.0, a1);
      [v10 setTransform_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_199AF4168()
{
  v2.receiver = v0;
  v2.super_class = _s14ScrollObserverCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_199AF41EC()
{
  if (([v0 respondsToSelector_] & 1) == 0 || !objc_msgSend(v0, sel__hasFixedMaximumHeight))
  {
    return 1;
  }

  if ([v0 respondsToSelector_])
  {
    [v0 _resolvedLargeTitleMargins];
  }

  else
  {
    v1 = *MEMORY[0x1E69DC5C0];
  }

  return v1 != 0.0;
}

void sub_199AF42F0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + qword_1EAF86F28 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2 & 1, a3, a4, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v13 = sub_199DF804C();
    __swift_project_value_buffer(v13, qword_1EAF86F10);
    v14 = a1;
    v15 = sub_199DF802C();
    v16 = sub_199DFA31C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_199A75000, v15, v16, "No presenter found to present view controller: %@", v17, 0xCu);
      sub_199A79A04(v18, &unk_1EAF73A90);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    if (a3)
    {
      v22[4] = a3;
      v22[5] = a4;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_199AB45A0;
      v22[3] = &block_descriptor_15;
      v20 = _Block_copy(v22);
    }

    else
    {
      v20 = 0;
    }

    v21 = type metadata accessor for PresentationDelegatingHostingController();
    v23.receiver = v5;
    v23.super_class = v21;
    objc_msgSendSuper2(&v23, sel_presentViewController_animated_completion_, v14, a2 & 1, v20);
    _Block_release(v20);
  }
}

void sub_199AF45D4(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_199AF4DD8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  sub_199AF42F0(v10, a4, v8, v9);
  sub_199A9A5FC(v8);
}

void *sub_199AF46F0(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EAF86F28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_199DF8DDC();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_199AF4844(void *a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EAF86F28 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PresentationDelegatingHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_199AF4988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationDelegatingHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_199AF4A50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ([v5 respondsToSelector_])
  {
    v9 = [v5 _viewControllerForAncestor];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
LABEL_7:
      if (!a3)
      {
LABEL_11:
        v16 = v10;
        v18 = v10;
        v15 = 0;
        goto LABEL_12;
      }

LABEL_8:
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199AB45A0;
      aBlock[3] = &block_descriptor_18;
      v14 = v10;
      v15 = _Block_copy(aBlock);
      v16 = v14;
      v17 = v14;
      sub_199A9A57C(a3);

LABEL_12:
      [v16 presentViewController:a1 animated:a2 & 1 completion:v15];

      _Block_release(v15);
      return;
    }
  }

  v11 = v5;
  v12 = v11;
  while (1)
  {
    v13 = [v12 nextResponder];

    if (!v13)
    {
      break;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v12 = v13;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  if ([v11 respondsToSelector_])
  {
    v10 = [v11 _viewControllerForAncestor];
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }
}

uint64_t sub_199AF4CC0(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EAF86F28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  return sub_199DF8DFC();
}

uint64_t keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v5 = a1();
  v7 = v6;
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t sub_199AF4EAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199AF4F1C()
{
  result = qword_1EAF71C30;
  if (!qword_1EAF71C30)
  {
    sub_199DF910C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71C30);
  }

  return result;
}

uint64_t sub_199AF4F68(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_199AF4FD0()
{
  result = qword_1EAF73CF0;
  if (!qword_1EAF73CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73CF0);
  }

  return result;
}

uint64_t LimitedLibraryPickerHostView.init(queryString:caption:showMultiSelectContactsPicker:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v28 - v17;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_199DF983C();
  v19 = v36;
  *a8 = v35;
  *(a8 + 16) = v19;
  v20 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v21 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_199AAD408(v18, v15, &qword_1EAF72EA8);
  sub_199DF983C();
  result = sub_199A79A04(v18, &qword_1EAF72EA8);
  v23 = (a8 + v20[6]);
  *v23 = a1;
  v23[1] = a2;
  v24 = (a8 + v20[7]);
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  *(a8 + v20[8]) = v30;
  v26 = (a8 + v20[9]);
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  return result;
}

uint64_t sub_199AF5240()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF73D00);
  __swift_project_value_buffer(v0, qword_1EAF73D00);
  return sub_199DF803C();
}

uint64_t View.contactAccessPicker(isPresented:completionHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D20);
  sub_199AF5644();
  sub_199DF95DC();
}

uint64_t sub_199AF53D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v30 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  v30[1] = 0;
  v30[2] = 0xE000000000000000;

  sub_199DF983C();
  v21 = v32;
  *a6 = v31;
  *(a6 + 16) = v21;
  v22 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v23 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  sub_199AAD408(v19, v16, &qword_1EAF72EA8);
  sub_199DF983C();
  sub_199A79A04(v19, &qword_1EAF72EA8);
  v24 = (a6 + v22[6]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (a6 + v22[7]);
  *v25 = 0x54746C7561666564;
  v25[1] = 0xEB00000000747865;
  *(a6 + v22[8]) = 1;
  v26 = (a6 + v22[9]);
  *v26 = sub_199AFE990;
  v26[1] = v20;
  v27 = sub_199DF88BC();
  LOBYTE(a1) = sub_199DF916C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D20);
  v29 = a6 + *(result + 36);
  *v29 = v27;
  *(v29 + 8) = a1;
  return result;
}

unint64_t sub_199AF5644()
{
  result = qword_1EAF73D28;
  if (!qword_1EAF73D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D20);
    sub_199AF5964(&qword_1EAF73D30, type metadata accessor for LimitedLibraryPickerHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D28);
  }

  return result;
}

uint64_t sub_199AF5700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  sub_199DF997C();
  return a5(a1);
}

uint64_t sub_199AF57C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199AF58A0()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF5964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199AF59CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_199DFA99C() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199AF5B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_199DF81AC();
}

void (*sub_199AF5BAC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF5778();
  return sub_199AF5CE4;
}

uint64_t sub_199AF5D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_199DF81AC();
  return a5(v7, v6);
}

uint64_t sub_199AF5E60()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF5F24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_199DFA99C() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199AF6078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_199DF81AC();
}

void (*sub_199AF6104(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF5CF0();
  return sub_199AF623C;
}

uint64_t sub_199AF6298@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_199AF637C()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_199AF6430(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }

  return result;
}

uint64_t sub_199AF6554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

void (*sub_199AF65A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF6248();
  return sub_199AF66E0;
}

uint64_t sub_199AF673C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199AF6814()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF68D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF739C();
}

uint64_t sub_199AF6A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_199DF81AC();
}

void (*sub_199AF6AC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF66EC();
  return sub_199AF6C00;
}

uint64_t sub_199AF6C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_199DF81AC();
  return a5(v7, v6);
}

uint64_t sub_199AF6D7C()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF6E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 72) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF739C();
}

uint64_t sub_199AF6FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  sub_199DF81AC();
}

void (*sub_199AF7030(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF6C0C();
  return sub_199AF7168;
}

void sub_199AF7174(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_199DF73BC();

  free(v1);
}

uint64_t LimitedLibraryPickerViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0x54746C7561666564;
  *(v0 + 40) = 0xEB00000000747865;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_199DF73DC();
  return v0;
}

uint64_t LimitedLibraryPickerViewModel.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0x54746C7561666564;
  *(v0 + 40) = 0xEB00000000747865;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_199DF73DC();
  return v0;
}

uint64_t LimitedLibraryPickerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LimitedLibraryPickerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199AF7428@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LimitedLibraryPickerViewModel(0);
  result = sub_199DFA72C();
  *a1 = result;
  return result;
}

uint64_t LimitedLibraryPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D48);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D50);
  MEMORY[0x1EEE9AC00](v32, v6);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D58);
  MEMORY[0x1EEE9AC00](v33, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D60);
  MEMORY[0x1EEE9AC00](v12, v13);
  v34 = &v29 - v14;
  v15 = *v1;
  v16 = v1[2];
  v30 = v1[1];
  v31 = v16;
  swift_getKeyPath();
  v38 = v15;
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  if (*(v15 + 64))
  {
    v29 = v5;
    swift_getKeyPath();
    v37 = v15;
    sub_199DF73AC();

    swift_beginAccess();
    if (*(v15 + 48) == 1)
    {
      v17 = type metadata accessor for LimitedLibraryPickerViewInternal(0);
      v36 = v17;

      v18 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D98);
      sub_199DF9FBC();
      sub_199DF803C();
      *&v11[*(v17 + 20)] = v15;
      v19 = &v11[*(v17 + 24)];
      *v19 = v30;
      *(v19 + 1) = v18;
      v20 = sub_199DF88BC();
      v21 = sub_199DF916C();
      v22 = &v11[*(v33 + 36)];
      *v22 = v20;
      v22[8] = v21;
      sub_199AAD408(v11, v8, &qword_1EAF73D58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D88);
      sub_199AF79E0();
      sub_199AF7ABC();
      v23 = v34;
      sub_199DF8EDC();
      sub_199A79A04(v11, &qword_1EAF73D58);
    }

    else
    {

      v25 = v31;

      v26 = sub_199DF88BC();
      v27 = sub_199DF916C();
      v28 = v30;
      *v8 = v15;
      *(v8 + 1) = v28;
      *(v8 + 2) = v25;
      *(v8 + 3) = v26;
      v8[32] = v27;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D88);
      sub_199AF79E0();
      sub_199AF7ABC();
      v23 = v34;
      sub_199DF8EDC();
    }

    sub_199AAD408(v23, v29, &qword_1EAF73D60);
    swift_storeEnumTagMultiPayload();
    sub_199AF7954();
    sub_199DF8EDC();
    return sub_199A79A04(v23, &qword_1EAF73D60);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_199AF7954();
    return sub_199DF8EDC();
  }
}

unint64_t sub_199AF7954()
{
  result = qword_1EAF73D68;
  if (!qword_1EAF73D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D60);
    sub_199AF79E0();
    sub_199AF7ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D68);
  }

  return result;
}

unint64_t sub_199AF79E0()
{
  result = qword_1EAF73D70;
  if (!qword_1EAF73D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D58);
    sub_199AF5964(&qword_1EAF73D78, type metadata accessor for LimitedLibraryPickerViewInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D70);
  }

  return result;
}

unint64_t sub_199AF7ABC()
{
  result = qword_1EAF73D80;
  if (!qword_1EAF73D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D88);
    sub_199AF7B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D80);
  }

  return result;
}

unint64_t sub_199AF7B48()
{
  result = qword_1EAF73D90;
  if (!qword_1EAF73D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D90);
  }

  return result;
}

uint64_t LimitedLibraryPickerView.init(viewModel:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_199AF7BF4()
{
}

void sub_199AF7C58()
{
}

id sub_199AF7CB8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for LimitedLibraryButtonPickerViewInternal.ControllerCoordinator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_startingIdentifiers] = MEMORY[0x1E69E7CD0];
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

void sub_199AF7DF0()
{
  sub_199AFB7E0();
  sub_199DF90BC();
  __break(1u);
}

void sub_199AF7EC8()
{
}

id sub_199AF7F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_199AF7F58()
{
}

uint64_t sub_199AF7FA4()
{
  v1 = *(v0 + *(type metadata accessor for LimitedLibraryPickerViewInternal(0) + 20));
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  result = swift_beginAccess();
  if (!v1[10])
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  result = swift_beginAccess();
  if (!v1[8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
  sub_199DF81AC();
  v4 = sub_199DF9F5C();

  v5 = sub_199DF9F5C();

  v6 = [v3 initForAppName:v4 bundleId:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F90);
  sub_199DF911C();
  [v6 setDelegate_];

  v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  swift_getKeyPath();
  sub_199DF73AC();

  if (v1[8])
  {
    sub_199DF81AC();
    v8 = sub_199DF9F5C();

    v9 = [v7 fetchLimitedAccessContactIdentifiersForBundle_];

    v10 = sub_199DFA0CC();
    sub_199DF911C();
    v11 = sub_199AFD79C(v10);

    *(v1 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers) = v11;

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_199AF82A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for LimitedLibraryPickerViewInternal.ControllerCoordinator();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers] = MEMORY[0x1E69E7CD0];
  v9 = &v8[OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion];
  *v9 = v6;
  *(v9 + 1) = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

void sub_199AF8440()
{
  sub_199AF5964(&qword_1EAF73F68, type metadata accessor for LimitedLibraryPickerViewInternal);
  sub_199DF90BC();
  __break(1u);
}

uint64_t LimitedLibraryPickerHostView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);
  sub_199DF986C();
  sub_199AFDFD4(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LimitedLibraryPickerHostView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_199AFE03C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LimitedLibraryPickerHostView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73DA8);
  v10 = (a1 + *(result + 36));
  *v10 = sub_199AF87DC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_199AF85FC(uint64_t a1)
{
  v2 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_199DFA1BC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_199AFDFD4(a1, v6, type metadata accessor for LimitedLibraryPickerHostView);
  sub_199DFA17C();
  v12 = sub_199DFA16C();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_199AFE03C(v6, v14 + v13, type metadata accessor for LimitedLibraryPickerHostView);
  sub_199AE7FD0(0, 0, v10, &unk_199E3C218, v14);
}

uint64_t sub_199AF8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_199DF7F6C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_199DF7F8C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_199DF7FAC();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_199DFA17C();
  v4[15] = sub_199DFA16C();
  v9 = sub_199DFA12C();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_199AF89D4, v9, v8);
}

uint64_t sub_199AF89D4()
{
  sub_199DF7F5C();
  sub_199DF7F9C();
  sub_199DF7F7C();
  v0[18] = sub_199DFA16C();
  v1 = sub_199AF5964(&qword_1EAF73FC8, MEMORY[0x1E6966C20]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_199AF8B04;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_199AF8B04()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_199DFA12C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_199AF8F90;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_199DFA12C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_199AF8C9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_199AF8C9C()
{

  v0[21] = v0[2];
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_199AF8D08, v1, v2);
}

uint64_t sub_199AF8D08()
{
  if (v0[21])
  {

    return MEMORY[0x1EEE6DFA0](sub_199AF8E50, 0, 0);
  }

  else
  {
    v2 = v0[12];
    v1 = v0[13];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v1, v3);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_199AF8E50()
{
  *(v0 + 176) = sub_199DFA16C();
  v2 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AF8EDC, v2, v1);
}

void sub_199AF8EDC()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[4];

  sub_199AF920C(v1, v3);
  if (v2)
  {
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    MEMORY[0x1EEE6DFA0](sub_199AF9124, v4, v5);
  }
}

uint64_t sub_199AF8F90()
{
  v0[3] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0);
  swift_willThrowTypedImpl();

  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_199AF902C, v1, v2);
}

uint64_t sub_199AF902C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_199AF9124()
{
  v0[18] = sub_199DFA16C();
  v1 = sub_199AF5964(&qword_1EAF73FC8, MEMORY[0x1E6966C20]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_199AF8B04;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_199AF920C(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v38 - v11;
  if (*(a1 + 16))
  {
    v13 = sub_199DF7FDC();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *&v42 = sub_199DF7FBC();
    *(&v42 + 1) = v16;
    MEMORY[0x19A8F7E00](10272, 0xE200000000000000);
    v17 = sub_199DF7FCC();
    v44 = v9;
    MEMORY[0x19A8F7E00](v17);

    MEMORY[0x19A8F7E00](41, 0xE100000000000000);
    v18 = v42;
    v19 = *(a2 + 2);
    v42 = *a2;
    v43 = v19;
    v41 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
    sub_199DF985C();
    (*(v14 + 16))(v12, a1 + v15, v13);
    v20 = type metadata accessor for LimitedLibraryPickerHostView(0);
    v21 = (a2 + v20[6]);
    v22 = *v21;
    v23 = v21[1];
    v24 = (a2 + v20[7]);
    v25 = v24[1];
    v39 = *v24;
    v40 = v2;
    v26 = v20[9];
    v27 = *(a2 + v20[8]);
    v29 = *(a2 + v26);
    v28 = *(a2 + v26 + 8);
    v30 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    v31 = &v12[v30[5]];
    *v31 = 0x746C7561666564;
    *(v31 + 1) = 0xE700000000000000;
    v32 = &v12[v30[6]];
    *v32 = v22;
    *(v32 + 1) = v23;
    v33 = &v12[v30[7]];
    *v33 = v39;
    *(v33 + 1) = v25;
    v12[v30[8]] = v27;
    v34 = &v12[v30[9]];
    *v34 = v29;
    *(v34 + 1) = v28;
    (*(*(v30 - 1) + 56))(v12, 0, 1, v30);
    sub_199AAD408(v12, v44, &qword_1EAF72EA8);
    sub_199DF81AC();
    sub_199DF81AC();
  }

  else
  {
    v35 = *(a2 + 2);
    v42 = *a2;
    v43 = v35;
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8);
    sub_199DF985C();
    v36 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
    type metadata accessor for LimitedLibraryPickerHostView(0);
    sub_199AAD408(v12, v9, &qword_1EAF72EA8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);
  sub_199DF985C();
  return sub_199A79A04(v12, &qword_1EAF72EA8);
}

uint64_t sub_199AF959C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);
  sub_199DF986C();
  sub_199AFDFD4(v3, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LimitedLibraryPickerHostView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_199AFE03C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LimitedLibraryPickerHostView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73DA8);
  v10 = (a3 + *(result + 36));
  *v10 = sub_199AFE9B4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_199AF9700()
{
  result = sub_199DF73EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_199AF9ABC()
{
  sub_199AF9B88();
  if (v0 <= 0x3F)
  {
    sub_199AFAB08(319, &qword_1EAF73E68, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_199ADB1F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199AF9B88()
{
  if (!qword_1EAF711D0)
  {
    v0 = sub_199DF987C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF711D0);
    }
  }
}

void sub_199AF9BE4(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v4);
  v95 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v92 = &v89 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v89 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v89 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v89 - v27;
  aBlock[0] = 0;
  v29 = [a1 makeXPCConnectionWithError_];
  v30 = aBlock[0];
  if (v29)
  {
    v31 = v29;
    v89 = v10;
    v98 = v3;
    v32 = objc_opt_self();
    v33 = v30;
    v34 = [v32 interfaceWithProtocol_];
    [v31 setRemoteObjectInterface_];

    [v31 resume];
    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v35 = sub_199DF804C();
    v90 = __swift_project_value_buffer(v35, qword_1EAF73D00);
    v36 = sub_199DF802C();
    v37 = sub_199DFA33C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_199A75000, v36, v37, "Connection created to extension", v38, 2u);
      MEMORY[0x19A8FA1A0](v38, -1, -1);
    }

    v91 = v31;
    v39 = [v31 remoteObjectProxy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FB0);
    swift_dynamicCast();
    v94 = v99;
    v40 = OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_parent;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30);
    v97 = v40;
    MEMORY[0x19A8F7740]();
    v43 = v98 + 48;
    v42 = *(v98 + 48);
    v44 = v42(v28, 1, v2);
    v98 = v43;
    if (v44)
    {
      sub_199A79A04(v28, &qword_1EAF72EA8);
      v45 = 0;
      v46 = CGSizeMake;
    }

    else
    {
      v57 = v95;
      sub_199AFDFD4(v28, v95, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v28, &qword_1EAF72EA8);
      v58 = (v57 + v2[9]);
      v60 = *v58;
      v59 = v58[1];

      sub_199AFE0A4(v57, type metadata accessor for _AppExtensionHostView.Configuration);
      v45 = swift_allocObject();
      *(v45 + 16) = v60;
      *(v45 + 24) = v59;
      v46 = sub_199ACDBD4;
    }

    v61 = v46;
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v45;
    v93 = v62;
    v63 = v96;
    MEMORY[0x19A8F7740](v41);
    if (v42(v25, 1, v2))
    {
      sub_199A79A04(v25, &qword_1EAF72EA8);
    }

    else
    {
      v64 = v95;
      sub_199AFDFD4(v25, v95, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v25, &qword_1EAF72EA8);
      sub_199DF81AC();
      sub_199AFE0A4(v64, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    v65 = sub_199DF9F5C();

    MEMORY[0x19A8F7740](v41);
    if (v42(v21, 1, v2))
    {
      sub_199A79A04(v21, &qword_1EAF72EA8);
    }

    else
    {
      v66 = v95;
      sub_199AFDFD4(v21, v95, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v21, &qword_1EAF72EA8);
      sub_199DF81AC();
      sub_199AFE0A4(v66, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    v67 = sub_199DF9F5C();

    MEMORY[0x19A8F7740](v41);
    if (v42(v17, 1, v2))
    {
      sub_199A79A04(v17, &qword_1EAF72EA8);
      v68 = 1;
    }

    else
    {
      v69 = v95;
      sub_199AFDFD4(v17, v95, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v17, &qword_1EAF72EA8);
      v68 = *(v69 + v2[8]);
      sub_199AFE0A4(v69, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    aBlock[4] = sub_199ACDB9C;
    aBlock[5] = v93;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199AFA84C;
    aBlock[3] = &block_descriptor_8;
    v70 = _Block_copy(aBlock);

    [v94 configureWithQueryString:v65 caption:v67 showMultiSelectContactsPicker:v68 completion:v70];
    _Block_release(v70);

    v71 = v63;
    v72 = sub_199DF802C();
    v73 = sub_199DFA33C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock[0] = v90;
      *v74 = 136315394;
      v75 = v92;
      MEMORY[0x19A8F7740](v41);
      if (v42(v75, 1, v2))
      {
        sub_199A79A04(v75, &qword_1EAF72EA8);
        v76 = 0xE500000000000000;
        v77 = 0x3E6C696E3CLL;
      }

      else
      {
        v78 = v95;
        sub_199AFDFD4(v75, v95, type metadata accessor for _AppExtensionHostView.Configuration);
        sub_199A79A04(v75, &qword_1EAF72EA8);
        v79 = (v78 + v2[6]);
        v77 = *v79;
        v76 = v79[1];
        sub_199DF81AC();
        sub_199AFE0A4(v78, type metadata accessor for _AppExtensionHostView.Configuration);
      }

      v80 = sub_199A9BE90(v77, v76, aBlock);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2080;
      v81 = v89;
      MEMORY[0x19A8F7740](v41);
      if (v42(v81, 1, v2))
      {
        v82 = 0x54746C7561666564;
        sub_199A79A04(v81, &qword_1EAF72EA8);
        v83 = 0xEB00000000747865;
      }

      else
      {
        v84 = v95;
        sub_199AFDFD4(v81, v95, type metadata accessor for _AppExtensionHostView.Configuration);
        sub_199A79A04(v81, &qword_1EAF72EA8);
        v85 = (v84 + v2[7]);
        v82 = *v85;
        v83 = v85[1];
        sub_199DF81AC();
        sub_199AFE0A4(v84, type metadata accessor for _AppExtensionHostView.Configuration);
      }

      v86 = v91;
      v87 = sub_199A9BE90(v82, v83, aBlock);

      *(v74 + 14) = v87;
      _os_log_impl(&dword_199A75000, v72, v73, "Requested to configure with %s and %s as caption ", v74, 0x16u);
      v88 = v90;
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v88, -1, -1);
      MEMORY[0x19A8FA1A0](v74, -1, -1);
    }

    else
    {
    }

    *&v71[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_extensionProxy] = v94;
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = aBlock[0];
    v48 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v49 = sub_199DF804C();
    __swift_project_value_buffer(v49, qword_1EAF73D00);
    v50 = v48;
    v51 = sub_199DF802C();
    v52 = sub_199DFA31C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v48;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_199A75000, v51, v52, "Connection to extension failed with %@", v53, 0xCu);
      sub_199A79A04(v54, &unk_1EAF73A90);
      MEMORY[0x19A8FA1A0](v54, -1, -1);
      MEMORY[0x19A8FA1A0](v53, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199AFA84C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_199DFA0CC();

  v1(v2);
}

void sub_199AFAA18()
{
  sub_199AFAB08(319, &qword_1EAF73EE8, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_199AFAB74();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_199AFAB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EA8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_199AFAB74()
{
  if (!qword_1EAF73EF0)
  {
    sub_199DF7FDC();
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF73EF0);
    }
  }
}

unint64_t sub_199AFABCC()
{
  result = qword_1EAF73EF8;
  if (!qword_1EAF73EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73F00);
    sub_199AF7954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73EF8);
  }

  return result;
}

unint64_t sub_199AFAC58()
{
  result = qword_1EAF73F08;
  if (!qword_1EAF73F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF73DA8);
    sub_199AF5964(&unk_1EAF73F10, type metadata accessor for _AppExtensionHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73F08);
  }

  return result;
}

uint64_t sub_199AFAD34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_199AFAD7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AFADF4()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LimitedLibraryPickerViewModel(319);
    if (v2 <= 0x3F)
    {
      result = sub_199ADB1F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_199AFAEB8()
{
  sub_199AFAB08(319, &qword_1EAF73EE8, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_199AFAF68()
{
  result = sub_199DF7FDC();
  if (v1 <= 0x3F)
  {
    result = sub_199ADB1F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_199AFB050(void *a1)
{
  v2 = sub_199DF740C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_199DF7FDC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F98);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v21 = a1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30);
    MEMORY[0x19A8F7740](v22);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_199A79A04(v15, &qword_1EAF72EA8);
      v23 = sub_199DFA44C();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      sub_199DFA45C();
    }

    else
    {
      sub_199AFE03C(v15, v20, type metadata accessor for _AppExtensionHostView.Configuration);
      (*(v25 + 16))(v7, v20, v26);
      sub_199DF81AC();
      sub_199DF741C();
      sub_199DFA43C();
      v24 = sub_199DFA44C();
      (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
      sub_199DFA45C();

      sub_199AFE0A4(v20, type metadata accessor for _AppExtensionHostView.Configuration);
    }
  }

  else
  {
    sub_199DFA85C();
    __break(1u);
  }
}

id sub_199AFB454()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73FA0);
  sub_199DF911C();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_199AFB4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AFDFD4(v6, v5, type metadata accessor for _AppExtensionHostView);
  v7 = type metadata accessor for _AppExtensionHostView.HostCoordinator(0);
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_identity;
  v10 = sub_199DF7FDC();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *&v8[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_extensionProxy] = 0;
  sub_199AFDFD4(v5, &v8[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_parent], type metadata accessor for _AppExtensionHostView);
  v13.receiver = v8;
  v13.super_class = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  result = sub_199AFE0A4(v5, type metadata accessor for _AppExtensionHostView);
  *a3 = v11;
  return result;
}

void sub_199AFB788()
{
  sub_199AF5964(&qword_1EAF73F78, type metadata accessor for _AppExtensionHostView);
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199AFB7E0()
{
  result = qword_1EAF73F70;
  if (!qword_1EAF73F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73F70);
  }

  return result;
}

uint64_t sub_199AFB834(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_199DFAA7C();
  sub_199DF9FEC();
  v8 = sub_199DFAABC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_199DFA99C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_199DF81AC();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_199DF81AC();
    sub_199AFBEE8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_199AFB984(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_199DFAA6C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_199AFC068(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_199AFBA64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88);
  result = sub_199DFA6EC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_199DFAA7C();
      sub_199DF9FEC();
      result = sub_199DFAABC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_199AFBCC4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8);
  result = sub_199DFA6EC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_199DFAA6C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_199AFBEE8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_199AFBA64();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_199AFC188();
      goto LABEL_16;
    }

    sub_199AFC424();
  }

  v10 = *v4;
  sub_199DFAA7C();
  sub_199DF9FEC();
  result = sub_199DFAABC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_199DFA99C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_199DFA9EC();
  __break(1u);
  return result;
}

uint64_t sub_199AFC068(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_199AFBCC4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_199AFC2E4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_199AFC65C();
  }

  v8 = *v3;
  result = sub_199DFAA6C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_199DFA9EC();
  __break(1u);
  return result;
}

void *sub_199AFC188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88);
  v2 = *v0;
  v3 = sub_199DFA6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_199DF81AC();
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_199AFC2E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8);
  v2 = *v0;
  v3 = sub_199DFA6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_199AFC424()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88);
  result = sub_199DFA6EC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_199DFAA7C();
      sub_199DF81AC();
      sub_199DF9FEC();
      result = sub_199DFAABC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_199AFC65C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8);
  result = sub_199DFA6EC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_199DFAA6C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_199AFC84C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_199DF81AC();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_199DF81AC();
        sub_199AFCEE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_199AFC978(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);
  v13 = sub_199DF81AC();
  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    v23 = sub_199DFAABC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_199DFA99C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x1EEE9AC00](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_199AFD25C(v59, v55, v57, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_199DFAA7C();
            sub_199DF81AC();
            sub_199DF9FEC();
            v42 = sub_199DFAABC();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_199DFA99C() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_199AFD024(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x19A8FA1A0](v51, -1, -1);
    v58 = v64;
    v5 = v53;
LABEL_52:
    sub_199AD6AF4();
    return v5;
  }

  result = MEMORY[0x19A8FA1A0](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_199AFCEE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_199DFAA7C();
  sub_199DF9FEC();
  v6 = sub_199DFAABC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_199DFA99C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_199AFC188();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_199AFD480(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_199AFD024(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_199AFD25C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_199DFAA7C();
        sub_199DF81AC();
        sub_199DF9FEC();
        v19 = sub_199DFAABC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_199DFA99C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_199AFD25C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88);
  result = sub_199DFA6FC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    result = sub_199DFAABC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_199AFD480(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_199DFA69C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_199DFAA7C();
        sub_199DF81AC();
        sub_199DF9FEC();
        v10 = sub_199DFAABC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_199AFD644(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_199DF81AC();
        goto LABEL_24;
      }

      v11 += 2;
      sub_199DF81AC();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_199AFD79C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8F8040](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_199DF81AC();
      sub_199AFB834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_199AFD834(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8F8040](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_199AFB984(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_199AFD8A8(void *a1)
{
  v2 = v1;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v4 = sub_199DF804C();
  __swift_project_value_buffer(v4, qword_1EAF73D00);
  v5 = sub_199DF802C();
  v6 = sub_199DFA33C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_199A75000, v5, v6, "Got picker delegate callback", v7, 2u);
    MEMORY[0x19A8FA1A0](v7, -1, -1);
  }

  v8 = [a1 identifier];
  v9 = sub_199DF9F8C();
  v11 = v10;

  v12 = *(v2 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_199E37D40;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  v12();

  v14 = sub_199DF802C();
  v15 = sub_199DFA33C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_199A75000, v14, v15, "Completed the callback, exiting...", v16, 2u);
    MEMORY[0x19A8FA1A0](v16, -1, -1);
  }

  exit(0);
}

void sub_199AFDA78()
{
  v1 = v0;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF73D00);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Picker dismissed without picking contact", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  (*(v1 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion))(MEMORY[0x1E69E7CC0]);
  v6 = sub_199DF802C();
  v7 = sub_199DFA33C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "Completed the callback with no IDs, exiting...", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  exit(0);
}

uint64_t sub_199AFDBE4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  sub_199DF81AC();
  v3 = sub_199DFA8DC();

  v4 = 2;
  if (v3 != 1)
  {
    v4 = 3;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  swift_getKeyPath();
  sub_199DF73AC();

  result = swift_beginAccess();
  if (!a2[10])
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  result = swift_beginAccess();
  if (!a2[8])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  swift_beginAccess();
  v7 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
  sub_199DF81AC();
  v8 = sub_199DF9F5C();

  v9 = sub_199DF9F5C();

  v10 = sub_199DF9F5C();

  v11 = [v7 initPickerWithContactsAvailableToAddForAppName:v8 bundleId:v9 searchText:v10 caption:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F80);
  sub_199DF911C();
  [v11 setDelegate_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  swift_getKeyPath();
  sub_199DF73AC();

  if (a2[8])
  {
    sub_199DF81AC();
    v13 = sub_199DF9F5C();

    v14 = [v12 fetchLimitedAccessContactIdentifiersForBundle_];

    v15 = sub_199DFA0CC();
    sub_199DF911C();
    v16 = sub_199AFD79C(v15);

    *(a2 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_startingIdentifiers) = v16;

    return v11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_199AFDFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AFE03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AFE0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_199AFE10C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_199DFA87C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_199A9C55C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v28 = v2;
    v7 = 0;
    v5 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8F8520](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_199DF9F8C();
      v13 = v12;

      v30 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_199A9C55C((v14 > 1), v15 + 1, 1);
        v5 = v30;
      }

      ++v7;
      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v7);
    v2 = v28;
  }

  v17 = sub_199AFD79C(v5);

  if (*(*(v2 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers) + 16) <= *(v17 + 16) >> 3)
  {
    v30 = v17;
    v19 = sub_199DF81AC();
    sub_199AFC84C(v19);
  }

  else
  {
    v18 = sub_199DF81AC();
    v17 = sub_199AFC978(v18, v17);
  }

  v20 = *(v2 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion);
  v21 = *(v17 + 16);
  if (!v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v22 = sub_199AB2EA8(*(v17 + 16), 0);
  v29 = sub_199AFD644(&v30, v22 + 4, v21, v17);
  sub_199DF81AC();
  result = sub_199AD6AF4();
  if (v29 == v21)
  {
LABEL_19:
    v20(v22);

    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v23 = sub_199DF804C();
    __swift_project_value_buffer(v23, qword_1EAF73D00);
    sub_199DF81AC();
    v24 = sub_199DF802C();
    v25 = sub_199DFA33C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(v17 + 16);

      *(v26 + 4) = v27;

      _os_log_impl(&dword_199A75000, v24, v25, "We have %ld new contacts", v26, 0xCu);
      MEMORY[0x19A8FA1A0](v26, -1, -1);

      exit(0);
    }

    swift_bridgeObjectRelease_n();
    exit(0);
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_199AFE448()
{
  v1 = v0;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF73D00);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Access picker canceled", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  (*(v1 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion))(MEMORY[0x1E69E7CC0]);
  exit(0);
}

uint64_t objectdestroy_20Tm()
{
  v1 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_199DF7FDC();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199AFE7F8()
{
  v1 = *(type metadata accessor for LimitedLibraryPickerHostView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_199AF85FC(v2);
}

uint64_t sub_199AFE858(uint64_t a1)
{
  v4 = *(type metadata accessor for LimitedLibraryPickerHostView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_199AA7314;

  return sub_199AF8824(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_199AFE9C8()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86FE8);
  __swift_project_value_buffer(v0, qword_1EAF86FE8);
  return sub_199DF803C();
}

id sub_199AFEB74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNVisualIdentityPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199AFEC4C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 40);
  v5 = type metadata accessor for CNVisualIdentityPickerView.Coordinator();
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent];
  *v7 = v3;
  *(v7 + 8) = v10;
  *(v7 + 24) = v11;
  *(v7 + 5) = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v8 = v3;
  sub_199DF81AC();

  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

void sub_199AFEDB4()
{
  sub_199AFF450();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199AFEDE0()
{
  result = qword_1EAF74058;
  if (!qword_1EAF74058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74058);
  }

  return result;
}

void sub_199AFEE34(id *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 identifier];
  v7 = sub_199DF9F8C();
  v9 = v8;

  v10 = [a2 identifier];
  v11 = sub_199DF9F8C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_199DFA99C();

    if ((v15 & 1) == 0)
    {
      v16 = [v5 imageData];
      if (v16)
      {
        v17 = v16;
        v18 = sub_199DF71FC();
        v20 = v19;

        sub_199A9EF34(v18, v20);
        v21 = [v5 fullscreenImageData];
        if (v21)
        {
          v22 = v21;
          v47 = sub_199DF71FC();
          v24 = v23;
        }

        else
        {
          v47 = 0;
          v24 = 0xF000000000000000;
        }

        v25 = [v5 imageData];
        if (v25)
        {
          v26 = v25;
          v27 = sub_199DF71FC();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0xF000000000000000;
        }

        v30 = [v5 thumbnailImageData];
        if (v30)
        {
          v31 = v30;
          v32 = sub_199DF71FC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0xF000000000000000;
        }

        sub_199AFF43C(v47, v24);
        [v5 cropRect];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        if (v29 >> 60 == 15)
        {
          v43 = 0;
        }

        else
        {
          v43 = sub_199DF71DC();
          sub_199A9EF20(v27, v29);
        }

        if (v34 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_199DF71DC();
          sub_199A9EF20(v32, v34);
        }

        if (v24 >> 60 == 15)
        {
          v45 = 0;
        }

        else
        {
          v45 = sub_199DF71DC();
          sub_199A9EF20(v47, v24);
        }

        v46 = [objc_allocWithZone(CNPhotoPickerProviderItem) initWithImageData:v43 thumbnailImageData:v44 fullscreenImageData:v45 cropRect:{v36, v38, v40, v42}];

        [a3 insertNewItemIntoSuggestions_];
        sub_199A9EF20(v47, v24);
      }
    }
  }
}

id sub_199AFF150(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = objc_opt_self();
  v6 = a2;
  v7 = [v5 currentStyle];
  v8 = [objc_opt_self() contactsConfiguration];
  v9 = [objc_allocWithZone(CNPhotoPickerViewController) initWithContact:v6 style:v7 configuration:v8];

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74060);
    sub_199DF911C();
    [v9 setDelegate_];

    if (a3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
    {
      v11 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x19A8F8520](v11, a3);
        }

        else
        {
          if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(a3 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v22 = v12;
        sub_199AFEE34(&v22, v6, v9);

        ++v11;
        if (v14 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
    result = [objc_opt_self() navigationControllerForPicker_];
    if (result)
    {
      v21 = result;

      return v21;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EAF71E90 != -1)
    {
      swift_once();
    }

    v15 = sub_199DF804C();
    __swift_project_value_buffer(v15, qword_1EAF86FE8);
    v16 = sub_199DF802C();
    v17 = sub_199DFA31C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_199A75000, v16, v17, "Failed to create visual identity picker for duplicate candidate", v18, 2u);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    v19 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);

    return [v19 init];
  }

  return result;
}

uint64_t sub_199AFF43C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_199AA7630(a1, a2);
  }

  return a1;
}

unint64_t sub_199AFF450()
{
  result = qword_1EAF74068;
  if (!qword_1EAF74068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74068);
  }

  return result;
}

id sub_199AFF4A4()
{
  v1 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*(v0 + 32) showName:1];
  v2 = [objc_allocWithZone(CNPRUISPosterEditingViewController) initWithExistingConfiguration:*(v0 + 24) context:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740C0);
  sub_199DF911C();
  [v2 setDelegate_];

  return v2;
}

uint64_t sub_199AFF568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AFFB0C(v3, v6);
  v7 = type metadata accessor for CNExistingWallpaperEditorCoordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_199AFFB0C(v6, v8 + OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_199AFFB70(v6);
  *a3 = v9;
  return result;
}

void sub_199AFF714()
{
  sub_199AFFBCC(&qword_1EAF740C8);
  sub_199DF90BC();
  __break(1u);
}

id sub_199AFF800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNExistingWallpaperEditorCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AFF870()
{
  result = type metadata accessor for CNExistingWallpaperEditorView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_199AFF948()
{
  sub_199AFFA74(319, &qword_1EAF74098, &unk_1EAF740A0, &unk_199E3C3C0, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_199A7A02C(319, &qword_1EAF71048);
    if (v1 <= 0x3F)
    {
      sub_199A7A02C(319, &qword_1ED615BF0);
      if (v2 <= 0x3F)
      {
        sub_199AFFA74(319, &qword_1EAF76090, &qword_1EAF740B0, &unk_199E3A9B0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199AFFA74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199AFFB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNExistingWallpaperEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AFFB70(uint64_t a1)
{
  v2 = type metadata accessor for CNExistingWallpaperEditorView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199AFFBCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNExistingWallpaperEditorView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199AFFC10(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CNExistingWallpaperEditorView(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
  sub_199AFFB0C(v2 + OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor, v7);
  if (a1)
  {
    v9 = v7[1];
    v10 = v7[2];
    v20[1] = *v7;
    v20[2] = v9;
    v20[3] = v10;
    v20[0] = a1;
    v11 = v10;
    v12 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740D0);
    sub_199DF997C();
    sub_199AFFB70(v7);

    sub_199AFFB0C(v2 + v8, v7);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v20 - v15;
  sub_199AC3500(v20 - v15);
  sub_199AFFB70(v7);
  v17 = sub_199DF892C();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  MEMORY[0x19A8F7740](v13);
  sub_199DF891C();
  sub_199DF997C();
  return sub_199AFFE24(v16);
}

uint64_t sub_199AFFE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_199AFFEA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_199AFFEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_199AFFF40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_allocWithZone(CNAvatarViewController) initWithSettings_];
  [v3 setAllowStaleRendering_];
  return v3;
}

void sub_199B00070()
{
  sub_199B00098();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B00098()
{
  result = qword_1EAF71B28;
  if (!qword_1EAF71B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B28);
  }

  return result;
}

id sub_199B000EC(void *a1, double a2, uint64_t a3, void *a4, char a5)
{
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_199E37DF0;
  v11 = [a1 view];
  v12 = [v11 widthAnchor];

  v13 = [v12 constraintLessThanOrEqualToConstant_];
  *(v10 + 32) = v13;
  sub_199A7A02C(0, &qword_1EAF71D18);
  v14 = sub_199DFA0BC();

  [v9 activateConstraints_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_199E37DF0;
  *(v15 + 32) = a4;
  sub_199A7A02C(0, &qword_1ED615BF0);
  v16 = a4;
  v17 = sub_199DFA0BC();

  [a1 setContacts_];

  return [a1 setAllowStaleRendering_];
}

uint64_t sub_199B002C8()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF740E0);
  __swift_project_value_buffer(v0, qword_1EAF740E0);
  return sub_199DF803C();
}

double PosterOrAvatarView.init(forContact:blur:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = 0;
  PosterOrAvatarView.init(forContact:blur:alignment:)(a1, a2, a3, a4, a5 & 1, &v12, &v13);
  result = *&v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  *a6 = v13;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  return result;
}

void PosterOrAvatarView.init(forContact:blur:alignment:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  if (qword_1EAF71E98 != -1)
  {
    swift_once();
  }

  v14 = sub_199DF804C();
  __swift_project_value_buffer(v14, qword_1EAF740E0);
  v15 = a1;
  v16 = sub_199DF802C();
  v17 = sub_199DFA30C();

  if (os_log_type_enabled(v16, v17))
  {
    v37 = a3;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v18 = 136315651;
    v19 = [v15 hasBeenPersisted];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 0x6574736973726570;
    }

    else
    {
      v21 = 0x737265702D6E6F6ELL;
    }

    v38 = a5;
    if (v20)
    {
      v22 = 0xED00006465747369;
    }

    else
    {
      v22 = 0xE900000000000064;
    }

    v36 = a2;
    v23 = a4;
    v24 = sub_199A9BE90(v21, v22, &v39);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = [v15 identifier];
    v26 = sub_199DF9F8C();
    v27 = v13;
    v29 = v28;

    v30 = v26;
    a4 = v23;
    a2 = v36;
    v31 = sub_199A9BE90(v30, v29, &v39);
    v13 = v27;

    *(v18 + 14) = v31;
    a5 = v38;
    *(v18 + 22) = 2113;
    *(v18 + 24) = v15;
    *v34 = v15;
    v32 = v15;
    _os_log_impl(&dword_199A75000, v16, v17, "Init PosterOrAvatarView with %s contact identifier %s, %{private}@", v18, 0x20u);
    sub_199AD08E4(v34);
    MEMORY[0x19A8FA1A0](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v35, -1, -1);
    v33 = v18;
    a3 = v37;
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5 & 1;
  *(a7 + 32) = v15;
  *(a7 + 40) = v13;
}

id sub_199B00660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_199E37DF0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v3 = sub_199DFA0BC();

  LODWORD(v1) = [v0 areKeysAvailable_];

  if (!v1)
  {
    return 0;
  }

  result = [v2 abbreviatedStringFromContact:v0 trimmingWhitespace:1];
  if (result)
  {
    v5 = result;
    v6 = sub_199DF9F8C();

    return v6;
  }

  return result;
}

uint64_t View.onBackgroundConfigurationChange(onChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x19A8F73F0](v4, a3, &type metadata for ContactCardBackgroundConfigurationChangeModifier);
}

uint64_t sub_199B007BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF9DFC();
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_199DF9E1C();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_199A7A02C(0, &qword_1EAF71D20);
  v15 = sub_199DFA39C();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v14;
  aBlock[4] = sub_199B02854;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B02A50(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199AA0B90(&qword_1EAF71CD0, &unk_1EAF74150);
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v13, v9, v17);
  _Block_release(v17);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_199B00ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74140);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74148) + 36));
  *v9 = sub_199B0284C;
  v9[1] = v7;
}

void *sub_199B00BAC(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_199B00C08()
{
  v0 = sub_199DF971C();
  type metadata accessor for ContactCardBackgroundConfiguration();
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  sub_199DF73DC();
  v1[2] = v0;

  sub_199B01738(0);

  qword_1EAF740F8 = v1;
  return result;
}

void *ContactCardBackgroundConfiguration.__allocating_init(foregroundColor:wallpaper:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  sub_199DF73DC();
  v4[2] = a1;

  sub_199B01738(a2);

  return v4;
}

uint64_t sub_199B00CF0@<X0>(void *a1@<X8>)
{
  if (qword_1EAF71EA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAF740F8;
}

uint64_t sub_199B00D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199B02A50(&qword_1EAF74188, type metadata accessor for ContactCardBackgroundConfiguration);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_199B00DF4()
{
  sub_199B027F8();
  sub_199DF8C9C();
  return v1;
}

uint64_t sub_199B00E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  *a2 = *(v3 + 16);
}

uint64_t sub_199B00F08()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();
}

uint64_t sub_199B00FAC(uint64_t a1)
{

  v3 = sub_199DF96BC();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
    sub_199DF739C();
  }
}

void sub_199B01100(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v1 + 24);
  if (v4)
  {
    if (a1)
    {
      sub_199A7A02C(0, &qword_1EAF74160);
      v5 = v4;
      v6 = a1;
      v7 = sub_199DFA4EC();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  sub_199DF73AC();

  v8 = *(v2 + 24);
  if (v8)
  {
    v9 = v8;
    v10 = sub_199B0126C();
  }

  else
  {
    v10 = 0;
  }

  sub_199B01A80(v10);
}

id sub_199B0126C()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v0 posterArchiveData];
  v3 = sub_199DF71FC();
  v5 = v4;

  v6 = sub_199DF71DC();
  sub_199A9EF34(v3, v5);
  v28[0] = 0;
  v7 = [v1 unarchiveCNConfigurationFromData:v6 error:v28];

  v8 = v28[0];
  if (v7)
  {
    v9 = objc_allocWithZone(CNPRSPosterConfigurationAttributes);
    v10 = v8;
    v11 = [v9 initWithCNConfiguration_];
    v12 = [v11 extensionIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_199DF9F8C();
      v16 = v15;

      v17 = v14 == 0xD000000000000028 && 0x8000000199E45740 == v16;
      if (v17 || (sub_199DFA99C() & 1) != 0)
      {

        v18 = MEMORY[0x1E695CCE0];
LABEL_9:
        v19 = *v18;

        return v19;
      }

      v26 = v14 == 0xD00000000000002CLL && 0x8000000199E456C0 == v16;
      if (v26 || (sub_199DFA99C() & 1) != 0)
      {

        v18 = MEMORY[0x1E695CCE8];
        goto LABEL_9;
      }

      if (v14 == 0xD00000000000002ELL && 0x8000000199E45770 == v16)
      {

LABEL_24:
        v18 = MEMORY[0x1E695CCF0];
        goto LABEL_9;
      }

      v27 = sub_199DFA99C();

      if (v27)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v21 = v28[0];
    v22 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71E98 != -1)
    {
      swift_once();
    }

    v23 = sub_199DF804C();
    __swift_project_value_buffer(v23, qword_1EAF740E0);
    v7 = sub_199DF802C();
    v24 = sub_199DFA33C();
    if (os_log_type_enabled(v7, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_199A75000, v7, v24, "Could not get poster attributes for wallpaper", v25, 2u);
      MEMORY[0x19A8FA1A0](v25, -1, -1);
    }
  }

  return 0;
}

id sub_199B015A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_199B01660(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01738(v1);
}

void *sub_199B01690()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_199B01738(void *a1)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    if (!a1)
    {
      v10 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
    sub_199DF739C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_199A7A02C(0, &qword_1EAF74160);
  v4 = v3;
  v5 = a1;
  v6 = sub_199DFA4EC();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 24);
LABEL_8:
  *(v1 + 24) = a1;
  v9 = v5;
  sub_199B01100(v10);
}

id sub_199B018F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_199B019A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01A80(v1);
}

void *sub_199B019D8()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_199B01A80(void *a1)
{
  if (*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v3 = sub_199DF9F8C();
    v5 = v4;
    if (v3 != sub_199DF9F8C() || v5 != v6)
    {
      v8 = sub_199DFA99C();

      if (v8)
      {
        goto LABEL_12;
      }

LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v10);
      sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
      sub_199DF739C();

      return;
    }
  }

  else if (a1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v11 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *ContactCardBackgroundConfiguration.init(foregroundColor:wallpaper:)(uint64_t a1, void *a2)
{
  v2[3] = 0;
  v2[4] = 0;
  sub_199DF73DC();
  v2[2] = a1;

  sub_199B01738(a2);

  return v2;
}

uint64_t ContactCardBackgroundConfiguration.deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI34ContactCardBackgroundConfiguration___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContactCardBackgroundConfiguration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI34ContactCardBackgroundConfiguration___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactCardBackgroundConfiguration()
{
  result = qword_1EAF74120;
  if (!qword_1EAF74120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199B01E0C(void *a1, void *a2)
{
  if (![a1 hasBeenPersisted] || !objc_msgSend(a2, sel_hasBeenPersisted))
  {
    return [a1 isEqualIgnoringIdentifiers_];
  }

  v4 = [a1 identifier];
  v5 = sub_199DF9F8C();
  v7 = v6;

  v8 = [a2 identifier];
  v9 = sub_199DF9F8C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_199DFA99C();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *MEMORY[0x1E695C420];
  if ([a1 isKeyAvailable_] && objc_msgSend(a2, sel_isKeyAvailable_, v15))
  {
    v16 = [a1 wallpaper];
    v17 = [a2 wallpaper];
    v18 = v17;
    if (v16)
    {
      if (v17)
      {
        sub_199A7A02C(0, &qword_1EAF74160);
        v19 = sub_199DFA4EC();

        return v19 & 1;
      }

      else
      {

        return 0;
      }
    }

    if (v17)
    {

      return 0;
    }

    return 1;
  }

  v20 = *MEMORY[0x1E695C270];
  if ([a1 isKeyAvailable_] && objc_msgSend(a2, sel_isKeyAvailable_, v20))
  {
    v21 = [a1 imageData];
    if (v21)
    {
      v22 = v21;
      v23 = sub_199DF71FC();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    v39 = [a2 imageData];
    if (v39)
    {
      v40 = v39;
      v41 = sub_199DF71FC();
      v43 = v42;

      if (v25 >> 60 != 15)
      {
        if (v43 >> 60 != 15)
        {
          sub_199AFF43C(v23, v25);
          sub_199AFF43C(v41, v43);
          v44 = sub_199B48F70(v23, v25, v41, v43);
          sub_199A9EF20(v41, v43);
          sub_199A9EF20(v41, v43);
          sub_199A9EF20(v23, v25);
          sub_199A9EF20(v23, v25);
          return v44 & 1;
        }

        goto LABEL_47;
      }

      if (v43 >> 60 != 15)
      {
LABEL_47:
        sub_199A9EF20(v23, v25);
        sub_199A9EF20(v41, v43);
        return 0;
      }
    }

    else if (v25 >> 60 != 15)
    {
      v41 = 0;
      v43 = 0xF000000000000000;
      goto LABEL_47;
    }

    sub_199A9EF20(v23, v25);
    return 1;
  }

  v26 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_199E37DF0;
  *(v27 + 32) = v26;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v28 = sub_199DFA0BC();

  v29 = [a1 areKeysAvailable_];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_199E37DF0;
  *(v30 + 32) = v26;
  swift_unknownObjectRetain();
  v31 = sub_199DFA0BC();

  v32 = [a2 areKeysAvailable_];

  if (v29 != v32)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v33 = sub_199B00660();
  v35 = v34;
  v36 = sub_199B00660();
  v38 = v37;
  if (!v35)
  {
    swift_unknownObjectRelease();
    if (!v38)
    {
      return 1;
    }

LABEL_41:

    return 0;
  }

  if (!v37)
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (v33 == v36 && v35 == v37)
  {

    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v45 = sub_199DFA99C();

    swift_unknownObjectRelease();
    return v45 & 1;
  }
}

uint64_t _s10ContactsUI34ContactCardBackgroundConfigurationC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  swift_getKeyPath();

  sub_199DF73AC();

  v4 = sub_199DF96BC();

  if (v4)
  {
    swift_getKeyPath();
    sub_199DF73AC();

    v5 = *(a1 + 24);
    swift_getKeyPath();
    v6 = v5;
    sub_199DF73AC();

    v7 = *(a2 + 24);
    v8 = v7 == 0;
    if (v5)
    {
      if (v7)
      {
        sub_199A7A02C(0, &qword_1EAF74160);
        v9 = v7;
        v8 = sub_199DFA4EC();
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199B02578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_199B025C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B02624()
{
  result = sub_199DF73EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_199B02768()
{
  result = qword_1EAF74130;
  if (!qword_1EAF74130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74130);
  }

  return result;
}

unint64_t sub_199B027F8()
{
  result = qword_1EAF74780;
  if (!qword_1EAF74780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74780);
  }

  return result;
}

void sub_199B0288C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_199B028C4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_199B02900()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
  sub_199B01100(v3);
}

unint64_t sub_199B0296C()
{
  result = qword_1EAF74168;
  if (!qword_1EAF74168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74148);
    sub_199AA0B90(&qword_1EAF74170, &qword_1EAF74140);
    sub_199AA0B90(&qword_1EAF74178, &qword_1EAF74180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74168);
  }

  return result;
}

uint64_t sub_199B02A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199B02A98()
{
  v0 = sub_199DF9F4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v5 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EAF74190 = v5;
  *algn_1EAF74198 = v7;
  return result;
}

uint64_t sub_199B02B9C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = sub_199DF770C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_199DF7CBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_199DF7D3C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_199DF7D2C();
  sub_199DF787C();
  swift_allocObject();
  v31 = a1;
  sub_199DF786C();
  result = sub_199DF785C();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = *(v9 + 16);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16(v12, result + v30, v8);

  v17 = sub_199DF7CAC();
  v29 = *(v9 + 8);
  result = v29(v12, v8);
  if (!*(v17 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v16;
  (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  v18 = sub_199DF76FC();
  (*(v4 + 8))(v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_199E37DF0;
  *(v19 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v20 = sub_199DFA0BC();

  v21 = v31;
  LOBYTE(v19) = [v31 areKeysAvailable_];

  v22 = v32;
  *v32 = v19;
  result = sub_199DF785C();
  if (*(result + 16))
  {
    v28(v12, result + v30, v8);

    v23 = sub_199B02F90();
    v25 = v24;
    v29(v12, v8);
    *(v22 + 1) = v23;
    *(v22 + 2) = v25;
    v26 = type metadata accessor for CardHeaderNameModel(0);
    sub_199B032FC(v18, &v22[*(v26 + 24)]);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199B02F90()
{
  v1 = sub_199DF7C6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF784C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_199DF770C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v29 = v7;
  v30 = v6;
  v31 = v5;
  v32 = v2;
  v33 = v1;
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = *(v12 + 16);
  v18(v15, result + v17, v11);

  v19 = sub_199DF76FC();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v21 = *(v19 + 16);

  if (!v21)
  {
    return 0;
  }

  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
    goto LABEL_9;
  }

  v18(v15, result + v17, v11);

  v22 = sub_199DF76FC();
  result = (v20)(v15, v11);
  if (*(v22 + 16))
  {
    v24 = v29;
    v23 = v30;
    (*(v29 + 16))(v10, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v30);

    sub_199DF783C();
    (*(v24 + 8))(v10, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741B0);
    v25 = v31;
    v26 = v33;
    swift_dynamicCast();
    v27 = sub_199DF7C4C();
    (*(v32 + 8))(v25, v26);
    return v27;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_199B032FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_199DF6FFC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v100 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF741A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v89 = (v81 - v10);
  v99 = sub_199DF784C();
  v11 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99, v12);
  v97 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_199DF7C6C();
  v14 = *(v104 - 8);
  v16 = MEMORY[0x1EEE9AC00](v104, v15);
  v103 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF741A8);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v25 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v81 - v27;
  v29 = sub_199DF6FAC();
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v88 = v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = v81 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v102 = v81 - v40;
  v41 = *(a1 + 16);
  if (v41 < 2)
  {
    v59 = *(v39 + 56);

    return v59(a2, 1, 1);
  }

  v83 = v8;
  v90 = v28;
  v91 = v25;
  v84 = v39;
  v92 = v38;
  v93 = v7;
  v82 = a2;
  v42 = v14;
  v43 = v41 - 1;
  v106 = MEMORY[0x1E69E7CC0];
  v44 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_199DF81AC();
  sub_199A9C664(0, v43, 0);
  v45 = v106;
  v95 = *(v11 + 16);
  v96 = (v11 + 16);
  v46 = a1;
  v47 = (v11 + 8);
  i = v42;
  v101 = v42 + 32;
  v48 = *(v11 + 72);
  v81[1] = v46;
  *&v94 = v48;
  v49 = v46 + v48 + v44;
  v50 = v104;
  do
  {
    v51 = v97;
    v52 = v99;
    (v95)(v97, v49, v99);
    sub_199DF783C();
    (*v47)(v51, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741B0);
    swift_dynamicCast();
    v106 = v45;
    v54 = *(v45 + 16);
    v53 = *(v45 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_199A9C664(v53 > 1, v54 + 1, 1);
      v50 = v104;
      v45 = v106;
    }

    *(v45 + 16) = v54 + 1;
    v55 = v45 + ((*(i + 80) + 32) & ~*(i + 80));
    v56 = *(i + 72);
    v57 = v55 + v56 * v54;
    v58 = *(i + 32);
    v58(v57, v20, v50);
    v49 += v94;
    --v43;
  }

  while (v43);
  v87 = v56;
  v86 = v55;
  sub_199DF6F9C();
  v60 = 0;
  v85 = (i + 16);
  v61 = *(v45 + 16);
  v99 = (v83 + 56);
  v97 = (v83 + 48);
  result = v84;
  v95 = (i + 8);
  v96 = (v84 + 8);
  v94 = xmmword_199E37DF0;
  v64 = v92;
  v63 = v93;
  v65 = v91;
  for (i = v61; ; v61 = i)
  {
    if (v60 == v61)
    {
      v66 = 1;
      v60 = v61;
      goto LABEL_17;
    }

    if ((v60 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v60 >= *(v45 + 16))
    {
      goto LABEL_27;
    }

    v67 = v86 + v60 * v87;
    v68 = *(v63 + 48);
    v69 = v89;
    *v89 = v60;
    (*v85)(v69 + v68, v67, v104);
    sub_199AB7794(v69, v65, &qword_1EAF741A0);
    v66 = 0;
    ++v60;
LABEL_17:
    (*v99)(v65, v66, 1, v63);
    v70 = v90;
    sub_199AB7794(v65, v90, &qword_1EAF741A8);
    if ((*v97)(v70, 1, v63) == 1)
    {

      v80 = v82;
      (*(v84 + 32))(v82, v102, v64);
      return (*(v84 + 56))(v80, 0, 1, v64);
    }

    v71 = *v70;
    v58(v103, v70 + *(v63 + 48), v104);
    sub_199DF7C4C();
    sub_199DF6FEC();
    sub_199DF6FBC();
    v72 = sub_199DF7C5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
    v73 = swift_allocObject();
    *(v73 + 16) = v94;
    *(v73 + 32) = swift_getKeyPath();
    v74 = sub_199B03F0C(v72, v73);

    v75 = objc_opt_self();
    if (v74)
    {
      v76 = [v75 italicSystemFontOfSize_];
    }

    else
    {
      v76 = [v75 systemFontOfSize_];
    }

    v105 = v76;
    sub_199B054CC();
    sub_199DF6FCC();
    v64 = v92;
    sub_199B05D7C(&qword_1EAF741C0, MEMORY[0x1E6968848]);
    sub_199DF6F8C();
    if (v71 >= *(v45 + 16) - 1)
    {
      (*v96)(v36, v64);
    }

    else
    {
      v77 = v36;
      if (qword_1EAF71EA8 != -1)
      {
        swift_once();
      }

      sub_199DF81AC();
      sub_199DF6FEC();
      v78 = v88;
      sub_199DF6FBC();
      sub_199DF6F8C();
      v79 = *v96;
      (*v96)(v78, v64);
      v36 = v77;
      v79(v77, v64);
    }

    result = (*v95)(v103, v104);
    v63 = v93;
    v65 = v91;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_199B03CD8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 nickname];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_199B03D30(uint64_t result, uint64_t a2)
{
  v12 = result;
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  if (!v2 || result == a2)
  {
    v11 = 1;
    return v11 & 1;
  }

  v3 = 0;
  while (v2)
  {
    v14 = v3;
    v15 = v2;
    v4 = *(v12 + v3 + 32);
    v5 = *(v12 + v3 + 40);
    v6 = *(v12 + v3 + 48);
    v8 = *(a2 + v3 + 32);
    v7 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 48);
    sub_199ACE3F8(v4, v5, v6);
    sub_199DF81AC();
    v10 = v4;

    sub_199ACE3F8(v8, v7, v9);
    sub_199DF81AC();

    if ((sub_199DF936C() & 1) == 0)
    {
      sub_199ACE3E8(v8, v7, v9);

      sub_199ACE3E8(v4, v5, v6);

      goto LABEL_12;
    }

    v11 = sub_199DF97FC();
    sub_199ACE3E8(v8, v7, v9);

    sub_199ACE3E8(v10, v5, v6);

    if (v11)
    {
      v2 = v15 - 1;
      v3 = v14 + 40;
      if (v15 != 1)
      {
        continue;
      }
    }

    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_199B03F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_199DFA87C();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8);
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_199DFA87C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8F8520](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x19A8F8520](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      v15 = sub_199DF9EDC();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_199B040FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_199B05520();
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = v7;
      v10 = sub_199DFA4EC();

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_199B041C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74228);
  MEMORY[0x1EEE9AC00](v108, v3);
  v101 = &v88 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74230);
  MEMORY[0x1EEE9AC00](v106, v5);
  v102 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74238);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v109 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v111 = &v88 - v12;
  v13 = type metadata accessor for ContactCardHeaderNameView(0);
  v14 = v13 - 8;
  v97 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v98 = v16;
  v99 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74240);
  v104 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v100 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v88 - v22;
  v24 = sub_199DF6FAC();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v88 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74248);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v105 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v88 - v38;
  v40 = *(v14 + 36);
  v110 = a1;
  v41 = (a1 + v40);
  v42 = *(type metadata accessor for CardHeaderNameModel(0) + 24);
  v103 = v41;
  sub_199B05880(&v41[v42], v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_199A79A04(v23, &unk_1EAF72BF0);
    (*(v104 + 56))(v39, 1, 1, v17);
  }

  else
  {
    v90 = v25;
    v43 = *(v25 + 32);
    v95 = v32;
    v96 = v24;
    v43(v32, v23, v24);
    (*(v25 + 16))(v29, v32, v24);
    v44 = sub_199DF93BC();
    v46 = v45;
    v94 = v17;
    v48 = v47;
    sub_199DF920C();
    v49 = sub_199DF939C();
    v88 = v50;
    v89 = v49;
    v51 = v110;
    v53 = v52;

    sub_199ACE3E8(v44, v46, v48 & 1);

    v54 = sub_199AC3764(*v51, *(v51 + 8));
    swift_getKeyPath();
    *&v120 = v54;
    sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
    sub_199DF73AC();

    v56 = v88;
    v55 = v89;
    v57 = sub_199DF933C();
    v92 = v58;
    v93 = v57;
    LOBYTE(v44) = v59;
    v91 = v60;

    sub_199ACE3E8(v55, v56, v53 & 1);

    KeyPath = swift_getKeyPath();
    sub_199DF9B5C();
    sub_199DF897C();
    *&v117[55] = v136;
    *&v117[71] = v137;
    *&v117[87] = v138;
    *&v117[103] = v139;
    *&v117[7] = v133;
    *&v117[23] = v134;
    v62 = v44 & 1;
    v118 = v44 & 1;
    *&v117[39] = v135;
    v63 = *(v51 + 48);
    LOBYTE(v120) = *(v51 + 40);
    *(&v120 + 1) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
    sub_199DF984C();
    if (v112)
    {
      v64 = 4;
    }

    else
    {
      v64 = 1;
    }

    v65 = swift_getKeyPath();
    *(&v114[4] + 9) = *&v117[64];
    *(&v114[5] + 9) = *&v117[80];
    *(&v114[6] + 9) = *&v117[96];
    *(v114 + 9) = *v117;
    *(&v114[1] + 9) = *&v117[16];
    *(&v114[2] + 9) = *&v117[32];
    v119 = 0;
    *&v112 = v93;
    *(&v112 + 1) = v92;
    LOBYTE(v113) = v62;
    *(&v113 + 1) = v91;
    *&v114[0] = KeyPath;
    BYTE8(v114[0]) = 1;
    *(&v114[3] + 9) = *&v117[48];
    *(&v114[7] + 1) = *&v117[111];
    *&v115 = v65;
    *(&v115 + 1) = v64;
    v116 = 0;
    v66 = v99;
    sub_199B05DC4(v51, v99);
    v67 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v68 = swift_allocObject();
    sub_199B05E28(v66, v68 + v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74310);
    sub_199B05EEC();
    v69 = v100;
    sub_199DF949C();

    v128 = v114[6];
    v129 = v114[7];
    v130 = v115;
    LOBYTE(v131) = v116;
    v124 = v114[2];
    v125 = v114[3];
    v126 = v114[4];
    v127 = v114[5];
    v120 = v112;
    v121 = v113;
    v122 = v114[0];
    v123 = v114[1];
    sub_199A79A04(&v120, &qword_1EAF74310);
    (*(v90 + 8))(v95, v96);
    v70 = v104;
    v71 = v94;
    (*(v104 + 32))(v39, v69, v94);
    (*(v70 + 56))(v39, 0, 1, v71);
  }

  if (*v103 == 1)
  {
    sub_199B04DC0(&v120);
    v72 = v131;
    v73 = v102;
    *(v102 + 160) = v130;
    *(v73 + 176) = v72;
    *(v73 + 192) = v132;
    v74 = v127;
    *(v73 + 96) = v126;
    *(v73 + 112) = v74;
    v75 = v129;
    *(v73 + 128) = v128;
    *(v73 + 144) = v75;
    v76 = v123;
    *(v73 + 32) = v122;
    *(v73 + 48) = v76;
    v77 = v125;
    *(v73 + 64) = v124;
    *(v73 + 80) = v77;
    v78 = v121;
    *v73 = v120;
    *(v73 + 16) = v78;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74250);
    sub_199B05FD0(&qword_1EAF74258, &qword_1EAF74250, &unk_199E3CAE0, sub_199B058F0);
    sub_199B05FD0(&qword_1EAF742C0, &qword_1EAF74228, &unk_199E3CAB8, sub_199B05B18);
    sub_199DF8EDC();
  }

  else
  {
    v79 = v39;
    v80 = v101;
    sub_199B050BC(v101);
    sub_199AAD408(v80, v102, &qword_1EAF74228);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74250);
    sub_199B05FD0(&qword_1EAF74258, &qword_1EAF74250, &unk_199E3CAE0, sub_199B058F0);
    sub_199B05FD0(&qword_1EAF742C0, &qword_1EAF74228, &unk_199E3CAB8, sub_199B05B18);
    sub_199DF8EDC();
    v81 = v80;
    v39 = v79;
    sub_199A79A04(v81, &qword_1EAF74228);
  }

  v82 = v105;
  sub_199AAD408(v39, v105, &qword_1EAF74248);
  v83 = v111;
  v84 = v109;
  sub_199AAD408(v111, v109, &qword_1EAF74238);
  v85 = v107;
  sub_199AAD408(v82, v107, &qword_1EAF74248);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74308);
  sub_199AAD408(v84, v85 + *(v86 + 48), &qword_1EAF74238);
  sub_199A79A04(v83, &qword_1EAF74238);
  sub_199A79A04(v39, &qword_1EAF74248);
  sub_199A79A04(v84, &qword_1EAF74238);
  return sub_199A79A04(v82, &qword_1EAF74248);
}

uint64_t sub_199B04D28()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF984C();
  sub_199DF985C();
}

__n128 sub_199B04DC0@<Q0>(uint64_t a1@<X8>)
{
  *(&v26 + 1) = *(v1 + *(type metadata accessor for ContactCardHeaderNameView(0) + 28) + 16);
  sub_199A9C458();
  sub_199DF81AC();
  v3 = sub_199DF93CC();
  v5 = v4;
  v7 = v6;
  sub_199DF91DC();
  sub_199DF927C();
  sub_199DF92BC();

  v8 = sub_199DF939C();
  v10 = v9;
  v12 = v11;

  sub_199ACE3E8(v3, v5, v7 & 1);

  v13 = sub_199AC3764(*v1, *(v1 + 8));
  swift_getKeyPath();
  *&v26 = v13;
  sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v14 = sub_199DF933C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  LOBYTE(v26) = v18 & 1;
  v23 = swift_getKeyPath();
  sub_199DF9B5C();
  sub_199DF897C();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *(a1 + 145) = *&v25[64];
  *(a1 + 161) = *&v25[80];
  *(a1 + 177) = *&v25[96];
  *(a1 + 81) = *v25;
  *(a1 + 97) = *&v25[16];
  result = *&v25[32];
  *(a1 + 113) = *&v25[32];
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v22;
  *(a1 + 64) = 0x3FE6666666666666;
  *(a1 + 72) = v23;
  *(a1 + 80) = 1;
  *(a1 + 192) = *(&v32 + 1);
  *(a1 + 129) = *&v25[48];
  return result;
}

__n128 sub_199B050BC@<Q0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_199DF895C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742D0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - v10;
  KeyPath = swift_getKeyPath();
  v13 = sub_199AC3764(*v1, *(v1 + 8));
  swift_getKeyPath();
  *&v31 = v13;
  sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v14 = *(v13 + 16);

  v15 = swift_getKeyPath();
  v30 = 0;
  v29 = 0;
  *&v31 = 0xD000000000000014;
  *(&v31 + 1) = 0x8000000199E475A0;
  LOBYTE(v32) = 0;
  *(&v32 + 1) = MEMORY[0x1E69E7CC0];
  *&v33 = KeyPath;
  *(&v33 + 1) = 1;
  v34.n128_u8[0] = 0;
  v34.n128_u64[1] = v15;
  *&v35 = v14;
  sub_199DF894C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742E8);
  sub_199B05CC4();
  sub_199DF964C();
  (*(v3 + 8))(v6, v2);
  v38[2] = v33;
  v38[3] = v34;
  v39 = v35;
  v38[0] = v31;
  v38[1] = v32;
  sub_199A79A04(v38, &qword_1EAF742E8);
  sub_199DF91DC();
  sub_199DF927C();
  v16 = sub_199DF92BC();

  v17 = swift_getKeyPath();
  v18 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742E0) + 36)];
  *v18 = v17;
  v18[1] = v16;
  v19 = swift_getKeyPath();
  v20 = &v11[*(v8 + 44)];
  *v20 = v19;
  v20[8] = 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v21 = v28;
  sub_199A94B24(v11, v28);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74228) + 36);
  v23 = v36;
  *(v22 + 64) = v35;
  *(v22 + 80) = v23;
  *(v22 + 96) = v37;
  v25 = v32;
  v24 = v33;
  *v22 = v31;
  *(v22 + 16) = v25;
  result = v34;
  *(v22 + 32) = v24;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_199B05470@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_199DF8D4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74220);
  return sub_199B041C0(v1, a1 + *(v3 + 44));
}

unint64_t sub_199B054CC()
{
  result = qword_1EAF75C40;
  if (!qword_1EAF75C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75C40);
  }

  return result;
}

unint64_t sub_199B05520()
{
  result = qword_1EAF71000;
  if (!qword_1EAF71000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71000);
  }

  return result;
}

void sub_199B05594()
{
  sub_199B057AC(319, &unk_1EAF741E8, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_199B05690()
{
  sub_199B057AC(319, &qword_1EAF74208, type metadata accessor for ContactCardBackgroundConfiguration, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_199B05810(319, &qword_1EAF74210, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_199B05810(319, &qword_1EAF711C0, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CardHeaderNameModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B057AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_199B05810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_199B05880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B058F0()
{
  result = qword_1EAF74260;
  if (!qword_1EAF74260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74268);
    sub_199B059A8();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74260);
  }

  return result;
}

unint64_t sub_199B059A8()
{
  result = qword_1EAF74270;
  if (!qword_1EAF74270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74278);
    sub_199B05A60();
    sub_199AA0B90(&qword_1EAF742A0, &qword_1EAF742A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74270);
  }

  return result;
}

unint64_t sub_199B05A60()
{
  result = qword_1EAF74280;
  if (!qword_1EAF74280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74288);
    sub_199AA0B90(&qword_1EAF74290, &qword_1EAF74298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74280);
  }

  return result;
}

unint64_t sub_199B05B18()
{
  result = qword_1EAF742C8;
  if (!qword_1EAF742C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742D0);
    sub_199B05BD0();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742C8);
  }

  return result;
}

unint64_t sub_199B05BD0()
{
  result = qword_1EAF742D8;
  if (!qword_1EAF742D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E8);
    sub_199B05CC4();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742D8);
  }

  return result;
}

unint64_t sub_199B05CC4()
{
  result = qword_1EAF742F0;
  if (!qword_1EAF742F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E8);
    sub_199B05A60();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742F0);
  }

  return result;
}

uint64_t sub_199B05D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199B05DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B05E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B05E8C()
{
  type metadata accessor for ContactCardHeaderNameView(0);

  return sub_199B04D28();
}

unint64_t sub_199B05EEC()
{
  result = qword_1EAF74318;
  if (!qword_1EAF74318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74310);
    sub_199B05FD0(&qword_1EAF74320, &qword_1EAF74328, &unk_199E3CBE0, sub_199B06054);
    sub_199AA0B90(&qword_1EAF74290, &qword_1EAF74298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74318);
  }

  return result;
}

uint64_t sub_199B05FD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B06054()
{
  result = qword_1EAF74330;
  if (!qword_1EAF74330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74338);
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74330);
  }

  return result;
}

uint64_t sub_199B0610C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF74360);
  __swift_project_value_buffer(v0, qword_1EAF74360);
  return sub_199DF803C();
}

uint64_t sub_199B0618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74390);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74398);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v14 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    *v7 = sub_199DF8CFC();
    *(v7 + 1) = 0x4038000000000000;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743A0);
    v14[1] = a2;
    v14[2] = 0;
    v14[3] = v12;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;
    sub_199DF81AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200);
    type metadata accessor for QuickActionButtonView();
    sub_199ACDECC();
    sub_199B07D08();
    sub_199DF99EC();
    sub_199AAD408(v7, v11, &qword_1EAF74390);
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390);
    sub_199DF8EDC();
    return sub_199A79A04(v7, &qword_1EAF74390);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390);
    return sub_199DF8EDC();
  }
}

uint64_t sub_199B06458@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_199DF7D9C();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v12 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = *(v7 + 16);
  v13(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for QuickActionButtonView();
  v13(a3 + *(v14 + 20), v11, v6);
  v15 = sub_199DF7D7C();
  result = (*(v7 + 8))(v11, v6);
  if (v15)
  {
    result = sub_199A9A5FC(v15);
  }

  *(a3 + *(v14 + 24)) = v15 == 0;
  return result;
}

uint64_t sub_199B06654(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t *a4)
{
  *a3 = a2();
  a2();
  v6 = sub_199DF972C();

  *a4 = v6;
  return result;
}

void (*sub_199B066BC())(void)
{
  if (qword_1EAF71EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_199DF804C();
  __swift_project_value_buffer(v0, qword_1EAF74360);
  v1 = sub_199DF802C();
  v2 = sub_199DFA31C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_199A75000, v1, v2, "Quick action pressed.", v3, 2u);
    MEMORY[0x19A8FA1A0](v3, -1, -1);
  }

  type metadata accessor for QuickActionButtonView();
  result = sub_199DF7D7C();
  if (result)
  {
    v5 = result;
    result();

    return sub_199A9A5FC(v5);
  }

  return result;
}

__n128 sub_199B067E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_199DF8D4C();
  LOBYTE(v46[0]) = 0;
  sub_199B06A68(a1, &v47);
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v39 = v47;
  v40 = v48;
  v44[2] = v49;
  v44[3] = v50;
  v45 = v51;
  v44[0] = v47;
  v44[1] = v48;
  sub_199AAD408(&v39, v37, &qword_1EAF74440);
  sub_199A79A04(v44, &qword_1EAF74440);
  *&v38[23] = v40;
  *&v38[39] = v41;
  *&v38[55] = v42;
  *&v38[71] = v43;
  *&v38[7] = v39;
  v5 = v46[0];
  sub_199DF9B5C();
  sub_199DF897C();
  v6 = sub_199DF91CC();
  sub_199DF84FC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v37[0]) = 0;
  v15 = sub_199DF9B5C();
  v17 = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743D8) + 36));
  v19 = *(sub_199DF896C() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_199DF8D1C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #22.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10) + 36)] = 256;
  *a2 = v4;
  *(a2 + 8) = 0x401C000000000000;
  *(a2 + 16) = v5;
  v27 = *v38;
  *(a2 + 33) = *&v38[16];
  v28 = *&v38[48];
  *(a2 + 49) = *&v38[32];
  *(a2 + 65) = v28;
  v29 = *&v38[63];
  *(a2 + 17) = v27;
  v30 = v47;
  v31 = v48;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  v32 = v49;
  v33 = v50;
  *(a2 + 112) = v31;
  *(a2 + 128) = v32;
  v34 = v51;
  v35 = v52;
  *(a2 + 144) = v33;
  *(a2 + 160) = v34;
  result = v53;
  *(a2 + 176) = v35;
  *(a2 + 192) = result;
  *(a2 + 208) = v6;
  *(a2 + 212) = *(v37 + 3);
  *(a2 + 209) = v37[0];
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = 0;
  *(a2 + 252) = *(v46 + 3);
  *(a2 + 249) = v46[0];
  *(a2 + 256) = v15;
  *(a2 + 264) = v17;
  return result;
}

uint64_t sub_199B06A68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = sub_199DF9F4C();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QuickActionButtonView();
  sub_199DF7D6C();
  if (v8)
  {
    v9 = sub_199DF97CC();
    v10 = sub_199DF92AC();
    KeyPath = swift_getKeyPath();
    v12 = sub_199B08498();
    v13 = swift_getKeyPath();
    v51 = v12;
    swift_retain_n();

    v52 = v10;

    v50 = v13;
  }

  else
  {
    v9 = 0;
    KeyPath = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
  }

  sub_199DF7D8C();
  if (v14)
  {
    sub_199DF9EEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_199E37D40;
    v46 = a1;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74448);
    *(inited + 64) = sub_199AA0B90(&qword_1EAF74450, &qword_1EAF74448);
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    v16 = sub_199AA8A84(v7, inited);
    v18 = v17;
    swift_setDeallocating();
    sub_199A79A04(inited + 32, &qword_1EAF72790);
    v53 = v16;
    v54 = v18;
    sub_199A9C458();
    v19 = sub_199DF93CC();
    v21 = v20;
    v23 = v22;
    (*(v4 + 8))(v7, v49);
    sub_199DF92DC();
    v24 = sub_199DF939C();
    v48 = v9;
    v49 = a2;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v47 = KeyPath;

    sub_199ACE3E8(v19, v21, v23 & 1);

    sub_199DF926C();
    v30 = sub_199DF932C();
    v32 = v31;
    v34 = v33;
    sub_199ACE3E8(v25, v27, v29 & 1);
    KeyPath = v47;

    sub_199B08498();

    v35 = sub_199DF933C();
    v37 = v36;
    LOBYTE(v27) = v38;
    v40 = v39;
    a2 = v49;

    sub_199ACE3E8(v30, v32, v34 & 1);

    v41 = v27 & 1;
    v9 = v48;
    sub_199ACE3F8(v35, v37, v41);
    sub_199DF81AC();
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v41 = 0;
    v40 = 0;
  }

  v42 = v51;
  v43 = v52;
  v44 = v50;
  sub_199B08334(v9);
  sub_199B083A4(v35, v37, v41, v40);
  sub_199B083E8(v9);
  sub_199B08454(v35, v37, v41, v40);
  *a2 = v9;
  a2[1] = KeyPath;
  a2[2] = v43;
  a2[3] = v44;
  a2[4] = v42;
  a2[5] = v35;
  a2[6] = v37;
  a2[7] = v41;
  a2[8] = v40;
  sub_199B08454(v35, v37, v41, v40);
  return sub_199B083E8(v9);
}

uint64_t sub_199B06EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19[-v10];
  v12 = sub_199DF84DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_199B07F50(v3, &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_199B07FB4(&v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743D8);
  sub_199B08080();
  sub_199DF988C();
  LOBYTE(v11) = *(v3 + *(v5 + 32));
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74438);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_199ADF728;
  v18[2] = v16;
  return result;
}

id sub_199B070F4()
{
  result = sub_199B07114();
  qword_1EAF74378 = result;
  return result;
}

id sub_199B07114()
{
  v0 = [objc_opt_self() effectWithBlurRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  if (v0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_199E3CC90;
    *(v1 + 32) = v0;
    v2 = objc_opt_self();
    v3 = v0;
    v5 = xmmword_199E3CCA0;
    v6 = xmmword_199E3CCB0;
    v7 = xmmword_199E3CCC0;
    v8 = xmmword_199E3CCD0;
    v9 = xmmword_199E3CCE0;
    result = [v2 _colorEffectCAMatrix_];
    if (result)
    {
      *(v1 + 40) = result;

      return v1;
    }

    __break(1u);
  }

  else
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_199E37DF0;
    v5 = xmmword_199E3CCA0;
    v6 = xmmword_199E3CCB0;
    v7 = xmmword_199E3CCC0;
    v8 = xmmword_199E3CCD0;
    v9 = xmmword_199E3CCE0;
    result = [objc_opt_self() _colorEffectCAMatrix_];
    if (result)
    {
      *(v1 + 32) = result;
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_199B07298()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v0 init];
}

void sub_199B072D0(void *a1)
{
  if (qword_1EAF71EC8 != -1)
  {
    swift_once();
  }

  sub_199B088D0();
  v2 = sub_199DFA0BC();
  [a1 setBackgroundEffects_];
}

void sub_199B07420()
{
  sub_199B0891C();
  sub_199DF8EAC();
  __break(1u);
}

char *sub_199B07448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v73 = a2;
  v74 = sub_199DF7D9C();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v6);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_199DF76DC();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74380);
  v65 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v58 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v58 - v25;
  v27 = sub_199DF7C3C();
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 | a3))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v61 = v30;
  v62 = v29;
  v63 = v12;
  [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_199DF7C2C();
  v34 = *MEMORY[0x1E69968F8];
  v68 = v23;
  v60 = *(v8 + 104);
  v60(v11, v34, v75);
  sub_199DF7C1C();
  v69 = a3;
  v66 = v19;
  v64 = v35;
  sub_199DF7C0C();
  sub_199A9A57C(a1);
  v67 = v26;
  v64 = a1;
  sub_199DF7D5C();
  v59 = *(v8 + 8);
  v36 = v75;
  v59(v11, v75);
  v58 = *(v76 + 56);
  v58(v26, 0, 1, v74);
  v60(v11, *MEMORY[0x1E6996900], v36);
  v60 = sub_199DF7C1C();
  sub_199DF7C0C();
  sub_199A9A57C(v69);
  v37 = v68;
  v38 = v74;
  sub_199DF7D5C();
  v59(v11, v75);
  v58(v37, 0, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74388);
  v39 = *(v65 + 9);
  v40 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v75 = swift_allocObject();
  v41 = v75 + v40;
  sub_199AAD408(v67, v75 + v40, &qword_1EAF74380);
  sub_199AAD408(v37, v41 + v39, &qword_1EAF74380);
  v42 = v66;
  sub_199AAD408(v41, v66, &qword_1EAF74380);
  v43 = v42;
  v44 = v70;
  sub_199B07C18(v43, v70);
  v45 = *(v76 + 48);
  v46 = (v76 + 32);
  if (v45(v44, 1, v38) == 1)
  {
    sub_199A79A04(v44, &qword_1EAF74380);
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v65 = *v46;
    v65(v71, v44, v38);
    v33 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_199AB2818(0, *(v33 + 2) + 1, 1, v33);
    }

    v48 = *(v33 + 2);
    v47 = *(v33 + 3);
    if (v48 >= v47 >> 1)
    {
      v33 = sub_199AB2818(v47 > 1, v48 + 1, 1, v33);
    }

    *(v33 + 2) = v48 + 1;
    v38 = v74;
    v65(&v33[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v48], v71, v74);
    v44 = v70;
  }

  v49 = v41 + v39;
  v50 = v66;
  sub_199AAD408(v49, v66, &qword_1EAF74380);
  sub_199B07C18(v50, v44);
  v51 = v45(v44, 1, v38);
  v52 = v64;
  if (v51 == 1)
  {
    sub_199A79A04(v44, &qword_1EAF74380);
  }

  else
  {
    v53 = *v46;
    (*v46)(v71, v44, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_199AB2818(0, *(v33 + 2) + 1, 1, v33);
    }

    v55 = *(v33 + 2);
    v54 = *(v33 + 3);
    if (v55 >= v54 >> 1)
    {
      v33 = sub_199AB2818(v54 > 1, v55 + 1, 1, v33);
    }

    *(v33 + 2) = v55 + 1;
    v53(&v33[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v55], v71, v38);
  }

  v56 = v68;
  sub_199A9A5FC(v69);
  sub_199A9A5FC(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_199A79A04(v56, &qword_1EAF74380);
  sub_199A79A04(v67, &qword_1EAF74380);
  (*(v61 + 8))(v32, v62);
  return v33;
}

uint64_t sub_199B07C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for QuickActionButtonView()
{
  result = qword_1EAF743B8;
  if (!qword_1EAF743B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_199B07D08()
{
  result = qword_1EAF743A8;
  if (!qword_1EAF743A8)
  {
    type metadata accessor for QuickActionButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743A8);
  }

  return result;
}

void sub_199B07D88()
{
  sub_199B07E14();
  if (v0 <= 0x3F)
  {
    sub_199DF7D9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_199B07E14()
{
  if (!qword_1EAF72DE8)
  {
    sub_199DF857C();
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72DE8);
    }
  }
}

unint64_t sub_199B07E7C()
{
  result = qword_1EAF743C8;
  if (!qword_1EAF743C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743D0);
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743C8);
  }

  return result;
}

uint64_t sub_199B07F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B07FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_199B08018())(void)
{
  type metadata accessor for QuickActionButtonView();

  return sub_199B066BC();
}

unint64_t sub_199B08080()
{
  result = qword_1EAF743E0;
  if (!qword_1EAF743E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743D8);
    sub_199B08138();
    sub_199AA0B90(&qword_1EAF713D8, &qword_1EAF72C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743E0);
  }

  return result;
}

unint64_t sub_199B08138()
{
  result = qword_1EAF743E8;
  if (!qword_1EAF743E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743F0);
    sub_199B081F0();
    sub_199AA0B90(&qword_1EAF74428, &qword_1EAF74430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743E8);
  }

  return result;
}

unint64_t sub_199B081F0()
{
  result = qword_1EAF743F8;
  if (!qword_1EAF743F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74400);
    sub_199B0827C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743F8);
  }

  return result;
}

unint64_t sub_199B0827C()
{
  result = qword_1EAF74408;
  if (!qword_1EAF74408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74410);
    sub_199AA0B90(&qword_1EAF74418, &qword_1EAF74420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74408);
  }

  return result;
}

uint64_t sub_199B08334(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_199B083A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_199ACE3F8(result, a2, a3 & 1);

    return sub_199DF81AC();
  }

  return result;
}

uint64_t sub_199B083E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_199B08454(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_199ACE3E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_199B08498()
{
  v0 = sub_199DF857C();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  type metadata accessor for QuickActionButtonView();
  v9 = sub_199DF7D7C();
  if (v9)
  {
    sub_199A9A5FC(v9);
    sub_199AC2B24(v8);
    (*(v1 + 104))(v5, *MEMORY[0x1E697DBA8], v0);
    v10 = sub_199DF856C();
    v11 = *(v1 + 8);
    v11(v5, v0);
    v11(v8, v0);
    if (v10)
    {
      if (qword_1EAF71EC0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1EAF87018;
    }

    else
    {
      if (qword_1EAF71EB8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1EAF87008;
    }
  }

  else
  {
    sub_199AC2B24(v8);
    (*(v1 + 104))(v5, *MEMORY[0x1E697DBA8], v0);
    v13 = sub_199DF856C();
    v14 = *(v1 + 8);
    v14(v5, v0);
    v14(v8, v0);
    if (v13)
    {
      if (qword_1EAF71EC0 != -1)
      {
        swift_once();
      }

      v12 = &qword_1EAF87020;
    }

    else
    {
      if (qword_1EAF71EB8 != -1)
      {
        swift_once();
      }

      v12 = &qword_1EAF87010;
    }
  }

  return *v12;
}

unint64_t sub_199B08768()
{
  result = qword_1EAF74458;
  if (!qword_1EAF74458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74438);
    sub_199B08820();
    sub_199AA0B90(&qword_1EAF73868, &qword_1EAF73870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74458);
  }

  return result;
}

unint64_t sub_199B08820()
{
  result = qword_1EAF74460;
  if (!qword_1EAF74460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74460);
  }

  return result;
}

unint64_t sub_199B0887C()
{
  result = qword_1EAF74470;
  if (!qword_1EAF74470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74470);
  }

  return result;
}

unint64_t sub_199B088D0()
{
  result = qword_1EAF74478;
  if (!qword_1EAF74478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF74478);
  }

  return result;
}

unint64_t sub_199B0891C()
{
  result = qword_1EAF74480;
  if (!qword_1EAF74480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74480);
  }

  return result;
}

BOOL sub_199B08970(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_199DFAA6C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_199B08A18()
{
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  return sub_199DF81AC();
}

uint64_t sub_199B08ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  *a2 = *(v3 + 16);
  return sub_199DF81AC();
}

uint64_t sub_199B08B68()
{
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF739C();
}

uint64_t sub_199B08C34()
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744A0);
  v2 = MEMORY[0x1EEE9AC00](v68, v1);
  v63 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v67 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v59 - v8;
  swift_getKeyPath();
  v70 = v0;
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  v10 = v0[2];
  v11 = *(v10 + 16);
  sub_199DF81AC();
  if (!v11)
  {
    v64 = MEMORY[0x1E69E7CC8];
LABEL_25:

    return v64;
  }

  v12 = 0;
  v64 = MEMORY[0x1E69E7CC8];
  v65 = v11;
  v13 = &qword_1EAF744A0;
  v62 = v11 - 1;
  v66 = v10;
  while (v12 < *(v10 + 16))
  {
    v14 = sub_199DF7C9C();
    v15 = *(v14 - 8);
    v16 = v15;
    v69 = v12 + 1;
    v17 = v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v15 + 72) * v12;
    v18 = v68;
    v19 = *(v68 + 48);
    *v9 = v12;
    (*(v15 + 16))(&v9[v19], v17, v14);
    v20 = v9;
    v21 = v9;
    v22 = v67;
    sub_199AAD408(v20, v67, v13);
    v23 = *(v18 + 48);
    v24 = v13;
    v25 = sub_199DF7C7C();
    v28 = *(v16 + 8);
    v26 = v16 + 8;
    v27 = v28;
    v28(v22 + v23, v14);
    if (v25)
    {
      v59 = v26;
      v60 = v12;
      v61 = v27;
      sub_199B09150(&v70);

      v29 = v70;
      v30 = v63;
      sub_199AAD408(v21, v63, v24);
      v31 = *v30;
      v32 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v32;
      v35 = sub_199B4AA4C(v29);
      v36 = v32[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_27;
      }

      v9 = v21;
      if (v32[3] >= v38)
      {
        v45 = v61;
        v46 = v14;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v57 = v34;
          sub_199B7594C();
          v32 = v70;
          if (v57)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v39 = v34;
        sub_199B7492C(v38, isUniquelyReferenced_nonNull_native);
        v32 = v70;
        v40 = sub_199B4AA4C(v29);
        v42 = v41 & 1;
        v43 = v39;
        v44 = v39 & 1;
        v45 = v61;
        if (v44 != v42)
        {
          goto LABEL_29;
        }

        v35 = v40;
        v46 = v14;
        if (v43)
        {
          goto LABEL_16;
        }
      }

      v32[(v35 >> 6) + 8] |= 1 << v35;
      *(v32[6] + v35) = v29;
      *(v32[7] + 8 * v35) = MEMORY[0x1E69E7CC0];
      v47 = v32[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_28;
      }

      v32[2] = v49;
LABEL_16:
      v61 = v31;
      v50 = v32[7];
      v51 = *(v50 + 8 * v35);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v35) = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_199AB2840(0, *(v51 + 2) + 1, 1, v51);
        *(v50 + 8 * v35) = v51;
      }

      v64 = v32;
      v54 = *(v51 + 2);
      v53 = *(v51 + 3);
      if (v54 >= v53 >> 1)
      {
        *(v50 + 8 * v35) = sub_199AB2840((v53 > 1), v54 + 1, 1, v51);
      }

      v55 = *(v68 + 48);
      v13 = &qword_1EAF744A0;
      sub_199A79A04(v9, &qword_1EAF744A0);
      v56 = *(v50 + 8 * v35);
      *(v56 + 16) = v54 + 1;
      *(v56 + 8 * v54 + 32) = v61;
      v45(v63 + v55, v46);
      v10 = v66;
      v12 = v69;
      if (v62 == v60)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_199A79A04(v21, v24);
      v12 = v69;
      v13 = v24;
      v10 = v66;
      v9 = v21;
      if (v65 == v69)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

uint64_t sub_199B09150@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8);
  v2 = sub_199DF9EDC();

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    v5 = sub_199DF9EDC();

    if (v5)
    {
      v4 = 1;
    }

    else
    {
      swift_getKeyPath();
      v6 = sub_199DF9EDC();

      if (v6)
      {
        v4 = 2;
      }

      else
      {
        swift_getKeyPath();
        v7 = sub_199DF9EDC();

        if (v7)
        {
          v4 = 3;
        }

        else
        {
          swift_getKeyPath();
          v8 = sub_199DF9EDC();

          if (v8)
          {
            v4 = 4;
          }

          else
          {
            swift_getKeyPath();
            v9 = sub_199DF9EDC();

            if (v9)
            {
              v4 = 5;
            }

            else
            {
              v4 = 6;
            }
          }
        }
      }
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_199B09340()
{

  v1 = OBJC_IVAR____TtC10ContactsUI23ContactDetailsViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199B0940C()
{
  result = sub_199DF73EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_199B094AC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v34 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744B8);
  MEMORY[0x1EEE9AC00](v37, v7);
  v9 = v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744C0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v34 - v12;
  v14 = v1[1];
  v42 = *v1;
  v43[0] = v14;
  *(v43 + 9) = *(v1 + 25);
  v15 = v42;
  swift_getKeyPath();
  v39[0] = v15;
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  v16 = *(*(v15 + 16) + 16);
  v17 = BYTE8(v42);
  if (BYTE8(v42) == 7)
  {
    goto LABEL_7;
  }

  v36 = v2;
  v18 = sub_199B08C34();
  if (!*(v18 + 16) || (v19 = sub_199B4AA4C(v17), (v20 & 1) == 0))
  {

    v2 = v36;
LABEL_7:
    v40 = 0;
    v41 = v16;
    swift_getKeyPath();
    v23 = swift_allocObject();
    v24 = v43[0];
    *(v23 + 16) = v42;
    *(v23 + 32) = v24;
    *(v23 + 41) = *(v43 + 9);
    *(v23 + 64) = v16;
    sub_199B0A7B8(&v42, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200);
    type metadata accessor for ContactDetailRowView(0);
    sub_199ACDECC();
    sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView);
    sub_199DF99EC();
    (*(v3 + 16))(v9, v6, v2);
    swift_storeEnumTagMultiPayload();
    sub_199B0A858();
    sub_199B0A8E4();
    sub_199DF8EDC();
    return (*(v3 + 8))(v6, v2);
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  sub_199DF81AC();

  v22 = *(v21 + 16);
  if (v22)
  {
    v35 = *(v21 + 32);
  }

  else
  {
    v35 = 0;
  }

  v26 = v9;
  v27 = v22 == 0;
  v28 = sub_199AFD834(v21);

  v40 = 0;
  v41 = v16;
  v34[1] = swift_getKeyPath();
  v29 = swift_allocObject();
  v30 = v43[0];
  *(v29 + 16) = v42;
  *(v29 + 32) = v30;
  *(v29 + 41) = *(v43 + 9);
  *(v29 + 64) = v16;
  *(v29 + 72) = v28;
  sub_199B0A7B8(&v42, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200);
  type metadata accessor for ContactDetailRowView(0);
  sub_199ACDECC();
  sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView);
  sub_199DF99EC();
  v31 = swift_allocObject();
  v32 = v43[0];
  *(v31 + 16) = v42;
  *(v31 + 32) = v32;
  *(v31 + 41) = *(v43 + 9);
  *(v31 + 64) = v35;
  *(v31 + 72) = v27;
  v33 = &v13[*(v10 + 36)];
  *v33 = sub_199B0A9A4;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  sub_199AAD408(v13, v26, &qword_1EAF744C0);
  swift_storeEnumTagMultiPayload();
  sub_199B0A7B8(&v42, v39);
  sub_199B0A858();
  sub_199B0A8E4();
  sub_199DF8EDC();
  return sub_199A79A04(v13, &qword_1EAF744C0);
}

uint64_t sub_199B09A54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = *(v9 + 16);
  if (v8 >= *(v11 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = type metadata accessor for ContactDetailRowView(0);
  v13 = v12[6];
  v14 = sub_199DF7C9C();
  result = (*(*(v14 - 8) + 16))(a5 + v13, v11 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v8, v14);
  if (!__OFSUB__(a3, 1))
  {
    v15 = sub_199B08970(v8, a4);
    result = swift_getKeyPath();
    *a5 = result;
    *(a5 + 8) = 0;
    *(a5 + 16) = v8;
    *(a5 + v12[7]) = v8 == a3 - 1;
    *(a5 + v12[8]) = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199B09BDC(_OWORD *a1, uint64_t a2, int a3)
{
  v30 = a3;
  v5 = sub_199DF9DFC();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF9E1C();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_199DF9E3C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v28 - v20;
  sub_199B0A9B4();
  v29 = sub_199DFA39C();
  sub_199DF9E2C();
  sub_199DF9E6C();
  v22 = *(v14 + 8);
  v22(v18, v13);
  v23 = swift_allocObject();
  v24 = a1[1];
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 41) = *(a1 + 25);
  *(v23 + 64) = a2;
  *(v23 + 72) = v30 & 1;
  aBlock[4] = sub_199B0AA54;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_10;
  v25 = _Block_copy(aBlock);
  sub_199B0A7B8(a1, v34);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B0A810(&qword_1EAF71CE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150);
  sub_199ABC0BC();
  sub_199DFA68C();
  v26 = v29;
  MEMORY[0x19A8F8150](v21, v12, v8, v25);
  _Block_release(v25);

  (*(v33 + 8))(v8, v5);
  (*(v31 + 8))(v12, v32);
  return (v22)(v21, v13);
}

uint64_t sub_199B09F9C()
{
  sub_199DF9BAC();
  sub_199DF872C();
}

uint64_t sub_199B0A010@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel);
  sub_199DF73AC();

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = *(v7 + 16);
  if (v6 >= *(v9 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = type metadata accessor for ContactDetailRowView(0);
  v11 = v10[6];
  v12 = sub_199DF7C9C();
  result = (*(*(v12 - 8) + 16))(a4 + v11, v9 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v6, v12);
  if (!__OFSUB__(a3, 1))
  {
    result = swift_getKeyPath();
    *a4 = result;
    *(a4 + 8) = 0;
    *(a4 + 16) = v6;
    *(a4 + v10[7]) = v6 == a3 - 1;
    *(a4 + v10[8]) = 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199B0A180(void *a1)
{
  v51 = a1;
  v2 = sub_199DF7C9C();
  v52 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v53 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v49 = &v39 - v7;
  v8 = sub_199DF770C();
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_199DF7CBC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_199DF7D3C();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  sub_199DF73DC();
  sub_199DF7D2C();
  sub_199DF787C();
  swift_allocObject();
  v19 = v51;
  v20 = sub_199DF786C();
  result = sub_199DF785C();
  if (*(result + 16) < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  (*(v13 + 16))(v16, result + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 2 * *(v13 + 72), v12);

  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v39 = v20;
  v40 = v16;
  v41 = v13;
  v43 = v12;
  v44 = v8;
  v45 = v1;
  (*(v46 + 16))(v11, result + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v8);

  v42 = v11;
  result = sub_199DF76EC();
  v22 = result;
  v51 = *(result + 16);
  if (v51)
  {
    v23 = 0;
    v50 = v52 + 16;
    v24 = (v52 + 32);
    v47 = (v52 + 8);
    v25 = MEMORY[0x1E69E7CC0];
    v48 = v2;
    v26 = v49;
    while (v23 < *(v22 + 16))
    {
      v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v28 = *(v52 + 72);
      (*(v52 + 16))(v26, v22 + v27 + v28 * v23, v2);
      v29 = sub_199DF7C8C();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = v26;
        v34 = *v24;
        (*v24)(v53, v33, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_199A9C6A8(0, *(v25 + 16) + 1, 1);
          v25 = v54;
        }

        v37 = *(v25 + 16);
        v36 = *(v25 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_199A9C6A8(v36 > 1, v37 + 1, 1);
          v25 = v54;
        }

        *(v25 + 16) = v37 + 1;
        v38 = v25 + v27 + v37 * v28;
        v2 = v48;
        result = (v34)(v38, v53, v48);
        v26 = v49;
      }

      else
      {
        result = (*v47)(v26, v2);
      }

      if (v51 == ++v23)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_17:

  (*(v46 + 8))(v42, v44);
  (*(v41 + 8))(v40, v43);
  result = v45;
  *(v45 + 16) = v25;
  return result;
}

uint64_t sub_199B0A6EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_199B0A734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B0A810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_199B0A858()
{
  result = qword_1EAF744D0;
  if (!qword_1EAF744D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF744C0);
    sub_199B0A8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744D0);
  }

  return result;
}

unint64_t sub_199B0A8E4()
{
  result = qword_1EAF744D8;
  if (!qword_1EAF744D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF744B0);
    sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744D8);
  }

  return result;
}

unint64_t sub_199B0A9B4()
{
  result = qword_1EAF71D20;
  if (!qword_1EAF71D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71D20);
  }

  return result;
}

uint64_t objectdestroyTm_2(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_199B0AB04()
{
  sub_199B0ABA0();
  if (v0 <= 0x3F)
  {
    sub_199DF7C9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_199B0ABA0()
{
  if (!qword_1EAF74208)
  {
    type metadata accessor for ContactCardBackgroundConfiguration();
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF74208);
    }
  }
}

unint64_t sub_199B0ABF8()
{
  result = qword_1EAF744F8;
  if (!qword_1EAF744F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74500);
    sub_199B0A858();
    sub_199B0A8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744F8);
  }

  return result;
}

uint64_t sub_199B0ACF0()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF74510);
  __swift_project_value_buffer(v0, qword_1EAF74510);
  return sub_199DF803C();
}

ContactsUI::ContactPropertyType_optional __swiftcall ContactPropertyType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactPropertyType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6D754E656E6F6870;
  v3 = 1702129518;
  if (v1 != 5)
  {
    v3 = 0x6D6F74737563;
  }

  v4 = 0x7961646874726962;
  if (v1 != 3)
  {
    v4 = 0x52746361746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x64416C6174736F70;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_199B0AEE0()
{
  sub_199DF9FEC();
}

void sub_199B0B020(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0x6D754E656E6F6870;
  v5 = 0xE400000000000000;
  v6 = 1702129518;
  if (v2 != 5)
  {
    v6 = 0x6D6F74737563;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961646874726962;
  if (v2 != 3)
  {
    v8 = 0x52746361746E6F63;
    v7 = 0xEF6E6F6974616C65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000073736572;
  v10 = 0x6464416C69616D65;
  if (v2 != 1)
  {
    v10 = 0x64416C6174736F70;
    v9 = 0xED00007373657264;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t ContactCardPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  return sub_199DFAABC();
}

uint64_t sub_199B0B1F4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v8 = 0;
  type metadata accessor for CardViewModel(0);
  v6 = swift_allocObject();
  result = a2(a1, &v8);
  *a3 = v6;
  return result;
}

uint64_t ContactCardView.init(forContact:audioCall:faceTimeVideo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  LOBYTE(v11) = 0;
  type metadata accessor for CardViewModel(0);
  v8 = swift_allocObject();
  v10 = a1;
  sub_199B0E100(v10, &v11);
  *a4 = v8;
  swift_getKeyPath();
  v11 = v8;

  sub_199A9A57C(a2);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
  sub_199A9A5FC(a2);

  swift_getKeyPath();
  v11 = v8;
  sub_199DF739C();
  sub_199A9A5FC(a2);

  sub_199A9A5FC(a3);
}

uint64_t ContactCardView.init(forContactIdentifiers:audioCall:faceTimeVideo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  LOBYTE(v10) = 0;
  type metadata accessor for CardViewModel(0);
  v8 = swift_allocObject();
  sub_199B0E520(a1, &v10);
  *a4 = v8;
  swift_getKeyPath();
  v10 = v8;

  sub_199A9A57C(a2);
  sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
  sub_199DF739C();
  sub_199A9A5FC(a2);

  swift_getKeyPath();
  v10 = v8;
  sub_199DF739C();
  sub_199A9A5FC(a2);
  sub_199A9A5FC(a3);
}

uint64_t ContactCardView.init(forContactIdentifiers:propertyDetailLabel:propertyDetailValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  LOBYTE(v10) = 0;
  type metadata accessor for CardViewModel(0);
  v6 = swift_allocObject();
  sub_199B0E520(a1, &v10);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    v10 = v6;
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }

  *a3 = v6;
  return result;
}

uint64_t ContactCardView.init(forContactIdentifiers:context:propertyDetailLabel:propertyDetailValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  LOBYTE(v10) = 2;
  type metadata accessor for CardViewModel(0);
  v6 = swift_allocObject();
  sub_199B0E520(a1, &v10);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    v10 = v6;
    sub_199B11470(&qword_1EAF74530, type metadata accessor for CardViewModel);
    sub_199DF739C();
  }

  *a3 = v6;
  return result;
}