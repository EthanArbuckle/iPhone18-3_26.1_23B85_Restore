void sub_1D29ED304(void *a1)
{
  v2 = sub_1D2A00008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D2A003B8();
    [a1 setDomain_];

    v10 = sub_1D2A003B8();
    [a1 setService_];

    [a1 setDelegate_];
  }

  else
  {
    sub_1D29FFFE8();
    v11 = sub_1D29FFFF8();
    v12 = sub_1D2A005A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D29CC000, v11, v12, "Could not find _EXRunningUIKitSceneHostedExtension when configuring listener", v13, 2u);
      MEMORY[0x1D38A6000](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1D29ED4F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = sub_1D29ECB78(a3, a4);

  return v7;
}

uint64_t sub_1D29ED544(void *a1)
{
  v1 = a1;
  sub_1D29FFCB8();

  return 1;
}

void sub_1D29ED574(void *a1)
{
  v1 = a1;
  sub_1D29FFCA8();
}

id sub_1D29ED5C4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1D29EDA58(v9, v10);

  return v12;
}

void sub_1D29ED650(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1D29EDEB4(v6, v7);

  swift_unknownObjectRelease();
}

id sub_1D29ED6E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXRunningUIKitSceneHostedExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D29ED728()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v5 = sub_1D29FFFF8();
  v6 = sub_1D2A005B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D29F87C4(0xD00000000000001FLL, 0x80000001D2A08190, &v11);
    _os_log_impl(&dword_1D29CC000, v5, v6, "Received: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38A6000](v8, -1, -1);
    MEMORY[0x1D38A6000](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D29ED8C0()
{
  v0 = sub_1D2A00008();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFFE8();
  v5 = sub_1D29FFFF8();
  v6 = sub_1D2A005B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D29F87C4(0xD00000000000001ELL, 0x80000001D2A08170, &v11);
    _os_log_impl(&dword_1D29CC000, v5, v6, "Received: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38A6000](v8, -1, -1);
    MEMORY[0x1D38A6000](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D29EDA58(void *a1, void *a2)
{
  v40 = a2;
  v42 = a1;
  v2 = sub_1D2A00378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D2A00008();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  sub_1D29FFFE8();
  v14 = sub_1D29FFFF8();
  v15 = sub_1D2A005B8();
  v16 = os_log_type_enabled(v14, v15);
  v41 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = v7;
    v19 = swift_slowAlloc();
    v44 = v19;
    *v17 = 136446210;
    *(v17 + 4) = sub_1D29F87C4(0xD000000000000032, 0x80000001D2A08130, &v44);
    _os_log_impl(&dword_1D29CC000, v14, v15, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    v7 = v18;
    MEMORY[0x1D38A6000](v20, -1, -1);
    MEMORY[0x1D38A6000](v17, -1, -1);
  }

  v21 = *(v8 + 8);
  v21(v13, v7);
  sub_1D29EE3E8();
  *v6 = sub_1D2A005C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v22 = sub_1D2A00388();
  result = (*(v3 + 8))(v6, v2);
  v24 = v43;
  if (v22)
  {
    v25 = v7;
    sub_1D29FFFE8();
    v26 = v40;
    v27 = sub_1D29FFFF8();
    v28 = sub_1D2A005B8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136446210;
      v31 = [v26 sourceApplication];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D2A003E8();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = sub_1D29F87C4(v33, v35, &v44);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_1D29CC000, v27, v28, "Received scene connection request from host: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D38A6000](v30, -1, -1);
      MEMORY[0x1D38A6000](v29, -1, -1);
    }

    v21(v24, v25);
    v37 = [v42 role];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v37];

    type metadata accessor for EXRemoteSceneDelegate();
    [v38 setDelegateClass_];
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D29EDEB4(void *a1, void *a2)
{
  v5 = sub_1D2A00008();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v48 = sub_1D29DE7B8;
  v49 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1D29EE4E8;
  v47 = &block_descriptor_2;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 extractNSXPCConnectionWithConfigurator_];
  _Block_release(v13);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v40 = a1;
    v41 = v14;
    v42 = v5;
    v43 = v2;
    v15 = a2;
    v16 = [a2 service];
    v17 = sub_1D2A003E8();
    v19 = v18;

    if (v17 == 0x767265536E69614DLL && v19 == 0xEB00000000656369)
    {

      goto LABEL_6;
    }

    v20 = sub_1D2A00708();

    if (v20)
    {
LABEL_6:
      sub_1D29FFFE8();
      v21 = sub_1D29FFFF8();
      v22 = sub_1D2A00598();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D29CC000, v21, v22, "Received connection request on service listener", v23, 2u);
        MEMORY[0x1D38A6000](v23, -1, -1);
      }

      (*(v6 + 8))(v12, v42);
      v24 = v41;
      if (sub_1D29FFC78())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v25 = [v15 service];
    v26 = sub_1D2A003E8();
    v28 = v27;

    if (v26 == 0x6C616E7265746E49 && v28 == 0xEF65636976726553)
    {

      goto LABEL_15;
    }

    v29 = sub_1D2A00708();

    if (v29)
    {
LABEL_15:
      sub_1D29FFFE8();
      v30 = sub_1D29FFFF8();
      v31 = sub_1D2A00598();
      v32 = os_log_type_enabled(v30, v31);
      v24 = v41;
      if (v32)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D29CC000, v30, v31, "Received scene session connection request on internal mach service listener", v33, 2u);
        MEMORY[0x1D38A6000](v33, -1, -1);
      }

      (*(v6 + 8))(v10, v42);
      v34 = sub_1D29FFC58();
      v35 = [objc_allocWithZone(_EXUISceneSession) initWithExtension_];

      LOBYTE(v34) = [v35 shouldAcceptXPCConnection_];
      if (v34)
      {
        goto LABEL_10;
      }

LABEL_9:
      [v15 invalidate];
LABEL_10:

      return;
    }
  }

  aBlock = 0;
  v45 = 0xE000000000000000;
  sub_1D2A00678();

  aBlock = 0xD000000000000030;
  v45 = 0x80000001D2A07B90;
  v36 = [v40 description];
  v37 = sub_1D2A003E8();
  v39 = v38;

  MEMORY[0x1D38A52F0](v37, v39);

  sub_1D2A006A8();
  __break(1u);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D29EE3E8()
{
  result = qword_1EC7013E0;
  if (!qword_1EC7013E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7013E0);
  }

  return result;
}

uint64_t sub_1D29EE470()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D29EE548(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_1D2A00448();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

id sub_1D29EE6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EXRemoteSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D29EE718(uint64_t a1, void *a2)
{
  v60 = a1;
  v3 = sub_1D2A00008();
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v56 - v8;
  v65 = sub_1D29FFC48();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v56 - v17;
  v19 = [a2 persistentIdentifier];
  v20 = sub_1D2A003E8();
  v22 = v21;

  v68 = v20;
  v69 = v22;

  LOBYTE(v19) = sub_1D2A00478();

  if (v19)
  {
    v23 = sub_1D2A00438();
    sub_1D29EE548(v23);
    v20 = v68;
    v22 = v69;
  }

  sub_1D29FFC18();
  sub_1D29DF6A0(v18, v16);
  v24 = v65;
  if ((*(v9 + 48))(v16, 1, v65) != 1)
  {
    v31 = v63;
    (*(v9 + 32))(v63, v16, v24);
    v32 = [objc_opt_self() sharedInstance];
    v33 = sub_1D29FFC28();
    v34 = [v32 sessionForIdentifier_];

    v59 = v34;
    if (v34)
    {
      v35 = v34;
      if ([v35 scene])
      {
        v66 = &unk_1F4E0B7B0;
        v36 = swift_dynamicCastObjCProtocolConditional();
        if (v36)
        {
          v37 = [v36 viewController];
          swift_unknownObjectRelease();

          if (v37)
          {

LABEL_19:
            objc_opt_self();
            v50 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
            v51 = OBJC_IVAR___EXRemoteSceneDelegate_window;
            v52 = v61;
            v53 = *(v61 + OBJC_IVAR___EXRemoteSceneDelegate_window);
            *(v61 + OBJC_IVAR___EXRemoteSceneDelegate_window) = v50;
            v54 = v50;

            [v54 setRootViewController_];
            [*(v52 + v51) makeKeyAndVisible];

            (*(v9 + 8))(v31, v65);
            return sub_1D29DB7F4(v18, &qword_1EC701300, &qword_1D2A03830);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v58 = v3;
    v38 = v62;
    sub_1D29FFFE8();
    v39 = v34;

    v40 = sub_1D29FFFF8();
    v41 = sub_1D2A005A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v9;
      v44 = v43;
      v45 = swift_slowAlloc();
      v67 = v45;
      *v42 = 138543618;
      *(v42 + 4) = v39;
      *v44 = v34;
      *(v42 + 12) = 2082;
      v46 = v39;
      v47 = sub_1D29F87C4(v20, v22, &v67);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_1D29CC000, v40, v41, "Could not fetch view controller for session: %{public}@ scene id: %{public}s", v42, 0x16u);
      sub_1D29DB7F4(v44, qword_1EC700C18, qword_1D2A034B0);
      v48 = v44;
      v9 = v57;
      MEMORY[0x1D38A6000](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v49 = v45;
      v31 = v63;
      MEMORY[0x1D38A6000](v49, -1, -1);
      MEMORY[0x1D38A6000](v42, -1, -1);

      (*(v64 + 8))(v62, v58);
    }

    else
    {

      (*(v64 + 8))(v38, v58);
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    goto LABEL_19;
  }

  sub_1D29DB7F4(v16, &qword_1EC701300, &qword_1D2A03830);
  sub_1D29FFFE8();

  v25 = sub_1D29FFFF8();
  v26 = sub_1D2A005A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v67 = v28;
    *v27 = 136446210;
    v29 = v3;
    v30 = sub_1D29F87C4(v20, v22, &v67);

    *(v27 + 4) = v30;
    _os_log_impl(&dword_1D29CC000, v25, v26, "Session ID could not be found for scene id: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1D38A6000](v28, -1, -1);
    MEMORY[0x1D38A6000](v27, -1, -1);

    (*(v64 + 8))(v7, v29);
  }

  else
  {

    (*(v64 + 8))(v7, v3);
  }

  return sub_1D29DB7F4(v18, &qword_1EC701300, &qword_1D2A03830);
}

uint64_t sub_1D29EEE70()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1D29EEEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionHostingViewControllerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D29EEF18(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtCV12ExtensionKit43ExtensionHostingViewControllerRepresentable11Coordinator_parent;
  v4 = *(v3 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28));
  v5 = *(v4 + 16);
  *(v4 + 16) = a1;

  v6 = a1;

  sub_1D2A00598();
  sub_1D29D9A60();
  v7 = sub_1D2A00608();
  sub_1D29FFFD8();
}

id sub_1D29EF078(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v30 - v5;
  v6 = sub_1D29FFE08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _EXHostViewController.Configuration();
  v31 = *(v11 - 1);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v15(v10, v2, v6);
  v16 = *MEMORY[0x1E6966D28];
  v17 = sub_1D2A003E8();
  v19 = v18;
  v20 = v11[8];
  v15(v14, v10, v6);
  v21 = &v14[v11[7]];
  *v21 = v17;
  v21[1] = v19;
  *&v14[v20] = 0;
  LOBYTE(v17) = sub_1D29FFFC8();
  (*(v7 + 8))(v10, v6);
  v14[v11[5]] = v17 & 1;
  v14[v11[6]] = 0;
  v22 = (v30[1] + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 20));
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v22[1];

    *v21 = v24;
    v21[1] = v23;
  }

  v26 = [objc_allocWithZone(_EXHostViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701588, &unk_1D2A04710);
  sub_1D2A00208();
  v27 = v34;
  [v26 setDelegate_];

  v28 = v33;
  sub_1D29EFE50(v14, v33, type metadata accessor for _EXHostViewController.Configuration);
  (*(v31 + 56))(v28, 0, 1, v11);
  _EXHostViewController._configuration.setter(v28);
  sub_1D29EFEB8(v14, type metadata accessor for _EXHostViewController.Configuration);
  return v26;
}

id sub_1D29EF394()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(v0 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28)) + 16);
  if (v2)
  {
    v9[0] = 0;
    v3 = v2;
    v4 = [v3 makeXPCConnectionWithError_];
    if (v4)
    {
      v1 = v4;
      v5 = v9[0];
    }

    else
    {
      v1 = v9[0];
      sub_1D29FFB98();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D2A005A8();
    sub_1D29D9A60();
    v6 = sub_1D2A00608();
    sub_1D29FFFD8();

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6966C98] code:6 userInfo:0];
    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1D29EF508@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29EFE50(v2, v6, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  v7 = type metadata accessor for ExtensionHostingViewControllerRepresentable.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_1D29EFE50(v6, v8 + OBJC_IVAR____TtCV12ExtensionKit43ExtensionHostingViewControllerRepresentable11Coordinator_parent, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_1D29EFEB8(v6, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  *a2 = v9;
  return result;
}

uint64_t sub_1D29EF630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29EFE0C(&qword_1EC701578);

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1D29EF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29EFE0C(&qword_1EC701578);

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1D29EF730()
{
  sub_1D29EFE0C(&qword_1EC701578);
  sub_1D2A001E8();
  __break(1u);
}

uint64_t _ExtensionHost.sceneName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t _ExtensionHost.init(extension:sceneName:initializationParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v9 = *MEMORY[0x1E6966D28];
    a2 = sub_1D2A003E8();
    v7 = v10;
  }

  a5[1] = a2;
  a5[2] = v7;
  a5[3] = a4;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v11 = a5 + *(type metadata accessor for _ExtensionHost(0) + 28);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1D29FFDA8();
  v12 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
  v13 = &v11[v12[5]];
  *v13 = a2;
  v13[1] = v7;
  *&v11[v12[6]] = a4;
  v14 = v12[7];
  type metadata accessor for ExtensionHostingViewControllerRepresentable.MutableState();
  result = swift_allocObject();
  *(result + 16) = 0;
  *&v11[v14] = result;
  return result;
}

Swift::Void __swiftcall _ExtensionHost.invalidate()()
{
  v1 = v0 + *(type metadata accessor for _ExtensionHost(0) + 28);
  v2 = *(*(v1 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28)) + 16);
  if (v2)
  {

    [v2 setConfiguration_];
  }
}

uint64_t sub_1D29EFA88()
{
  result = type metadata accessor for ExtensionHostingViewControllerRepresentable(319);
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

void sub_1D29EFB40()
{
  sub_1D29EFBE4();
  if (v0 <= 0x3F)
  {
    sub_1D29EFC48();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ExtensionHostingViewControllerRepresentable(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D29EFBE4()
{
  result = qword_1EC701548;
  if (!qword_1EC701548)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC701548);
  }

  return result;
}

void sub_1D29EFC48()
{
  if (!qword_1ED847630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC701670, qword_1D2A045F8);
    v0 = sub_1D2A00618();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED847630);
    }
  }
}

void sub_1D29EFCD4()
{
  sub_1D29FFE08();
  if (v0 <= 0x3F)
  {
    sub_1D29EFD88();
    if (v1 <= 0x3F)
    {
      sub_1D29EFC48();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ExtensionHostingViewControllerRepresentable.MutableState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D29EFD88()
{
  if (!qword_1EC701570)
  {
    v0 = sub_1D2A00618();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC701570);
    }
  }
}

uint64_t sub_1D29EFE0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtensionHostingViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D29EFE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D29EFEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _AnySceneConfiguration.init<A>(erasing:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, a2);
  *a4 = sub_1D29F0B04;
  a4[1] = v11;
  v12(v9, v16, a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (v12)(v13 + v10, v9, a2);
  a4[2] = sub_1D29F0B6C;
  a4[3] = v13;
  return result;
}

uint64_t _SceneConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t static _SceneConfigurationBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701590, &qword_1D2A04720);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v9, a1, a2);
  _AnySceneConfiguration.init<A>(erasing:)(v9, a2, a3, (v10 + 32));
  return v10;
}

uint64_t _SceneConfigurationGroup.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  swift_getFunctionTypeMetadata0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701598, &unk_1D2A04728);
  if (swift_dynamicCast())
  {

    result = swift_allocObject();
    *(result + 16) = v12;
    v11 = sub_1D29EC33C;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a1;
    *(result + 40) = a2;
    v11 = sub_1D29F0BD4;
  }

  *a5 = v11;
  a5[1] = result;
  return result;
}

uint64_t sub_1D29F0474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701590, &qword_1D2A04720);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v10, v13, a3);
  _AnySceneConfiguration.init<A>(erasing:)(v10, a3, a4, (v14 + 32));
  (*(v6 + 8))(v13, a3);
  return v14;
}

void sub_1D29F05C8(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = *a1;
  v49 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  memset(v54 + 8, 0, 32);

  v7 = v4(v6);
  v8 = sub_1D2A00598();
  v9 = sub_1D29D9A60();
  v10 = sub_1D2A00608();
  v45 = v7;
  v43 = a2;
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v54[0] = v12;
    *v11 = 136315138;
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    *&v51 = sub_1D29EC96C;
    *(&v51 + 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701598, &unk_1D2A04728);
    v14 = sub_1D2A003F8();
    v16 = sub_1D29F87C4(v14, v15, v54);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D29CC000, v10, v8, "Content %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v17 = v12;
    v7 = v45;
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v11, -1, -1);
  }

  else
  {
  }

  v18 = *(v7 + 16);
  v19 = v47;
  if (v18)
  {
    v20 = 0;
    v21 = (v7 + 56);
    v44 = *(v7 + 16);
    while (v20 < *(v7 + 16))
    {
      v50 = *(v21 - 3);
      v22 = *v21;
      v46 = *(v21 - 1);

      v48 = v22;

      v23 = sub_1D2A00598();
      v24 = sub_1D2A00608();
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v54[0] = v26;
        *v25 = 136315394;
        v50(&v51);
        v27 = v9;
        v28 = sub_1D29F87C4(v51, *(&v51 + 1), v54);

        *(v25 + 4) = v28;
        v9 = v27;
        v7 = v45;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_1D29F87C4(v47, v49, v54);
        _os_log_impl(&dword_1D29CC000, v24, v23, "Evaluating %s) for role %s", v25, 0x16u);
        swift_arrayDestroy();
        v29 = v26;
        v19 = v47;
        MEMORY[0x1D38A6000](v29, -1, -1);
        v30 = v25;
        v18 = v44;
        MEMORY[0x1D38A6000](v30, -1, -1);
      }

      v50(&v51);
      if (v51 == __PAIR128__(v49, v19))
      {

LABEL_14:
        sub_1D29F2118(*(&v54[0] + 1));

        *(&v54[0] + 1) = v50;
        v54[1] = v46;
        *&v54[2] = v48;
        goto LABEL_15;
      }

      v31 = sub_1D2A00708();

      if (v31)
      {
        goto LABEL_14;
      }

      ++v20;

      v21 += 4;
      if (v18 == v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

LABEL_15:
    v32 = sub_1D2A00598();
    v33 = sub_1D2A00608();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = *(&v54[1] + 8);
      v35 = *(v54 + 8);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = *(&v34 + 1);
      *&v54[0] = v37;
      *v36 = 136315138;
      v51 = v35;
      v52 = v34;
      sub_1D29F20D4(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701600, qword_1D2A04930);
      v38 = sub_1D2A003F8();
      v40 = sub_1D29F87C4(v38, v39, v54);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1D29CC000, v33, v32, "Made View configuration: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1D38A6000](v37, -1, -1);
      MEMORY[0x1D38A6000](v36, -1, -1);
    }

    swift_beginAccess();
    v41 = *(&v54[0] + 1);
    v42 = *(&v54[1] + 8);
    *v43 = *(v54 + 8);
    v43[1] = v42;
    sub_1D29F20D4(v41);
    sub_1D29F2118(v41);
  }
}

uint64_t _AnySceneConfiguration.role.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D29F0B04()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 8))();
}

uint64_t _AnySceneConfiguration.sceneDelegate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D29F0C08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D29F0F1C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - v7, &v1[*((v5 & v4) + 0x60)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v8 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D29DB7F4(v10, &unk_1EC701610, &qword_1D2A03570);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D29F10A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29F0F1C(v4);

  return a1 & 1;
}

id sub_1D29F10F4(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  (*(v3 + 8))(&v38, v4, v3);
  v6 = v38;
  v7 = [a1 role];
  v8 = sub_1D2A003E8();
  v10 = v9;

  v37 = v6;
  v36[0] = v8;
  v36[1] = v10;
  sub_1D29F05C8(v36, &v38);
  v11 = v38;
  if (v38)
  {
    v12 = *(&v38 + 1);
    v35 = v39;
    v13 = v40;
    v14 = sub_1D2A00598();
    sub_1D29D9A60();
    v15 = sub_1D2A00608();
    v34 = v14;
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v37 = v32;
      *v16 = 136315394;
      *&v38 = v11;
      *(&v38 + 1) = v12;
      v39 = v35;
      v40 = v13;

      v17 = sub_1D2A003F8();
      v33 = v4;
      v19 = v3;
      v20 = v12;
      v21 = sub_1D29F87C4(v17, v18, &v37);

      *(v16 + 4) = v21;
      v12 = v20;
      v3 = v19;
      *(v16 + 12) = 2080;
      v22 = sub_1D29F87C4(v8, v10, &v37);

      *(v16 + 14) = v22;
      v4 = v33;
      _os_log_impl(&dword_1D29CC000, v15, v34, "Using %s for requested role %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v32, -1, -1);
      MEMORY[0x1D38A6000](v16, -1, -1);
    }

    else
    {
    }

    *&v38 = v4;
    *(&v38 + 1) = &type metadata for _AnySceneConfiguration;
    v39 = v3;
    v40 = &protocol witness table for _AnySceneConfiguration;
    type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene();
    *&v38 = v11;
    *(&v38 + 1) = v12;
    v39 = v35;
    v40 = v13;
  }

  else
  {
    v23 = sub_1D2A005A8();
    sub_1D29D9A60();
    v24 = sub_1D2A00608();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v38 = v27;
      *v26 = 136315138;
      v28 = sub_1D29F87C4(v8, v10, &v38);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1D29CC000, v24, v23, "No configuration found for requested role %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1D38A6000](v27, -1, -1);
      v29 = v26;
      v4 = v25;
      MEMORY[0x1D38A6000](v29, -1, -1);
    }

    else
    {
    }

    *&v38 = v4;
    *(&v38 + 1) = &type metadata for _AnySceneConfiguration;
    v39 = v3;
    v40 = &protocol witness table for _AnySceneConfiguration;
    type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene();
    *&v38 = sub_1D29F20D0;
    *(&v38 + 1) = 0;
    v39 = sub_1D29F0188;
    v40 = 0;
  }

  v30 = sub_1D29F2054(&v38);

  return v30;
}

id sub_1D29F1504(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D29F10F4(v4);

  return v6;
}

id sub_1D29F1564(void *a1)
{
  v1 = a1;
  v2 = sub_1D29F15A8();

  return v2;
}

uint64_t sub_1D29F15A8()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0x68) + 16);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  return v1(v2);
}

void sub_1D29F1628(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  sub_1D29DB61C();
}

id sub_1D29F1690()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

void sub_1D29F176C(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1D29F20A0();
}

id sub_1D29F17AC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIAppExtensionSceneConfigWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1D29F1880(_BYTE *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-v13];
  v15 = sub_1D2A00598();
  sub_1D29D9A60();
  v16 = sub_1D2A00608();
  v17 = *(v8 + 16);
  v31 = a1;
  v32 = v17;
  v17(v14, a1, v7);
  v29 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v32(v12, v14, v7);
    v20 = sub_1D2A003F8();
    v22 = v21;
    (*(v8 + 8))(v14, v7);
    v23 = sub_1D29F87C4(v20, v22, &v33);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D29CC000, v16, v29, "Creating _UIAppExtensionSceneConfigWrapper with content %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v24, -1, -1);
    MEMORY[0x1D38A6000](v18, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v32(v2 + *((*v5 & *v2) + 0x60), v31, v7);
  v25 = *(v30 + 88);
  v26 = type metadata accessor for _UIAppExtensionSceneConfigWrapper();
  v34.receiver = v2;
  v34.super_class = v26;
  return objc_msgSendSuper2(&v34, sel_init);
}

id sub_1D29F1B68(_BYTE *a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _UIAppExtensionSceneConfigWrapper());
  return sub_1D29F1880(a1);
}

uint64_t sub_1D29F1C10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D29F1C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29F1CA8(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D29F1D54(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = sub_1D2A00598();
  sub_1D29D9A60();
  v16 = sub_1D2A00608();
  v31 = *(v8 + 16);
  v31(v14, v3, v7);
  v29 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v28 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32[0] = v19;
    *v18 = 136315138;
    v31(v12, v14, v7);
    v20 = sub_1D2A003F8();
    v22 = v21;
    (*(v8 + 8))(v14, v7);
    v23 = sub_1D29F87C4(v20, v22, v32);

    *(v18 + 4) = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v24 = v19;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v24, -1, -1);
    v25 = v18;
    v3 = v28;
    MEMORY[0x1D38A6000](v25, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v31(&v2[*((*v5 & *v2) + 0x70)], v3, v7);
  v32[0] = *(v30 + 80);
  v32[1] = v7;
  v33 = *(v30 + 96);
  v26 = type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene();
  v34.receiver = v2;
  v34.super_class = v26;
  return objc_msgSendSuper2(&v34, sel_init);
}

id sub_1D29F2054(uint64_t a1)
{
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v3 = objc_allocWithZone(type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene());
  return sub_1D29F1D54(a1);
}

uint64_t sub_1D29F20D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29F2118(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall _EXBootstrapExtensionKit()()
{
  v0 = sub_1D29FFF78();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFF68();
  sub_1D29FFF48();
  v5 = v1[13];
  v5(v4, *MEMORY[0x1E6966C78], v0);
  sub_1D29FFF58();

  v6 = v1[1];
  v6(v4, v0);
  sub_1D29FFF48();
  v5(v4, *MEMORY[0x1E6966C80], v0);
  sub_1D29FFF58();

  v6(v4, v0);
  sub_1D29FFF48();
  v5(v4, *MEMORY[0x1E6966C70], v0);
  sub_1D29FFF58();

  v6(v4, v0);
}

id sub_1D29F23B0(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t static AppExtension<>.main()(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_1D2A00598();
  sub_1D29D9A60();
  v8 = sub_1D2A00608();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v18 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v12 = sub_1D29FFC98();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1D29CC000, v8, v7, "Launching UI AppExtension %@", v10, 0xCu);
    sub_1D29DB7F4(v11, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v11, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  sub_1D29FFD08();
  type metadata accessor for _EXRunningUIExtension(0);
  v13 = sub_1D29FFC98();
  sub_1D29FFCF8();
  v14 = objc_allocWithZone(type metadata accessor for AppExtensionWrapper());
  sub_1D29F261C(v17);
  sub_1D29FFC68();

  return (*(v3 + 8))(v6, a1);
}

id sub_1D29F261C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2A00598();
  sub_1D29D9A60();
  v5 = sub_1D2A00608();
  sub_1D29F37E8(a1, v18);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    sub_1D29F37E8(v18, v15);
    v8 = sub_1D2A003F8();
    v10 = v9;
    sub_1D29F3794(v18);
    v11 = sub_1D29F87C4(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D29CC000, v5, v4, "Creating AppExtensionWrapper with content %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38A6000](v7, -1, -1);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  else
  {

    sub_1D29F3794(v18);
  }

  sub_1D29F37E8(a1, v2 + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene);
  v12 = type metadata accessor for AppExtensionWrapper();
  v17.receiver = v2;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_1D29F3794(a1);
  return v13;
}

uint64_t sub_1D29F288C(void *a1)
{
  v3 = [a1 role];
  v4 = sub_1D2A003E8();
  v6 = v5;

  v7 = [a1 parameters];
  v15 = 0;
  sub_1D2A00548();
  v10 = v1;
  v11 = v4;
  v12 = v6;
  v13 = &v15;
  v14 = v7;
  sub_1D29F2E8C(sub_1D29F33EC, &v9);

  return v15;
}

uint64_t sub_1D29F2970(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene + 8);
  (*(a1 + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene))(&v58);
  v7 = v58;
  v8 = v59;
  v41 = *(&v58 + 1);
  v42 = *(&v59 + 1);
  v9 = sub_1D2A00598();
  sub_1D29D9A60();
  v10 = sub_1D2A00608();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v57[0] = v39;
    *v11 = 136315394;
    *&v58 = v7;
    *(&v58 + 1) = v41;
    *&v59 = v8;
    *(&v59 + 1) = v42;

    v12 = sub_1D2A003F8();
    v14 = sub_1D29F87C4(v12, v13, v57);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D29F87C4(a2, a3, v57);
    _os_log_impl(&dword_1D29CC000, v10, v9, "Root scene %s for requested role id %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v39, -1, -1);
    MEMORY[0x1D38A6000](v11, -1, -1);
  }

  v8(&v53, a2, a3);
  v57[0] = v53;
  v57[1] = v54;
  v57[2] = v55;
  v57[3] = v56;
  if (v53)
  {
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = v56;
    v15 = sub_1D2A00598();
    v16 = sub_1D2A00608();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v62 = v18;
      *v17 = 136315394;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v51 = v55;
      v52 = v56;
      v49 = v53;
      v50 = v54;
      sub_1D29F3624(&v49, v43);
      v19 = sub_1D2A003F8();
      v21 = sub_1D29F87C4(v19, v20, &v62);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D29F87C4(a2, a3, &v62);
      _os_log_impl(&dword_1D29CC000, v16, v15, "Using %s for requested role id %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v18, -1, -1);
      MEMORY[0x1D38A6000](v17, -1, -1);
    }

    v22 = *&v57[0];
    if (!(*&v57[0])())
    {
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v37 = objc_allocWithZone(type metadata accessor for AppExtensionWrapper._Scene());
      v31 = sub_1D29F3438(&v49);

      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v23 = type metadata accessor for AppExtensionWrapper._ExtensionUIScene();
    v24 = objc_allocWithZone(v23);
    v25 = swift_allocObject();
    v26 = v59;
    *(v25 + 1) = v58;
    *(v25 + 2) = v26;
    v27 = v61;
    *(v25 + 3) = v60;
    *(v25 + 4) = v27;
    v28 = &v24[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper17_ExtensionUIScene_connectionHandler];
    *v28 = sub_1D29F35F8;
    v28[1] = v25;
    v29 = sub_1D29F3624(v57, &v49);
    result = v22(v29);
    if (result)
    {
      *&v24[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper17_ExtensionUIScene__sceneDelegate] = result;
      v48.receiver = v24;
      v48.super_class = v23;
      v31 = objc_msgSendSuper2(&v48, sel_init);

      sub_1D29DB7F4(&v53, &qword_1EC701690, &qword_1D2A049A0);
LABEL_13:
      v38 = *a4;
      *a4 = v31;
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  else
  {
    v32 = a2;
    v33 = sub_1D2A005A8();
    v34 = sub_1D2A00608();
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v58 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1D29F87C4(v32, a3, &v58);
      _os_log_impl(&dword_1D29CC000, v34, v33, "No configuration found for requested role id %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1D38A6000](v36, -1, -1);
      MEMORY[0x1D38A6000](v35, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1D29F2E8C(uint64_t a1, uint64_t a2)
{
  sub_1D2A00538();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D29F3410();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2A00678();
    MEMORY[0x1D38A52F0](0xD00000000000003FLL, 0x80000001D2A08560);
    v8 = sub_1D2A00758();
    MEMORY[0x1D38A52F0](v8);

    MEMORY[0x1D38A52F0](46, 0xE100000000000000);
    result = sub_1D2A006A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D29F321C(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = &a1[*a4];
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = a3;
  v9 = a1;
  LOBYTE(v6) = v7(v8);

  return v6 & 1;
}

id sub_1D29F335C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D29F3410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1D29F3438(_OWORD *a1)
{
  v2 = v1;
  v4 = a1[1];
  v25[0] = *a1;
  v25[1] = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  v6 = OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController;
  *&v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController] = 0;
  v7 = swift_allocObject();
  v8 = a1[1];
  *(v7 + 1) = *a1;
  *(v7 + 2) = v8;
  v9 = a1[3];
  *(v7 + 3) = a1[2];
  *(v7 + 4) = v9;
  v10 = &v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_connectionHandler];
  *v10 = sub_1D29F3844;
  v10[1] = v7;
  v11 = v26;
  v12 = sub_1D29F3624(v25, v23);
  v13 = v11(v12);
  *&v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_innerView] = v13;

  v14 = sub_1D2A002E8();
  v15 = sub_1D2A00218();
  v23[0] = v13;
  v23[1] = v14;
  v24 = v15;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701660, &qword_1D2A049A8));

  v17 = sub_1D2A00158();
  result = [v17 view];
  if (result)
  {
    v19 = result;
    sub_1D29F36D0(v25);
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    v21 = *&v2[v6];
    *&v2[v6] = v17;

    v22.receiver = v2;
    v22.super_class = type metadata accessor for AppExtensionWrapper._Scene();
    return objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D29F35F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1() & 1;
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D29F3724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701680, &qword_1D2A049B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D29F3848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t _EXHostViewController.Configuration.init(appExtensionIdentity:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _EXHostViewController.Configuration();
  v9 = v8[8];
  v10 = sub_1D29FFE08();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a4, a1, v10);
  v12 = (a4 + v8[7]);
  *v12 = a2;
  v12[1] = a3;
  *(a4 + v9) = 0;
  LOBYTE(a3) = sub_1D29FFFC8();
  result = (*(v11 + 8))(a1, v10);
  *(a4 + v8[5]) = a3 & 1;
  *(a4 + v8[6]) = 0;
  return result;
}

uint64_t type metadata accessor for _EXHostViewController.Configuration()
{
  result = qword_1ED847638;
  if (!qword_1ED847638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _EXHostViewController.Configuration.role.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t _EXHostViewController._configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for _EXHostViewController.Configuration();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29F3CC4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D29F3D34(v7);
    [v2 setConfiguration_];
    return sub_1D29F3D34(a1);
  }

  else
  {
    sub_1D29F3D9C(v7, v12);
    v14 = sub_1D29FFD48();
    v15 = &v12[v8[7]];
    v16 = *&v12[v8[8]];
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = v12[v8[5]];
    v20 = [objc_allocWithZone(_EXHostViewControllerConfiguration) initWithExtensionIdentity_];
    v21 = v12[v8[6]];
    v22 = sub_1D2A003B8();
    [v20 setSceneIdentifier_];

    [v20 setInitializationParameters_];
    [v20 setBeginHostingImmediately_];
    [v20 setRetryOnHostingFailure_];
    [v2 setConfiguration_];

    sub_1D29F3D34(a1);
    return sub_1D29F4970(v12);
  }
}

uint64_t sub_1D29F3CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29F3D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29F3D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXHostViewController.Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id _EXHostViewController.configuration.getter()
{
  v1 = [v0 configuration];

  return v1;
}

void _EXHostViewController.configuration.setter(void *a1)
{
  [v1 setConfiguration_];
}

void (*_EXHostViewController.configuration.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 configuration];
  return sub_1D29F3EDC;
}

void sub_1D29F3EDC(id *a1)
{
  v1 = *a1;
  [a1[1] setConfiguration_];
}

uint64_t _EXHostViewController.appExtensionProcess.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 extensionProcess])
  {
    sub_1D29FFEE8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1D29FFF08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t _EXHostViewController.Configuration.appExtensionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _EXHostViewController.Configuration.appExtensionIdentity.setter(uint64_t a1)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _EXHostViewController.Configuration.appExtension.getter()
{
  v1 = sub_1D29FFE08();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_1D29FFF38();
}

uint64_t sub_1D29F4178(uint64_t a1)
{
  v2 = sub_1D29FFE08();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D29FFF38();
}

uint64_t sub_1D29F4244(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1D29FFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D29FFF18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *(v9 + 16);
  v16(&v18 - v14, a1, v8);
  v16(v13, v15, v8);
  sub_1D29FFE28();
  (*(v9 + 8))(v15, v8);
  return (*(v4 + 40))(v19, v7, v3);
}

uint64_t _EXHostViewController.Configuration.appExtension.setter(uint64_t a1)
{
  v2 = sub_1D29FFE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D29FFF18();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  v15 = v8[2];
  v15(v18 - v13, a1, v7);
  v15(v12, v14, v7);
  sub_1D29FFE28();
  v16 = v8[1];
  v16(a1, v7);
  v16(v14, v7);
  return (*(v3 + 40))(v18[1], v6, v2);
}

void (*_EXHostViewController.Configuration.appExtension.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1D29FFE08();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = sub_1D29FFF18();
  v5[4] = v11;
  v12 = *(v11 - 8);
  v5[5] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v12 + 64));
    v5[7] = malloc(v13);
    v14 = malloc(v13);
  }

  v5[8] = v14;
  (*(v8 + 16))(v10, v1, v6);
  sub_1D29FFF38();
  return sub_1D29F47C0;
}

void sub_1D29F47C0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[5] + 16);
  v4((*a1)[7], v3[8], v3[4]);
  v5 = v3[7];
  v7 = v3[5];
  v6 = v3[6];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[2];
  v14 = v3[1];
  v15 = v3[8];
  v13 = *v3;
  if (a2)
  {
    v4(v6, v5, v9);
    sub_1D29FFE28();
    v11 = *(v7 + 8);
    v11(v5, v9);
    (*(v10 + 40))(v13, v8, v14);
    v12 = v15;
    v11(v15, v9);
  }

  else
  {
    sub_1D29FFE28();
    v12 = v15;
    (*(v7 + 8))(v15, v9);
    (*(v10 + 40))(v13, v8, v14);
  }

  free(v12);
  free(v5);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t _EXHostViewController.Configuration.role.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_1D29F4970(uint64_t a1)
{
  v2 = type metadata accessor for _EXHostViewController.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29F49CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*_EXHostViewController.Configuration.role.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for _EXHostViewController.Configuration() + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return sub_1D29F4AB8;
}

void sub_1D29F4AB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t _EXHostViewController.Configuration.beginHostingImmediately.setter(char a1)
{
  result = type metadata accessor for _EXHostViewController.Configuration();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.retryOnHostingFailure.setter(char a1)
{
  result = type metadata accessor for _EXHostViewController.Configuration();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.sceneID.getter()
{
  v1 = (v0 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t _EXHostViewController.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _EXHostViewController.Configuration() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _EXHostViewController.Configuration._initializationParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for _EXHostViewController.Configuration() + 32));

  return swift_unknownObjectRetain();
}

uint64_t _EXHostViewController.Configuration._initializationParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _EXHostViewController.Configuration() + 32);
  v4 = *(v1 + v3);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.init(appExtension:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v7 = sub_1D29FFF18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D29FFE08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  sub_1D29FFE28();
  v17 = type metadata accessor for _EXHostViewController.Configuration();
  v18 = v17[8];
  (*(v13 + 16))(a4, v16, v12);
  v19 = (a4 + v17[7]);
  v20 = v23;
  *v19 = a2;
  v19[1] = v20;
  *(a4 + v18) = 0;
  LOBYTE(v18) = sub_1D29FFFC8();
  (*(v8 + 8))(a1, v7);
  result = (*(v13 + 8))(v16, v12);
  *(a4 + v17[5]) = v18 & 1;
  *(a4 + v17[6]) = 0;
  return result;
}

uint64_t _EXHostViewController.Configuration.init(appExtension:role:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = sub_1D29FFE08();
  v29 = *(v32 - 8);
  v6 = v29;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D29FFF18();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = *a2;
  v30 = a2[1];
  v31 = v18;
  v19 = v11[2];
  v19(&v29 - v16, a1, v10);
  v19(v15, v17, v10);
  sub_1D29FFE28();
  v20 = type metadata accessor for _EXHostViewController.Configuration();
  v21 = v20[8];
  v22 = *(v6 + 16);
  v23 = v32;
  v22(a3, v9, v32);
  v24 = (a3 + v20[7]);
  v25 = v30;
  *v24 = v31;
  v24[1] = v25;
  *(a3 + v21) = 0;
  v26 = a3;
  LOBYTE(a3) = sub_1D29FFFC8();
  v27 = v11[1];
  v27(a1, v10);
  (*(v29 + 8))(v9, v23);
  result = (v27)(v17, v10);
  *(v26 + v20[5]) = a3 & 1;
  *(v26 + v20[6]) = 0;
  return result;
}

uint64_t _EXHostViewController._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 extensionIdentity];
    sub_1D29FFDA8();
    v6 = [v4 role];
    v7 = sub_1D2A003E8();
    v9 = v8;

    v10 = [v4 initializationParameters];
    v11 = [v4 beginHostingImmediately];
    v12 = [v4 retryOnHostingFailure];

    v13 = type metadata accessor for _EXHostViewController.Configuration();
    v14 = v13[8];
    v15 = (a1 + v13[7]);
    *v15 = v7;
    v15[1] = v9;
    *(a1 + v14) = v10;
    *(a1 + v13[5]) = v11;
    *(a1 + v13[6]) = v12;
    v16 = *(*(v13 - 1) + 56);
    v17 = v13;
    v18 = a1;
    v19 = 0;
  }

  else
  {
    v20 = type metadata accessor for _EXHostViewController.Configuration();
    v16 = *(*(v20 - 8) + 56);
    v17 = v20;
    v18 = a1;
    v19 = 1;
  }

  return v16(v18, v19, 1, v17);
}

uint64_t sub_1D29F53E8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D29F3CC4(a1, &v10 - v6);
  v8 = *a2;
  return _EXHostViewController._configuration.setter(v7);
}

void (*_EXHostViewController._configuration.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  _EXHostViewController._configuration.getter(v4);
  return sub_1D29F5538;
}

void sub_1D29F5538(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D29F3CC4(v3, v2);
    _EXHostViewController._configuration.setter(v2);
    sub_1D29F3D34(v3);
  }

  else
  {
    _EXHostViewController._configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t _EXHostViewController.Session.__allocating_init(processConfiguration:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = sub_1D29FFEC8();
  *(v3 + 128) = v5;
  v6 = *(v5 - 8);
  *(v3 + 136) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v8 = sub_1D29FFF08();
  *(v3 + 152) = v8;
  v9 = *(v8 - 8);
  *(v3 + 160) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v11 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v11;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v12 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D29F56E8, 0, 0);
}

uint64_t sub_1D29F56E8()
{
  (*(v0[17] + 16))(v0[18], v0[14], v0[16]);
  v1 = *(MEMORY[0x1E6966C48] + 4);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1D29F57A0;
  v3 = v0[21];
  v4 = v0[18];

  return MEMORY[0x1EEDC0A48](v3, v4);
}

uint64_t sub_1D29F57A0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    sub_1D29F5D0C(v2 + 16);
    v4 = sub_1D29F5BD0;
  }

  else
  {
    v4 = sub_1D29F58BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D29F58BC()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[24] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[25] = v4;
  v5 = sub_1D29E7AA4();
  *v4 = v0;
  v4[1] = sub_1D29F59BC;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD000000000000029, 0x80000001D2A085D0, sub_1D29F6060, v2, v5);
}

uint64_t sub_1D29F59BC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v7 = *v1;
  *(v2 + 208) = v0;

  sub_1D29F5D0C(v2 + 16);

  if (v0)
  {
    v5 = sub_1D29F5C64;
  }

  else
  {
    v5 = sub_1D29F5AFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D29F5AFC()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  (*(v0[17] + 8))(v0[14], v0[16]);
  v6 = v0[13];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D29F5BD0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  (*(v0[17] + 8))(v0[14], v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D29F5C64()
{
  (*(v0[17] + 8))(v0[14], v0[16]);
  v1 = v0[26];
  v2 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v3 = v0[1];

  return v3();
}

void sub_1D29F5D3C(uint64_t a1, double *a2)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - v5;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v10 = sub_1D2A003B8();
  v11 = [v9 initWithSceneIdentifier_];

  v12 = *(a2 + 7);
  v28 = *(a2 + 6);
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v21[1] = &v26;
  v26 = sub_1D29DE600;
  v27 = &block_descriptor_37;
  v13 = _Block_copy(&aBlock);
  v14 = v11;

  [v14 setInvalidationHandler_];
  _Block_release(v13);
  [v14 setInitialFrame_];
  [v14 setRetryOnHostingFailure_];
  [v14 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v15 = objc_opt_self();
  sub_1D29FFEF8();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  v17 = v22;
  (*(v3 + 16))(v6, v23, v22);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v6, v17);
  v28 = sub_1D29F6F24;
  v29 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D29F3848;
  v27 = &block_descriptor_43;
  v20 = _Block_copy(&aBlock);

  [v15 sessionWithProcess:v16 configuration:v14 completion:v20];

  _Block_release(v20);
}

uint64_t _EXHostViewController.Session.__allocating_init(process:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D29F60A8, 0, 0);
}

uint64_t sub_1D29F60A8()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_1D29E7AA4();
  *v4 = v0;
  v4[1] = sub_1D29F61A8;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29F6754, v2, v5);
}

uint64_t sub_1D29F61A8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D29F638C;
  }

  else
  {
    v5 = *(v2 + 128);
    sub_1D29F5D0C(v2 + 16);

    v4 = sub_1D29F62D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D29F62D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_1D29FFF08();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1D29F638C()
{
  v1 = v0[16];
  v2 = v0[14];
  sub_1D29F5D0C((v0 + 2));

  v3 = sub_1D29FFF08();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

void sub_1D29F6438(uint64_t a1, double *a2)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v11 = sub_1D2A003B8();
  v12 = [v10 initWithSceneIdentifier_];

  v13 = *(a2 + 7);
  v27 = *(a2 + 6);
  v28 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v21 = &v25;
  v25 = sub_1D29DE600;
  v26 = &block_descriptor_3;
  v14 = _Block_copy(&aBlock);

  [v12 setInvalidationHandler_];
  _Block_release(v14);
  [v12 setInitialFrame_];
  [v12 setRetryOnHostingFailure_];
  [v12 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v15 = objc_opt_self();
  sub_1D29FFEF8();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  v17 = v3;
  (*(v4 + 16))(v7, v22, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v17);
  v27 = sub_1D29F6FB0;
  v28 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1D29F3848;
  v26 = &block_descriptor_34;
  v20 = _Block_copy(&aBlock);

  [v15 sessionWithProcess:v16 configuration:v12 completion:v20];
  _Block_release(v20);
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXHostViewController.Session.makeXPCConnection()()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v7[0] = 0;
  v2 = [v1 _makeXPCConnectionWithError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _EXHostViewController.Session.identity.getter()
{
  v1 = [*(v0 + 16) extensionProcess];
  v2 = [v1 extensionIdentity];

  return MEMORY[0x1EEDC0AB0](v2);
}

double _EXHostViewController.Session.Configuration.init(sceneID:onInvalidation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration.sceneID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _EXHostViewController.Session.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double _EXHostViewController.Session.Configuration.initialFrame.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void _EXHostViewController.Session.Configuration.initialFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t sub_1D29F6980(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 56);

  *(a2 + 48) = sub_1D29F6E28;
  *(a2 + 56) = v5;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration.onInvalidation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t _EXHostViewController.Session.Configuration.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration._initializationParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 72);
  result = swift_unknownObjectRelease();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _EXHostViewController.Session.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *_EXHostViewController.session.getter()
{
  result = [v0 session];
  if (result)
  {
    v2 = result;
    type metadata accessor for _EXHostViewController.Session();
    result = swift_allocObject();
    result[2] = v2;
  }

  return result;
}

void *sub_1D29F6BF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  if (result)
  {
    v4 = result;
    type metadata accessor for _EXHostViewController.Session();
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

id _EXHostViewController.session.setter(uint64_t a1)
{
  if (a1)
  {
    [v1 setSession_];
  }

  else
  {

    return [v1 setSession_];
  }
}

id (*_EXHostViewController.session.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 session];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for _EXHostViewController.Session();
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_1D29E8154;
}

void sub_1D29F6D68()
{
  sub_1D29FFE08();
  if (v0 <= 0x3F)
  {
    sub_1D29EFC48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D29F6E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D29F6E50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double AppExtensionSceneConfiguration.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  *a5 = sub_1D29F7934;
  *(a5 + 8) = v10;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  return result;
}

uint64_t (*PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)@<X0>(uint64_t (*a1)()@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>))()
{
  *a9 = sub_1D29F7B58;
  a9[1] = 0;
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  *(result + 2) = a7;
  *(result + 3) = a8;
  *(result + 4) = a3;
  *(result + 5) = a4;
  a9[4] = sub_1D29F91A8;
  a9[5] = result;
  a9[6] = a5;
  a9[7] = a6;
  return result;
}

uint64_t sub_1D29F70CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *&v12 = 0x746C7561666564;
  *(&v12 + 1) = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D29E3224;
  *(v9 + 24) = v7;
  *&v13 = sub_1D29E3288;
  *(&v13 + 1) = v9;
  *&v14 = sub_1D29E322C;
  *(&v14 + 1) = v8;
  v10 = v6;
  PrimitiveAppExtensionScene._makeScene(with:)(a1, a2, a3);
  v15[0] = sub_1D29F7B58;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  return sub_1D29F36D0(v15);
}

uint64_t AppExtensionScene._makeScene(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

Swift::Bool __swiftcall AppExtensionSceneConfiguration.accept(connection:)(NSXPCConnection connection)
{
  sub_1D29F3724(v1 + 16, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_1D29FFD18();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1D29DB7F4(v4, &unk_1EC701680, &qword_1D2A049B0);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t _AnyAppExtensionScene._makeScene(with:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double AppExtensionSceneConfiguration.init<A, B>(_:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a6;
  v15 = sub_1D2A00618();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v27;
  v20[5] = a7;
  v20[6] = a1;
  v20[7] = a2;
  *a8 = sub_1D29F7B60;
  *(a8 + 8) = v20;
  (*(v16 + 16))(v19, a3, v15);
  v21 = *(a5 - 8);
  if ((*(v21 + 48))(v19, 1, a5) == 1)
  {
    v22 = *(v16 + 8);
    v22(a3, v15);
    v22(v19, v15);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    *(&v29 + 1) = a5;
    v30 = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(v21 + 32))(boxed_opaque_existential_1, v19, a5);
    (*(v16 + 8))(a3, v15);
  }

  result = *&v28;
  v25 = v29;
  *(a8 + 16) = v28;
  *(a8 + 32) = v25;
  *(a8 + 48) = v30;
  return result;
}

uint64_t sub_1D29F7630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t (**a4)()@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  return _AnyAppExtensionScene.init<A>(erasing:)(v10, a2, a3, a4);
}

uint64_t _AnyAppExtensionScene.init<A>(erasing:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, a2);
  *a4 = sub_1D29F862C;
  a4[1] = v11;
  v12(v9, v16, a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (v12)(v13 + v10, v9, a2);
  a4[2] = sub_1D29F8668;
  a4[3] = v13;
  return result;
}

void sub_1D29F7868(void *a1@<X8>)
{
  *a1 = sub_1D29F917C;
  a1[1] = 0;
  a1[2] = sub_1D29F9180;
  a1[3] = 0;
}

uint64_t sub_1D29F7894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (**a4)()@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  return _AnyAppExtensionScene.init<A>(erasing:)(v10, a2, a3, a4);
}

uint64_t sub_1D29F7940()
{
  sub_1D29F3724(v0 + 16, v3);
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v1 = sub_1D29FFD18();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    sub_1D29DB7F4(v3, &unk_1EC701680, &qword_1D2A049B0);
    v1 = 0;
  }

  return v1 & 1;
}

void *PrimitiveAppExtensionScene.init<A>(id:sceneDelegate:content:onConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  result[2] = a10;
  result[3] = a11;
  result[4] = a5;
  result[5] = a6;
  a9[4] = sub_1D29F86D0;
  a9[5] = result;
  a9[6] = a7;
  a9[7] = a8;
  *a9 = a3;
  a9[1] = a4;
  return result;
}

uint64_t sub_1D29F7A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = sub_1D29F90B4(v8, a3);
  (*(v4 + 8))(v8, a3);
  return v9;
}

uint64_t sub_1D29F7B60@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  return sub_1D29F7630(v1[6], v1[2], v1[4], a1);
}

double PrimitiveAppExtensionScene._makeScene(with:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  v25 = *v3;
  v26 = v8;
  v9 = v3[3];
  v27 = v3[2];
  v28 = v9;
  v10 = sub_1D2A00598();
  sub_1D29D9A60();
  v11 = sub_1D2A00608();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    v14 = v4[1];
    v24[0] = *v4;
    v24[1] = v14;
    v15 = v4[3];
    v24[2] = v4[2];
    v24[3] = v15;
    sub_1D29F3624(&v25, v22);
    v16 = sub_1D2A003F8();
    v18 = sub_1D29F87C4(v16, v17, &v23);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D29F87C4(a1, a2, &v23);
    _os_log_impl(&dword_1D29CC000, v11, v10, "Evaluating %s for requested id %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v13, -1, -1);
    MEMORY[0x1D38A6000](v12, -1, -1);
  }

  if (v26 == __PAIR128__(a2, a1) || (sub_1D2A00708() & 1) != 0)
  {
    v19 = v26;
    *a3 = v25;
    a3[1] = v19;
    v20 = v28;
    a3[2] = v27;
    a3[3] = v20;
    sub_1D29F3624(&v25, v24);
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t Array<A>._makeScene(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  v25 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v39, 0, 64);
  result = sub_1D2A004E8();
  if (result)
  {
    v19 = v11;
    v20 = a6;
    v14 = 0;
    v22 = a5;
    v23 = (v10 + 16);
    v21 = a5 + 32;
    while (1)
    {
      v15 = sub_1D2A004D8();
      sub_1D2A004B8();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        a6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D2A00688();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v26 = result;
        (*v23)(v12, &v26, a4);
        result = swift_unknownObjectRelease();
        a6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      (*(v22 + 32))(&v26, v24, v25, a4);
      sub_1D29DB7F4(v39, &qword_1EC701690, &qword_1D2A049A0);
      result = (*(v10 + 8))(v12, a4);
      v16 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      if (v26)
      {
        v35 = v31;
        v36 = v32;
        v37 = v33;
        v38 = v34;
        a6 = v20;
        goto LABEL_15;
      }

      *&v39[0] = 0;
      *(v39 + 8) = v31;
      *(&v39[1] + 8) = v32;
      *(&v39[2] + 8) = v33;
      *(&v39[3] + 1) = v34;
      result = sub_1D2A004E8();
      ++v14;
      if (a6 == result)
      {
        v16 = *&v39[0];
        a6 = v20;
        goto LABEL_14;
      }
    }
  }

  v16 = 0;
LABEL_14:
  v35 = *(v39 + 8);
  v36 = *(&v39[1] + 8);
  v37 = *(&v39[2] + 8);
  v38 = *(&v39[3] + 1);
LABEL_15:
  *a6 = v16;
  v17 = v36;
  *(a6 + 8) = v35;
  *(a6 + 24) = v17;
  *(a6 + 40) = v37;
  *(a6 + 56) = v38;
  return result;
}

unint64_t PrimitiveAppExtensionScene.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  sub_1D2A00678();

  MEMORY[0x1D38A52F0](v1, v2);
  MEMORY[0x1D38A52F0](0x203A7765697620, 0xE700000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701698, &qword_1D2A04A80);
  v6 = sub_1D2A003F8();
  MEMORY[0x1D38A52F0](v6);

  return 0xD00000000000001BLL;
}

uint64_t sub_1D29F83B0@<X0>(void (**a1)()@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D29E68EC;
  *(v5 + 24) = v3;
  *&v15 = sub_1D29F7B58;
  *(&v15 + 1) = 0;
  *&v16 = 0x746C7561666564;
  *(&v16 + 1) = 0xE700000000000000;
  *&v17 = sub_1D29E68E8;
  *(&v17 + 1) = v5;
  *&v18 = sub_1D29E68F0;
  *(&v18 + 1) = v4;
  v6 = swift_allocObject();
  v7 = v16;
  *(v6 + 1) = sub_1D29F7B58;
  *(v6 + 2) = v7;
  v8 = v18;
  *(v6 + 3) = v17;
  *(v6 + 4) = v8;
  *a1 = sub_1D29F7BBC;
  a1[1] = v6;
  v9 = swift_allocObject();
  v10 = v16;
  *(v9 + 1) = v15;
  *(v9 + 2) = v10;
  v11 = v18;
  *(v9 + 3) = v17;
  *(v9 + 4) = v11;
  a1[2] = sub_1D29F9184;
  a1[3] = v9;
  v12 = v2;
  return sub_1D29F3624(&v15, &v14);
}

uint64_t sub_1D29F8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a3 + 24))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return _AnyAppExtensionScene.init<A>(erasing:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1D29F8668()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t _AnyAppExtensionScene.body.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D29F8718()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D29F8768(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D29F87C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1D29F87C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D29F8890(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D29F8F18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D29F8890(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D29F899C(a5, a6);
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
    result = sub_1D2A00698();
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

uint64_t sub_1D29F899C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D29F89E8(a1, a2);
  sub_1D29F8B18(&unk_1F4DED560);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D29F89E8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D29F8C04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D2A00698();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D2A00468();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D29F8C04(v10, 0);
        result = sub_1D2A00668();
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

uint64_t sub_1D29F8B18(uint64_t result)
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

  result = sub_1D29F8C78(result, v12, 1, v3);
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

void *sub_1D29F8C04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016A8, "B]");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D29F8C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016A8, "B]");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t get_enum_tag_for_layout_string_19ExtensionFoundation03AppA13Configuration_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D29F8DC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D29F8E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D29F8EC4()
{
  result = qword_1EC7016A0;
  if (!qword_1EC7016A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016A0);
  }

  return result;
}

uint64_t sub_1D29F8F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D29F8F74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *&v12 = 0x746C7561666564;
  *(&v12 + 1) = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D29E68EC;
  *(v9 + 24) = v7;
  *&v13 = sub_1D29E68E8;
  *(&v13 + 1) = v9;
  *&v14 = sub_1D29E68F0;
  *(&v14 + 1) = v8;
  v10 = v6;
  PrimitiveAppExtensionScene._makeScene(with:)(a1, a2, a3);
  v15[0] = sub_1D29F7B58;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  return sub_1D29F36D0(v15);
}

uint64_t sub_1D29F90B4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1D2A00318();
}

uint64_t sub_1D29F91AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

char *sub_1D29F9204(void *a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v3 = a1;
  v4 = [v3 extensionPointIdentifiers];
  v5 = sub_1D2A004A8();

  LODWORD(v4) = [v3 showsContainingAppsOnly];
  v6 = [objc_allocWithZone(ObjCClassFromObject) init];

  v7 = &v6[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  v8 = *&v6[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  *v7 = v5;
  v7[1] = v4;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *EXAppExtensionBrowserViewController.init(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  v5 = *&v3[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  *v4 = v1;
  *(v4 + 1) = v2;

  return v3;
}

Swift::Void __swiftcall EXAppExtensionBrowserViewController.loadView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v6 = *&v0[OBJC_IVAR___EXAppExtensionBrowserViewController_hostViewController];
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addChildViewController_];
    [v5 addSubview_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016D0, &qword_1D2A04CC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D2A04CB0;
    v11 = [v8 leftAnchor];
    v12 = [v5 leftAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [v8 topAnchor];
    v15 = [v5 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v10 + 40) = v16;
    v17 = [v8 rightAnchor];
    v18 = [v5 rightAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v10 + 48) = v19;
    v20 = [v8 bottomAnchor];
    v21 = [v5 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v10 + 56) = v22;
    sub_1D29D95F8(0, &qword_1EC7016D8, 0x1E696ACD8);
    v23 = sub_1D2A00498();

    [v9 activateConstraints_];

    [v0 setView_];
    v24 = sub_1D2A00568();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    sub_1D2A00548();
    v25 = v0;
    v26 = sub_1D2A00538();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;
    sub_1D29FBBE0(0, 0, v4, &unk_1D2A04CD0, v27);
  }

  else
  {
    sub_1D2A006A8();
    __break(1u);
  }
}

uint64_t sub_1D29F9930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a4;
  v5 = sub_1D2A00008();
  v4[62] = v5;
  v6 = *(v5 - 8);
  v4[63] = v6;
  v7 = *(v6 + 64) + 15;
  v4[64] = swift_task_alloc();
  v8 = *(*(sub_1D29FFEC8() - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v9 = sub_1D29FFF08();
  v4[66] = v9;
  v10 = *(v9 - 8);
  v4[67] = v10;
  v11 = *(v10 + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v12 = sub_1D29FFF18();
  v4[70] = v12;
  v13 = *(v12 - 8);
  v4[71] = v13;
  v14 = *(v13 + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v15 = sub_1D29FFE08();
  v4[74] = v15;
  v16 = *(v15 - 8);
  v4[75] = v16;
  v17 = *(v16 + 64) + 15;
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = sub_1D2A00548();
  v4[79] = sub_1D2A00538();
  v19 = sub_1D2A004F8();
  v4[80] = v19;
  v4[81] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D29F9B90, v19, v18);
}

uint64_t sub_1D29F9B90()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v2 = sub_1D29FC974();
  v0[82] = v2;
  v3 = v0[77];
  v4 = v2;
  sub_1D29FFDD8();
  sub_1D29D95F8(0, &qword_1EC701728, 0x1E696AD98);
  if (sub_1D29FFD58())
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      v17 = v0[79];
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v6 = [v5 BOOLValue];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = v0[73];
      v8 = v0[72];
      v9 = v0[71];
      v10 = v0[70];
      v11 = v0[65];
      (*(v0[75] + 16))(v0[76], v0[77], v0[74]);
      sub_1D29FFF38();
      (*(v9 + 16))(v8, v7, v10);
      sub_1D29FFEB8();
      v12 = *(MEMORY[0x1E6966C48] + 4);
      v13 = swift_task_alloc();
      v0[83] = v13;
      *v13 = v0;
      v13[1] = sub_1D29F9FCC;
      v14 = v0[69];
      v15 = v0[65];

      return MEMORY[0x1EEDC0A48](v14, v15);
    }
  }

  v16 = v0[79];
LABEL_9:

  v18 = v0[77];
  v19 = v0[75];
  v20 = v0[74];
  sub_1D29D95F8(0, &qword_1EC701730, 0x1E696ABC0);
  v21 = sub_1D2A005F8();
  swift_willThrow();

  (*(v19 + 8))(v18, v20);
  v22 = v0[64];
  sub_1D29FFFE8();
  v23 = v21;
  v24 = sub_1D29FFFF8();
  v25 = sub_1D2A00598();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v21;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1D29CC000, v24, v25, "Failed to launch: %@", v26, 0xCu);
    sub_1D29DB7F4(v27, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v27, -1, -1);
    MEMORY[0x1D38A6000](v26, -1, -1);
  }

  else
  {
  }

  (*(v0[63] + 8))(v0[64], v0[62]);
  v30 = v0[77];
  v31 = v0[76];
  v32 = v0[73];
  v33 = v0[72];
  v34 = v0[69];
  v35 = v0[68];
  v36 = v0[65];
  v37 = v0[64];

  v38 = v0[1];

  return v38();
}

uint64_t sub_1D29F9FCC()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 648);
  v6 = *(v2 + 640);
  if (v0)
  {
    v7 = sub_1D29FB160;
  }

  else
  {
    v7 = sub_1D29FA108;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D29FA108()
{
  v1 = [*(v0 + 488) view];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    [v1 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    *(v0 + 680) = v10;
    *(v0 + 688) = v12;
    *(v0 + 696) = v14;
    *(v0 + 704) = v16;
    (*(v7 + 16))(v6, v5, v8);
    *(v0 + 16) = 0x746C7561666564;
    *(v0 + 24) = 0xE700000000000000;
    *(v0 + 32) = v10;
    *(v0 + 40) = v12;
    *(v0 + 48) = v14;
    *(v0 + 56) = v16;
    *(v0 + 64) = nullsub_3;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 1;
    v1 = sub_1D29FA24C;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D29FA24C()
{
  v1 = v0[68];
  v2 = swift_task_alloc();
  v0[89] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[90] = v4;
  v5 = sub_1D29D95F8(0, &qword_1EC7011D8, off_1E8401720);
  *v4 = v0;
  v4[1] = sub_1D29FA35C;

  return MEMORY[0x1EEE6DE38](v0 + 60, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29F6754, v2, v5);
}

uint64_t sub_1D29FA35C()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = sub_1D29FA984;
  }

  else
  {
    v5 = *(v2 + 712);

    v4 = sub_1D29FA478;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D29FA478()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[60];
  v0[92] = v4;
  type metadata accessor for _EXHostViewController.Session();
  inited = swift_initStackObject();
  v0[93] = inited;
  *(inited + 16) = v4;
  v6 = *(v2 + 8);
  v0[94] = v6;
  v0[95] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = v0[81];
  v8 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FA534, v8, v7);
}

uint64_t sub_1D29FA534()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3.super.isa = _EXHostViewController.Session.makeXPCConnection()().super.isa;
  *(v0 + 768) = v3;
  if (v4.super.isa)
  {
    v5 = *(v0 + 752);
    v6 = *(v0 + 736);
    v7 = *(v0 + 632);
    v45 = *(v0 + 616);
    isa = v4.super.isa;
    v8 = *(v0 + 600);
    v42 = *(v0 + 760);
    v43 = *(v0 + 592);
    v9 = *(v0 + 584);
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 528);
    v46 = *(v0 + 680);
    v44 = *(v0 + 696);

    v5(v12, v13);
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v45, v43);
    *(v0 + 192) = 0x746C7561666564;
    *(v0 + 200) = 0xE700000000000000;
    *(v0 + 208) = v46;
    *(v0 + 224) = v44;
    *(v0 + 240) = nullsub_3;
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 257) = *(v0 + 97);
    *(v0 + 260) = *(v0 + 100);
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    sub_1D29F5D0C(v0 + 192);
    v14 = *(v0 + 512);
    sub_1D29FFFE8();
    v15 = isa;
    v16 = sub_1D29FFFF8();
    v17 = sub_1D2A00598();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = isa;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D29CC000, v16, v17, "Failed to launch: %@", v18, 0xCu);
      sub_1D29DB7F4(v19, qword_1EC700C18, qword_1D2A034B0);
      MEMORY[0x1D38A6000](v19, -1, -1);
      MEMORY[0x1D38A6000](v18, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
    v32 = *(v0 + 616);
    v33 = *(v0 + 608);
    v34 = *(v0 + 584);
    v35 = *(v0 + 576);
    v36 = *(v0 + 552);
    v37 = *(v0 + 544);
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v22 = v3.super.isa;
    v23 = *(v0 + 624);
    v24 = *(v0 + 488);
    v25 = [objc_opt_self() interfaceWithProtocol_];
    [(objc_class *)v22 setRemoteObjectInterface:v25];

    [(objc_class *)v22 resume];
    v26 = sub_1D2A00538();
    *(v0 + 792) = v26;
    v27 = swift_task_alloc();
    *(v0 + 800) = v27;
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    v28 = *(MEMORY[0x1E69E8920] + 4);
    v29 = swift_task_alloc();
    *(v0 + 808) = v29;
    *v29 = v0;
    v29[1] = sub_1D29FACFC;
    v30 = MEMORY[0x1E69E85E0];
    v31 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v29, v26, v30, 0x736F486E69676562, 0xEE002928676E6974, sub_1D29FCDA0, v27, v31);
  }
}

uint64_t sub_1D29FA984()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = *(v2 + 8);
  v0[97] = v4;
  v0[98] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = v0[81];
  v6 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FAA10, v6, v5);
}

uint64_t sub_1D29FAA10()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v34 = *(v0 + 712);
  v3 = *(v0 + 656);
  v4 = *(v0 + 632);
  v32 = *(v0 + 616);
  v5 = *(v0 + 600);
  v30 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 528);
  v33 = *(v0 + 680);
  v31 = *(v0 + 696);

  v2(v9, v10);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v32, v30);
  *(v0 + 104) = 0x746C7561666564;
  *(v0 + 112) = 0xE700000000000000;
  *(v0 + 120) = v33;
  *(v0 + 136) = v31;
  *(v0 + 152) = nullsub_3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 169) = *(v0 + 97);
  *(v0 + 172) = *(v0 + 100);
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  sub_1D29F5D0C(v0 + 104);

  v11 = *(v0 + 728);
  v12 = *(v0 + 512);
  sub_1D29FFFE8();
  v13 = v11;
  v14 = sub_1D29FFFF8();
  v15 = sub_1D2A00598();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1D29CC000, v14, v15, "Failed to launch: %@", v16, 0xCu);
    sub_1D29DB7F4(v17, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v16, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  v20 = *(v0 + 616);
  v21 = *(v0 + 608);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 552);
  v25 = *(v0 + 544);
  v26 = *(v0 + 520);
  v27 = *(v0 + 512);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D29FACFC()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *v1;
  v2[102] = v0;

  v5 = v2[99];

  v6 = v2[81];
  v7 = v2[80];
  if (v0)
  {
    v8 = sub_1D29FB398;
  }

  else
  {
    v8 = sub_1D29FAE3C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D29FAE58()
{
  v1 = *(v0 + 624);
  *(v0 + 824) = sub_1D2A00538();
  v3 = sub_1D2A004F8();

  return MEMORY[0x1EEE6DFA0](sub_1D29FAEE4, v3, v2);
}

uint64_t sub_1D29FAEE4()
{
  v1 = v0[103];
  v2 = v0[92];
  v3 = v0[61];

  [*(v3 + OBJC_IVAR___EXAppExtensionBrowserViewController_hostViewController) setSession_];
  v4 = v0[81];
  v5 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FAF70, v5, v4);
}

uint64_t sub_1D29FAF70()
{
  v26 = *(v0 + 800);
  v1 = *(v0 + 768);
  v20 = *(v0 + 752);
  v21 = *(v0 + 760);
  v2 = *(v0 + 736);
  v3 = *(v0 + 632);
  v24 = *(v0 + 616);
  v4 = *(v0 + 600);
  v22 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = *(v0 + 528);
  v25 = *(v0 + 680);
  v23 = *(v0 + 696);

  v20(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v24, v22);
  *(v0 + 368) = 0x746C7561666564;
  *(v0 + 376) = 0xE700000000000000;
  *(v0 + 384) = v25;
  *(v0 + 400) = v23;
  *(v0 + 416) = nullsub_3;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 433) = *(v0 + 97);
  *(v0 + 436) = *(v0 + 100);
  *(v0 + 440) = 0;
  *(v0 + 448) = 1;
  sub_1D29F5D0C(v0 + 368);

  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D29FB160()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[77];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[71];
  v8 = v0[70];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[84];
  v10 = v0[64];
  sub_1D29FFFE8();
  v11 = v9;
  v12 = sub_1D29FFFF8();
  v13 = sub_1D2A00598();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1D29CC000, v12, v13, "Failed to launch: %@", v14, 0xCu);
    sub_1D29DB7F4(v15, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v15, -1, -1);
    MEMORY[0x1D38A6000](v14, -1, -1);
  }

  else
  {
  }

  (*(v0[63] + 8))(v0[64], v0[62]);
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[69];
  v23 = v0[68];
  v24 = v0[65];
  v25 = v0[64];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1D29FB398()
{
  v36 = *(v0 + 800);
  v1 = *(v0 + 768);
  v30 = *(v0 + 752);
  v31 = *(v0 + 760);
  v2 = *(v0 + 736);
  v3 = *(v0 + 656);
  v4 = *(v0 + 632);
  v34 = *(v0 + 616);
  v5 = *(v0 + 600);
  v32 = *(v0 + 592);
  v29 = *(v0 + 584);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 552);
  v9 = *(v0 + 528);
  v35 = *(v0 + 680);
  v33 = *(v0 + 696);

  v30(v8, v9);
  (*(v6 + 8))(v29, v7);
  (*(v5 + 8))(v34, v32);
  *(v0 + 280) = 0x746C7561666564;
  *(v0 + 288) = 0xE700000000000000;
  *(v0 + 296) = v35;
  *(v0 + 312) = v33;
  *(v0 + 328) = nullsub_3;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 345) = *(v0 + 97);
  *(v0 + 348) = *(v0 + 100);
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  sub_1D29F5D0C(v0 + 280);

  v10 = *(v0 + 816);
  v11 = *(v0 + 512);
  sub_1D29FFFE8();
  v12 = v10;
  v13 = sub_1D29FFFF8();
  v14 = sub_1D2A00598();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D29CC000, v13, v14, "Failed to launch: %@", v15, 0xCu);
    sub_1D29DB7F4(v16, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v16, -1, -1);
    MEMORY[0x1D38A6000](v15, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  v19 = *(v0 + 616);
  v20 = *(v0 + 608);
  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1D29FB69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D29E5CB4;

  return sub_1D29F9930(a1, v4, v5, v6);
}

uint64_t sub_1D29FB750(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v26 = *(v7 + 16);
  v27 = a1;
  v26(&v24 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v25 = *(v7 + 32);
  v25(v12 + v11, v10, v6);
  v34 = sub_1D29FCDA8;
  v35 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D29FBB78;
  v33 = &block_descriptor_4;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1D2A00638();
  swift_unknownObjectRelease();
  sub_1D29F8F18(v36, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701740, &unk_1D2A04F00);
  if (swift_dynamicCast())
  {
    v24 = v29;
    v15 = a3 + OBJC_IVAR___EXAppExtensionBrowserViewController__configuration;
    v16 = *(a3 + OBJC_IVAR___EXAppExtensionBrowserViewController__configuration);
    v17 = *(v15 + 8);
    v18 = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers] = v16;
    *&v19[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options] = v17;
    v28.receiver = v19;
    v28.super_class = v18;

    v20 = objc_msgSendSuper2(&v28, sel_init);
    v26(v10, v27, v6);
    v21 = swift_allocObject();
    v25(v21 + v11, v10, v6);
    v34 = sub_1D29FCED0;
    v35 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1D29DE600;
    v33 = &block_descriptor_31;
    v22 = _Block_copy(&aBlock);

    [v24 prepareSceneWithConfig:v20 reply:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D29D95F8(0, &qword_1EC701730, 0x1E696ABC0);
    aBlock = sub_1D2A005F8();
    sub_1D2A00508();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v36);
}

uint64_t sub_1D29FBB28(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  return sub_1D2A00508();
}

void sub_1D29FBB78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D29FBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D29FC904(a3, v27 - v11);
  v13 = sub_1D2A00568();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D29DB7F4(v12, &qword_1EC701090, &qword_1D2A03B68);
  }

  else
  {
    sub_1D2A00558();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2A004F8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2A00408() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static EXAppExtensionBrowserViewController._Configuration.default.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EC700928 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_1EC7016B0;
}

void *sub_1D29FC030@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D29FC05C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1D29FC10C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t EXAppExtensionBrowserViewController._Configuration.extensionPointIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EXAppExtensionBrowserViewController._Configuration.init(extensionPointIdentifiers:options:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

id _sSo35EXAppExtensionBrowserViewControllerC0B3KitE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id _EXAppExtensionBrowserViewController.init(coder:)(void *a1)
{
  v4.super_class = _EXAppExtensionBrowserViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id _sSo35EXAppExtensionBrowserViewControllerC0B3KitE7nibName6bundleABSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D2A003B8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id _EXAppExtensionBrowserViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1D2A003B8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = _EXAppExtensionBrowserViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id _EXAppExtensionBrowserViewController.init(configuration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

{
  v4.super_class = _EXAppExtensionBrowserViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithConfiguration_, a1);

  return v2;
}

unint64_t sub_1D29FC540()
{
  result = qword_1EC7016E0;
  if (!qword_1EC7016E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016E0);
  }

  return result;
}

unint64_t sub_1D29FC598()
{
  result = qword_1EC7016E8;
  if (!qword_1EC7016E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016E8);
  }

  return result;
}

unint64_t sub_1D29FC5F0()
{
  result = qword_1EC7016F0;
  if (!qword_1EC7016F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016F0);
  }

  return result;
}

unint64_t sub_1D29FC648()
{
  result = qword_1EC7016F8;
  if (!qword_1EC7016F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016F8);
  }

  return result;
}

uint64_t sub_1D29FC6B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D29FC70C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t _s14_ConfigurationV7OptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14_ConfigurationV7OptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D29FC904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D29FC974()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D2A003B8();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D29FCA40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D29FCB38;

  return v7(a1);
}

uint64_t sub_1D29FCB38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D29FCC30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D29FCF48;

  return sub_1D29FCA40(a1, v5);
}

uint64_t sub_1D29FCCE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D29E5CB4;

  return sub_1D29FCA40(a1, v5);
}

uint64_t sub_1D29FCDA8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0) - 8) + 80);

  return sub_1D29FBB28(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D29FCED0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1D2A00518();
}