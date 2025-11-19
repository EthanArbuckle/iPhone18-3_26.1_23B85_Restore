uint64_t (*sub_1D2A33834(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A33898;
}

uint64_t sub_1D2A339B0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D2A33A10(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D2A33AA8;
}

void sub_1D2A33AA8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D2A33B28@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1D2A33B7C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D2A33C88()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D2A33D38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2A33D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2A33F5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D2A33FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D2A340C4()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D2A3415C(char a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D2A3429C()
{
  v1 = (v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1D2A34370(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D2A343D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1D2A344E4()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D2A345FC(char a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_1D2A57618;
  v7[4] = 0;
  v7[5] = sub_1D2A44CAC;
  v7[6] = v5;
  swift_getKeyPath();
  *&aBlock = v4;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v32 = sub_1D2A57618;
    v33 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_40;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v34;
    if (v34)
    {
      [v34 setIsLoadingRecipe_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v7;
  swift_getKeyPath();
  *&aBlock = v4;

  sub_1D2AC6094();

  *&aBlock = v4;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(v4 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(v4 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(v4 + v23) = v24;
  swift_endAccess();
  *&aBlock = v4;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A34B88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  swift_beginAccess();
  *(v3 + v4) = v2;
  *(*(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  sub_1D2A5B93C(sub_1D2A57618, 0, sub_1D2A47D44, v5);
}

void (*sub_1D2A34C50(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A34CD8;
}

void sub_1D2A34CD8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_isLoadingRecipe) = v6;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = sub_1D2A57618;
    v9[4] = 0;
    v9[5] = sub_1D2A47D44;
    v9[6] = v7;
    swift_getKeyPath();
    *v3 = v5;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v10)
    {
      v3[4] = sub_1D2A57618;
      v3[5] = 0;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1D2A44320;
      v3[3] = &block_descriptor_57;
      v11 = _Block_copy(v3);
      v12 = v3[5];
      v13 = v10;

      v14 = [v13 remoteObjectProxyWithErrorHandler_];
      _Block_release(v11);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v3 + 5, v3 + 3);
      sub_1D2A206F8(v3 + 3, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v15 = v3[10];
      if (v15)
      {
        [v3[10] setIsLoadingRecipe_];

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v16 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D2AC63B4();
      __swift_project_value_buffer(v17, qword_1EC7040C0);
      v18 = v16;
      v19 = sub_1D2AC6394();
      v20 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v16;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1D2A17000, v19, v20, "Could not send isLoadingRecipe to remote view: %@. May not be an error if the connection is not established yet, will retry.", v21, 0xCu);
        sub_1D2A2E61C(v22, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v22, -1, -1);
        MEMORY[0x1D38A8460](v21, -1, -1);
      }
    }

    v25 = swift_allocObject();
    *(v25 + 16) = sub_1D2A2E6B4;
    *(v25 + 24) = v9;
    swift_getKeyPath();
    *v3 = v5;

    sub_1D2AC6094();

    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v26 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v27 = *(v5 + v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1D2A4486C(0, v27[2] + 1, 1, v27);
      *(v5 + v26) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v31[4] = sub_1D2A47D3C;
    v31[5] = v25;
    *(v5 + v26) = v27;
    swift_endAccess();
    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_15;
  }

LABEL_16:

  free(v3);
}

void *sub_1D2A352D8()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A35344(char *a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = a3;
  v10 = a3;
  v11 = a1;

  a5();
}

void sub_1D2A353EC()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v22 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
    v24 = *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
    *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = MEMORY[0x1E69E7CC0];

    v25 = *(v22 + v23);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = sub_1D2A575AC;
    v28[4] = 0;
    v28[5] = sub_1D2A47D50;
    v28[6] = v26;
    swift_getKeyPath();
    *&aBlock = v22;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    swift_bridgeObjectRetain_n();

    sub_1D2AC6094();

    v141 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection;
    v29 = *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v29)
    {
      v145 = sub_1D2A575AC;
      v146 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v143 = sub_1D2A44320;
      v144 = &block_descriptor_397;
      v30 = _Block_copy(&aBlock);
      v31 = v29;

      v32 = [v31 remoteObjectProxyWithErrorHandler_];
      _Block_release(v30);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v147, v148);
      sub_1D2A206F8(v148, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v33 = v147[0];
      if (v147[0])
      {
        sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
        v34 = sub_1D2AC6D24();
        [v33 setPromptElements_];

        goto LABEL_36;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v74 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v75 = sub_1D2AC63B4();
      __swift_project_value_buffer(v75, qword_1EC7040C0);
      v76 = v74;
      v77 = sub_1D2AC6394();
      v78 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        v81 = v74;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 4) = v82;
        *v80 = v82;
        _os_log_impl(&dword_1D2A17000, v77, v78, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v79, 0xCu);
        sub_1D2A2E61C(v80, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v80, -1, -1);
        MEMORY[0x1D38A8460](v79, -1, -1);
      }
    }

    v83 = swift_allocObject();
    *(v83 + 16) = sub_1D2A2E6B4;
    *(v83 + 24) = v28;
    swift_getKeyPath();
    *&aBlock = v22;

    sub_1D2AC6094();

    *&aBlock = v22;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v84 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v85 = *(v22 + v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v84) = v85;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = sub_1D2A4486C(0, v85[2] + 1, 1, v85);
      *(v22 + v84) = v85;
    }

    v88 = v85[2];
    v87 = v85[3];
    if (v88 >= v87 >> 1)
    {
      v85 = sub_1D2A4486C((v87 > 1), v88 + 1, 1, v85);
    }

    v85[2] = v88 + 1;
    v89 = &v85[2 * v88];
    v89[4] = sub_1D2A47D3C;
    v89[5] = v83;
    *(v22 + v84) = v85;
    swift_endAccess();
    *&aBlock = v22;
    swift_getKeyPath();
    sub_1D2AC60A4();

LABEL_36:
    v90 = (v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v91 = *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v92 = *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
    *(v22 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData) = xmmword_1D2AC9FC0;
    sub_1D2A47930(v91, v92);
    v93 = *v90;
    v94 = v90[1];
    v95 = swift_allocObject();
    *(v95 + 16) = v93;
    *(v95 + 24) = v94;
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    v97[2] = v96;
    v97[3] = sub_1D2A5764C;
    v97[4] = 0;
    v97[5] = sub_1D2A47998;
    v97[6] = v95;
    swift_getKeyPath();
    *&aBlock = v22;
    sub_1D2A479A0(v93, v94);
    sub_1D2A479A0(v93, v94);
    sub_1D2A479A0(v93, v94);

    sub_1D2AC6094();

    v98 = *(v22 + v141);
    if (v98)
    {
      v145 = sub_1D2A5764C;
      v146 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v143 = sub_1D2A44320;
      v144 = &block_descriptor_412;
      v99 = _Block_copy(&aBlock);
      v100 = v98;

      v101 = [v100 remoteObjectProxyWithErrorHandler_];
      _Block_release(v99);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v147, v148);
      sub_1D2A206F8(v148, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v102 = v147[0];
      if (v147[0])
      {
        if (v94 >> 60 == 15)
        {
          v103 = 0;
        }

        else
        {
          v103 = sub_1D2AC5F14();
        }

        [v102 setRecipeData_];

LABEL_53:
        sub_1D2A47930(v93, v94);
        sub_1D2A47930(v93, v94);
        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v104 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D2AC63B4();
      __swift_project_value_buffer(v105, qword_1EC7040C0);
      v106 = v104;
      v107 = sub_1D2AC6394();
      v108 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v109 = 138412290;
        v111 = v104;
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v109 + 4) = v112;
        *v110 = v112;
        _os_log_impl(&dword_1D2A17000, v107, v108, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v109, 0xCu);
        sub_1D2A2E61C(v110, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v110, -1, -1);
        MEMORY[0x1D38A8460](v109, -1, -1);
      }
    }

    v113 = swift_allocObject();
    *(v113 + 16) = sub_1D2A2E6B4;
    *(v113 + 24) = v97;
    swift_getKeyPath();
    *&aBlock = v22;

    sub_1D2AC6094();

    *&aBlock = v22;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v114 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v115 = *(v22 + v114);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v114) = v115;
    if ((v116 & 1) == 0)
    {
      v115 = sub_1D2A4486C(0, v115[2] + 1, 1, v115);
      *(v22 + v114) = v115;
    }

    v118 = v115[2];
    v117 = v115[3];
    if (v118 >= v117 >> 1)
    {
      v115 = sub_1D2A4486C((v117 > 1), v118 + 1, 1, v115);
    }

    v115[2] = v118 + 1;
    v119 = &v115[2 * v118];
    v119[4] = sub_1D2A47D3C;
    v119[5] = v113;
    *(v22 + v114) = v115;
    swift_endAccess();
    *&aBlock = v22;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_53;
  }

  v3 = v2;
  v4 = [v3 promptElements];
  sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
  v5 = sub_1D2AC6D34();

  if (v5 >> 62)
  {
    v6 = sub_1D2AC7024();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    v35 = [v3 additionalMetadata];
    if (!v35)
    {

      return;
    }

    v36 = v35;
    v37 = sub_1D2AC5F24();
    v39 = v38;

    v40 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v41 = (v40 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v42 = *(v40 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData);
    v43 = *(v40 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_recipeData + 8);
    *v41 = v37;
    v41[1] = v39;
    sub_1D2A479B4(v37, v39);
    v139 = v37;
    v140 = v39;
    sub_1D2A479B4(v37, v39);
    sub_1D2A47930(v42, v43);
    v44 = *v41;
    v45 = v41[1];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = sub_1D2A5764C;
    v48[4] = 0;
    v48[5] = sub_1D2A47D40;
    v48[6] = v46;
    swift_getKeyPath();
    *&aBlock = v40;
    sub_1D2A479A0(v44, v45);
    sub_1D2A479A0(v44, v45);
    sub_1D2A479A0(v44, v45);
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v49 = *(v40 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    v138 = v3;
    if (v49)
    {
      v145 = sub_1D2A5764C;
      v146 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v143 = sub_1D2A44320;
      v144 = &block_descriptor_428;
      v50 = _Block_copy(&aBlock);
      v51 = v49;

      v52 = [v51 remoteObjectProxyWithErrorHandler_];
      _Block_release(v50);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v147, v148);
      sub_1D2A206F8(v148, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v53 = v147[0];
      if (v147[0])
      {
        if (v45 >> 60 == 15)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_1D2AC5F14();
        }

        [v53 setRecipeData_];

        sub_1D2A47930(v44, v45);
        sub_1D2A47930(v44, v45);
        v137 = v139;
        v136 = v39;
        sub_1D2A47944(v139, v39);

LABEL_66:
        sub_1D2A47944(v137, v136);
        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v120 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v121 = sub_1D2AC63B4();
      __swift_project_value_buffer(v121, qword_1EC7040C0);
      v122 = v120;
      v123 = sub_1D2AC6394();
      v124 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v125 = 138412290;
        v127 = v120;
        v128 = _swift_stdlib_bridgeErrorToNSError();
        *(v125 + 4) = v128;
        *v126 = v128;
        _os_log_impl(&dword_1D2A17000, v123, v124, "Could not send recipe data to remote view: %@. May not be an error if the connection is not established yet, will retry.", v125, 0xCu);
        sub_1D2A2E61C(v126, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v126, -1, -1);
        MEMORY[0x1D38A8460](v125, -1, -1);
      }
    }

    v129 = swift_allocObject();
    *(v129 + 16) = sub_1D2A2E6B4;
    *(v129 + 24) = v48;
    swift_getKeyPath();
    *&aBlock = v40;

    sub_1D2AC6094();

    *&aBlock = v40;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v130 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v131 = *(v40 + v130);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + v130) = v131;
    if ((v132 & 1) == 0)
    {
      v131 = sub_1D2A4486C(0, v131[2] + 1, 1, v131);
      *(v40 + v130) = v131;
    }

    v134 = v131[2];
    v133 = v131[3];
    if (v134 >= v133 >> 1)
    {
      v131 = sub_1D2A4486C((v133 > 1), v134 + 1, 1, v131);
    }

    v131[2] = v134 + 1;
    v135 = &v131[2 * v134];
    v135[4] = sub_1D2A47D3C;
    v135[5] = v129;
    *(v40 + v130) = v131;
    swift_endAccess();
    *&aBlock = v40;
    swift_getKeyPath();
    sub_1D2AC60A4();

    sub_1D2A47930(v44, v45);
    sub_1D2A47930(v44, v45);
    v137 = v139;
    v136 = v140;
    sub_1D2A47944(v139, v140);

    goto LABEL_66;
  }

  v7 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v8 = [v3 promptElements];
  v9 = sub_1D2AC6D34();

  v10 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  v11 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
  *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v9;

  v12 = *(v7 + v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_1D2A575AC;
  v15[4] = 0;
  v15[5] = sub_1D2A47D50;
  v15[6] = v13;
  swift_getKeyPath();
  *&aBlock = v7;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v16 = *(v7 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v16)
  {
    v145 = sub_1D2A575AC;
    v146 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v143 = sub_1D2A44320;
    v144 = &block_descriptor_444;
    v17 = _Block_copy(&aBlock);
    v18 = v16;

    v19 = [v18 remoteObjectProxyWithErrorHandler_];
    _Block_release(v17);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(v147, v148);
    sub_1D2A206F8(v148, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v20 = v147[0];
    if (v147[0])
    {
      v21 = sub_1D2AC6D24();
      [v20 setPromptElements_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v55 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v56 = sub_1D2AC63B4();
    __swift_project_value_buffer(v56, qword_1EC7040C0);
    v57 = v55;
    v58 = sub_1D2AC6394();
    v59 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v3;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = v55;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&dword_1D2A17000, v58, v59, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v61, 0xCu);
      sub_1D2A2E61C(v62, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v62, -1, -1);
      v65 = v61;
      v3 = v60;
      MEMORY[0x1D38A8460](v65, -1, -1);
    }
  }

  v66 = swift_allocObject();
  *(v66 + 16) = sub_1D2A2E6B4;
  *(v66 + 24) = v15;
  swift_getKeyPath();
  *&aBlock = v7;

  sub_1D2AC6094();

  *&aBlock = v7;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v67 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v68 = *(v7 + v67);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + v67) = v68;
  v70 = v3;
  if ((v69 & 1) == 0)
  {
    v68 = sub_1D2A4486C(0, v68[2] + 1, 1, v68);
    *(v7 + v67) = v68;
  }

  v72 = v68[2];
  v71 = v68[3];
  if (v72 >= v71 >> 1)
  {
    v68 = sub_1D2A4486C((v71 > 1), v72 + 1, 1, v68);
  }

  v68[2] = v72 + 1;
  v73 = &v68[2 * v72];
  v73[4] = sub_1D2A47D3C;
  v73[5] = v66;
  *(v7 + v67) = v68;
  swift_endAccess();
  *&aBlock = v7;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t (*sub_1D2A36BF4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A36C58;
}

__n128 sub_1D2A36C70@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  swift_beginAccess();
  *a1 = *v3;
  result = *(v3 + 8);
  *(a1 + 8) = result;
  return result;
}

void sub_1D2A36CC8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio);
  swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  v6 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v7 = v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = sub_1D2A576E0;
  v10[4] = 0;
  v10[5] = sub_1D2A2DFB8;
  v10[6] = v8;
  swift_getKeyPath();
  *&v33 = v6;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v11 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v11)
  {
    v36 = sub_1D2A576E0;
    v37 = 0;
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 1107296256;
    v34 = sub_1D2A44320;
    v35 = &block_descriptor_72;
    v12 = _Block_copy(&v33);
    v13 = v11;

    v14 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v12);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v38, v39);
    sub_1D2A206F8(v39, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v15 = v38;
    if (v38)
    {
      sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
      v16 = sub_1D2AC6F84();
      [v15 setPreviewAspectRatio_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v17 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2AC63B4();
    __swift_project_value_buffer(v18, qword_1EC7040C0);
    v19 = v17;
    v20 = sub_1D2AC6394();
    v21 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v17;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
      sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v22, -1, -1);
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D2A2E6B4;
  *(v26 + 24) = v10;
  swift_getKeyPath();
  *&v33 = v6;

  sub_1D2AC6094();

  *&v33 = v6;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v28 = *(v6 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
    *(v6 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v32 = &v28[2 * v31];
  v32[4] = sub_1D2A47D3C;
  v32[5] = v26;
  *(v6 + v27) = v28;
  swift_endAccess();
  *&v33 = v6;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

void (*sub_1D2A372A4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A3732C;
}

void sub_1D2A3732C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = (v4 + v3[15]);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_previewAspectRatio;
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = v9;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = sub_1D2A576E0;
    v13[4] = 0;
    v13[5] = sub_1D2A2E6C0;
    v13[6] = v11;
    swift_getKeyPath();
    *v3 = v5;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v14 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v14)
    {
      v3[4] = sub_1D2A576E0;
      v3[5] = 0;
      *v3 = MEMORY[0x1E69E9820];
      v3[1] = 1107296256;
      v3[2] = sub_1D2A44320;
      v3[3] = &block_descriptor_88;
      v15 = _Block_copy(v3);
      v16 = v3[5];
      v17 = v14;

      v18 = [v17 remoteObjectProxyWithErrorHandler_];
      _Block_release(v15);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v3 + 5, v3 + 3);
      sub_1D2A206F8(v3 + 3, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v19 = v3[10];
      if (v19)
      {
        sub_1D2A20764(0, &qword_1EC7037F8, 0x1E696AD98);
        v20 = sub_1D2AC6F84();
        [v19 setPreviewAspectRatio_];

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v21 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v22 = sub_1D2AC63B4();
      __swift_project_value_buffer(v22, qword_1EC7040C0);
      v23 = v21;
      v24 = sub_1D2AC6394();
      v25 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1D2A17000, v24, v25, "Could not send display aspect ratio to remote view: %@. May not be an error if the connection is not established yet, will retry.", v26, 0xCu);
        sub_1D2A2E61C(v27, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v27, -1, -1);
        MEMORY[0x1D38A8460](v26, -1, -1);
      }
    }

    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D2A2E6B4;
    *(v30 + 24) = v13;
    swift_getKeyPath();
    *v3 = v5;

    sub_1D2AC6094();

    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v31 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v32 = *(v5 + v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v31) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1D2A4486C(0, v32[2] + 1, 1, v32);
      *(v5 + v31) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1D2A4486C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_1D2A47D3C;
    v36[5] = v30;
    *(v5 + v31) = v32;
    swift_endAccess();
    *v3 = v5;
    swift_getKeyPath();
    sub_1D2AC60A4();

    goto LABEL_15;
  }

LABEL_16:

  free(v3);
}

uint64_t sub_1D2A3791C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  return a6();
}

void sub_1D2A3798C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6)
  {
    v7 = sub_1D2AC6DD4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D2AC6DA4();
    v8 = v6;
    v9 = v0;
    v10 = sub_1D2AC6D94();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v8;
    sub_1D2A2F088(0, 0, v4, &unk_1D2ACA5A8, v11);
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
    v8 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
    *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  }
}

uint64_t sub_1D2A37B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[28] = a4;
  v5[29] = sub_1D2AC6DA4();
  v5[30] = sub_1D2AC6D94();
  v7 = swift_task_alloc();
  v5[31] = v7;
  *v7 = v5;
  v7[1] = sub_1D2A37BC4;

  return sub_1D2A470E4(a5);
}

uint64_t sub_1D2A37BC4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 256) = a1;

  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A37D08, v6, v5);
}

uint64_t sub_1D2A37D08()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[28];

  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
  if (v1)
  {
    v6 = v0[32];
    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = v6;
    v7 = v6;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_1D2A57784;
    v10[4] = 0;
    v10[5] = sub_1D2A2E354;
    v10[6] = v8;
    swift_getKeyPath();
    v0[23] = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
    v11 = v7;

    sub_1D2AC6094();

    v12 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v12)
    {
      v0[6] = sub_1D2A57784;
      v0[7] = 0;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D2A44320;
      v0[5] = &block_descriptor_375;
      v13 = _Block_copy(v0 + 2);
      v14 = v0[7];
      v15 = v12;

      v16 = [v15 remoteObjectProxyWithErrorHandler_];
      _Block_release(v13);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(v0 + 6, v0 + 4);
      sub_1D2A206F8(v0 + 4, v0 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v17 = v0[24];
      if (v17)
      {
        [v0[24] setPreGeneratedImage_];

        goto LABEL_16;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v18 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v19 = sub_1D2AC63B4();
      __swift_project_value_buffer(v19, qword_1EC7040C0);
      v20 = v18;
      v21 = sub_1D2AC6394();
      v22 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v11;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v18;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1D2A17000, v21, v22, "Could not send pregenerated image to remote view: %@. May not be an error if the connection is not established yet, will retry.", v24, 0xCu);
        sub_1D2A2E61C(v25, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v25, -1, -1);
        v28 = v24;
        v11 = v23;
        MEMORY[0x1D38A8460](v28, -1, -1);
      }
    }

    v38 = v11;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1D2A2E6B4;
    *(v29 + 24) = v10;
    swift_getKeyPath();
    v0[25] = v4;

    sub_1D2AC6094();

    v0[26] = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v30 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v31 = *(v4 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v30) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1D2A4486C(0, v31[2] + 1, 1, v31);
      *(v4 + v30) = v31;
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1D2A4486C((v33 > 1), v34 + 1, 1, v31);
    }

    v31[2] = v34 + 1;
    v35 = &v31[2 * v34];
    v35[4] = sub_1D2A47D3C;
    v35[5] = v29;
    *(v4 + v30) = v31;
    swift_endAccess();
    v0[27] = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
  }

LABEL_16:
  v36 = v0[1];

  return v36();
}

void *sub_1D2A38324()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D2A38390(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

void (*sub_1D2A38404(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7044B0, &qword_1D2ACA040) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_1D2A384D0;
}

void sub_1D2A384D0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *&v4[v3[5]];
    if (v5)
    {
      v6 = v3[4];
      v7 = sub_1D2AC6DD4();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      sub_1D2AC6DA4();
      v8 = v5;
      v9 = v4;
      v10 = sub_1D2AC6D94();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v8;
      sub_1D2A2F088(0, 0, v6, &unk_1D2ACA050, v11);
    }

    else
    {
      v13 = *&v4[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
      v14 = *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage);
      *(v13 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_pregeneratedImage) = 0;
    }
  }

  free(v3[4]);

  free(v3);
}

uint64_t sub_1D2A3862C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1D2A38680(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  swift_beginAccess();
  *(v1 + v3) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v2;
  if (v2 != 3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_1D2A577B4;
    v7[4] = 0;
    v7[5] = sub_1D2A2DF40;
    v7[6] = v5;
    swift_getKeyPath();
    *&aBlock = v4;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v8 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v8)
    {
      v33 = sub_1D2A577B4;
      v34 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D2A44320;
      v32 = &block_descriptor_108;
      v9 = _Block_copy(&aBlock);
      v10 = v8;

      v11 = [v10 remoteObjectProxyWithErrorHandler_];
      _Block_release(v9);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v35, v36);
      sub_1D2A206F8(v36, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v12 = v35;
      if (v35)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v12 setImageImportPolicy_];

        return;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v14 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D2AC63B4();
      __swift_project_value_buffer(v15, qword_1EC7040C0);
      v16 = v14;
      v17 = sub_1D2AC6394();
      v18 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        v21 = v14;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_1D2A17000, v17, v18, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v19, 0xCu);
        sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v20, -1, -1);
        MEMORY[0x1D38A8460](v19, -1, -1);
      }
    }

    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D2A2E6B4;
    *(v23 + 24) = v7;
    swift_getKeyPath();
    *&aBlock = v4;

    sub_1D2AC6094();

    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v24 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    v25 = *(v4 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D2A4486C(0, v25[2] + 1, 1, v25);
      *(v4 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1D2A4486C((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1D2A47D3C;
    v29[5] = v23;
    *(v4 + v24) = v25;
    swift_endAccess();
    *&aBlock = v4;
    swift_getKeyPath();
    sub_1D2AC60A4();
  }
}

void (*sub_1D2A38C38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy;
  *(v3 + 112) = v1;
  *(v3 + 120) = v4;
  swift_beginAccess();
  return sub_1D2A38CC0;
}

void sub_1D2A38CC0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[14];
    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v6 = *(v4 + v3[15]);
    *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_imageImportPolicy) = v6;
    if (v6 != 3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = sub_1D2A577B4;
      v9[4] = 0;
      v9[5] = sub_1D2A2E728;
      v9[6] = v7;
      swift_getKeyPath();
      *v3 = v5;
      sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

      sub_1D2AC6094();

      v10 = *(v5 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
      if (v10)
      {
        v3[4] = sub_1D2A577B4;
        v3[5] = 0;
        *v3 = MEMORY[0x1E69E9820];
        v3[1] = 1107296256;
        v3[2] = sub_1D2A44320;
        v3[3] = &block_descriptor_124;
        v11 = _Block_copy(v3);
        v12 = v3[5];
        v13 = v10;

        v14 = [v13 remoteObjectProxyWithErrorHandler_];
        _Block_release(v11);

        sub_1D2AC6FF4();
        swift_unknownObjectRelease();
        sub_1D2A206F8(v3 + 5, v3 + 3);
        sub_1D2A206F8(v3 + 3, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
        swift_dynamicCast();
        v15 = v3[10];
        if (v15)
        {
          v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [v15 setImageImportPolicy_];

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        sub_1D2A2DF64();
        v17 = swift_allocError();
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v18 = sub_1D2AC63B4();
        __swift_project_value_buffer(v18, qword_1EC7040C0);
        v19 = v17;
        v20 = sub_1D2AC6394();
        v21 = sub_1D2AC6EB4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          v24 = v17;
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 4) = v25;
          *v23 = v25;
          _os_log_impl(&dword_1D2A17000, v20, v21, "Could not send image import policy to remote view: %@. May not be an error if the connection is not established yet, will retry.", v22, 0xCu);
          sub_1D2A2E61C(v23, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v23, -1, -1);
          MEMORY[0x1D38A8460](v22, -1, -1);
        }
      }

      v26 = swift_allocObject();
      *(v26 + 16) = sub_1D2A2E6B4;
      *(v26 + 24) = v9;
      swift_getKeyPath();
      *v3 = v5;

      sub_1D2AC6094();

      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60B4();

      v27 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
      swift_beginAccess();
      v28 = *(v5 + v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v27) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1D2A4486C(0, v28[2] + 1, 1, v28);
        *(v5 + v27) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1D2A4486C((v30 > 1), v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      v32 = &v28[2 * v31];
      v32[4] = sub_1D2A47D3C;
      v32[5] = v26;
      *(v5 + v27) = v28;
      swift_endAccess();
      *v3 = v5;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_16;
    }
  }

LABEL_17:

  free(v3);
}

uint64_t sub_1D2A392A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *a2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  result = swift_beginAccess();
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v10 = *(v7 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  return result;
}

__n128 sub_1D2A39340@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1D2A39398(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  swift_beginAccess();
  *(v3 + 32) = *(a1 + 32);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  v5 = *(v3 + 32);
  v6 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
  result = *v3;
  v8 = *(v3 + 16);
  *v6 = *v3;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

void (*sub_1D2A39424(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D2A394AC;
}

void sub_1D2A394AC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    v6 = *(v5 + 32);
    v7 = *(v4 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager) + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_responsibleAuditToken;
    v8 = *(v5 + 16);
    *v7 = *v5;
    *(v7 + 16) = v8;
    *(v7 + 32) = v6;
  }

  free(v3);
}

uint64_t sub_1D2A39524(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;

  return a6(v11);
}

void sub_1D2A3959C()
{
  v1 = type metadata accessor for ImagePlaygroundConcept(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v7 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    *&aBlock = MEMORY[0x1E69E7CC0];

    sub_1D2AC7104();
    v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D2A47698(v11, v5, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2A49C68(0);
      sub_1D2A46794(v5, type metadata accessor for ImagePlaygroundConcept);
      sub_1D2AC70E4();
      v13 = *(aBlock + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v11 += v12;
      --v9;
    }

    while (v9);

    v10 = aBlock;
  }

  v14 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements;
  v15 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements);
  *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_promptElements) = v10;

  v16 = *(v6 + v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_1D2A575AC;
  v19[4] = 0;
  v19[5] = sub_1D2A2E0A4;
  v19[6] = v17;
  swift_getKeyPath();
  *&aBlock = v6;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  swift_bridgeObjectRetain_n();

  sub_1D2AC6094();

  v20 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v20)
  {
    v47 = sub_1D2A575AC;
    v48 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v45 = sub_1D2A44320;
    v46 = &block_descriptor_349;
    v21 = _Block_copy(&aBlock);
    v22 = v20;

    v23 = [v22 remoteObjectProxyWithErrorHandler_];
    _Block_release(v21);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v49, v50);
    sub_1D2A206F8(v50, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v24 = v49;
    if (v49)
    {
      sub_1D2A20764(0, &qword_1EC703B30, &off_1E84033C0);
      v25 = sub_1D2AC6D24();
      [v24 setPromptElements_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v26 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D2AC63B4();
    __swift_project_value_buffer(v27, qword_1EC7040C0);
    v28 = v26;
    v29 = sub_1D2AC6394();
    v30 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v17;
      v33 = v32;
      *v31 = 138412290;
      v34 = v26;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1D2A17000, v29, v30, "Could not send prompt elements to remote view: %@. May not be an error if the connection is not established yet, will retry.", v31, 0xCu);
      sub_1D2A2E61C(v33, &unk_1EC704400, &unk_1D2ADA9A0);
      v17 = v43;
      MEMORY[0x1D38A8460](v33, -1, -1);
      MEMORY[0x1D38A8460](v31, -1, -1);
    }
  }

  v43 = v17;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1D2A2E6B4;
  *(v36 + 24) = v19;
  swift_getKeyPath();
  *&aBlock = v6;

  sub_1D2AC6094();

  *&aBlock = v6;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v37 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v38 = *(v6 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + v37) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_1D2A4486C(0, v38[2] + 1, 1, v38);
    *(v6 + v37) = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1D2A4486C((v40 > 1), v41 + 1, 1, v38);
  }

  v38[2] = v41 + 1;
  v42 = &v38[2 * v41];
  v42[4] = sub_1D2A47D3C;
  v42[5] = v36;
  *(v6 + v37) = v38;
  swift_endAccess();
  *&aBlock = v6;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A39CEC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1D2A39D50(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;

  return a3(v8);
}

uint64_t (*sub_1D2A39DB0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2A39E14;
}

uint64_t sub_1D2A39E2C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_1D2A39E70()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  if (*(v0 + v1) <= 1u)
  {
    if (*(v0 + v1))
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v0 + v1);
  }

  v2 = sub_1D2AC7354();

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + v1);
    if (v4 != 2)
    {
      v3 = sub_1D2AC7354();
LABEL_9:

      return v3 & 1;
    }

LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = 1;
  return v3 & 1;
}

id ImagePlaygroundViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ImagePlaygroundViewController.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for ImagePlaygroundViewController(0));
  v3 = sub_1D2A3A180(1);
  swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1D2A3A180(int a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController___promptElements] = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  *&v2[v8] = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  v9 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v42[2] = xmmword_1EE089380;
  v42[3] = unk_1EE089390;
  v42[4] = xmmword_1EE0893A0;
  v42[5] = unk_1EE0893B0;
  v42[0] = xmmword_1EE089360;
  v42[1] = xmmword_1EE089370;
  memmove(&v2[v9], &xmmword_1EE089360, 0x60uLL);
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets] = v7;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch] = 0;
  v10 = &v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle];
  *v10 = 0;
  v10[1] = 0;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe] = 0;
  v11 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  sub_1D2A2D244(v42, v41);
  if (qword_1EE089688 != -1)
  {
    swift_once();
  }

  v12 = &v2[v11];
  v13 = *dbl_1EE089698;
  *v12 = qword_1EE089690;
  *(v12 + 8) = v13;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage] = 0;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy] = 0;
  v14 = &v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v16 = type metadata accessor for GPImageEditionView(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v2[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts] = v7;
  v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] = 0;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayPresentationDuration] = 0x4008000000000000;
  v19 = type metadata accessor for GPHostSideConnectionManager(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1D2A5FB60(0, 0, 0, 0);
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager] = v22;
  v23 = type metadata accessor for GPImageEditionView.ViewModel(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  *(v26 + 32) = 0;
  *(v26 + 24) = 0;

  sub_1D2AC60C4();
  v27 = *(v26 + 32);

  *(v26 + 32) = v22;
  *(v26 + 40) = v39 & 1;
  *&v2[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel] = v26;
  v17(v6, 1, 1, v16);
  swift_beginAccess();
  sub_1D2A44E34(v6, &v2[v15]);
  swift_endAccess();
  v28 = *&v2[v18];
  *&v2[v18] = 0;

  v29 = type metadata accessor for ImagePlaygroundViewController(0);
  v40.receiver = v2;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v31 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager;
  *(*(*&v30[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager] + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 40) = &off_1F4DFB4F0;
  swift_unknownObjectWeakAssign();
  *(*(*&v30[v31] + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject) + 24) = &off_1F4DFB520;
  swift_unknownObjectWeakAssign();
  v32 = *&v30[v31];
  v33 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  swift_beginAccess();
  v34 = *&v30[v33];
  v35 = v30;

  sub_1D2A56C24(v36);

  return v35;
}

void sub_1D2A3A634()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v1 + 40) == 1)
  {
    *(v1 + 40) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6084();
  }
}

uint64_t sub_1D2A3A764(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3A8A8()
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    return 2;
  }

  v4 = [v1 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    return 2;
  }

  v6 = type metadata accessor for ImagePlaygroundViewController(0);
  v10.receiver = v0;
  v10.super_class = v6;
  if (!objc_msgSendSuper2(&v10, sel_modalPresentationStyle))
  {
    return 1;
  }

  v9.receiver = v0;
  v9.super_class = v6;
  if (objc_msgSendSuper2(&v9, sel_modalPresentationStyle) == 5)
  {
    return 1;
  }

  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_modalPresentationStyle);
}

uint64_t sub_1D2A3AC14()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 26);
}

uint64_t sub_1D2A3ADB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v4 = *(*(v38 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v38);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for GPImageEditionView(0);
  v40 = *(v10 - 1);
  v11 = *(v40 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager];
  v17 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel];
  v18 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  v19 = v0[v18];
  v36 = v0;
  v37 = v19;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v10[5];
  v22 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_1D2A2E5B4(v9, v7, &unk_1EC7043C0, &qword_1D2ACA0B0);

  sub_1D2AC6A14();
  sub_1D2A2E61C(v9, &unk_1EC7043C0, &qword_1D2ACA0B0);
  v23 = &v15[v10[9]];
  v24 = &v15[v10[10]];
  *&v15[v10[6]] = v16;
  v25 = v10[7];
  type metadata accessor for GPImageEditionView.ViewModel(0);
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

  sub_1D2AC6AD4();
  v15[v10[8]] = v37;
  *v15 = 0;
  *v23 = sub_1D2A44E2C;
  v23[1] = v20;
  sub_1D2A20764(0, &qword_1EC703B48, 0x1E69DCF38);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v27 = [ObjCClassFromMetadata appearance];
  [v27 _setUseGlass_];

  sub_1D2A47698(v15, v39, type metadata accessor for GPImageEditionView);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BE0, &qword_1D2ACA0B8));
  v29 = sub_1D2AC6704();
  v30 = v41;
  sub_1D2A47698(v15, v41, type metadata accessor for GPImageEditionView);
  (*(v40 + 56))(v30, 0, 1, v10);
  v31 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v32 = v36;
  swift_beginAccess();
  sub_1D2A44E34(v30, &v32[v31]);
  swift_endAccess();
  v33 = *&v32[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
  *&v32[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController] = v29;
  v34 = v29;

  [v32 gp:v34 addChildViewController:?];
  return sub_1D2A46794(v15, type metadata accessor for GPImageEditionView);
}

void sub_1D2A3B260()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _endDelayingPresentation];
    v1[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] = 0;
  }
}

id sub_1D2A3B310()
{
  v1 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation;
  if ((v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation] & 1) == 0)
  {
    aBlock[4] = sub_1D2A3B454;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D2A3B45C;
    aBlock[3] = &block_descriptor_309;
    v2 = _Block_copy(aBlock);
    [v0 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v2);
    v0[v1] = 1;
    [v0 loadViewIfNeeded];
    v3 = *&v0[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v4 view];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  return objc_msgSendSuper2(&v7, sel_loadViewIfNeeded);
}

uint64_t sub_1D2A3B45C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

id sub_1D2A3B4F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ImagePlaygroundViewController(0);
  v16.receiver = v1;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, sel_viewDidDisappear_, a1 & 1);
  v8 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController;
  v9 = *&v1[OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  [v10 willMoveToParentViewController_];
  result = [v10 view];
  if (result)
  {
    v12 = result;
    [result removeFromSuperview];

    [v10 removeFromParentViewController];
    [v1 removeChildViewController_];

    v9 = *&v1[v8];
LABEL_4:
    *&v1[v8] = 0;

    v13 = type metadata accessor for GPImageEditionView(0);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
    swift_beginAccess();
    sub_1D2A44E34(v6, &v1[v14]);
    swift_endAccess();
    return [v1 setView_];
  }

  __break(1u);
  return result;
}

id ImagePlaygroundViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D2AC6BF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ImagePlaygroundViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImagePlaygroundViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *ImagePlaygroundViewController.__allocating_init(sceneIdentifier:ready:)(char *a1, int a2)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for ImagePlaygroundViewController(0));
  v5 = sub_1D2A3A180(a2);
  v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier;
  swift_beginAccess();
  v5[v6] = v3;
  return v5;
}

Swift::Void __swiftcall ImagePlaygroundViewController.didStageAssetWithIdentifier(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2AC6BF4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A5788C;
  v6[4] = 0;
  v6[5] = sub_1D2A44EA4;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  v7 = v3;

  sub_1D2AC6094();

  v8 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v35 = sub_1D2A5788C;
    v36 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_1D2A44320;
    v34 = &block_descriptor_150;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v37, v38);
    sub_1D2A206F8(v38, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v37;
    if (v37)
    {
      [v37 didStageAssetWithIdentifier_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v7;
      v20 = swift_slowAlloc();
      *v18 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send staged asset identifier to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
      v23 = v20;
      v7 = v19;
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D2A2E6B4;
  *(v24 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v25 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v26 = *(v2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v25) = v26;
  v28 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1D2A4486C(0, v26[2] + 1, 1, v26);
    *(v2 + v25) = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v26);
  }

  v26[2] = v30 + 1;
  v31 = &v26[2 * v30];
  v31[4] = sub_1D2A47D3C;
  v31[5] = v24;
  *(v2 + v25) = v26;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

Swift::Void __swiftcall ImagePlaygroundViewController.didUnstageAssetWithIdentifier(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2AC6BF4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A57974;
  v6[4] = 0;
  v6[5] = sub_1D2A44EAC;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  v7 = v3;

  sub_1D2AC6094();

  v8 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v35 = sub_1D2A57974;
    v36 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_1D2A44320;
    v34 = &block_descriptor_165;
    v9 = _Block_copy(&aBlock);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v37, v38);
    sub_1D2A206F8(v38, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v37;
    if (v37)
    {
      [v37 didUnstageAssetWithIdentifier_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = v7;
      v20 = swift_slowAlloc();
      *v18 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send unstaged asset identifier to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v20, &unk_1EC704400, &unk_1D2ADA9A0);
      v23 = v20;
      v7 = v19;
      MEMORY[0x1D38A8460](v23, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D2A2E6B4;
  *(v24 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v25 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v26 = *(v2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v25) = v26;
  v28 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1D2A4486C(0, v26[2] + 1, 1, v26);
    *(v2 + v25) = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = sub_1D2A4486C((v29 > 1), v30 + 1, 1, v26);
  }

  v26[2] = v30 + 1;
  v31 = &v26[2 * v30];
  v31[4] = sub_1D2A47D3C;
  v31[5] = v24;
  *(v2 + v25) = v26;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

Swift::Void __swiftcall ImagePlaygroundViewController.didDismissPickerWithStagedAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
  v3 = sub_1D2A3CBB4(a1._rawValue);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = sub_1D2A578BC;
  v6[4] = 0;
  v6[5] = sub_1D2A44EB4;
  v6[6] = v4;
  swift_getKeyPath();
  *&aBlock = v2;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v7 = *(v2 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v7)
  {
    v32 = sub_1D2A578BC;
    v33 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_180;
    v8 = _Block_copy(&aBlock);
    v9 = v7;

    v10 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v11 = v34;
    if (v34)
    {
      sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
      v12 = sub_1D2AC6D24();
      [v11 didDismissPickerWithStagedAssets_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send dismissal of picker with staged asset identifiers to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v6;
  swift_getKeyPath();
  *&aBlock = v2;

  sub_1D2AC6094();

  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(v2 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(v2 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(v2 + v23) = v24;
  swift_endAccess();
  *&aBlock = v2;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A3CBB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D2AC7104();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_1D2AC6BF4();

      sub_1D2AC70E4();
      v7 = *(v8 + 16);
      sub_1D2AC7114();
      sub_1D2AC7124();
      sub_1D2AC70F4();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D2A3CC78()
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A3CCBC()
{
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](0);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A3CD0C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D2AC6494();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  isStackAllocationSafe = strlen(a1);
  v16 = isStackAllocationSafe + 1;
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
  }

  else
  {
    if (v16 < 0)
    {
      __break(1u);
    }

    if (v16 <= 1024)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v21 = swift_slowAlloc();
    sub_1D2A3CF40(v21, a1, v16, a2, a3);
    result = MEMORY[0x1D38A8460](v21, -1, -1);
    goto LABEL_7;
  }

LABEL_4:
  v22[0] = a3;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1D2A3CF40(v22 - v17, a1, v16, a2, v12);
  if (v3)
  {
    result = swift_willThrow();
  }

  else
  {
    v19 = *(v8 + 32);
    v19(v14, v12, v7);
    result = (v19)(v22[0], v14, v7);
  }

LABEL_7:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2A3CF40@<X0>(char *a1@<X0>, const char *a2@<X2>, size_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v56 = a2;
  v57 = a3;
  v55 = a5;
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D2AC5E74();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2AC6494();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = sub_1D2AC5EF4();
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D2AC5D04();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1EC7035A0 == -1)
    {
LABEL_9:
      v33 = sub_1D2AC63B4();
      __swift_project_value_buffer(v33, qword_1EC7040C0);
      v34 = sub_1D2AC6394();
      v35 = sub_1D2AC6E94();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1D2A17000, v34, v35, "Could not get template", v36, 2u);
        MEMORY[0x1D38A8460](v36, -1, -1);
      }

      sub_1D2A46178();
      swift_allocError();
      result = swift_willThrow();
      goto LABEL_19;
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  strlcpy(a1, v56, v57);
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((mkstemps(a1, a4) & 0x80000000) == 0)
  {
    v27 = sub_1D2AC63F4();
    if ((v27 & 0x100000000) != 0)
    {
      LODWORD(v58[0]) = v27;
      v38 = v27;
      sub_1D2A461E8();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v39 = v38;
    }

    else
    {
      v28 = v55;
      MEMORY[0x1D38A6880](a1);
      v30 = v53;
      v29 = v54;
      (*(v53 + 16))(v14, v28, v54);
      (*(v50 + 104))(v10, *MEMORY[0x1E6968F68], v7);
      sub_1D2A3D5DC(v14, v10, v18);
      v31 = v51;
      v32 = v52;
      if ((*(v51 + 48))(v18, 1, v52) == 1)
      {
        sub_1D2A2E61C(v18, &qword_1EC7039C8, &unk_1D2AC9900);
        sub_1D2A46178();
        swift_allocError();
        swift_willThrow();
LABEL_18:
        result = (*(v30 + 8))(v28, v29);
        goto LABEL_19;
      }

      v40 = v49;
      (*(v31 + 32))();
      v41 = [objc_opt_self() defaultManager];
      v42 = sub_1D2AC5EA4();
      v58[0] = 0;
      v43 = [v41 removeItemAtURL:v42 error:v58];

      if ((v43 & 1) == 0)
      {
        v46 = v58[0];
        sub_1D2AC5E64();

        swift_willThrow();
        (*(v31 + 8))(v40, v32);
        goto LABEL_18;
      }

      v44 = *(v31 + 8);
      v45 = v58[0];
      result = v44(v40, v32);
    }

LABEL_19:
    v47 = *MEMORY[0x1E69E9840];
    return result;
  }

  MEMORY[0x1D38A6810]();
  result = sub_1D2AC63C4();
  if ((result & 0x100000000) == 0)
  {
    LODWORD(v58[0]) = result;
    sub_1D2A48A1C(MEMORY[0x1E69E7CC0]);
    sub_1D2A44DA4(&qword_1EC703C20, MEMORY[0x1E6967EB8]);
    sub_1D2AC5E54();
    sub_1D2AC5CF4();
    (*(v23 + 8))(v26, v22);
    result = swift_willThrow();
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2A3D5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7039C8, &unk_1D2AC9900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = v26 - v7;
  v8 = sub_1D2AC5E74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2AC6494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  (*(v14 + 16))(v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = sub_1D2AC6CB4();
  if (v18)
  {
    v19 = *(v9 + 16);
    v26[1] = v17;
    v28 = v8;
    v19(v12, a2, v8);
    v20 = sub_1D2AC5EF4();
    v26[0] = a2;
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v27 = a1;
    v23 = v30;
    v22(v29, 1, 1, v20);
    sub_1D2AC5EE4();
    (*(v9 + 8))(v26[0], v28);
    (*(v14 + 8))(v27, v13);
    return (v22)(v23, 0, 1, v21);
  }

  else
  {
    (*(v9 + 8))(a2, v8);
    (*(v14 + 8))(a1, v13);
    v25 = sub_1D2AC5EF4();
    return (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  }
}

Swift::Void __swiftcall ImagePlaygroundViewController.editorDidGenerateAssets(_:)(Swift::OpaquePointer a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1D2A3D958();
}

void sub_1D2A3D958()
{
  v2 = sub_1D2AC5EF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v59 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  v16 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v17 = *(v0 + v16);
  if (!(v17 >> 62))
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if ((v17 & 0xC000000000000001) != 0)
    {

      v1 = MEMORY[0x1D38A74D0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v21 = sub_1D2AC63B4();
        __swift_project_value_buffer(v21, qword_1EC7040C0);
        (*(v3 + 16))(v7, v15, v2);
        v22 = v17;
        v23 = sub_1D2AC6394();
        v24 = sub_1D2AC6E94();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66[0] = v62;
          *v25 = 136315394;
          sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0]);
          LODWORD(v60) = v24;
          v26 = sub_1D2AC7324();
          v59 = v23;
          v28 = v27;
          v29 = *(v3 + 8);
          (v29)(v7, v2);
          v30 = sub_1D2ABAFCC(v26, v28, v66);

          *(v25 + 4) = v30;
          *(v25 + 12) = 2112;
          v31 = v17;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v25 + 14) = v32;
          v33 = v61;
          *v61 = v32;
          v34 = v59;
          _os_log_impl(&dword_1D2A17000, v59, v60, "Could not create temporary copy of %s: %@", v25, 0x16u);
          sub_1D2A2E61C(v33, &unk_1EC704400, &unk_1D2ADA9A0);
          MEMORY[0x1D38A8460](v33, -1, -1);
          v35 = v62;
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x1D38A8460](v35, -1, -1);
          v36 = v25;
          v37 = v29;
          MEMORY[0x1D38A8460](v36, -1, -1);
        }

        else
        {

          v37 = *(v3 + 8);
          (v37)(v7, v2);
        }

        v49 = v64;
        v50 = [Strong respondsToSelector_];
        v51 = v63;
        if (v50)
        {
          [swift_unknownObjectRetain() imagePlaygroundViewControllerDidCancel_];

          swift_unknownObjectRelease();
          if (v51)
          {
            goto LABEL_29;
          }
        }

        else
        {

          if (v51)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v1 = *(v17 + 32);
    }

    v18 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate;
    swift_beginAccess();
    if (*(v0 + v18))
    {
      [swift_unknownObjectRetain() imageEditionViewController:v0 didCreate:v1];
LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:

      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v64 = v0;
    v19 = [v1 imageURLWrapper];
    v20 = [v19 url];

    sub_1D2AC5EC4();
    v63 = sub_1D2AC5ED4();
    sub_1D2A2F3B0(v13);
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D2AC63B4();
    __swift_project_value_buffer(v38, qword_1EC7040C0);
    (*(v3 + 16))(v10, v13, v2);
    v39 = sub_1D2AC6394();
    v40 = sub_1D2AC6E74();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v60 = v41;
      v61 = swift_slowAlloc();
      v66[0] = v61;
      *v41 = 136315138;
      sub_1D2A44DA4(&qword_1EC703AA0, MEMORY[0x1E6968FB0]);
      LODWORD(v59) = v40;
      v42 = sub_1D2AC7324();
      v44 = v43;
      v62 = *(v3 + 8);
      (v62)(v10, v2);
      v45 = sub_1D2ABAFCC(v42, v44, v66);

      v46 = v60;
      *(v60 + 1) = v45;
      v47 = v46;
      _os_log_impl(&dword_1D2A17000, v39, v59, "Copied generated image to app sandbox at %s", v46, 0xCu);
      v48 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1D38A8460](v48, -1, -1);
      MEMORY[0x1D38A8460](v47, -1, -1);
    }

    else
    {

      v62 = *(v3 + 8);
      (v62)(v10, v2);
    }

    v52 = Strong;
    v53 = sub_1D2AC5EA4();
    v54 = v64;
    [v52 imagePlaygroundViewController:v64 didCreateImageAt:v53];

    if ([v52 respondsToSelector_])
    {
      v55 = *(v54 + v16);
      type metadata accessor for GPExportablePhotoAsset(0);

      v56 = sub_1D2AC6D24();

      [v52 imagePlaygroundViewController:v54 didSelectAssets:v56];
    }

    v57 = v13;
    v37 = v62;
    (v62)(v57, v2);
    if (v63)
    {
LABEL_29:
      sub_1D2AC5EB4();
      swift_unknownObjectRelease();

      (v37)(v15, v2);
      return;
    }

LABEL_24:
    (v37)(v15, v2);
    goto LABEL_8;
  }

  if (v17 < 0)
  {
    v58 = *(v0 + v16);
  }

  if (sub_1D2AC7024())
  {
    goto LABEL_3;
  }
}

Swift::Void __swiftcall ImagePlaygroundViewController.editorDidCancel(requiresShowingGrid:)(Swift::Bool requiresShowingGrid)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (requiresShowingGrid && [Strong respondsToSelector_])
    {
      if ([v5 respondsToSelector_])
      {
        [v5 imageGenerationViewControllerWantsToShowGrid_];
      }

      goto LABEL_28;
    }

    v6 = sub_1D2AC6064();
    if ([v5 respondsToSelector_] && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0) && (v8 = objc_msgSend(v7, sel_methodForSelector_, v6)) != 0)
    {
      v9 = v8;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v10 = sub_1D2AC63B4();
      __swift_project_value_buffer(v10, qword_1EC7040C0);
      v11 = sub_1D2AC6394();
      v12 = sub_1D2AC6E84();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "calling imageEditionViewControllerDidCancel";
    }

    else
    {
      v6 = sub_1D2AC6064();
      if (![v5 respondsToSelector_] || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0) || (v16 = objc_msgSend(v15, sel_methodForSelector_, v6)) == 0)
      {
        if (qword_1EC7035A0 != -1)
        {
          swift_once();
        }

        v18 = sub_1D2AC63B4();
        __swift_project_value_buffer(v18, qword_1EC7040C0);
        v19 = sub_1D2AC6394();
        v20 = sub_1D2AC6E84();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1D2A17000, v19, v20, "calling imagePlaygroundViewControllerDidCancel ", v21, 2u);
          MEMORY[0x1D38A8460](v21, -1, -1);
        }

        if ([v5 respondsToSelector_])
        {
          [v5 imagePlaygroundViewControllerDidCancel_];
        }

        goto LABEL_28;
      }

      v9 = v16;
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D2AC63B4();
      __swift_project_value_buffer(v17, qword_1EC7040C0);
      v11 = sub_1D2AC6394();
      v12 = sub_1D2AC6E84();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "calling imageGenerationViewControllerDidCancel ";
    }

    _os_log_impl(&dword_1D2A17000, v11, v12, v14, v13, 2u);
    MEMORY[0x1D38A8460](v13, -1, -1);
LABEL_21:

    v9(v5, v6, v2);
LABEL_28:
    swift_unknownObjectRelease();
  }

  v22 = (v2 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets);
  swift_beginAccess();
  v23 = *v22;
  *v22 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2A3E618(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 24) == (result & 1))
  {
    *(v2 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3E748(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 26) == (result & 1))
  {
    *(v2 + 26) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3E878(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (*(v2 + 27) == (result & 1))
  {
    *(v2 + 27) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6084();
  }

  return result;
}

void sub_1D2A3E9A8()
{
  type metadata accessor for GPExportablePhotoAsset(0);
  v1 = sub_1D2AC6D24();
  [v0 editorDidGenerateAssets_];
}

uint64_t sub_1D2A3EA28(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  v5 = *(v1 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  if (a1 >> 62)
  {
    result = sub_1D2AC7024();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((*(v5 + 25) ^ (result != 0)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

    sub_1D2AC6084();
  }

  else
  {
    *(v5 + 25) = result != 0;
  }

  return result;
}

uint64_t sub_1D2A3EBC4()
{
  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_viewModel);
  swift_getKeyPath();
  *&aBlock = v4;
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);

  sub_1D2AC6094();

  v5 = *(v4 + 25);

  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v52 = *(v0 + v6);
      }

      v8 = sub_1D2AC7024();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];

      p_aBlock = &aBlock;
      sub_1D2A2C9A8(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v11 = 0;
      v9 = aBlock;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38A74D0](v11, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = [v12 identifier];
        v15 = sub_1D2AC6C24();
        v17 = v16;

        *&aBlock = v9;
        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D2A2C9A8((v18 > 1), v19 + 1, 1);
          v9 = aBlock;
        }

        ++v11;
        *(v9 + 16) = v19 + 1;
        v20 = v9 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v11);
    }

    v1 = *(v3 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_connectionManager);
    v23 = sub_1D2A3CBB4(v9);

    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = sub_1D2A578BC;
    v26[4] = 0;
    v26[5] = sub_1D2A47D4C;
    v26[6] = v24;
    swift_getKeyPath();
    *&aBlock = v1;
    sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

    sub_1D2AC6094();

    v27 = *(v1 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
    if (v27)
    {
      v56 = sub_1D2A578BC;
      v57 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v54 = sub_1D2A44320;
      v55 = &block_descriptor_331;
      v28 = _Block_copy(&aBlock);
      v29 = v27;

      v30 = [v29 remoteObjectProxyWithErrorHandler_];
      _Block_release(v28);

      sub_1D2AC6FF4();
      swift_unknownObjectRelease();
      sub_1D2A206F8(&v58, v59);
      sub_1D2A206F8(v59, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
      swift_dynamicCast();
      v31 = v58;
      if (v58)
      {
        sub_1D2A20764(0, &qword_1EC704410, 0x1E696AEC0);
        v32 = sub_1D2AC6D24();
        [v31 didDismissPickerWithStagedAssets_];

LABEL_30:
        sub_1D2A3D958();
        goto LABEL_31;
      }
    }

    else
    {
      sub_1D2A2DF64();
      v33 = swift_allocError();
      if (qword_1EC7035A0 != -1)
      {
        swift_once();
      }

      v34 = sub_1D2AC63B4();
      __swift_project_value_buffer(v34, qword_1EC7040C0);
      v35 = v33;
      v36 = sub_1D2AC6394();
      v37 = sub_1D2AC6EB4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v3;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1D2A17000, v36, v37, "Could not send dismissal of picker with staged asset identifiers to remote view: %@. May not be an error if the connection is not established yet, will retry.", v39, 0xCu);
        sub_1D2A2E61C(v40, &unk_1EC704400, &unk_1D2ADA9A0);
        MEMORY[0x1D38A8460](v40, -1, -1);
        v43 = v39;
        v3 = v38;
        MEMORY[0x1D38A8460](v43, -1, -1);
      }
    }

    v2 = swift_allocObject();
    *(v2 + 16) = sub_1D2A2E6B4;
    *(v2 + 24) = v26;
    swift_getKeyPath();
    *&aBlock = v1;

    sub_1D2AC6094();

    *&aBlock = v1;
    swift_getKeyPath();
    sub_1D2AC60B4();

    v6 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
    swift_beginAccess();
    p_aBlock = *(v1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = p_aBlock;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_27:
      v46 = *(p_aBlock + 2);
      v45 = *(p_aBlock + 3);
      if (v46 >= v45 >> 1)
      {
        p_aBlock = sub_1D2A4486C((v45 > 1), v46 + 1, 1, p_aBlock);
      }

      *(p_aBlock + 2) = v46 + 1;
      v47 = &p_aBlock[v46];
      *(v47 + 4) = sub_1D2A47D3C;
      *(v47 + 5) = v2;
      *(v1 + v6) = p_aBlock;
      swift_endAccess();
      *&aBlock = v1;
      swift_getKeyPath();
      sub_1D2AC60A4();

      goto LABEL_30;
    }

LABEL_36:
    p_aBlock = sub_1D2A4486C(0, *(p_aBlock + 2) + 1, 1, p_aBlock);
    *(v1 + v6) = p_aBlock;
    goto LABEL_27;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v22 imagePlaygroundViewControllerDidCancel_];
    }

    swift_unknownObjectRelease();
  }

LABEL_31:
  v48 = MEMORY[0x1E69E7CC0];
  v49 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets;
  swift_beginAccess();
  v50 = *(v3 + v49);
  *(v3 + v49) = v48;
}

uint64_t sub_1D2A3F3FC()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 25);
}

uint64_t sub_1D2A3F4A4()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 16);
}

uint64_t sub_1D2A3F544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D2A3F5EC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }

  return result;
}

uint64_t sub_1D2A3F6F0()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 24);
}

uint64_t sub_1D2A3F7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_1D2A3F878()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 27);
}

uint64_t sub_1D2A3F920()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  v1 = *(v0 + 32);
}

uint64_t sub_1D2A3F9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 32);
}

uint64_t sub_1D2A3FA70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6084();
}

uint64_t sub_1D2A3FB3C()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  return *(v0 + 40);
}

uint64_t sub_1D2A3FBDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D2A3FC84(uint64_t a1, char a2)
{
  *(v2 + 16) = 1;
  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  sub_1D2AC60C4();
  v5 = *(v2 + 32);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t sub_1D2A3FCE4()
{
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  if (*(v0 + 16) == 1)
  {
    swift_getKeyPath();
    sub_1D2AC6094();

    v1 = 24;
  }

  else
  {
    swift_getKeyPath();
    sub_1D2AC6094();

    v1 = 25;
  }

  return *(v0 + v1);
}

uint64_t sub_1D2A3FE08()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D2AC6094();

    v4 = *(v1 + 32);
    if (!v4)
    {
      return result;
    }

    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject);

    sub_1D2A5CE70(1);
  }

  else
  {
    sub_1D2AC6094();

    v6 = *(v1 + 32);
    if (!v6)
    {
      return result;
    }

    v7 = *(v6 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject);

    sub_1D2A5C340();
  }
}

uint64_t sub_1D2A3FF5C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
  sub_1D2AC6094();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1D2AC6094();

    if (!*(v1 + 32))
    {
      return result;
    }

    sub_1D2A57EF0();
  }

  else
  {
    sub_1D2AC6094();

    v4 = *(v1 + 32);
    if (!v4)
    {
      return result;
    }

    v5 = *(v4 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager_exportedObject);

    sub_1D2A5C340();
  }
}

uint64_t sub_1D2A400A4()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtCV15ImagePlayground18GPImageEditionView9ViewModel___observationRegistrar;
  v3 = sub_1D2AC60D4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2A40148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1D2AC6564();
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2AC66C4();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GPImageEditionView(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2AC64D4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D58, &qword_1D2ACA480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D50, &qword_1D2ACA478);
  v22 = *(v38 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v25 = &v37 - v24;
  sub_1D2AC64B4();
  sub_1D2A47698(a1, v12, type metadata accessor for GPImageEditionView);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = swift_allocObject();
  sub_1D2A467FC(v12, v27 + v26);
  MEMORY[0x1D38A6E90](v16, sub_1D2A470AC, v27);
  sub_1D2AC66B4();
  v28 = sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480);
  v29 = sub_1D2A44DA4(&qword_1EC703D68, MEMORY[0x1E697C4E8]);
  v30 = v39;
  sub_1D2AC6924();
  (*(v40 + 8))(v9, v30);
  (*(v18 + 8))(v21, v17);
  v31 = v41;
  sub_1D2AC6554();
  sub_1D2AC6594();
  v45 = v17;
  v46 = v30;
  v47 = v28;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v38;
  sub_1D2AC6964();
  (*(v42 + 8))(v31, v44);
  (*(v22 + 8))(v25, v33);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  v36 = (v32 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = 0;
  return result;
}

uint64_t sub_1D2A4064C()
{
  v0 = sub_1D2AC6354();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE089308 != -1)
  {
    swift_once();
  }

  v5 = sub_1D2AC6384();
  __swift_project_value_buffer(v5, qword_1EE089310);
  sub_1D2AC6344();
  v6 = sub_1D2AC6364();
  v7 = sub_1D2AC6EF4();
  if (sub_1D2AC6FA4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D2AC6334();
    _os_signpost_emit_with_name_impl(&dword_1D2A17000, v6, v7, v9, "GenerationDismissed", "", v8, 2u);
    MEMORY[0x1D38A8460](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v10 = *(type metadata accessor for GPImageEditionView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  sub_1D2A3FE08();
}

uint64_t sub_1D2A40824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CD0, &qword_1D2ACA3E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v7;
  v8 = sub_1D2AC5DB4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E00, &qword_1D2ACA558);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_1D2AC6BE4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v44 = sub_1D2AC5DD4();
  v36 = *(v44 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x1EEE9AC00](v44);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v35 - v20;
  static DeviceClass.current.getter(&v47);
  v42 = v5;
  v43 = v4;
  v40 = a1;
  v41 = a2;
  if (v47 <= 1u && !v47)
  {
    sub_1D2AC6BD4();
    if (qword_1EC703630 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1D2AC6BD4();
  if (qword_1EC703630 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v21 = qword_1EC728B78;
  v22 = sub_1D2AC6034();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D2A44DA4(&qword_1EC703E08, MEMORY[0x1E69686B0]);
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E10, &unk_1D2ACA560);
  sub_1D2A2DB64(&qword_1EC703E18, &qword_1EC703E10, &unk_1D2ACA560);
  sub_1D2AC7004();
  sub_1D2AC5DC4();
  v24 = v36;
  v25 = v38;
  v26 = (*(v36 + 32))(v38, v19, v44);
  MEMORY[0x1EEE9AC00](v26);
  v27 = v39;
  v28 = sub_1D2AC67B4();
  v37 = &v35;
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CD8, &qword_1D2ACA3F0);
  sub_1D2A2DB64(&qword_1EC703CE0, &qword_1EC703CD0, &qword_1D2ACA3E8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v31 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400);
  v45 = v30;
  v46 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v29;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  sub_1D2AC69D4();
  (*(v42 + 8))(v27, v33);
  return (*(v24 + 8))(v25, v44);
}

uint64_t sub_1D2A41004@<X0>(uint64_t a1@<X8>)
{
  sub_1D2AC66D4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC728B78;
  v3 = sub_1D2AC68E4();
  v5 = v4;
  v7 = v6;
  sub_1D2AC68C4();
  v8 = sub_1D2AC68D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1D2A470D4(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1D2A41154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2AC5DD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_1D2AC68F4();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1D2A4122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_1D2AC6774();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  sub_1D2AC6744();
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  sub_1D2A4689C();
  sub_1D2AC64E4();
  v15 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400);
  MEMORY[0x1D38A6BC0](v9, v5, v15);
  (*(v6 + 8))(v9, v5);
  v18[6] = v5;
  v18[7] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D38A6BC0](v14, v10, OpaqueTypeConformance2);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D2A414C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GPImageEditionView(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1D2AC67D4();
  v108 = *(v6 - 8);
  v7 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043C0, &qword_1D2ACA0B0);
  v9 = *(*(v106 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v106);
  v105 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v91 - v12;
  v104 = type metadata accessor for GenerativePlaygroundRemoteView(0);
  v13 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C90, &qword_1D2ACA3C0);
  v16 = *(v110 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v91 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C88, &qword_1D2ACA3B8);
  v111 = *(v114 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v91 - v20;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C80, &qword_1D2ACA3B0);
  v113 = *(v117 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v112 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C78, &qword_1D2ACA3A8);
  v118 = *(v23 - 8);
  v119 = v23;
  v24 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v91 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D00, &qword_1D2ACA408);
  v120 = *(v26 - 8);
  v121 = v26;
  v27 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v91 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C68, &qword_1D2ACA3A0);
  v29 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v91 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D08, &qword_1D2ACA410);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v91 - v35;
  v37 = *(v1 + v3[6]);
  if (v37)
  {
    v95 = v16;
    v38 = v3[8];
    v129 = v3[7];
    v93 = *(v1 + v38);
    v39 = (v1 + v3[9]);
    v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = *v39;
    v40 = v92;
    v99 = v4;
    v91 = v39[1];
    v127 = v37;
    v100 = v36;
    v102 = v33;
    v128 = v34;
    swift_retain_n();
    sub_1D2A2E6B8(v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
    v125 = v1;
    v126 = v41;
    sub_1D2AC6AB4();
    v101 = a1;
    v42 = v130;
    swift_getKeyPath();
    v130 = v42;
    v94 = sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6094();

    v97 = v6;
    LOBYTE(v40) = *(v42 + 40);

    v43 = v1 + v3[10];
    v44 = *v43;
    v45 = *(v43 + 8);
    LOBYTE(v42) = *(v43 + 16);
    v46 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    v47 = v103;
    (*(*(v46 - 8) + 56))(v103, 1, 1, v46);
    v96 = v5;
    sub_1D2A2E5B4(v47, v105, &unk_1EC7043C0, &qword_1D2ACA0B0);
    sub_1D2A46754(v44, v45);
    sub_1D2AC6A14();
    sub_1D2A2E61C(v47, &unk_1EC7043C0, &qword_1D2ACA0B0);
    v48 = v104;
    *&v15[*(v104 + 20)] = v127;
    v15[v48[6]] = v93;
    v49 = &v15[v48[7]];
    v50 = v91;
    *v49 = v92;
    *(v49 + 1) = v50;
    v15[v48[9]] = v40;
    v51 = &v15[v48[8]];
    *v51 = v44;
    *(v51 + 1) = v45;
    v51[16] = v42;
    v52 = v125;
    sub_1D2AC6AB4();
    v53 = v130;
    swift_getKeyPath();
    v130 = v53;
    sub_1D2AC6094();

    v54 = *(v53 + 26);

    v55 = sub_1D2A44DA4(&qword_1EC703CA0, type metadata accessor for GenerativePlaygroundRemoteView);
    v56 = v107;
    sub_1D2AC69A4();
    v57 = sub_1D2A46794(v15, type metadata accessor for GenerativePlaygroundRemoteView);
    MEMORY[0x1EEE9AC00](v57);
    *(&v91 - 2) = v52;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C98, &qword_1D2ACA3C8);
    v130 = v48;
    v131 = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = sub_1D2A2DB64(&qword_1EC703CA8, &qword_1EC703C98, &qword_1D2ACA3C8);
    v61 = v109;
    v62 = v110;
    sub_1D2AC69D4();
    (*(v95 + 8))(v56, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D10, &qword_1D2ACA418);
    v63 = *(sub_1D2AC6614() - 8);
    v64 = *(v63 + 72);
    v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1D2AC95B0;
    sub_1D2AC6604();
    v130 = v62;
    v131 = v58;
    v132 = OpaqueTypeConformance2;
    v133 = v60;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v112;
    v69 = v114;
    MEMORY[0x1D38A6DF0](2, v66, v114, v67);

    (*(v111 + 8))(v61, v69);
    v70 = v125;
    sub_1D2AC6AB4();
    v71 = v130;
    swift_getKeyPath();
    v130 = v71;
    sub_1D2AC6094();

    LODWORD(v65) = *(v71 + 27);

    v130 = v69;
    v131 = v67;
    v72 = swift_getOpaqueTypeConformance2();
    if (v65)
    {
      v73 = 2;
    }

    else
    {
      v73 = 1;
    }

    v74 = v115;
    v75 = v117;
    MEMORY[0x1D38A6DB0](v73, MEMORY[0x1E69E7CC0], v117, v72);
    (*(v113 + 8))(v68, v75);
    v76 = v124;
    sub_1D2AC67C4();
    v130 = v75;
    v131 = v72;
    swift_getOpaqueTypeConformance2();
    v77 = v116;
    v78 = v119;
    sub_1D2AC6994();
    (*(v108 + 8))(v76, v97);
    (*(v118 + 8))(v74, v78);
    v79 = v98;
    sub_1D2A47698(v70, v98, type metadata accessor for GPImageEditionView);
    v80 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v81 = swift_allocObject();
    sub_1D2A467FC(v79, v81 + v80);
    v82 = v123;
    (*(v120 + 32))(v123, v77, v121);
    v83 = (v82 + *(v122 + 36));
    *v83 = sub_1D2A46860;
    v83[1] = v81;
    v83[2] = 0;
    v83[3] = 0;
    sub_1D2AC6AB4();
    v84 = v130;
    swift_getKeyPath();
    v130 = v84;
    sub_1D2AC6094();

    v85 = *(v84 + 2);

    v130 = v85;
    sub_1D2A46500();
    sub_1D2A2EA10();

    v86 = v100;
    sub_1D2AC69F4();

    sub_1D2A2E61C(v82, &qword_1EC703C68, &qword_1D2ACA3A0);
    v87 = v101;
    v88 = v102;
    (*(v128 + 32))(v101, v86, v102);
    return (*(v128 + 56))(v87, 0, 1, v88);
  }

  else
  {
    v90 = *(v34 + 56);

    return v90(a1, 1, 1);
  }
}

__n128 sub_1D2A42338@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C40, &qword_1D2ACA388);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  sub_1D2A424C8(&v18[-v6]);
  v8 = a1 + *(type metadata accessor for GPImageEditionView(0) + 40);
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *(v8 + 16);
    *&v20 = *v8;
    v11 = v20;
    *(&v20 + 1) = v9;
    v12 = v10 & 1;
    LOBYTE(v21) = v10 & 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043E0, &qword_1D2AC9CC0);
    MEMORY[0x1D38A6EC0](&v19);
    *&v20 = v11;
    *(&v20 + 1) = v9;
    LOBYTE(v21) = v12;
    MEMORY[0x1D38A6EC0](&v19, v13);
  }

  sub_1D2AC6AF4();
  sub_1D2AC6624();
  sub_1D2A1AC00(v7, a2);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C28, &qword_1D2ACA380) + 36);
  v15 = v25;
  *(v14 + 64) = v24;
  *(v14 + 80) = v15;
  *(v14 + 96) = v26;
  v16 = v21;
  *v14 = v20;
  *(v14 + 16) = v16;
  result = v23;
  *(v14 + 32) = v22;
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1D2A424C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CB8, &qword_1D2ACA3D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CC0, &qword_1D2ACA3D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C50, &qword_1D2ACA390);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  type metadata accessor for DeviceSupport();
  v16 = static DeviceSupport.isGenerativePlaygroundSupported.getter();
  if (v16)
  {
    sub_1D2A414C0(v15);
    v17 = sub_1D2AC65E4();
    v18 = sub_1D2AC68A4();
    v19 = &v15[*(v12 + 36)];
    *v19 = v17;
    v19[8] = v18;
    sub_1D2A2E5B4(v15, v11, &qword_1EC703C50, &qword_1D2ACA390);
    swift_storeEnumTagMultiPayload();
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0);
    sub_1D2AC6714();
    return sub_1D2A2E61C(v15, &qword_1EC703C50, &qword_1D2ACA390);
  }

  else
  {
    v35 = &v29;
    MEMORY[0x1EEE9AC00](v16);
    v34 = &v29 - 4;
    *(&v29 - 2) = v1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CC8, &qword_1D2ACA3E0);
    v36 = a1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CD0, &qword_1D2ACA3E8);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CD8, &qword_1D2ACA3F0);
    v21 = sub_1D2A2DB64(&qword_1EC703CE0, &qword_1EC703CD0, &qword_1D2ACA3E8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703CF0, &qword_1D2ACA400);
    v32 = v8;
    v24 = v3;
    v25 = v23;
    v26 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400);
    v37 = v25;
    v38 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v22;
    v38 = OpaqueTypeConformance2;
    v28 = swift_getOpaqueTypeConformance2();
    v37 = v31;
    v38 = v30;
    v39 = v21;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1D2AC65D4();
    (*(v4 + 16))(v11, v7, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0);
    sub_1D2AC6714();
    return (*(v4 + 8))(v7, v24);
  }
}

uint64_t sub_1D2A4295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D18, &qword_1D2ACA448);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v54 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D20, &qword_1D2ACA450);
  v61 = *(v65 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D28, &qword_1D2ACA458);
  v56 = *(v62 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D30, &qword_1D2ACA460);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D38, &qword_1D2ACA468);
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = sub_1D2AC6774();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CF0, &qword_1D2ACA400);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703CE8, &qword_1D2ACA3F8);
  v59 = *(v26 - 8);
  v60 = v26;
  v27 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  sub_1D2AC6744();
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D40, &qword_1D2ACA470);
  sub_1D2A4689C();
  sub_1D2AC64E4();
  v30 = sub_1D2A2DB64(&qword_1EC703CF8, &qword_1EC703CF0, &qword_1D2ACA400);
  v58 = v29;
  MEMORY[0x1D38A6BC0](v25, v21, v30);
  (*(v22 + 8))(v25, v21);
  sub_1D2AC6754();
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D80, &qword_1D2ACA490);
  sub_1D2A46A58();
  v31 = v18;
  sub_1D2AC64E4();
  if (*(a1 + *(type metadata accessor for GPImageEditionView(0) + 32)) - 3 >= 0xFFFFFFFE)
  {
    v35 = sub_1D2AC6764();
    MEMORY[0x1EEE9AC00](v35);
    *(&v54 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
    sub_1D2A46BFC();
    v36 = v55;
    sub_1D2AC64E4();
    v37 = sub_1D2A2DB64(&qword_1EC703DB0, &qword_1EC703D28, &qword_1D2ACA458);
    v38 = v57;
    v39 = v62;
    MEMORY[0x1D38A6BC0](v36, v62, v37);
    v40 = v61;
    v41 = v65;
    (*(v61 + 16))(v13, v38, v65);
    (*(v40 + 56))(v13, 0, 1, v41);
    v72 = v39;
    v73 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D38A6BD0](v13, v41, OpaqueTypeConformance2);
    sub_1D2A2E61C(v13, &qword_1EC703D30, &qword_1D2ACA460);
    (*(v40 + 8))(v38, v41);
    (*(v56 + 8))(v36, v39);
  }

  else
  {
    v32 = v65;
    (*(v61 + 56))(v13, 1, 1, v65);
    v33 = sub_1D2A2DB64(&qword_1EC703DB0, &qword_1EC703D28, &qword_1D2ACA458);
    v72 = v62;
    v73 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D38A6BD0](v13, v32, v34);
    sub_1D2A2E61C(v13, &qword_1EC703D30, &qword_1D2ACA460);
  }

  v43 = v66;
  v44 = *(v67 + 48);
  v45 = *(v67 + 64);
  v47 = v58;
  v46 = v59;
  v48 = v60;
  (*(v59 + 16))(v66, v58, v60);
  v50 = v63;
  v49 = v64;
  (*(v63 + 16))(&v43[v44], v31, v64);
  v51 = &v43[v45];
  v52 = v69;
  sub_1D2A2E5B4(v69, v51, &qword_1EC703D30, &qword_1D2ACA460);
  sub_1D2AC66F4();
  sub_1D2A2E61C(v52, &qword_1EC703D30, &qword_1D2ACA460);
  (*(v50 + 8))(v31, v49);
  return (*(v46 + 8))(v47, v48);
}

uint64_t sub_1D2A43198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GPImageEditionView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2AC64D4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D98, &qword_1D2ACA498);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  sub_1D2AC64C4();
  sub_1D2A47698(a1, v8, type metadata accessor for GPImageEditionView);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_1D2A467FC(v8, v19 + v18);
  MEMORY[0x1D38A6E90](v12, sub_1D2A46F5C, v19);
  v20 = *(v5 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  LOBYTE(v19) = sub_1D2A3FCE4();

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v19 & 1) == 0;
  v23 = &v17[*(v14 + 44)];
  *v23 = KeyPath;
  v23[1] = sub_1D2A46FE8;
  v23[2] = v22;
  sub_1D2AC6AB4();
  LOBYTE(a1) = sub_1D2A3FCE4();

  v24 = 0;
  if ((a1 & 1) == 0)
  {
    v24 = sub_1D2AC6A04();
  }

  v25 = swift_getKeyPath();
  sub_1D2A47000(v17, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D80, &qword_1D2ACA490);
  v27 = (a2 + *(result + 36));
  *v27 = v25;
  v27[1] = v24;
  return result;
}

uint64_t sub_1D2A43464()
{
  v0 = *(type metadata accessor for GPImageEditionView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  sub_1D2A3FF5C();
}

uint64_t sub_1D2A434C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1D2AC6734();
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DC8, &qword_1D2ACA4B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  v18 = sub_1D2AC66D4();
  v25[1] = v19;
  v25[2] = v18;
  v25[0] = v20;
  v21 = a1 + *(type metadata accessor for GPImageEditionView(0) + 28);
  sub_1D2AC6AC4();
  swift_getKeyPath();
  sub_1D2AC6AE4();

  (*(v9 + 8))(v12, v8);
  v29 = v31;
  v30 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DD8, &qword_1D2ACA4B8);
  sub_1D2A46D18();
  sub_1D2A2DB64(&qword_1EC703DE8, &qword_1EC703DD8, &qword_1D2ACA4B8);
  sub_1D2AC6A74();
  sub_1D2AC6724();
  sub_1D2A2DB64(&qword_1EC703DD0, &qword_1EC703DC8, &qword_1D2ACA4B0);
  v22 = v28;
  v23 = v26;
  sub_1D2AC6944();
  (*(v27 + 8))(v7, v23);
  (*(v14 + 8))(v17, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
  *(v22 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1D2A43864@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DF0, &qword_1D2ACA4C0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-v14];
  sub_1D2AC66D4();
  *v15 = sub_1D2AC68E4();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  *(v15 + 4) = 0;
  v15[40] = 1;
  sub_1D2AC66D4();
  *v13 = sub_1D2AC68E4();
  *(v13 + 1) = v19;
  v13[16] = v20 & 1;
  *(v13 + 3) = v21;
  *(v13 + 4) = 1;
  v13[40] = 1;
  v22 = v3[2];
  v22(v10, v15, v2);
  v22(v7, v13, v2);
  v22(a1, v10, v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703DF8, &qword_1D2ACA4C8);
  v22(&a1[*(v23 + 48)], v7, v2);
  v24 = v3[1];
  v24(v13, v2);
  v24(v15, v2);
  v24(v7, v2);
  return (v24)(v10, v2);
}

uint64_t sub_1D2A43B10(uint64_t a1)
{
  v2 = type metadata accessor for GPImageEditionView(0);
  v3 = *(v2 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  sub_1D2AC6AB4();
  if (*(v6 + 16) != *(a1 + *(v2 + 32)) < 3u)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2A44DA4(&qword_1EC703A90, type metadata accessor for GPImageEditionView.ViewModel);
    sub_1D2AC6084();
  }
}

void sub_1D2A43C6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = sub_1D2A5785C;
  v7[4] = 0;
  v7[5] = sub_1D2A46880;
  v7[6] = v5;
  swift_getKeyPath();
  *&v29 = a3;
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);

  sub_1D2AC6094();

  v8 = *(a3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  if (v8)
  {
    v32 = sub_1D2A5785C;
    v33 = 0;
    *&v29 = MEMORY[0x1E69E9820];
    *(&v29 + 1) = 1107296256;
    v30 = sub_1D2A44320;
    v31 = &block_descriptor_276;
    v9 = _Block_copy(&v29);
    v10 = v8;

    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_1D2AC6FF4();
    swift_unknownObjectRelease();
    sub_1D2A206F8(&v34, v35);
    sub_1D2A206F8(v35, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B18, &qword_1D2AC9D20);
    swift_dynamicCast();
    v12 = v34;
    if (v34)
    {
      [v34 routeTo_];

      return;
    }
  }

  else
  {
    sub_1D2A2DF64();
    v13 = swift_allocError();
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D2AC63B4();
    __swift_project_value_buffer(v14, qword_1EC7040C0);
    v15 = v13;
    v16 = sub_1D2AC6394();
    v17 = sub_1D2AC6EB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D2A17000, v16, v17, "Could not send route to remote view: %@. May not be an error if the connection is not established yet, will retry.", v18, 0xCu);
      sub_1D2A2E61C(v19, &unk_1EC704400, &unk_1D2ADA9A0);
      MEMORY[0x1D38A8460](v19, -1, -1);
      MEMORY[0x1D38A8460](v18, -1, -1);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D2A2E6B4;
  *(v22 + 24) = v7;
  swift_getKeyPath();
  *&v29 = a3;

  sub_1D2AC6094();

  *&v29 = a3;
  swift_getKeyPath();
  sub_1D2AC60B4();

  v23 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  v24 = *(a3 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1D2A4486C(0, v24[2] + 1, 1, v24);
    *(a3 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1D2A4486C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1D2A47D3C;
  v28[5] = v22;
  *(a3 + v23) = v24;
  swift_endAccess();
  *&v29 = a3;
  swift_getKeyPath();
  sub_1D2AC60A4();
}

uint64_t sub_1D2A441C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703C28, &qword_1D2ACA380);
  sub_1D2A46254();
  return sub_1D2AC65D4();
}

id sub_1D2A44230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v4 = *(v3 + OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__connection);
  *a2 = v4;

  return v4;
}

void sub_1D2A442F0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D2A55158(v2);
}

void sub_1D2A44320(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D2A44388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6094();

  v4 = OBJC_IVAR____TtC15ImagePlayground27GPHostSideConnectionManager__deferredConfigurationHandlers;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D2A44450(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2A44DA4(&qword_1EC704430, type metadata accessor for GPHostSideConnectionManager);
  sub_1D2AC6084();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2A44534()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D2A4455C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2A44654;

  return v7(a1);
}

uint64_t sub_1D2A44654()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1D2A4474C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B58, &qword_1D2AC9D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D2A4486C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E30, &unk_1D2ACA5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7043D0, &unk_1D2ACB460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2A449A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E28, &qword_1D2ACA580);
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

char *sub_1D2A44A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E20, &unk_1D2ACA570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D2A44BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D2A44CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A37B14(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2A44DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2A44E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BD8, &qword_1D2ACA0A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_201Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

id keypath_get_191Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_185Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1D2A44FD4()
{
  sub_1D2A46064(319, qword_1EE089128, type metadata accessor for GPImageEditionView, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ImagePlaygroundViewController.responsibleAuditToken.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x298);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1D2A45DB8()
{
  result = sub_1D2AC60D4();
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

void sub_1D2A45E9C()
{
  sub_1D2A460C8(319, &unk_1EE0888A0, &unk_1EC7043C0, &qword_1D2ACA0B0, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1D2A46064(319, qword_1EE088A88, type metadata accessor for GPHostSideConnectionManager, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D2A46064(319, &qword_1EE088890, type metadata accessor for GPImageEditionView.ViewModel, MEMORY[0x1E6981AA0]);
      if (v2 <= 0x3F)
      {
        sub_1D2A460C8(319, &unk_1EE088848, &unk_1EC7043D0, &unk_1D2ACB460, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D2A460C8(319, &qword_1EE088898, &unk_1EC7043E0, &qword_1D2AC9CC0, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D2A46064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D2A460C8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D2A46178()
{
  result = qword_1EC703C00;
  if (!qword_1EC703C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C00);
  }

  return result;
}

unint64_t sub_1D2A461E8()
{
  result = qword_1EC703C18;
  if (!qword_1EC703C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C18);
  }

  return result;
}

unint64_t sub_1D2A46254()
{
  result = qword_1EC703C30;
  if (!qword_1EC703C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C28, &qword_1D2ACA380);
    sub_1D2A462E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C30);
  }

  return result;
}

unint64_t sub_1D2A462E0()
{
  result = qword_1EC703C38;
  if (!qword_1EC703C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C40, &qword_1D2ACA388);
    sub_1D2A46398();
    sub_1D2A2DB64(&qword_1EC703CB0, &qword_1EC703CB8, &qword_1D2ACA3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C38);
  }

  return result;
}

unint64_t sub_1D2A46398()
{
  result = qword_1EC703C48;
  if (!qword_1EC703C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C50, &qword_1D2ACA390);
    sub_1D2A46424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C48);
  }

  return result;
}

unint64_t sub_1D2A46424()
{
  result = qword_1EC703C58;
  if (!qword_1EC703C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C60, &qword_1D2ACA398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C68, &qword_1D2ACA3A0);
    sub_1D2A46500();
    sub_1D2A2EA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C58);
  }

  return result;
}

unint64_t sub_1D2A46500()
{
  result = qword_1EC703C70;
  if (!qword_1EC703C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C68, &qword_1D2ACA3A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C78, &qword_1D2ACA3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C80, &qword_1D2ACA3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C88, &qword_1D2ACA3B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C90, &qword_1D2ACA3C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703C98, &qword_1D2ACA3C8);
    type metadata accessor for GenerativePlaygroundRemoteView(255);
    sub_1D2A44DA4(&qword_1EC703CA0, type metadata accessor for GenerativePlaygroundRemoteView);
    swift_getOpaqueTypeConformance2();
    sub_1D2A2DB64(&qword_1EC703CA8, &qword_1EC703C98, &qword_1D2ACA3C8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703C70);
  }

  return result;
}

uint64_t sub_1D2A46754(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D2A46794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2A467FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GPImageEditionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2A4689C()
{
  result = qword_1EC703D48;
  if (!qword_1EC703D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D40, &qword_1D2ACA470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D50, &qword_1D2ACA478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D58, &qword_1D2ACA480);
    sub_1D2AC66C4();
    sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480);
    sub_1D2A44DA4(&qword_1EC703D68, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D2A2DB64(&qword_1EC703D70, &qword_1EC703D78, &qword_1D2ACA488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D48);
  }

  return result;
}

unint64_t sub_1D2A46A58()
{
  result = qword_1EC703D88;
  if (!qword_1EC703D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D80, &qword_1D2ACA490);
    sub_1D2A46B10();
    sub_1D2A2DB64(&qword_1EC703D70, &qword_1EC703D78, &qword_1D2ACA488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D88);
  }

  return result;
}

unint64_t sub_1D2A46B10()
{
  result = qword_1EC703D90;
  if (!qword_1EC703D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703D98, &qword_1D2ACA498);
    sub_1D2A2DB64(&qword_1EC703D60, &qword_1EC703D58, &qword_1D2ACA480);
    sub_1D2A2DB64(&qword_1EC703DA0, &qword_1EC703DA8, &qword_1D2ACA4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703D90);
  }

  return result;
}

unint64_t sub_1D2A46BFC()
{
  result = qword_1EC703DC0;
  if (!qword_1EC703DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703DB8, &qword_1D2ACA4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703DC8, &qword_1D2ACA4B0);
    sub_1D2AC6734();
    sub_1D2A2DB64(&qword_1EC703DD0, &qword_1EC703DC8, &qword_1D2ACA4B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703DC0);
  }

  return result;
}

unint64_t sub_1D2A46D18()
{
  result = qword_1EC703DE0;
  if (!qword_1EC703DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703DE0);
  }

  return result;
}

uint64_t objectdestroy_260Tm()
{
  v1 = type metadata accessor for GPImageEditionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = v0 + v4 + v1[5];
  v7 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1D2AC62D4();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = *(v6 + *(v7 + 20) + 8);
  }

  v10 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC704510, &qword_1D2ACA260) + 28));

  v11 = *(v5 + v1[6]);

  v12 = v1[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703BF0, &qword_1D2ACA268);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = (v5 + v1[9]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v5 + v1[10]);
  if (v16[1])
  {
    v17 = *v16;

    v18 = v16[1];
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D2A46F74(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GPImageEditionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2A47000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703D98, &qword_1D2ACA498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A47070()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1D2A470D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2A470E4(void *a1)
{
  v1[2] = sub_1D2AC6DA4();
  v1[3] = sub_1D2AC6D94();
  v3 = a1;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1D2A471B4;

  return sub_1D2A1FD8C(v3);
}

uint64_t sub_1D2A471B4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 40) = a1;

  v6 = sub_1D2AC6D44();

  return MEMORY[0x1EEE6DFA0](sub_1D2A472F8, v6, v5);
}

uint64_t sub_1D2A472F8()
{
  v1 = v0[5];
  v2 = v0[3];

  if (!v1)
  {
    if (qword_1EC7035A0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D2AC63B4();
    __swift_project_value_buffer(v3, qword_1EC7040C0);
    v4 = sub_1D2AC6394();
    v5 = sub_1D2AC6E94();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D2A17000, v4, v5, "Cannot resize native image into image xpc wrapper.", v6, 2u);
      MEMORY[0x1D38A8460](v6, -1, -1);
    }
  }

  v7 = v0[1];
  v8 = v0[5];

  return v7(v8);
}

void sub_1D2A47420()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController___promptElements) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_allowedGenerationStyles;
  *(v0 + v2) = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  v3 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_selectedGenerationStyle;
  if (qword_1EE089358 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_1EE089380;
  v12[3] = unk_1EE089390;
  v12[4] = xmmword_1EE0893A0;
  v12[5] = unk_1EE0893B0;
  v12[0] = xmmword_1EE089360;
  v12[1] = xmmword_1EE089370;
  memmove((v0 + v3), &xmmword_1EE089360, 0x60uLL);
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_personalizationPolicy) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImage) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sceneIdentifier) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_privateDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_resultingAssets) = v1;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_sourceImageIsSketch) = 0;
  v4 = (v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_localizedCreateButtonTitle);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_isLoadingRecipe) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_recipe) = 0;
  v5 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_previewAspectRatio;
  sub_1D2A2D244(v12, v11);
  if (qword_1EE089688 != -1)
  {
    swift_once();
  }

  v6 = v0 + v5;
  v7 = *dbl_1EE089698;
  *v6 = qword_1EE089690;
  *(v6 + 8) = v7;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_pregeneratedImage) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageImportPolicy) = 0;
  v8 = v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_responsibleAuditToken;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  v9 = OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionView;
  v10 = type metadata accessor for GPImageEditionView(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_imageEditionViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_concepts) = v1;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayingPresentation) = 0;
  *(v0 + OBJC_IVAR____TtC15ImagePlayground29ImagePlaygroundViewController_delayPresentationDuration) = 0x4008000000000000;
  sub_1D2AC7174();
  __break(1u);
}

uint64_t sub_1D2A47698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A47700(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2A47C5C;

  return sub_1D2A4455C(a1, v5);
}

uint64_t sub_1D2A477B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2A2E260;

  return sub_1D2A4455C(a1, v5);
}

uint64_t sub_1D2A47870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A2E260;

  return sub_1D2A37B14(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2A47930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2A47944(a1, a2);
  }

  return a1;
}

uint64_t sub_1D2A47944(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D2A479A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D2A479B4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D2A479B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_403Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1D2A47944(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_95Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D2A47A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2A47C5C;

  return sub_1D2A32B10(a1, v4, v5, v7, v6);
}

unint64_t sub_1D2A47B88()
{
  result = qword_1EC703E48;
  if (!qword_1EC703E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703E48);
  }

  return result;
}

void sub_1D2A47D58()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D2AC6BF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1EE088878 = v2;
}

id static NSUserDefaults.gpUserDefaults.getter()
{
  if (qword_1EE088870 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE088878;

  return v1;
}

ImagePlayground::Workaround __swiftcall Workaround.init(for:workaroundRemovalRadar:)(Swift::Int a1, Swift::Int workaroundRemovalRadar)
{
  v3 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1D2AC7084();

  v5 = sub_1D2AC7324();
  MEMORY[0x1D38A7100](v5);

  v6 = sub_1D2AC6BF4();

  v7 = [v4 BOOLForKey_];

  *v3 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for Workaround(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Workaround(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CVBufferRef_optional __swiftcall CVBufferRef.invertLuminosity()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
  v3 = objc_opt_self();
  v4 = [v3 colorInvertFilter];
  [v4 setInputImage_];
  v5 = [v4 outputImage];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2AC95B0;
    v8 = *MEMORY[0x1E695FB40];
    *(inited + 32) = sub_1D2AC6C24();
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 40) = v9;
    *(inited + 48) = 0;
    sub_1D2A48A1C(inited);
    swift_setDeallocating();
    sub_1D2A2E61C(inited + 32, &qword_1EC703E58, &qword_1D2ACA6D0);
    v10 = sub_1D2AC6BF4();
    v11 = sub_1D2AC6B94();

    v12 = [v3 filterWithName:v10 withInputParameters:v11];

    if (v12)
    {
      [v12 setValue:v2 forKey:*MEMORY[0x1E695FA48]];
      [v12 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
      v13 = [v12 outputImage];
      if (v13)
      {
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E60, &qword_1D2ACA6D8);
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_1D2AC95B0;
        v16 = *MEMORY[0x1E695F868];
        *(v15 + 32) = *MEMORY[0x1E695F868];
        v17 = *MEMORY[0x1E695E738];
        *(v15 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E68, &qword_1D2ACA6E0);
        *(v15 + 40) = v17;
        v18 = v17;
        v19 = v16;
        sub_1D2A48D24(v15);
        swift_setDeallocating();
        sub_1D2A2E61C(v15 + 32, &qword_1EC703E70, &qword_1D2ACA6E8);
        v20 = objc_allocWithZone(MEMORY[0x1E695F620]);
        type metadata accessor for CIContextOption(0);
        sub_1D2A490B4(&qword_1EC703800, type metadata accessor for CIContextOption);
        v21 = sub_1D2AC6B94();

        v22 = [v20 initWithOptions_];

        Width = CVPixelBufferGetWidth(v1);
        Height = CVPixelBufferGetHeight(v1);
        v25 = sub_1D2A48E4C(Width, Height, 0x42475241u);
        if (v25)
        {
          v26.value = v25;
          [v22 render:v14 toCVPixelBuffer:v25];

          return v26;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1D2A484B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E88, &qword_1D2ACA750);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, v13, &qword_1EC703E90, &qword_1D2ACA758);
      result = sub_1D2AAF814(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D2A206F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2A485EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E78, &qword_1D2ACA740);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v11, &qword_1EC7037F0, &qword_1D2AC9528);
      v5 = v11;
      result = sub_1D2AAF790(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D2A206F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

CVPixelBufferRef sub_1D2A48714(size_t a1, size_t a2)
{
  pixelBufferOut[20] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037E8, &qword_1D2AC9520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC9060;
  v5 = *MEMORY[0x1E69660E8];
  *(inited + 32) = *MEMORY[0x1E69660E8];
  v6 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  v12 = MEMORY[0x1E6966028];
  *(inited + 80) = v10;
  v13 = *v12;
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  *(inited + 144) = v6;
  *(inited + 120) = 1;
  v14 = v13;
  sub_1D2A485EC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7037F0, &qword_1D2AC9528);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1D2A490B4(&qword_1EC7037D0, type metadata accessor for CFString);
  v15 = sub_1D2AC6B94();

  pixelBufferOut[0] = 0;
  result = CVPixelBufferCreate(0, a1, a2, 0x42475241u, v15, pixelBufferOut);
  v17 = pixelBufferOut[0];
  if (result)
  {
    v18 = result;
    if (qword_1EC703598 != -1)
    {
      swift_once();
    }

    v19 = sub_1D2AC63B4();
    __swift_project_value_buffer(v19, qword_1EC7040A8);
    v20 = sub_1D2AC6394();
    v21 = sub_1D2AC6E94();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_1D2A17000, v20, v21, "Can't create pixel buffer %d", v22, 8u);
      MEMORY[0x1D38A8460](v22, -1, -1);
    }

    sub_1D2A490FC();
    swift_allocError();
    *v23 = v18;
    *(v23 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (pixelBufferOut[0])
  {
    v24 = pixelBufferOut[0];
LABEL_9:

    v25 = *MEMORY[0x1E69E9840];
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D2A48A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v13, &qword_1EC703E58, &qword_1D2ACA6D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2AAF858(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2A206F8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2A48B4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EC0, &qword_1D2ACA788);
    v3 = sub_1D2AC71B4();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D2AAF8D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2A48C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E80, &qword_1D2ACA748);
    v3 = sub_1D2AC71B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D2AAF790(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D2A48D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB0, &qword_1D2ACA778);
    v3 = sub_1D2AC71B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2A2E5B4(v4, &v11, &qword_1EC703E70, &qword_1D2ACA6E8);
      v5 = v11;
      result = sub_1D2AAF9D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D2A206F8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1D2A48E4C(size_t a1, size_t a2, OSType a3)
{
  v13[7] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E98, &qword_1D2ACA760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v8 = v7;
  *(inited + 40) = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  sub_1D2A48C2C(inited);
  swift_setDeallocating();
  sub_1D2A2E61C(inited + 32, &qword_1EC703EA0, &qword_1D2ACA768);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  sub_1D2A490B4(&qword_1EC7037D0, type metadata accessor for CFString);
  v9 = sub_1D2AC6B94();

  v13[0] = 0;
  v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, v9, v13);

  result = v13[0];
  if (v10)
  {

    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s14CoreVideoErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s14CoreVideoErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D2A490B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2A490FC()
{
  result = qword_1EC703EC8;
  if (!qword_1EC703EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EC8);
  }

  return result;
}

uint64_t sub_1D2A49150()
{
  v1 = sub_1D2AC6034();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1D2AC6BE4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*v0 <= 3u)
  {
    if (*v0 <= 1u)
    {
      *v0;
    }
  }

  else if (*v0 > 5u)
  {
    *v0;
  }

  sub_1D2AC6BD4();
  if (qword_1EC703630 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC728B78;
  sub_1D2AC5FF4();
  return sub_1D2AC6C34();
}

void sub_1D2A493A4(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1D2AC6C24();
  v7 = v6;

  if (v5 == 0xD000000000000011 && 0x80000001D2ADE770 == v7)
  {
  }

  else
  {
    v9 = sub_1D2AC7354();

    if ((v9 & 1) == 0)
    {

LABEL_14:
      v13 = 9;
LABEL_15:
      *a2 = v13;
      return;
    }
  }

  v10 = _s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0();
  v11 = 0;
  v12 = *(v10 + 2);
  while (1)
  {
    if (v12 == v11)
    {

      goto LABEL_14;
    }

    if (v11 >= *(v10 + 2))
    {
      break;
    }

    v13 = v10[v11++ + 32];
    sub_1D2A49BE8();
    v14 = sub_1D2AC5D14();
    if (v14 == [a1 code])
    {

      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t ImageCreator.Error.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1D2AC6C24();
  *(inited + 40) = v4;
  v5 = sub_1D2A49150();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1D2A48A1C(inited);
  swift_setDeallocating();
  sub_1D2A4991C(inited + 32);
  return v7;
}

uint64_t ImageCreator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A49664()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t sub_1D2A496AC()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

unint64_t sub_1D2A49720()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E50, &qword_1D2ACA6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1D2AC6C24();
  *(inited + 40) = v4;
  v5 = sub_1D2A49150();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1D2A48A1C(inited);
  swift_setDeallocating();
  sub_1D2A4991C(inited + 32);
  return v7;
}

char *sub_1D2A497D4@<X0>(char **a1@<X8>)
{
  result = _s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D2A497FC(uint64_t a1)
{
  v2 = sub_1D2A49BE8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D2A49838(uint64_t a1)
{
  v2 = sub_1D2A49BE8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

char *_s15ImagePlayground0A7CreatorC5ErrorO8allCasesSayAEGvgZ_0()
{
  v3 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E28, &qword_1D2ACA580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2ACA790;
  *(inited + 32) = 0x706050403020100;
  result = sub_1D2A449A0(1, 9, 1, inited);
  *(result + 2) = 9;
  result[40] = 8;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2A4991C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E58, &qword_1D2ACA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A49988()
{
  result = qword_1EC703ED0;
  if (!qword_1EC703ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703ED0);
  }

  return result;
}

unint64_t sub_1D2A499DC()
{
  result = qword_1EC703ED8;
  if (!qword_1EC703ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703ED8);
  }

  return result;
}

unint64_t sub_1D2A49A34()
{
  result = qword_1EC703EE0;
  if (!qword_1EC703EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703EE8, &qword_1D2ACA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EE0);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2A49BE8()
{
  result = qword_1EC703EF0;
  if (!qword_1EC703EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703EF0);
  }

  return result;
}

id sub_1D2A49C68(int a1)
{
  v2 = v1;
  v77 = a1;
  v78 = sub_1D2AC6B84();
  v3 = *(v78 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F28, &qword_1D2ACAA58);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v75 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v75 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v75 - v23;
  v25 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2A4A9BC(v2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v30 = v78;
      v31 = v3;
      if (EnumCaseMultiPayload == 2)
      {
        v53 = *v28;
        v54 = v28[1];
        v56 = v28[2];
        v55 = v28[3];
        (*(v31 + 56))(v16, 1, 1, v78);
        v57 = sub_1D2AC6BF4();

        if (v55)
        {
          v58 = sub_1D2AC6BF4();
        }

        else
        {
          v58 = 0;
        }

        if ((*(v31 + 48))(v16, 1, v30) == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = sub_1D2AC6B64();
          (*(v31 + 8))(v16, v30);
        }

        v52 = [objc_allocWithZone(GPPromptElement) initWithText:v57 title:v58 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:1 drawing:v35 image:0];

        goto LABEL_48;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v32 = *v28;
        v33 = v28[1];
        (*(v31 + 56))(v22, 1, 1, v78);
        v34 = sub_1D2AC6BF4();

        if ((*(v31 + 48))(v22, 1, v30) == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = sub_1D2AC6B64();
          (*(v31 + 8))(v22, v30);
        }

        v68 = [objc_allocWithZone(GPPromptElement) initWithText:v34 title:0 isPersonHandle:0 isSuggestableText:1 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v35 image:0];
        goto LABEL_36;
      }

      v60 = *v28;
      v61 = v28[1];
      v62 = v28[2];
      v63 = v28[3];
      v79 = v60;
      v80 = v61;
      v81 = v62;
      v82 = v63;
      sub_1D2A4B448();

      (*(v3 + 56))(v10, 1, 1, v30);
      v34 = sub_1D2AC6BF4();

      if ((*(v3 + 48))(v10, 1, v30) == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_1D2AC6B64();
        (*(v31 + 8))(v10, v30);
      }

      v70 = objc_allocWithZone(GPPromptElement);
      v74 = v35;
      v71 = v34;
      v72 = 1;
LABEL_35:
      v68 = [v70 initWithText:v71 title:0 isPersonHandle:v72 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v74 image:0];
LABEL_36:
      v52 = v68;

LABEL_48:
      return v52;
    }

    v42 = v78;
    v43 = v3;
    if (!EnumCaseMultiPayload)
    {
      v44 = *v28;
      v45 = v28[1];
      (*(v43 + 56))(v24, 1, 1, v78);
      v34 = sub_1D2AC6BF4();

      if ((*(v43 + 48))(v24, 1, v42) == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_1D2AC6B64();
        (*(v43 + 8))(v24, v42);
      }

      v70 = objc_allocWithZone(GPPromptElement);
      v74 = v35;
      v71 = v34;
      v72 = 0;
      goto LABEL_35;
    }

    v64 = *v28;
    v65 = v28[1];
    v67 = v28[2];
    v66 = v28[3];
    (*(v43 + 56))(v19, 1, 1, v78);
    v40 = sub_1D2AC6BF4();

    if (v66)
    {
      v41 = sub_1D2AC6BF4();
    }

    else
    {
      v41 = 0;
    }

    if ((*(v43 + 48))(v19, 1, v42) == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1D2AC6B64();
      (*(v43 + 8))(v19, v42);
    }

    v69 = [objc_allocWithZone(GPPromptElement) initWithText:v40 title:v41 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:1 needsSuggestableConceptsExtraction:0 drawing:v35 image:0];
LABEL_47:
    v52 = v69;

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v59 = *v28;
      v52 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:*v28];
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v36 = v3;
        v37 = *v28;
        v38 = v28[1];
        v39 = v78;
        (*(v36 + 56))(v13, 1, 1, v78);
        v40 = sub_1D2AC6BF4();
        v41 = sub_1D2AC6BF4();

        if ((*(v36 + 48))(v13, 1, v39) == 1)
        {
          v35 = 0;
        }

        else
        {
          v35 = sub_1D2AC6B64();
          (*(v36 + 8))(v13, v39);
        }

        v69 = [objc_allocWithZone(GPPromptElement) initWithText:v40 title:v41 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v35 image:0];
        goto LABEL_47;
      }

      v59 = *v28;
      v52 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:0];
      [v52 setPixelBuffer_];
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v59 = *v28;
    v52 = [objc_allocWithZone(GPPromptElement) initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:0 image:0];
    [v52 setDrawingPixelBuffer_];
LABEL_26:

    return v52;
  }

  v46 = v3;
  v47 = *(v3 + 32);
  v48 = v76;
  v49 = v78;
  v47(v76, v28, v78);
  v50 = objc_allocWithZone(GPPromptElement);
  v51 = sub_1D2AC6B64();
  v52 = [v50 initWithText:0 title:0 isPersonHandle:0 isSuggestableText:0 needsConceptsExtraction:0 needsSuggestableConceptsExtraction:0 drawing:v51 image:0];

  [v52 setRenderDrawingOnHost_];
  (*(v46 + 8))(v48, v49);
  return v52;
}

uint64_t static ImagePlaygroundConcept.drawing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2AC6B84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);

  return swift_storeEnumTagMultiPayload();
}

id static ImagePlaygroundConcept.image(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t static ImagePlaygroundConcept.image(_:)@<X0>(CGImageRef *a1@<X8>)
{
  v2 = sub_1D2AC5EA4();
  v3 = CGImageSourceCreateWithURL(v2, 0);

  if (v3 && (PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v3), ImageAtIndex = CGImageSourceCreateImageAtIndex(v3, PrimaryImageIndex, 0), v3, ImageAtIndex))
  {
    *a1 = ImageAtIndex;
    type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
    swift_storeEnumTagMultiPayload();
    v6 = type metadata accessor for ImagePlaygroundConcept(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a1;
    v10 = 0;
  }

  else
  {
    v11 = type metadata accessor for ImagePlaygroundConcept(0);
    v7 = *(*(v11 - 8) + 56);
    v8 = v11;
    v9 = a1;
    v10 = 1;
  }

  return v7(v9, v10, 1, v8);
}

uint64_t sub_1D2A4A7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static ImagePlaygroundConcept.person(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  a3[2] = 0;
  a3[3] = 0;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2A4A9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A4AA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImagePlaygroundConcept.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D2AC6B84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v56 - v10;
  if ([a1 isPersonHandle])
  {
    v12 = [a1 text];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D2AC6C24();
      v16 = v15;

      v56[2] = v14;
      v56[3] = v16;
      v56[0] = 6250335;
      v56[1] = 0xE300000000000000;
      sub_1D2A4B050();
      v17 = sub_1D2AC6FC4();

      if (v17[2] < 2uLL)
      {
        v19 = 0;
        v21 = 0;
        v18 = 0xE000000000000000;
        v20 = 0xE000000000000000;
      }

      else
      {
        v19 = v17[4];
        v18 = v17[5];
        v21 = v17[6];
        v20 = v17[7];
      }

      *a2 = v19;
      a2[1] = v18;
      a2[2] = v21;
      a2[3] = v20;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ([a1 isTitle])
  {
    v22 = [a1 text];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1D2AC6C24();
      v26 = v25;

      *a2 = v24;
      a2[1] = v26;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      goto LABEL_28;
    }
  }

  if ([a1 isSuggestableText])
  {
    v27 = [a1 text];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1D2AC6C24();
      v31 = v30;

      *a2 = v29;
      a2[1] = v31;
      type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      goto LABEL_28;
    }
  }

  if (![a1 needsConceptsExtraction] || (v32 = objc_msgSend(a1, sel_text)) == 0)
  {
    if (![a1 needsSuggestableConceptsExtraction] || (v38 = objc_msgSend(a1, sel_text)) == 0)
    {
      v45 = [a1 drawing];
      if (v45)
      {
        v46 = v45;
        sub_1D2AC6B74();

        v47 = *(v5 + 32);
        v47(v11, v9, v4);
        v47(a2, v11, v4);
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
        return swift_storeEnumTagMultiPayload();
      }

      v49 = [a1 drawingPixelBuffer];
      if (v49 || (v49 = [a1 pixelBuffer]) != 0 || (v49 = objc_msgSend(a1, sel_image)) != 0)
      {
        v50 = v49;

        *a2 = v50;
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      }

      else
      {
        v51 = [a1 text];
        if (v51)
        {
          v52 = v51;
          v53 = sub_1D2AC6C24();
          v55 = v54;
        }

        else
        {

          v53 = 0;
          v55 = 0xE000000000000000;
        }

        *a2 = v53;
        a2[1] = v55;
        type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
      }

      goto LABEL_28;
    }

    v39 = v38;
    v34 = sub_1D2AC6C24();
    v36 = v40;

    v37 = [a1 title];
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_26:

    v42 = 0;
    v44 = 0;
    goto LABEL_27;
  }

  v33 = v32;
  v34 = sub_1D2AC6C24();
  v36 = v35;

  v37 = [a1 title];
  if (!v37)
  {
    goto LABEL_26;
  }

LABEL_18:
  v41 = v37;
  v42 = sub_1D2AC6C24();
  v44 = v43;

LABEL_27:
  *a2 = v34;
  a2[1] = v36;
  a2[2] = v42;
  a2[3] = v44;
  type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(0);
LABEL_28:

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1D2A4B050()
{
  result = qword_1EE088888;
  if (!qword_1EE088888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE088888);
  }

  return result;
}

uint64_t sub_1D2A4B0CC()
{
  result = type metadata accessor for ImagePlaygroundConcept.ImageGenerationPromptElementEnum(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2A4B188()
{
  sub_1D2A4B24C();
  if (v0 <= 0x3F)
  {
    sub_1D2AC6B84();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CVBuffer(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGImage(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2A4B24C()
{
  if (!qword_1EC703F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703F20, &qword_1D2ACA9D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC703F18);
    }
  }
}

ImagePlayground::ImagePlaygroundImageImportPolicy_optional __swiftcall ImagePlaygroundImageImportPolicy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundPersonalizationPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePlaygroundPersonalizationPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2A4B448()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703B50, &qword_1D2AC9D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2ACAB40;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  v17 = MEMORY[0x1E69E7CC0];

  sub_1D2A2C9A8(0, 2, 0);
  v6 = v17;
  v8 = *(inited + 32);
  v7 = *(inited + 40);
  v10 = *(v17 + 16);
  v9 = *(v17 + 24);

  if (v10 >= v9 >> 1)
  {
    sub_1D2A2C9A8((v9 > 1), v10 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 16 * v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1D2A2C9A8((v12 > 1), v13 + 1, 1);
    v6 = v17;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 16 * v13;
  *(v14 + 32) = v4;
  *(v14 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F30, &qword_1D2ACABA0);
  sub_1D2A4B6E8();
  v15 = sub_1D2AC6BB4();

  return v15;
}

uint64_t ContactPersonHandle.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactPersonHandle.handleString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

ImagePlayground::ContactPersonHandle __swiftcall ContactPersonHandle.init(name:handleString:)(Swift::String name, Swift::String handleString)
{
  *v2 = name;
  v2[1] = handleString;
  result.handleString = handleString;
  result.name = name;
  return result;
}

uint64_t sub_1D2A4B650(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D2A4B698(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D2A4B6E8()
{
  result = qword_1EC703F38;
  if (!qword_1EC703F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC703F30, &qword_1D2ACABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC703F38);
  }

  return result;
}

uint64_t sub_1D2A4B874()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC703F88);
  __swift_project_value_buffer(v0, qword_1EC703F88);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4B9FC()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC703FB8);
  __swift_project_value_buffer(v0, qword_1EC703FB8);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BC90()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE088990);
  __swift_project_value_buffer(v0, qword_1EE088990);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BD34()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704000);
  __swift_project_value_buffer(v0, qword_1EC704000);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BDDC()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704018);
  __swift_project_value_buffer(v0, qword_1EC704018);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4BFE0()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE0889C0);
  __swift_project_value_buffer(v0, qword_1EE0889C0);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C084()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704078);
  __swift_project_value_buffer(v0, qword_1EC704078);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C2B0()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE088438);
  __swift_project_value_buffer(v0, qword_1EE088438);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C564(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C600()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EE0889E0);
  __swift_project_value_buffer(v0, qword_1EE0889E0);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C6A8()
{
  v0 = sub_1D2AC63B4();
  __swift_allocate_value_buffer(v0, qword_1EC704180);
  __swift_project_value_buffer(v0, qword_1EC704180);
  return sub_1D2AC63A4();
}

uint64_t sub_1D2A4C74C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D2AC63B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_1D2A4C82C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1D2AC63B4();
  __swift_project_value_buffer(v3, a2);
  oslog = sub_1D2AC6394();
  v4 = sub_1D2AC6E94();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2A17000, oslog, v4, "Not implemented yet", v5, 2u);
    MEMORY[0x1D38A8460](v5, -1, -1);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

double sub_1D2A4C978()
{
  result = 0.0;
  xmmword_1EE0893A0 = 0u;
  unk_1EE0893B0 = 0u;
  xmmword_1EE089380 = 0u;
  unk_1EE089390 = 0u;
  xmmword_1EE089370 = 0u;
  *&xmmword_1EE089360 = 0x6F6974616D696E61;
  *(&xmmword_1EE089360 + 1) = 0xE90000000000006ELL;
  return result;
}

void __swiftcall ImagePlaygroundStyle.init(identifier:)(ImagePlayground::ImagePlaygroundStyle *__return_ptr retstr, Swift::String identifier)
{
  retstr->_representationInfo.value.iconFilename = 0u;
  retstr->_representationInfo.value.providerIconName = 0u;
  retstr->_representationInfo.value.familyName = 0u;
  retstr->_representationInfo.value.backingPrompt = 0u;
  retstr->_representationInfo.value.displayName = 0u;
  retstr->id = identifier;
}

void sub_1D2A4C9C8()
{
  xmmword_1EE089628 = 0u;
  unk_1EE089638 = 0u;
  xmmword_1EE089608 = 0u;
  unk_1EE089618 = 0u;
  xmmword_1EE0895F8 = 0u;
  strcpy(&xmmword_1EE0895E8, "illustration");
  BYTE13(xmmword_1EE0895E8) = 0;
  HIWORD(xmmword_1EE0895E8) = -5120;
}

uint64_t static ImagePlaygroundStyle.illustration.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0895E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089618;
  v9[2] = xmmword_1EE089608;
  v9[3] = unk_1EE089618;
  v2 = xmmword_1EE089628;
  v3 = unk_1EE089638;
  v9[4] = xmmword_1EE089628;
  v9[5] = unk_1EE089638;
  v4 = xmmword_1EE0895E8;
  v5 = xmmword_1EE0895F8;
  v9[0] = xmmword_1EE0895E8;
  v9[1] = xmmword_1EE0895F8;
  a1[2] = xmmword_1EE089608;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CA98()
{
  result = 0.0;
  xmmword_1EE089410 = 0u;
  unk_1EE089420 = 0u;
  xmmword_1EE0893F0 = 0u;
  unk_1EE089400 = 0u;
  xmmword_1EE0893E0 = 0u;
  *&xmmword_1EE0893D0 = 0x686374656B73;
  *(&xmmword_1EE0893D0 + 1) = 0xE600000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle.sketch.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0893C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089400;
  v9[2] = xmmword_1EE0893F0;
  v9[3] = unk_1EE089400;
  v2 = xmmword_1EE089410;
  v3 = unk_1EE089420;
  v9[4] = xmmword_1EE089410;
  v9[5] = unk_1EE089420;
  v4 = xmmword_1EE0893D0;
  v5 = xmmword_1EE0893E0;
  v9[0] = xmmword_1EE0893D0;
  v9[1] = xmmword_1EE0893E0;
  a1[2] = xmmword_1EE0893F0;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CB5C()
{
  result = 0.0;
  xmmword_1EE0895B8 = 0u;
  unk_1EE0895C8 = 0u;
  xmmword_1EE089598 = 0u;
  unk_1EE0895A8 = 0u;
  xmmword_1EE089588 = 0u;
  *&xmmword_1EE089578 = 0xD000000000000013;
  *(&xmmword_1EE089578 + 1) = 0x80000001D2ADEB90;
  return result;
}

uint64_t static ImagePlaygroundStyle.externalProvider.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089570 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE0895A8;
  v9[2] = xmmword_1EE089598;
  v9[3] = unk_1EE0895A8;
  v2 = xmmword_1EE0895B8;
  v3 = unk_1EE0895C8;
  v9[4] = xmmword_1EE0895B8;
  v9[5] = unk_1EE0895C8;
  v4 = xmmword_1EE089578;
  v5 = xmmword_1EE089588;
  v9[0] = xmmword_1EE089578;
  v9[1] = xmmword_1EE089588;
  a1[2] = xmmword_1EE089598;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CC28()
{
  result = 0.0;
  xmmword_1EE089480 = 0u;
  unk_1EE089490 = 0u;
  xmmword_1EE089460 = 0u;
  unk_1EE089470 = 0u;
  xmmword_1EE089450 = 0u;
  *&xmmword_1EE089440 = 0x696A6F6D65;
  *(&xmmword_1EE089440 + 1) = 0xE500000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle.emoji.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089438 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089470;
  v9[2] = xmmword_1EE089460;
  v9[3] = unk_1EE089470;
  v2 = xmmword_1EE089480;
  v3 = unk_1EE089490;
  v9[4] = xmmword_1EE089480;
  v9[5] = unk_1EE089490;
  v4 = xmmword_1EE089440;
  v5 = xmmword_1EE089450;
  v9[0] = xmmword_1EE089440;
  v9[1] = xmmword_1EE089450;
  a1[2] = xmmword_1EE089460;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CCEC()
{
  result = 0.0;
  xmmword_1EC7041D8 = 0u;
  unk_1EC7041E8 = 0u;
  xmmword_1EC7041B8 = 0u;
  unk_1EC7041C8 = 0u;
  xmmword_1EC7041A8 = 0u;
  *&xmmword_1EC704198 = 0x696A6F6D65;
  *(&xmmword_1EC704198 + 1) = 0xE500000000000000;
  return result;
}

uint64_t static ImagePlaygroundStyle._emojiStyleDeprecated.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EC703610 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EC7041C8;
  v9[2] = xmmword_1EC7041B8;
  v9[3] = unk_1EC7041C8;
  v2 = xmmword_1EC7041D8;
  v3 = unk_1EC7041E8;
  v9[4] = xmmword_1EC7041D8;
  v9[5] = unk_1EC7041E8;
  v4 = xmmword_1EC704198;
  v5 = xmmword_1EC7041A8;
  v9[0] = xmmword_1EC704198;
  v9[1] = xmmword_1EC7041A8;
  a1[2] = xmmword_1EC7041B8;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

uint64_t sub_1D2A4CDB0()
{
  if (qword_1EE089438 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EE089460;
  v2[3] = unk_1EE089470;
  v2[4] = xmmword_1EE089480;
  v2[5] = unk_1EE089490;
  v2[0] = xmmword_1EE089440;
  v2[1] = xmmword_1EE089450;
  xmmword_1EC704218 = xmmword_1EE089460;
  unk_1EC704228 = unk_1EE089470;
  xmmword_1EC704238 = xmmword_1EE089480;
  unk_1EC704248 = unk_1EE089490;
  xmmword_1EC7041F8 = xmmword_1EE089440;
  unk_1EC704208 = xmmword_1EE089450;
  return sub_1D2A2D244(v2, &v1);
}

uint64_t static ImagePlaygroundStyle.emojiStyle.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EC703618 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EC704228;
  v9[2] = xmmword_1EC704218;
  v9[3] = unk_1EC704228;
  v2 = xmmword_1EC704238;
  v3 = unk_1EC704248;
  v9[4] = xmmword_1EC704238;
  v9[5] = unk_1EC704248;
  v4 = xmmword_1EC7041F8;
  v5 = unk_1EC704208;
  v9[0] = xmmword_1EC7041F8;
  v9[1] = unk_1EC704208;
  a1[2] = xmmword_1EC704218;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

double sub_1D2A4CED0()
{
  result = 0.0;
  xmmword_1EE089548 = 0u;
  unk_1EE089558 = 0u;
  xmmword_1EE089528 = 0u;
  unk_1EE089538 = 0u;
  xmmword_1EE089518 = 0u;
  *&xmmword_1EE089508 = 0xD000000000000013;
  *(&xmmword_1EE089508 + 1) = 0x80000001D2ADEB70;
  return result;
}

uint64_t static ImagePlaygroundStyle.messagesBackground.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE089500 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EE089538;
  v9[2] = xmmword_1EE089528;
  v9[3] = unk_1EE089538;
  v2 = xmmword_1EE089548;
  v3 = unk_1EE089558;
  v9[4] = xmmword_1EE089548;
  v9[5] = unk_1EE089558;
  v4 = xmmword_1EE089508;
  v5 = xmmword_1EE089518;
  v9[0] = xmmword_1EE089508;
  v9[1] = xmmword_1EE089518;
  a1[2] = xmmword_1EE089528;
  a1[3] = v1;
  a1[4] = v2;
  a1[5] = v3;
  *a1 = v4;
  a1[1] = v5;
  return sub_1D2A2D244(v9, &v8);
}

char *static ImagePlaygroundStyle.allPlaygroundAndGenmojiStyles.getter()
{
  v0 = _s15ImagePlayground0aB5StyleV3allSayACGvgZ_0();
  *(&v12 + 1) = &type metadata for ImagePlaygroundFeatures;
  *&v13 = sub_1D2A4FF8C();
  LOBYTE(v11) = 1;
  v1 = sub_1D2AC60E4();
  __swift_destroy_boxed_opaque_existential_0(&v11);
  if (v1)
  {
    if (qword_1EE089438 != -1)
    {
      swift_once();
    }

    v13 = xmmword_1EE089460;
    v14 = unk_1EE089470;
    v15 = xmmword_1EE089480;
    v16 = unk_1EE089490;
    v11 = xmmword_1EE089440;
    v12 = xmmword_1EE089450;
    sub_1D2A2D244(&v11, &v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1D2A4474C(0, *(v0 + 2) + 1, 1, v0);
    }

    v3 = *(v0 + 2);
    v2 = *(v0 + 3);
    if (v3 >= v2 >> 1)
    {
      v0 = sub_1D2A4474C((v2 > 1), v3 + 1, 1, v0);
    }

    *(v0 + 2) = v3 + 1;
    v4 = &v0[96 * v3];
    v5 = v12;
    *(v4 + 2) = v11;
    *(v4 + 3) = v5;
    v6 = v13;
    v7 = v14;
    v8 = v16;
    *(v4 + 6) = v15;
    *(v4 + 7) = v8;
    *(v4 + 4) = v6;
    *(v4 + 5) = v7;
  }

  return v0;
}

uint64_t ImagePlaygroundStyle.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.familyName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.familyName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.backingPrompt.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.backingPrompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.iconFilename.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.iconFilename.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.providerIconName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.providerIconName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall ImagePlaygroundStyle.RepresentationInfo.init(displayName:familyName:backingPrompt:iconFilename:providerIconName:)(ImagePlayground::ImagePlaygroundStyle::RepresentationInfo *__return_ptr retstr, Swift::String displayName, Swift::String familyName, Swift::String_optional backingPrompt, Swift::String iconFilename, Swift::String_optional providerIconName)
{
  retstr->displayName = displayName;
  retstr->familyName = familyName;
  retstr->backingPrompt = backingPrompt;
  retstr->iconFilename = iconFilename;
  retstr->providerIconName = providerIconName;
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1D38A7100](v1, v2);
  return v4;
}

uint64_t sub_1D2A4D42C()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x50676E696B636162;
  v4 = 0x656C69466E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E796C696D6166;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2A4D4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2A50ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2A4D52C(uint64_t a1)
{
  v2 = sub_1D2A50198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A4D568(uint64_t a1)
{
  v2 = sub_1D2A50198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704258, &qword_1D2ACABC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A50198();
  sub_1D2AC74A4();
  v22 = 0;
  v15 = v17[9];
  sub_1D2AC72D4();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1D2AC72D4();
  v20 = 2;
  sub_1D2AC72A4();
  v19 = 3;
  sub_1D2AC72D4();
  v18 = 4;
  sub_1D2AC72A4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v6)
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  if (!v10)
  {
    return sub_1D2AC7464();
  }

  sub_1D2AC7464();

  return sub_1D2AC6C74();
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v11 = v0[8];
  sub_1D2AC7444();
  sub_1D2AC6C74();
  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v6)
  {
    sub_1D2AC6C74();
  }

  sub_1D2AC6C74();
  sub_1D2AC7464();
  if (v9)
  {
    sub_1D2AC6C74();
  }

  return sub_1D2AC7484();
}

uint64_t ImagePlaygroundStyle.RepresentationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704268, &qword_1D2ACABC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A50198();
  sub_1D2AC7494();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_1D2AC7234();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = sub_1D2AC7234();
  v30 = v14;
  v28 = v13;
  LOBYTE(v37[0]) = 2;
  *&v27 = sub_1D2AC7204();
  *(&v27 + 1) = v15;
  LOBYTE(v37[0]) = 3;
  v26 = sub_1D2AC7234();
  v29 = v16;
  v38 = 4;
  v17 = sub_1D2AC7204();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v20 = v30;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v21 = *(&v27 + 1);
  v34 = v27;
  v22 = v29;
  *&v35 = v26;
  *(&v35 + 1) = v29;
  *&v36 = v17;
  *(&v36 + 1) = v19;
  v23 = v35;
  a2[2] = v27;
  a2[3] = v23;
  a2[4] = v36;
  v24 = v33;
  *a2 = v32;
  a2[1] = v24;
  sub_1D2A501EC(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v37[0] = v11;
  v37[1] = v31;
  v37[2] = v28;
  v37[3] = v20;
  v37[4] = v27;
  v37[5] = v21;
  v37[6] = v26;
  v37[7] = v22;
  v37[8] = v17;
  v37[9] = v19;
  return sub_1D2A50224(v37);
}

uint64_t sub_1D2A4DDB4()
{
  sub_1D2AC7444();
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4DDF8()
{
  sub_1D2AC7444();
  ImagePlaygroundStyle.RepresentationInfo.hash(into:)();
  return sub_1D2AC7484();
}

uint64_t sub_1D2A4DE34@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  result = MEMORY[0x1D38A7100](v3, v4);
  *a1 = v6;
  a1[1] = v7;
  return result;
}

void ImagePlaygroundStyle.representationInfo.getter(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  v21 = *(v1 + 3);
  v22 = v5;
  v23 = *(v1 + 5);
  v6 = *(v1 + 2);
  v19 = *(v1 + 1);
  v20 = v6;
  if (qword_1EE089570 != -1)
  {
    v11 = v3;
    v12 = v4;
    swift_once();
    v4 = v12;
    v3 = v11;
  }

  if (__PAIR128__(v4, v3) != xmmword_1EE089578 && (sub_1D2AC7354() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v16 = *&algn_1EE0894AC[36];
  v17 = *&algn_1EE0894AC[52];
  v18 = *&algn_1EE0894AC[68];
  v14 = *&algn_1EE0894AC[4];
  v15 = *&algn_1EE0894AC[20];
  sub_1D2A50254(&v14, &v13);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  if (*(&v14 + 1))
  {
    v7 = v17;
    a1[2] = v16;
    a1[3] = v7;
    a1[4] = v18;
    v8 = v15;
    *a1 = v14;
    a1[1] = v8;
  }

  else
  {
LABEL_9:
    v9 = v22;
    a1[2] = v21;
    a1[3] = v9;
    a1[4] = v23;
    v10 = v20;
    *a1 = v19;
    a1[1] = v10;
    sub_1D2A50254(&v19, &v14);
  }
}

__n128 ImagePlaygroundStyle.representationInfo.setter(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v7[3] = v3;
  v7[4] = v1[5];
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  sub_1D2A2E61C(v7, &qword_1EC704270, &qword_1D2ACABD0);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  v1[5] = *(a1 + 64);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

void static ImagePlaygroundStyle.externalProviderRepresentationInfo.getter(_OWORD *a1@<X8>)
{
  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v2 = *&algn_1EE0894AC[20];
  v3 = *&algn_1EE0894AC[52];
  v7[2] = *&algn_1EE0894AC[36];
  v7[3] = *&algn_1EE0894AC[52];
  v7[4] = *&algn_1EE0894AC[68];
  v4 = *&algn_1EE0894AC[68];
  v7[0] = *&algn_1EE0894AC[4];
  v5 = *&algn_1EE0894AC[4];
  v7[1] = *&algn_1EE0894AC[20];
  a1[2] = *&algn_1EE0894AC[36];
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  sub_1D2A50254(v7, &v6);
  os_unfair_lock_unlock(&dword_1EE0894A8);
}

void (*ImagePlaygroundStyle.representationInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 480) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 5);
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  *(v4 + 48) = *(v1 + 4);
  *(v4 + 64) = v7;
  *(v4 + 16) = v9;
  *(v4 + 32) = v8;
  *v4 = *(v1 + 1);
  if (qword_1EE089570 != -1)
  {
    v17 = v5;
    v18 = v6;
    swift_once();
    v6 = v18;
    v5 = v17;
  }

  if (__PAIR128__(v6, v5) != xmmword_1EE089578 && (sub_1D2AC7354() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_1EE0894A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EE0894A8);
  v10 = *&algn_1EE0894AC[20];
  v11 = *&algn_1EE0894AC[52];
  *(v4 + 192) = *&algn_1EE0894AC[36];
  *(v4 + 208) = v11;
  *(v4 + 224) = *&algn_1EE0894AC[68];
  *(v4 + 160) = *&algn_1EE0894AC[4];
  *(v4 + 176) = v10;
  sub_1D2A50254(v4 + 160, v4 + 240);
  os_unfair_lock_unlock(&dword_1EE0894A8);
  if (*(v4 + 168))
  {
    v12 = *(v4 + 208);
    *(v4 + 112) = *(v4 + 192);
    *(v4 + 128) = v12;
    *(v4 + 144) = *(v4 + 224);
    v13 = *(v4 + 176);
    *(v4 + 80) = *(v4 + 160);
    *(v4 + 96) = v13;
  }

  else
  {
LABEL_12:
    v14 = *(v4 + 48);
    *(v4 + 112) = *(v4 + 32);
    *(v4 + 128) = v14;
    *(v4 + 144) = *(v4 + 64);
    v15 = *(v4 + 16);
    *(v4 + 80) = *v4;
    *(v4 + 96) = v15;
    sub_1D2A50254(v4, v4 + 160);
  }

  return sub_1D2A4E2CC;
}

void sub_1D2A4E2CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 480);
    v4 = *(v2 + 128);
    *(v2 + 352) = *(v2 + 112);
    *(v2 + 368) = v4;
    *(v2 + 384) = *(v2 + 144);
    v5 = *(v2 + 96);
    *(v2 + 320) = *(v2 + 80);
    *(v2 + 336) = v5;
    v7 = v3[2];
    v6 = v3[3];
    v8 = v3[5];
    *(v2 + 288) = v3[4];
    *(v2 + 304) = v8;
    *(v2 + 256) = v7;
    *(v2 + 272) = v6;
    *(v2 + 240) = v3[1];
    sub_1D2A50254(v2 + 320, v2 + 400);
    sub_1D2A2E61C(v2 + 240, &qword_1EC704270, &qword_1D2ACABD0);
    v3[1] = *(v2 + 320);
    v9 = *(v2 + 384);
    v11 = *(v2 + 336);
    v10 = *(v2 + 352);
    v3[4] = *(v2 + 368);
    v3[5] = v9;
    v3[2] = v11;
    v3[3] = v10;
    v12 = *(v2 + 128);
    *(v2 + 192) = *(v2 + 112);
    *(v2 + 208) = v12;
    *(v2 + 224) = *(v2 + 144);
    v13 = *(v2 + 96);
    *(v2 + 160) = *(v2 + 80);
    *(v2 + 176) = v13;
    sub_1D2A2E61C(v2 + 160, &qword_1EC704270, &qword_1D2ACABD0);
  }

  else
  {
    v14 = *(v2 + 480);
    v20 = *(v2 + 112);
    v21 = *(v2 + 128);
    v22 = *(v2 + 144);
    v18 = *(v2 + 80);
    v19 = *(v2 + 96);
    *(v2 + 160) = v14[1];
    v15 = v14[5];
    v17 = v14[2];
    v16 = v14[3];
    *(v2 + 208) = v14[4];
    *(v2 + 224) = v15;
    *(v2 + 176) = v17;
    *(v2 + 192) = v16;
    sub_1D2A2E61C(v2 + 160, &qword_1EC704270, &qword_1D2ACABD0);
    v14[3] = v20;
    v14[4] = v21;
    v14[5] = v22;
    v14[1] = v18;
    v14[2] = v19;
  }

  free(v2);
}