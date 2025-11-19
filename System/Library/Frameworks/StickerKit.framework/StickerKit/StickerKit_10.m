uint64_t sub_19A6E4EC4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 info];
  if (!v10)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_10:
    sub_19A5F2B54(&v22, &unk_1EAFCD750);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 objectForSetting_];

  if (v12)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v22 = v25;
  v23 = v26;
  if (!*(&v26 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_11:
    v18 = 1;
    return (*(v7 + 56))(a2, v18, 1, v6);
  }

  v13 = v25;
  if (a1)
  {
    v14 = sub_19A7A8C84();
    swift_allocObject();
    v15 = sub_19A7A8C74();
    v16 = &unk_1EAFCB0C0;
    v17 = MEMORY[0x1E69689B0];
  }

  else
  {
    v14 = sub_19A7A8B54();
    swift_allocObject();
    v15 = sub_19A7A8B44();
    v16 = &unk_1ED8B3410;
    v17 = MEMORY[0x1E6967F70];
  }

  v20 = sub_19A6EAB58(v16, v17);
  *(&v23 + 1) = v14;
  v24 = v20;
  *&v22 = v15;
  __swift_project_boxed_opaque_existential_1(&v22, v14);
  v25 = v13;
  sub_19A6EAB58(&qword_1EAFCAB70, type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery);
  sub_19A7A9634();
  sub_19A612F14(v13, *(&v13 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v22);
  sub_19A6EAA40(v9, a2);
  v18 = 0;
  return (*(v7 + 56))(a2, v18, 1, v6);
}

uint64_t sub_19A6E52F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 info];
  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_10:
    result = sub_19A5F2B54(&v18, &unk_1EAFCD750);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 objectForSetting_];

  if (v8)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v18 = v21;
  v19 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_11:
    v15 = 0uLL;
    v16 = 2;
    v17 = 0uLL;
    goto LABEL_12;
  }

  v10 = v21;
  if (a1)
  {
    v11 = sub_19A7A8C84();
    swift_allocObject();
    v12 = sub_19A7A8C74();
    v13 = &unk_1EAFCB0C0;
    v14 = MEMORY[0x1E69689B0];
  }

  else
  {
    v11 = sub_19A7A8B54();
    swift_allocObject();
    v12 = sub_19A7A8B44();
    v13 = &unk_1ED8B3410;
    v14 = MEMORY[0x1E6967F70];
  }

  *(&v19 + 1) = v11;
  v20 = sub_19A6EAB58(v13, v14);
  *&v18 = v12;
  __swift_project_boxed_opaque_existential_1(&v18, v11);
  sub_19A6EA9A0();
  sub_19A7A9634();
  sub_19A612F14(v10, *(&v10 + 1));
  result = __swift_destroy_boxed_opaque_existential_1(&v18);
  v15 = v21;
  v17 = v22;
  v16 = v23;
LABEL_12:
  *a2 = v15;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_19A6E565C(char a1)
{
  v2 = v1;
  type metadata accessor for EmojiSelection();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&unk_1EAFCE828, type metadata accessor for EmojiSelection);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E59F0(char a1)
{
  v2 = v1;
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v13 = v16;
  v14 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v16;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E5D3C(char a1)
{
  v2 = v1;
  type metadata accessor for UIStickerWrapper();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCE838, type metadata accessor for UIStickerWrapper);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E60C8(char a1)
{
  v2 = v1;
  type metadata accessor for EditSticker(0);
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&unk_1EAFCE840, type metadata accessor for EditSticker);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E6458@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_19A7A8F64();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 info];
  if (!v11)
  {
    v23 = 0u;
    v24 = 0u;
LABEL_10:
    sub_19A5F2B54(&v23, &unk_1EAFCD750);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v11 objectForSetting_];

  if (v13)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v23 = v26;
  v24 = v27;
  if (!*(&v27 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_11:
    v19 = 1;
    return (*(v7 + 56))(a2, v19, 1, v6);
  }

  v14 = v26;
  if (a1)
  {
    v15 = sub_19A7A8C84();
    swift_allocObject();
    v16 = sub_19A7A8C74();
    v17 = &unk_1EAFCB0C0;
    v18 = MEMORY[0x1E69689B0];
  }

  else
  {
    v15 = sub_19A7A8B54();
    swift_allocObject();
    v16 = sub_19A7A8B44();
    v17 = &unk_1ED8B3410;
    v18 = MEMORY[0x1E6967F70];
  }

  v21 = sub_19A6EAB58(v17, v18);
  *(&v24 + 1) = v15;
  v25 = v21;
  *&v23 = v16;
  __swift_project_boxed_opaque_existential_1(&v23, v15);
  v26 = v14;
  sub_19A6EAB58(&qword_1EAFCB080, MEMORY[0x1E69695A8]);
  sub_19A7A9634();
  sub_19A612F14(v14, *(&v14 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v23);
  (*(v7 + 32))(a2, v10, v6);
  v19 = 0;
  return (*(v7 + 56))(a2, v19, 1, v6);
}

uint64_t sub_19A6E688C(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v13 = v16;
  v14 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v16;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  sub_19A6EAAF8(&qword_1EAFCE850, qword_1EAFCEEB0);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E6C24@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for CGRect(0);
  v6 = [v3 info];
  if (!v6)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_10:
    result = sub_19A5F2B54(&v18, &unk_1EAFCD750);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v6 objectForSetting_];

  if (v8)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v18 = v21;
  v19 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_11:
    v15 = 0uLL;
    v16 = 1;
    v17 = 0uLL;
    goto LABEL_12;
  }

  v10 = v21;
  if (a1)
  {
    v11 = sub_19A7A8C84();
    swift_allocObject();
    v12 = sub_19A7A8C74();
    v13 = &unk_1EAFCB0C0;
    v14 = MEMORY[0x1E69689B0];
  }

  else
  {
    v11 = sub_19A7A8B54();
    swift_allocObject();
    v12 = sub_19A7A8B44();
    v13 = &unk_1ED8B3410;
    v14 = MEMORY[0x1E6967F70];
  }

  *(&v19 + 1) = v11;
  v20 = sub_19A6EAB58(v13, v14);
  *&v18 = v12;
  __swift_project_boxed_opaque_existential_1(&v18, v11);
  sub_19A6EAB58(&qword_1EAFCF2C0, type metadata accessor for CGRect);
  sub_19A7A9634();
  sub_19A612F14(v10, *(&v10 + 1));
  result = __swift_destroy_boxed_opaque_existential_1(&v18);
  v16 = 0;
  v15 = v21;
  v17 = v22;
LABEL_12:
  *a2 = v15;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_19A6E6FC0(char a1)
{
  v2 = v1;
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EA94C();
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E7318(char a1)
{
  v2 = v1;
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 2;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 2;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E765C(char a1)
{
  v2 = v1;
  type metadata accessor for SharedSticker();
  v4 = [v2 info];
  if (!v4)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_10:
    sub_19A5F2B54(&v13, &unk_1EAFCD750);
    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForSetting_];

  if (v6)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v13 = v17;
  v14 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
    return 0;
  }

  v7 = v17;
  if (a1)
  {
    v8 = sub_19A7A8C84();
    swift_allocObject();
    v9 = sub_19A7A8C74();
    v10 = &unk_1EAFCB0C0;
    v11 = MEMORY[0x1E69689B0];
  }

  else
  {
    v8 = sub_19A7A8B54();
    swift_allocObject();
    v9 = sub_19A7A8B44();
    v10 = &unk_1ED8B3410;
    v11 = MEMORY[0x1E6967F70];
  }

  *(&v14 + 1) = v8;
  v15 = sub_19A6EAB58(v10, v11);
  *&v13 = v9;
  __swift_project_boxed_opaque_existential_1(&v13, v8);
  v17 = v7;
  sub_19A6EAB58(&qword_1EAFCE858, type metadata accessor for SharedSticker);
  sub_19A7A9634();
  sub_19A612F14(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v16;
}

uint64_t sub_19A6E7AB4()
{
  v1 = 0x7453686372616573;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6974706163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656B63697473;
  }
}

uint64_t sub_19A6E7B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A6EADD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A6E7B54(uint64_t a1)
{
  v2 = sub_19A6EA8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6E7B90(uint64_t a1)
{
  v2 = sub_19A6EA8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A6E7C30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE808);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6EA8A4();
  sub_19A7AC1D4();
  v11 = *(v3 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker);
  v10[7] = 0;
  sub_19A7AAF14();
  sub_19A6EAB58(&qword_1EAFCA600, MEMORY[0x1E69D4758]);
  sub_19A7ABFA4();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;

  sub_19A7ABF94();

  v10[5] = 2;

  sub_19A7ABF94();
  (*(v6 + 8))(v8, v5);
}

id sub_19A6E7EA0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE800);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker;
  *&v1[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker] = 0;
  v8 = &v1[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_captionText];
  *v9 = 0;
  v9[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6EA8A4();
  v22 = v6;
  v11 = ObjectType;
  v10 = v24;
  sub_19A7AC1C4();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v8;
    v12 = v20;
    sub_19A7AAF14();
    v26 = 0;
    sub_19A6EAB58(&unk_1EAFCA5F0, MEMORY[0x1E69D4758]);
    v13 = v21;
    sub_19A7ABF24();
    v14 = *&v1[v7];
    *&v1[v7] = v27;

    LOBYTE(v27) = 1;
    v15 = sub_19A7ABF04();
    v16 = v24;
    *v24 = v15;
    v16[1] = v17;

    LOBYTE(v27) = 2;
    *v9 = sub_19A7ABF04();
    v9[1] = v19;

    v25.receiver = v1;
    v25.super_class = v11;
    v2 = objc_msgSendSuper2(&v25, sel_init);
    (*(v12 + 8))(v22, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

id sub_19A6E8178@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_19A6E7EA0(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_19A6E81EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = [objc_allocWithZone(type metadata accessor for EmojiGenerationAddResult()) init];
  v13 = *&v12[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker];
  *&v12[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker] = a1;
  v14 = a1;

  v15 = &v12[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString];
  *v15 = a2;
  *(v15 + 1) = a3;

  v16 = &v12[OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_captionText];
  *v16 = a4;
  *(v16 + 1) = a5;

  v17 = sub_19A6E9FC8(a6 & 1, v12, 1, 0);

  return v17;
}

id sub_19A6E8310(void *a1)
{
  result = [a1 delegate];
  if (result)
  {
    v3 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = [v1 info];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 objectForSetting_];

        if (v6)
        {
          sub_19A7ABB44();
          swift_unknownObjectRelease();
        }

        else
        {
          v20 = 0u;
          v21 = 0u;
        }

        v22 = v20;
        v23 = v21;
        if (*(&v21 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v20)
            {
              if (v20 == 1)
              {
                v8 = sub_19A6E4B38(1);
                if (v8)
                {
                  v9 = *(v8 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker);
                  v10 = *(v8 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString);
                  v11 = *(v8 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString + 8);
                  v12 = v8;

                  v13 = v9;

                  sub_19A6E29F0(v9, v10, v11, 1);

                  swift_unknownObjectRelease();
                }
              }

              else if (v20 == 2)
              {
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  [Strong emojiGenerationRemoteControllerDidCancel_];
                  swift_unknownObjectRelease();
                }
              }
            }

            else
            {
              v14 = sub_19A6E4B38(1);
              if (v14)
              {
                v15 = *(v14 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker);
                v16 = *(v14 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString);
                v17 = *(v14 + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString + 8);
                v18 = v14;

                v19 = v15;

                sub_19A6E29F0(v15, v16, v17, 0);
              }
            }
          }

          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v22 = 0u;
        v23 = 0u;
      }

      return sub_19A5F2B54(&v22, &unk_1EAFCD750);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id EmojiGenerationClientToHostAction.__allocating_init(info:responder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id EmojiGenerationClientToHostAction.init(info:responder:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for EmojiGenerationClientToHostAction();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id EmojiGenerationClientToHostAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiGenerationClientToHostAction.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiGenerationClientToHostAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmojiGenerationClientToHostAction.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v2;
}

id EmojiGenerationClientToHostAction.init(xpcDictionary:)(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EmojiGenerationClientToHostAction();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id EmojiGenerationClientToHostAction.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiGenerationClientToHostAction.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EmojiGenerationClientToHostAction();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EmojiGenerationClientToHostAction.__allocating_init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_19A6DB1A8;
    v13[3] = &block_descriptor_17;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithInfo:a1 timeout:a2 forResponseOnQueue:v10 withHandler:a5];
  _Block_release(v10);

  return v11;
}

uint64_t sub_19A6E8B24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE820);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6EA8F8();
  sub_19A7AC1D4();
  v8[15] = 0;
  sub_19A7ABF94();
  if (!v1)
  {
    type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
    v8[14] = 1;
    sub_19A7A8F64();
    sub_19A6EAB58(&unk_1EAFCB088, MEMORY[0x1E69695A8]);
    sub_19A7ABFA4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A6E8CDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23 = &v19 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE818);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v19 - v6;
  v8 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = 0;
  v11[1] = 0;
  v12 = *(v9 + 28);
  v13 = sub_19A7A8F64();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A6EA8F8();
  sub_19A7AC1C4();
  if (!v2)
  {
    v20 = v12;
    v15 = v22;
    v14 = v23;
    v26 = 0;
    v16 = v24;
    *v11 = sub_19A7ABF04();
    v11[1] = v17;
    v25 = 1;
    sub_19A6EAB58(&qword_1EAFCB080, MEMORY[0x1E69695A8]);
    sub_19A7ABF24();
    (*(v15 + 8))(v7, v16);
    sub_19A6264EC(v14, v11 + v20);
    sub_19A6E2E4C(v11, v21);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_19A6E23C4(v11);
}

uint64_t sub_19A6E8FCC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6554686372616573;
  }
}

uint64_t sub_19A6E9010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6554686372616573 && a2 == 0xEA00000000007478;
  if (v6 || (sub_19A7AC064() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A7C4F50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A7AC064();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19A6E90FC(uint64_t a1)
{
  v2 = sub_19A6EA8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A6E9138(uint64_t a1)
{
  v2 = sub_19A6EA8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A6E91A4(void *a1)
{
  v2 = sub_19A7AAC14();
  v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7AAA14();
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_19A7A8F64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE868);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 delegate])
  {
    v75 = &unk_1F0E30DD8;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (v19)
    {
      v61 = v11;
      v62 = v12;
      v20 = v19;
      if ([v19 respondsToSelector_])
      {
        v21 = [v20 window];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 rootViewController];

          if (v23)
          {
            objc_opt_self();
            v24 = swift_dynamicCastObjCClass();
            if (!v24)
            {
              swift_unknownObjectRelease();

              return;
            }

            v60 = v23;
            v59 = v24;
            v25 = [v24 viewControllers];
            v58 = sub_19A6EA9F4();
            v26 = sub_19A7AB254();

            if (v26 >> 62)
            {
              v27 = sub_19A7ABBE4();
            }

            else
            {
              v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v28 = v60;
            if (!v27)
            {
              goto LABEL_23;
            }

            v29 = [v59 viewControllers];
            v30 = sub_19A7AB254();

            if (v30 >> 62)
            {
              if (sub_19A7ABBE4())
              {
                goto LABEL_12;
              }
            }

            else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_12:
              if ((v30 & 0xC000000000000001) != 0)
              {
                v31 = MEMORY[0x19A906130](0, v30);
              }

              else
              {
                if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_48;
                }

                v31 = *(v30 + 32);
              }

              v28 = v31;

              swift_getObjectType();
              v32 = swift_conformsToProtocol2();
              if (v32 && v28)
              {
                v33 = v32;
                v34 = [v68 info];
                if (v34)
                {
                  v59 = v33;
                  v60 = v28;
                  v35 = v34;
                  v36 = [v34 objectForSetting_];

                  if (v36)
                  {
                    sub_19A7ABB44();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v71 = 0u;
                    v72 = 0u;
                  }

                  v37 = v62;
                  v73 = v71;
                  v74 = v72;
                  if (*(&v72 + 1))
                  {
                    if ((swift_dynamicCast() & 1) == 0 || v71)
                    {
                      swift_unknownObjectRelease();
LABEL_45:

                      return;
                    }

                    sub_19A6E4EC4(0, v16);
                    if ((*(v67 + 48))(v16, 1, v17) == 1)
                    {
                      swift_unknownObjectRelease();

                      v38 = &qword_1EAFCE868;
                      v39 = v16;
                      goto LABEL_32;
                    }

                    v40 = v66;
                    sub_19A6EAA40(v16, v66);
                    v41 = v40[1];
                    if (v41)
                    {
                      v42 = v40;
                      v43 = *v40;
                      v44 = v60;
                      ObjectType = swift_getObjectType();
                      v46 = v59;
                      v47 = v59[2];

                      v47(v43, v41, ObjectType, v46);
                      swift_unknownObjectRelease();

                      sub_19A6E23C4(v42);
                      return;
                    }

                    sub_19A6240BC(v40 + *(v17 + 20), v10);
                    v48 = v61;
                    if ((*(v37 + 48))(v10, 1, v61) == 1)
                    {
                      swift_unknownObjectRelease();

                      sub_19A6E23C4(v40);
                      v38 = &qword_1EAFCD800;
                      v39 = v10;
                      goto LABEL_32;
                    }

                    (*(v37 + 32))(v65, v10, v48);
                    (*(v63 + 104))(v7, *MEMORY[0x1E69D4638], v5);
                    sub_19A7AAAC4();
                    swift_allocObject();
                    sub_19A7AAA04();
                    v49 = v64;
                    (*(v64 + 104))(v4, *MEMORY[0x1E69D4728], v2);
                    v50 = sub_19A7AAA54();
                    (*(v49 + 8))(v4, v2);

                    if (v50)
                    {
                      v51 = sub_19A7AABF4();
                      v53 = v51;
                      if (v52)
                      {
                        *&v73 = v51;
                        *(&v73 + 1) = v52;
                        *&v71 = 10;
                        *(&v71 + 1) = 0xE100000000000000;
                        v69 = 0;
                        v70 = 0xE000000000000000;
                        sub_19A639920();
                        v53 = sub_19A7ABB04();
                        v55 = v54;
                      }

                      else
                      {
                        v55 = 0;
                      }

                      v56 = v60;
                      v57 = swift_getObjectType();
                      (v59[2])(v53, v55, v57);
                      swift_unknownObjectRelease();

                      goto LABEL_51;
                    }

LABEL_48:
                    swift_unknownObjectRelease();

LABEL_51:
                    (*(v62 + 8))(v65, v61);
                    sub_19A6E23C4(v66);
                    return;
                  }

                  swift_unknownObjectRelease();
                }

                else
                {
                  swift_unknownObjectRelease();

                  v73 = 0u;
                  v74 = 0u;
                }

                v38 = &unk_1EAFCD750;
                v39 = &v73;
LABEL_32:
                sub_19A5F2B54(v39, v38);
                return;
              }

LABEL_23:
              swift_unknownObjectRelease();

              return;
            }

            swift_unknownObjectRelease();

            goto LABEL_45;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

id sub_19A6E9B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, sel_initWithInfo_responder_, a3, a4);
}

id sub_19A6E9C10(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_19A6E9C6C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

id sub_19A6E9CFC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
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

id sub_19A6E9D98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), double a7)
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

id sub_19A6E9F90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19A6E9FC8(uint64_t a1, void *a2, char a3, char a4)
{
  v21[5] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E698E700]);
  v8 = a2;
  v9 = [v7 init];
  if (a3)
  {
    v10 = sub_19A7A8CA4();
    swift_allocObject();
    v11 = sub_19A7A8C94();
    v12 = &unk_1EAFCB0B0;
    v13 = MEMORY[0x1E69689D8];
  }

  else
  {
    v10 = sub_19A7A8B84();
    swift_allocObject();
    v11 = sub_19A7A8B74();
    v12 = &unk_1ED8B3400;
    v13 = MEMORY[0x1E6968010];
  }

  v21[3] = v10;
  v21[4] = sub_19A6EAB58(v12, v13);
  v21[0] = v11;
  __swift_project_boxed_opaque_existential_1(v21, v10);
  type metadata accessor for EmojiGenerationAddResult();
  sub_19A6EAB58(&qword_1EAFCAC80, type metadata accessor for EmojiGenerationAddResult);
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v14 = sub_19A7A8E14();
  [v9 setObject:v14 forSetting:1];

  if (a4)
  {
    v15 = [objc_opt_self() _synchronizedDrawingFence];
    [v9 setObject:v15 forSetting:2];
    sub_19A612F14(v19, v20);
  }

  else
  {
    sub_19A612F14(v19, v20);
  }

  v16 = sub_19A7AB4B4();
  [v9 setObject:v16 forSetting:0];

  type metadata accessor for EmojiGenerationClientToHostAction();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v9 responder:0];

  return v17;
}

id sub_19A6EA328(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v19[5] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E698E700]);

  v7 = [v6 init];
  if (a3)
  {
    v8 = sub_19A7A8CA4();
    swift_allocObject();
    v9 = sub_19A7A8C94();
    v10 = &unk_1EAFCB0B0;
    v11 = MEMORY[0x1E69689D8];
  }

  else
  {
    v8 = sub_19A7A8B84();
    swift_allocObject();
    v9 = sub_19A7A8B74();
    v10 = &unk_1ED8B3400;
    v11 = MEMORY[0x1E6968010];
  }

  v19[3] = v8;
  v19[4] = sub_19A6EAB58(v10, v11);
  v19[0] = v9;
  __swift_project_boxed_opaque_existential_1(v19, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
  sub_19A6BAD7C();
  sub_19A7A9644();

  __swift_destroy_boxed_opaque_existential_1(v19);
  v12 = sub_19A7A8E14();
  [v7 setObject:v12 forSetting:1];

  if (a4)
  {
    v13 = [objc_opt_self() _synchronizedDrawingFence];
    [v7 setObject:v13 forSetting:2];
    sub_19A612F14(v17, v18);
  }

  else
  {
    sub_19A612F14(v17, v18);
  }

  v14 = sub_19A7AB4B4();
  [v7 setObject:v14 forSetting:0];

  type metadata accessor for EmojiGenerationClientToHostAction();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:v7 responder:0];

  return v15;
}

uint64_t type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery()
{
  result = qword_1EAFCB250;
  if (!qword_1EAFCB250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6EA7D0()
{
  sub_19A6EA854();
  if (v0 <= 0x3F)
  {
    sub_19A625D6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A6EA854()
{
  if (!qword_1ED8B3790)
  {
    v0 = sub_19A7ABA94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8B3790);
    }
  }
}

unint64_t sub_19A6EA8A4()
{
  result = qword_1EAFCB2D8;
  if (!qword_1EAFCB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB2D8);
  }

  return result;
}

unint64_t sub_19A6EA8F8()
{
  result = qword_1EAFCB280;
  if (!qword_1EAFCB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB280);
  }

  return result;
}

unint64_t sub_19A6EA94C()
{
  result = qword_1EAFCA8D0;
  if (!qword_1EAFCA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA8D0);
  }

  return result;
}

unint64_t sub_19A6EA9A0()
{
  result = qword_1EAFCE860;
  if (!qword_1EAFCE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE860);
  }

  return result;
}

unint64_t sub_19A6EA9F4()
{
  result = qword_1EAFCB0E0;
  if (!qword_1EAFCB0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCB0E0);
  }

  return result;
}

uint64_t sub_19A6EAA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiGenerationHostToClientAction.SearchQuery();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A6EAAA4()
{
  result = qword_1EAFCE8D8;
  if (!qword_1EAFCE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE8D8);
  }

  return result;
}

uint64_t sub_19A6EAAF8(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_19A6EAB58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A6EABC4()
{
  result = qword_1EAFCE908;
  if (!qword_1EAFCE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE908);
  }

  return result;
}

unint64_t sub_19A6EAC1C()
{
  result = qword_1EAFCE910;
  if (!qword_1EAFCE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCE910);
  }

  return result;
}

unint64_t sub_19A6EAC74()
{
  result = qword_1EAFCB268;
  if (!qword_1EAFCB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB268);
  }

  return result;
}

unint64_t sub_19A6EACCC()
{
  result = qword_1EAFCB270;
  if (!qword_1EAFCB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB270);
  }

  return result;
}

unint64_t sub_19A6EAD24()
{
  result = qword_1EAFCB2B8;
  if (!qword_1EAFCB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCB2B8);
  }

  return result;
}

unint64_t sub_19A6EAD7C()
{
  result = qword_1EAFCB2C0[0];
  if (!qword_1EAFCB2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAFCB2C0);
  }

  return result;
}

uint64_t sub_19A6EADD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656B63697473 && a2 == 0xE700000000000000;
  if (v4 || (sub_19A7AC064() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972 || (sub_19A7AC064() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6974706163 && a2 == 0xEB00000000747865)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A7AC064();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_19A6EB008()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging);
    v4 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging;
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging);
    if (v3 != v5)
    {
      if (v3)
      {
        if (qword_1ED8B2A98 != -1)
        {
          swift_once();
        }

        v6 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
        swift_beginAccess();
        v7 = sub_19A7A9094();
        v8 = (*(*(v7 - 8) + 48))(v0 + v6, 1, v7);
        v9 = 0;
        if (!v8)
        {
          v9 = sub_19A7A9064();
        }

        swift_endAccess();
        LOBYTE(v3) = sub_19A75BF80(v9);
        LOBYTE(v5) = *(v1 + v4);
      }

      *(v1 + v4) = v3 & 1;
      sub_19A6EB5C4(v5);
    }

    swift_unknownObjectRelease();
  }

  v10 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView);
  sub_19A6C5140();
}

uint64_t sub_19A6EB174()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCE920);
  __swift_project_value_buffer(v0, qword_1EAFCE920);
  return sub_19A7A9374();
}

void sub_19A6EB36C()
{
  if (*(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph) && [objc_opt_self() isInternalBuild])
  {
    if (*(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRestrictedContent) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_didAcceptRestrictedDistributionTerms);
        swift_unknownObjectRelease();
      }

      else
      {
        v2 = 0;
      }

      v12 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution;
      *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution) = v2;
      v13 = sub_19A6EBA28();
      [v13 setHidden_];

      v14 = sub_19A6EBA28();
      sub_19A6EBB3C((*(v0 + v12) & 1) == 0);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution) = 1;
      v3 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView;
      v4 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView);
      if (!v4)
      {
        return;
      }

      v5 = v4;
      [v5 setHidden_];
      [v5 setExclusiveTouch_];
      v6 = v0;
      v7 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
      [v7 setEnabled_];

      v8 = [v5 superview];
      [v8 sendSubviewToBack_];

      v9 = *(v6 + v3);
      if (!v9)
      {
        return;
      }

      v10 = v9;
      [v10 setExclusiveTouch_];
      v11 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
      [v11 setEnabled_];

      v14 = [v10 superview];
      [v14 sendSubviewToBack_];
    }
  }
}

id sub_19A6EB5C4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_19A70EB10();
  v5 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging;
  [v4 setEnabled_];

  v6 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer, &selRef_handleLongPress, 0x1E69DCC48);
  [v6 setEnabled_];

  v7 = *(v2 + v5);
  if (v7 == v3)
  {
    if (!*(v2 + v5))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_19A6EB760(v7);
  if (*(v2 + v5) == 1)
  {
    v8 = sub_19A6EBA28();
    [v8 setExclusiveTouch_];
    v9 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
    [v9 setEnabled_];

    v10 = [v8 superview];
    [v10 sendSubviewToBack_];
  }

  else
  {
    sub_19A6EB36C();
  }

  if (*(v2 + v5))
  {
LABEL_5:
    sub_19A6EBC20();
  }

LABEL_6:
  result = *(v2 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton);
  if (result)
  {
    v12 = (*(v2 + v5) & 1) == 0;

    return [result setHidden_];
  }

  return result;
}

void sub_19A6EB760(char a1)
{
  if (a1)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v22);
    [v1 bounds];
    Width = CGRectGetWidth(v23);
    if (Height > Width)
    {
      Width = Height;
    }

    v4 = 1.0 / (Width * 0.01);
    if (v4 <= 1.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = sub_19A6F00E0(0.4, 0.134);
    v7 = sub_19A6F00E0(0.4, 0.142);
    v8 = sub_19A6F00E0(v5 * -0.03, 0.128);
    v9 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
    v20 = [*&v1[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView] layer];
    v10 = sub_19A7AAFE4();
    [v20 addAnimation:v6 forKey:v10];

    v11 = sub_19A7AAFE4();
    [v20 addAnimation:v7 forKey:v11];

    v12 = sub_19A7AAFE4();
    [v20 addAnimation:v8 forKey:v12];

    v13 = *&v1[v9];
    v14 = *&v13[OBJC_IVAR___STKStickerView_dragInteraction];
    v15 = v13;
    v16 = v14;
    [v16 setEnabled_];
  }

  else
  {
    v17 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
    v18 = [*&v1[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView] layer];
    [v18 removeAllAnimations];

    v19 = *(*&v1[v17] + OBJC_IVAR___STKStickerView_dragInteraction);

    [v19 setEnabled_];
  }
}

char *sub_19A6EBA28()
{
  v1 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for StickerRestrictedContentView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    *&v3[OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_delegate + 8] = &off_1F0DCABD0;
    swift_unknownObjectWeakAssign();
    [v3 setHidden_];
    v10 = [v0 contentView];
    [v10 addSubview_];

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_19A6EBB3C(char a1)
{
  if ((a1 & 1) != 0 && ![v1 isHidden])
  {
    v3 = &selRef_bringSubviewToFront_;
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v3 = &selRef_sendSubviewToBack_;
  }

  [v1 setExclusiveTouch_];
  v4 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
  [v4 setEnabled_];

  v5 = [v1 superview];
  [v5 *v3];
}

void sub_19A6EBC20()
{
  v1 = sub_19A7AB9E4();
  v65 = *(v1 - 8);
  v66 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A7AB974();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7ABA34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - v9;
  v11 = sub_19A7A9414();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v68 = v0;
  v69 = &v58 - v16;
  v17 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton;
  if (!*&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton])
  {
    v18 = sub_19A7AAFE4();
    v19 = [objc_opt_self() systemImageNamed_];

    if (v19)
    {
      v20 = [objc_opt_self() systemGrayColor];
      v21 = objc_opt_self();
      v22 = [v21 configurationWithHierarchicalColor_];
      v60 = v17;
      v23 = v12;
      v24 = v10;
      v25 = v11;
      v26 = v6;
      v27 = v5;
      v28 = v22;

      v29 = [v19 imageByApplyingSymbolConfiguration_];
      if (v29)
      {
        v30 = v27;
        v31 = v26;
        v32 = v25;
        v33 = v24;
        v34 = v23;
        v35 = [v21 configurationWithPointSize:6 weight:1 scale:15.0];
        v36 = [v29 imageByApplyingSymbolConfiguration_];

        if (v36)
        {
          v37 = v69;
          sub_19A7A9404();
          v38 = [objc_opt_self() effectWithStyle_];
          v39 = v68;
          sub_19A7A93F4();
          sub_19A7ABA14();
          v59 = v36;
          sub_19A7ABA04();
          v40 = *(v34 + 16);
          v58 = v32;
          v40(v15, v37, v32);
          sub_19A7AB954();
          (*(v62 + 104))(v61, *MEMORY[0x1E69DC508], v63);
          sub_19A7AB984();
          (*(v65 + 104))(v64, *MEMORY[0x1E69DC560], v66);
          sub_19A7AB964();
          sub_19A7AB9A4();
          sub_19A5F5028(0, &qword_1EAFCD108);
          (*(v31 + 16))(v67, v33, v30);
          sub_19A5F5028(0, &qword_1EAFCD110);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_19A7AB944();
          v41 = sub_19A7ABA44();
          [v41 setTranslatesAutoresizingMaskIntoConstraints_];
          v42 = [v39 contentView];
          [v42 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_19A7BE330;
          v44 = [v41 centerXAnchor];
          v67 = v30;
          v45 = v34;
          v46 = v31;
          v47 = v39;
          v48 = [v39 leadingAnchor];
          v49 = [v44 constraintEqualToAnchor_];
          v50 = v60;
          v51 = v49;

          *(v43 + 32) = v51;
          v52 = [v41 centerYAnchor];

          v53 = [v47 topAnchor];
          v54 = [v52 constraintEqualToAnchor_];

          *(v43 + 40) = v54;
          v55 = objc_opt_self();
          sub_19A5F5028(0, &qword_1ED8B2030);
          v56 = sub_19A7AB234();

          [v55 activateConstraints_];

          (*(v46 + 8))(v33, v67);
          (*(v45 + 8))(v69, v58);
          v57 = *&v47[v50];
          *&v47[v50] = v41;
        }
      }
    }
  }
}

BOOL sub_19A6EC3AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  if (!v4)
  {
    return 1;
  }

  sub_19A60F0CC(v4 + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
  v5 = sub_19A7A8F64();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    v6 = v4;
    sub_19A5F2B54(v3, &qword_1EAFCD800);
    if (!*&v6[OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8] && !*&v6[OBJC_IVAR___STKImageGlyph_emoji + 8] && !*&v6[OBJC_IVAR___STKImageGlyph_emojiString + 8])
    {
      v8 = *&v6[OBJC_IVAR___STKImageGlyph_character + 8];

      return v8 == 0;
    }
  }

  else
  {
    sub_19A5F2B54(v3, &qword_1EAFCD800);
  }

  return 0;
}

id sub_19A6EC54C()
{
  v1 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___editMenuInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___editMenuInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___editMenuInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_19A6EC5C4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph] = 0;
  v10 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
  v11 = sub_19A7A9094();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_didAcceptRestrictedDistributionTerms] = 0;
  v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRestrictedContent] = 0;
  v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution] = 1;
  v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging] = 0;
  v12 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
  type metadata accessor for StickerView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___editMenuInteraction] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setIsAccessibilityElement_];
  v14 = sub_19A6EC54C();
  [v13 addInteraction_];

  v15 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer, &selRef_handleLongPress, 0x1E69DCC48);
  [v13 addGestureRecognizer_];

  v16 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer;
  [*&v13[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer] setCancelsTouchesInView_];
  [*&v13[v16] setDelaysTouchesBegan_];
  v17 = [v13 contentView];

  [v17 addSubview_];
  return v13;
}

void sub_19A6EC86C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  sub_19A6F0338(0);
  v1 = v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging];
  v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging] = 0;
  sub_19A6EB5C4(v1);
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton];
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
  [*&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView] setAlpha_];
  v4 = *&v0[v3];
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [v4 setTransform_];
  sub_19A6EC944();
  v5 = *&v0[v3];
  sub_19A6C6810();
}

void sub_19A6EC944()
{
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRestrictedContent);
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRestrictedContent) = 0;
  if (v1 == 1)
  {
    sub_19A6EB36C();
  }

  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView);
  if (v2)
  {
    v3 = v2;
    [v3 setHidden_];
    [v3 setExclusiveTouch_];
    v4 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
    [v4 setEnabled_];

    v5 = [v3 superview];
    [v5 sendSubviewToBack_];
  }
}

void sub_19A6ECAA0()
{
  if ((*(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging) & 1) == 0)
  {
    v1 = [objc_opt_self() sharedPreferencesController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 preferencesActions];

      if (v3)
      {
        [v3 BOOLForPreferenceKey_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_19A6ECB58(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v13, sel_hitTest_withEvent_, a1, a2, a3);
  if (v3[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging] == 1)
  {
    v8 = *&v3[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton];
    if (v8)
    {
      v9 = result;
      v10 = v8;
      v11 = [v10 pointInside:a1 withEvent:{a2, a3}];
      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v10;
      }

      if (v11)
      {
        v9 = v8;
      }

      return v9;
    }
  }

  return result;
}

void sub_19A6ECCA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B6C20;
    *(inited + 32) = 0x7079546567616D49;
    *(inited + 40) = 0xE900000000000065;
    v3 = *&v1[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph];
    v4 = v3;
    sub_19A665B5C(v3);

    v5 = sub_19A7AAFE4();

    *(inited + 48) = v5;
    *(inited + 56) = 0x6570795474696445;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = sub_19A7AAFE4();
    v6 = sub_19A69C364(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
    swift_arrayDestroy();
    if (qword_1EAFCB558 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD6C8, 1953064005, 0xE400000000000000, 0, 0, 0, 0, 2, 0, 1, v6);

    sub_19A6ECEB8();
  }
}

void sub_19A6ECEB8()
{
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph];
  if (v1)
  {
    v2 = v0;
    v29 = v1;
    v3 = [v0 superview];
    if (v3 && (v4 = v3, [v2 frame], objc_msgSend(v4, sel_convertRect_toView_, 0), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, (v13 = objc_msgSend(v2, sel_window)) != 0))
    {
      v14 = v13;
      v15 = type metadata accessor for PoofAnimationView();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC10StickerKit17PoofAnimationView_puffs] = MEMORY[0x1E69E7CC0];
      v17 = OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count;
      *&v16[OBJC_IVAR____TtC10StickerKit17PoofAnimationView_count] = 0;
      v18 = &v16[OBJC_IVAR____TtC10StickerKit17PoofAnimationView_completionHandler];
      *v18 = 0;
      *(v18 + 1) = 0;
      *&v16[v17] = 8;
      v36.receiver = v16;
      v36.super_class = v15;
      v19 = objc_msgSendSuper2(&v36, sel_initWithFrame_, v6, v8, v10, v12);
      sub_19A6BEF7C();
      [v14 addSubview_];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = v19;
      sub_19A6BF430(sub_19A6F133C, v20);

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      v34 = sub_19A6F134C;
      v35 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_19A6815D4;
      v33 = &block_descriptor_71_0;
      v24 = _Block_copy(&aBlock);
      v25 = v2;

      v26 = swift_allocObject();
      *(v26 + 16) = v29;
      v34 = sub_19A6F1354;
      v35 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_19A765D14;
      v33 = &block_descriptor_77;
      v27 = _Block_copy(&aBlock);
      v28 = v29;

      [v22 animateWithDuration:v24 animations:v27 completion:0.1];
      _Block_release(v27);
      _Block_release(v24);
    }

    else
    {
    }
  }
}

void sub_19A6ED20C()
{
  v1 = v0;
  if (qword_1EAFCB608 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCE920);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "handleTap", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution) == 1 && swift_unknownObjectWeakLoadStrong())
  {
    sub_19A67B4FC(v1, 1);

    swift_unknownObjectRelease();
  }
}

void sub_19A6ED38C()
{
  v1 = v0;
  if (qword_1EAFCB608 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCE920);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "handleLongPress", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  if ((*(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v7 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging), swift_unknownObjectRelease(), (v7 & 1) == 0))
    {
      if (!sub_19A6EC3AC())
      {
        [v1 frame];
        sub_19A5F5028(0, &unk_1EAFCD6E0);
        v8 = sub_19A7AB854();
        [v8 set:1 ignoresKeyboardAvoidance:?];
        v9 = sub_19A6EC54C();
        [v9 presentEditMenuWithConfiguration_];
      }
    }
  }
}

void sub_19A6ED5B8()
{
  v1 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
  v19 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView);
  v2 = [v19 window];
  if (v2)
  {
    v3 = v2;
    [v19 bounds];
    [v3 convertRect:*(v0 + v1) fromCoordinateSpace:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_19A67CF2C(v0, v5, v7, v9, v11);
      swift_unknownObjectRelease();
    }

    [v19 setAlpha_];

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v19;
    v24 = sub_19A6F1308;
    v25 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_19A6815D4;
    v23 = &block_descriptor_18;
    v14 = _Block_copy(&aBlock);
    v15 = v19;

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v24 = sub_19A6F1328;
    v25 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_19A765D14;
    v23 = &block_descriptor_62;
    v17 = _Block_copy(&aBlock);
    v18 = v15;

    [v12 animateWithDuration:v14 animations:v17 completion:0.5];
    _Block_release(v17);
    _Block_release(v14);
  }

  else
  {
  }
}

uint64_t sub_19A6ED854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
    if (v5)
    {
      sub_19A60F0CC(v5 + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
    }

    else
    {
      v6 = sub_19A7A8F64();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_19A7A33C8(v3, 0, 0);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_19A5F2B54(v3, &qword_1EAFCD800);
  }

  return result;
}

id sub_19A6ED9B4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
  [*(a1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView) setAlpha_];
  v4 = *(a1 + v3);
  CGAffineTransformMakeScale(&v6, 0.8, 0.8);
  return [v4 setTransform_];
}

uint64_t sub_19A6EDA58(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_19A7AB394();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_19A7AB354();
  v7 = a2;
  v8 = sub_19A7AB344();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_19A682010(0, 0, v5, &unk_19A7BE4F8, v9);
}

uint64_t sub_19A6EDB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_19A7AB354();
  v4[4] = sub_19A7AB344();
  v6 = sub_19A7AB2E4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A6EDC18, v6, v5);
}

uint64_t sub_19A6EDC18()
{
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_19A6EDCE4;
  v2 = *(v0 + 24);

  return sub_19A6550F8(v2);
}

uint64_t sub_19A6EDCE4(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_19A6EDE0C, v4, v3);
}

uint64_t sub_19A6EDE0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

void sub_19A6EDE78()
{
  sub_19A601244(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_delegate);

  sub_19A5F2B54(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath, &unk_1EAFCF110);
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView);
}

uint64_t type metadata accessor for StickerCollectionViewCell()
{
  result = qword_1ED8B3680;
  if (!qword_1ED8B3680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A6EE038()
{
  sub_19A67BB78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_19A6EE100()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1052266988;
  LODWORD(v2) = 1059145646;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_1EAFCE938 = result;
  return result;
}

uint64_t sub_19A6EE154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([objc_opt_self() isInternalBuild] && (sub_19A6DBCD4() & 1) == 0)
      {
        v6 = sub_19A7AB394();
        (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
        sub_19A7AB354();
        swift_unknownObjectRetain();
        v7 = sub_19A7AB344();
        v8 = swift_allocObject();
        v9 = MEMORY[0x1E69E85E0];
        v8[2] = v7;
        v8[3] = v9;
        v8[4] = v5;
        sub_19A6816F0(0, 0, v2, &unk_19A7C43C0, v8);

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A6EE30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B6C20;
    *(inited + 32) = 0x7079546567616D49;
    *(inited + 40) = 0xE900000000000065;
    sub_19A665B5C(a3);
    v7 = sub_19A7AAFE4();

    *(inited + 48) = v7;
    *(inited + 56) = 0x6570795474696445;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = sub_19A7AAFE4();
    v8 = sub_19A69C364(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
    swift_arrayDestroy();
    if (qword_1EAFCB558 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD6C8, 1953064005, 0xE400000000000000, 0, 0, 0, 0, 2, 0, 1, v8);

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging);
      *(v10 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) = 1;
      sub_19A66E300(v11);
      swift_unknownObjectRelease();
    }
  }
}

void sub_19A6EE534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_19A6ED5B8();
  }
}

void sub_19A6EE588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    if (qword_1EAFCA410 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD4E0, 0xD00000000000002ELL, 0x800000019A7CAB20, 0, 0, 0, 0, 2, 0, 1, 0);
    sub_19A6ED854();
  }
}

void sub_19A6EE698()
{
  v0 = sub_19A7AAC14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, *MEMORY[0x1E69D4708], v0);
    v6 = sub_19A768F20(v3);
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_19A7A39B0(v6, v5);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v5 = v6;
    }
  }
}

void sub_19A6EE824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EAFCAD68 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A7B6C20;
    *(inited + 32) = 0x7079546567616D49;
    *(inited + 40) = 0xE900000000000065;
    sub_19A665B5C(a3);
    v7 = sub_19A7AAFE4();

    *(inited + 48) = v7;
    *(inited + 56) = 0x6570795474696445;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = sub_19A7AAFE4();
    v8 = sub_19A69C364(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
    swift_arrayDestroy();
    if (qword_1EAFCB558 != -1)
    {
      swift_once();
    }

    sub_19A661F84(qword_1EAFDD6C8, 1953064005, 0xE400000000000000, 0, 0, 0, 0, 2, 0, 1, v8);

    sub_19A6ECEB8();
  }
}

id sub_19A6EEA94()
{
  v1 = OBJC_IVAR____TtC10StickerKit17StickerButtonView____lazy_storage___launchStickersButton;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit17StickerButtonView____lazy_storage___launchStickersButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10StickerKit17StickerButtonView____lazy_storage___launchStickersButton];
  }

  else
  {
    sub_19A6EEAF8(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_19A6EEAF8(void *a1)
{
  v2 = sub_19A7ABA34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = sub_19A7AAFE4();
  v10 = [objc_opt_self() _systemImageNamed_];

  if (v10)
  {
    v11 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:30.0];
    v12 = [v10 imageWithSymbolConfiguration_];

    sub_19A7ABA14();
    v13 = v12;
    sub_19A7ABA04();
    sub_19A5F5028(0, &qword_1EAFCD108);
    (*(v3 + 16))(v6, v8, v2);
    sub_19A5F5028(0, &qword_1EAFCD110);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_19A7AB944();
    v14 = sub_19A7ABA44();
    [a1 frame];
    [v14 setFrame_];

    v15 = [v14 imageView];
    if (v15)
    {
      v16 = v15;
      [v15 setContentMode_];
    }

    v17 = [objc_opt_self() secondaryLabelColor];
    [v14 setTintColor_];

    [a1 addSubview_];
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_19A6EEE3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_19A67D244();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_19A6EEEB8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10StickerKit17StickerButtonView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10StickerKit17StickerButtonView____lazy_storage___launchStickersButton] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_19A7AAFE4();
  [v10 setAccessibilityIdentifier_];

  [v10 setAccessibilityTraits_];
  return v10;
}

uint64_t sub_19A6EF174()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA18);
  sub_19A623714(&unk_1EAFCEA20, &qword_1EAFCEA18);
  return sub_19A7A9DC4();
}

uint64_t sub_19A6EF25C@<X0>(uint64_t a1@<X8>)
{
  sub_19A7A9BB4();
  v2 = sub_19A7AA084();
  v4 = v3;
  v6 = v5;
  sub_19A7A9FE4();
  v7 = sub_19A7AA074();
  v9 = v8;
  v11 = v10;

  sub_19A642CC8(v2, v4, v6 & 1);

  v12 = sub_19A7AA064();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_19A642CC8(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_19A6EF388@<X0>(uint64_t a1@<X8>)
{
  sub_19A7A9BB4();
  result = sub_19A7AA084();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_19A6EF400()
{
  v0 = sub_19A7A9BB4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  return MEMORY[0x1EEDDC860](v0, v2, v4 & 1, v6, sub_19A6F1290, v7);
}

void sub_19A6EF4D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_19A67D244();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_19A6EF790(uint64_t *a1, void *a2, Class *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(*a3) initWithTarget:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

char *sub_19A6EF808(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_restrictedContentView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer] = 0;
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v53, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setClipsToBounds_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_restrictedContentView;
  v13 = *&v11[OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView_restrictedContentView];
  [v11 bounds];
  [v13 setBounds_];

  [*&v11[v12] setClipsToBounds_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v11[v12];
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v16 = v14;
  v17 = [v15 initWithRed:1.0 green:0.1 blue:0.2 alpha:0.2];
  [v16 setBackgroundColor_];

  v18 = sub_19A6F10F4(0x4C414E5245544E49, 0xE800000000000000);
  v19 = sub_19A6F10F4(0x594C4E4F20455355, 0xE800000000000000);
  v20 = *&v11[v12];
  v21 = v18;
  [v20 addSubview_];
  v22 = *&v11[v12];
  v23 = v19;
  [v22 &selRef_labelColor];
  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_19A7B9A80;
  v25 = [v21 centerXAnchor];

  v26 = [*&v11[v12] &selRef_setDeviceMotionUpdateInterval_ + 2];
  v27 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v27;
  v28 = [v21 topAnchor];

  v29 = [*&v11[v12] topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [v21 widthAnchor];

  v32 = [*&v11[v12] widthAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v24 + 48) = v33;
  v34 = [v21 heightAnchor];

  v35 = [*&v11[v12] heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 multiplier:0.2];

  *(v24 + 56) = v36;
  v37 = [v23 centerXAnchor];

  v38 = [*&v11[v12] centerXAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v24 + 64) = v39;
  v40 = [v23 bottomAnchor];

  v41 = [*&v11[v12] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 72) = v42;
  v43 = [v23 widthAnchor];

  v44 = [*&v11[v12] widthAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v24 + 80) = v45;
  v46 = [v23 heightAnchor];

  v47 = [*&v11[v12] heightAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 multiplier:0.2];

  *(v24 + 88) = v48;
  sub_19A5F5028(0, &qword_1ED8B2030);
  v49 = sub_19A7AB234();

  [v52 activateConstraints_];

  [v11 addSubview_];
  v50 = sub_19A6EF790(&OBJC_IVAR____TtC10StickerKit28StickerRestrictedContentView____lazy_storage___tapGestureRecognizer, &selRef_handleRestrictedContentTap, 0x1E69DD060);
  [v50 setEnabled_];

  [*&v11[v12] addGestureRecognizer_];
  return v11;
}

void sub_19A6EFF58(void *a1, uint64_t a2, void *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v5 = *&v4[*a3];
  [v4 bounds];
  [v5 setFrame_];
}

id sub_19A6F00E0(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6979318]) init];
  v4 = sub_19A7AAFE4();
  [v3 setKeyPath_];

  v5 = v3;
  [v5 setDuration_];
  [v5 setBeginTime_];
  v6 = sub_19A7A9154();
  [v5 setFromValue_];

  v7 = sub_19A7A9154();
  [v5 setToValue_];

  if (qword_1EAFCB610 != -1)
  {
    swift_once();
  }

  [v5 setTimingFunction_];
  LODWORD(v8) = 2139095039;
  [v5 setRepeatCount_];
  [v5 setAutoreverses_];
  [v5 setRemovedOnCompletion_];

  return v5;
}

uint64_t sub_19A6F0284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A7A306C(a1, v4, v5, v6);
}

void sub_19A6F0338(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  *(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph) = a1;
  v8 = a1;

  v9 = *(v2 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView);
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_19A7AB354();
  v11 = v9;
  v12 = v8;
  v13 = v11;
  v14 = sub_19A7AB344();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = a1;
  v15[7] = 0;
  sub_19A6816F0(0, 0, v6, &unk_19A7BE500, v15);

  sub_19A6EB36C();
}

void sub_19A6F04B0()
{
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph) = 0;
  v1 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
  v2 = sub_19A7A9094();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_didAcceptRestrictedDistributionTerms) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRestrictedContent) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_allowsDistribution) = 1;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging) = 0;
  v3 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView;
  type metadata accessor for StickerView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_deleteButton) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___longPressGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell____lazy_storage___editMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell__restrictedContentView) = 0;
  sub_19A7ABE34();
  __break(1u);
}

uint64_t sub_19A6F060C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v52 - v3;
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAFCB608 != -1)
  {
    swift_once();
  }

  v9 = sub_19A7A9384();
  __swift_project_value_buffer(v9, qword_1EAFCE920);
  v10 = sub_19A7A9364();
  v11 = sub_19A7AB574();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19A5EE000, v10, v11, "editMenuInteraction", v12, 2u);
    MEMORY[0x19A907A30](v12, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching);
    swift_unknownObjectRelease();
    if (v14)
    {
      return 0;
    }
  }

  v15 = *(v1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (sub_19A7669B0() != 1)
  {

    return 0;
  }

  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v17 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
  swift_beginAccess();
  sub_19A60F0CC(v1 + v17, v4, &unk_1EAFCF110);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_19A5F2B54(v4, &unk_1EAFCF110);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v19 = sub_19A7A9064();
  v20 = sub_19A75BF80(v19);
  LODWORD(v55) = (v20 & 1) != 0 && !sub_19A766B4C();
  v21 = *&v16[OBJC_IVAR___STKImageGlyph_stickerSourceType];
  v57 = v20;
  v56 = v6;
  if (v21 == 1)
  {
    v53 = v20;
    v54 = 0;
  }

  else
  {
    if (v21 != 6 || (v20 & 1) == 0 || swift_unknownObjectWeakLoadStrong() && (v22 = sub_19A66E99C(), swift_unknownObjectRelease(), (v22 & 1) == 0))
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_19A6DA590();
    }

    v53 = 0;
  }

  v52[1] = *&v16[OBJC_IVAR___STKImageGlyph_stickerEffectType];
  v60 = MEMORY[0x1E69E7CC0];
  v23 = sub_19A5F5028(0, &qword_1EAFCD110);
  sub_19A7AB0A4();
  v24 = sub_19A7AAFE4();
  v58 = objc_opt_self();
  v25 = [v58 systemImageNamed_];

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v16;
  v28 = v16;
  v59 = v23;
  v29 = sub_19A7AB944();
  v30 = v29;
  if (v55)
  {
    v31 = v29;
    MEMORY[0x19A905660]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
  }

  v55 = v30;
  v32 = v56;
  if (v53)
  {
    sub_19A7AB0A4();

    v33 = sub_19A7AAFE4();
    v34 = [v58 _systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_19A7AB944();
    MEMORY[0x19A905660]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
  }

  if (v54)
  {
    sub_19A7AB0A4();
    v36 = sub_19A7AAFE4();
    v37 = [v58 _systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = sub_19A7AB944();
    MEMORY[0x19A905660]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
  }

  sub_19A7AB0A4();
  v39 = sub_19A7AAFE4();
  v40 = [v58 systemImageNamed_];

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v28;
  v43 = v28;
  v44 = sub_19A7AB944();
  MEMORY[0x19A905660]();
  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19A7AB274();
  }

  sub_19A7AB2A4();
  if (v57)
  {
    sub_19A7AB0A4();
    v45 = sub_19A7AAFE4();
    v46 = [v58 systemImageNamed_];

    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v43;
    v49 = v43;
    v50 = sub_19A7AB944();
    MEMORY[0x19A905660]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
  }

  sub_19A5F5028(0, &unk_1EAFCEA30);
  v51 = sub_19A7AB8D4();

  (*(v32 + 8))(v8, v5);
  return v51;
}

id sub_19A6F10F4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  MEMORY[0x19A905510](a1, a2);
  MEMORY[0x19A905510](32, 0xE100000000000000);
  v5 = sub_19A7AAFE4();

  [v4 setText_];

  [v4 setNumberOfLines_];
  [v4 setAdjustsFontSizeToFitWidth_];
  [v4 setTextAlignment_];
  v6 = objc_opt_self();
  v7 = [v6 systemWhiteColor];
  [v4 setTextColor_];

  v8 = v4;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v6 redColor];
  [v8 setBackgroundColor_];

  return v8;
}

uint64_t objectdestroy_42Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A6F135C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A6EDB80(a1, v4, v5, v6);
}

uint64_t sub_19A6F1448(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_19A7ABBE4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A906130](v7, a3);
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

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_19A6F1564(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_19A7ABBE4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A906130](v7, a3);
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

uint64_t sub_19A6F174C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19A7B6C40;
  v2 = (*(*v0 + 344))();
  v3 = v0[13];
  if (v3 < 0)
  {
    sub_19A6F40F4();
    v3 = v0[13];
  }

  v4 = type metadata accessor for ImageGlyphCategory(0);
  v5 = objc_allocWithZone(v4);
  sub_19A7A8F54();
  v6 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v7 = &v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v7 = 0x7372656B63697453;
  v7[1] = 0xE800000000000000;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = v2;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7BE510;
  v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v5[v6] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  *(v1 + 32) = objc_msgSendSuper2(&v9, sel_init);
  return v1;
}

size_t sub_19A6F18CC()
{
  v19 = sub_19A7A8F64();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 32))(v21, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v21);
  swift_beginAccess();
  v6 = v0[9];
  if (v6 >> 62)
  {
    v17 = v0[9];
    v7 = sub_19A7ABBE4();
    v6 = v17;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v9 = v6;

  result = sub_19A65AE6C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v8 = v20;
    v12 = v9;
    v18 = v9 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v13 = MEMORY[0x19A906130](v11);
      }

      else
      {
        v13 = *(v12 + 8 * v11 + 32);
      }

      v14 = v13;
      MEMORY[0x19A905020]();

      v20 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_19A65AE6C(v15 > 1, v16 + 1, 1);
        v8 = v20;
      }

      ++v11;
      *(v8 + 16) = v16 + 1;
      (*(v1 + 32))(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v3, v19);
      v12 = v9;
    }

    while (v7 != v11);

    return v8;
  }

  __break(1u);
  return result;
}

id sub_19A6F1B1C()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[15];
  }

  else
  {
    v3 = v0;
    v4 = (*(*v0 + 312))();
    v5 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v6 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, v4);
    v7 = v3[15];
    v3[15] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_19A6F1BBC()
{
  sub_19A6FA8A0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_19A6F1CF4()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  (*(v3 + 24))(v2, v3);
  v4 = MKBGetDeviceLockState();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v1 + 56) = (v4 - 1) < 2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_19A5F4258;

  return sub_19A6F47A4();
}

char *sub_19A6F2020(uint64_t a1)
{
  v3 = *(v1 + 112);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60EFE4(&v10);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v10;
  v5 = sub_19A7A9044();
  if (v5 >= v4)
  {
    return sub_19A76E5A0(1, a1);
  }

  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60F150(&v10);
  os_unfair_lock_unlock(v3 + 4);
  v7 = v10;
  v8 = sub_19A76E038();

  return v8;
}

uint64_t sub_19A6F2148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 32))(v8, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  v6 = a1[9];
  if (v6 >> 62)
  {
    result = sub_19A7ABBE4();
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = result;
  return result;
}

unint64_t sub_19A6F2208@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 32))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v10);
  swift_beginAccess();
  v6 = a1[9];

  result = sub_19A7A9044();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x19A906130](result, v6);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 8 * result + 32);
LABEL_5:
    v9 = v8;

    *a2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6F240C(uint64_t a1)
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA50);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v98 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v114 = &v98 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA60);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v103 = &v98 - v5;
  v102 = sub_19A7A9094();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v98 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA68);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v110 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA78);
  v117 = *(v14 - 8);
  v118 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v98 - v15;
  v16 = sub_19A7A8F64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v98 - v25;
  v27 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v98 - v25, &qword_1EAFCD800);
  v120 = v17;
  v28 = *(v17 + 48);
  v29 = v28(v26, 1, v16);
  sub_19A5F2B54(v26, &qword_1EAFCD800);
  v30 = 0;
  if (v29 != 1)
  {
    sub_19A60F0CC(a1 + v27, v24, &qword_1EAFCD800);
    if (v28(v24, 1, v16) == 1)
    {
      sub_19A5F2B54(v24, &qword_1EAFCD800);
      return 0;
    }

    v31 = v16;
    v32 = a1;
    v34 = v120;
    v33 = v121;
    (*(v120 + 32))(v121, v24, v16);
    v35 = sub_19A6F9F48(v33, 1);
    if (!v35)
    {
      v30 = sub_19A7AB0A4();
      goto LABEL_33;
    }

    v36 = v35;
    v30 = sub_19A7AADC4();
    v38 = v37;

    if (v38)
    {

LABEL_33:
      (*(v34 + 8))(v33, v31);
      return v30;
    }

    v39 = *(v32 + OBJC_IVAR___STKImageGlyph_stickerSourceType);
    if (v39 == 3)
    {
      v55 = v36;
      sub_19A7AAC04();
      v62 = v61;

      if (v62)
      {
        v119 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA88);
        v63 = v107;
        sub_19A7A9234();
        v64 = v110;
        v65 = v109;
        sub_19A7A9244();
        (*(v108 + 8))(v63, v65);

        v68 = v117;
        v69 = v118;
        if ((*(v117 + 48))(v64, 1, v118) == 1)
        {
          sub_19A5F2B54(v64, &qword_1EAFCEA70);
          v55 = v119;
        }

        else
        {
          (*(v68 + 32))(v105, v64, v69);
          swift_getKeyPath();
          sub_19A7A9254();

          v115 = MEMORY[0x19A9054C0](v125, v126, v127, v128);
          v114 = v71;

          swift_getKeyPath();
          sub_19A7A9254();

          v72 = MEMORY[0x19A9054C0](v125, v126, v127, v128);
          v74 = v73;

          v75 = *(v34 + 56);
          v76 = v104;
          v116 = v31;
          v75(v104, 1, 1, v31);
          v77 = v101;
          v78 = v106;
          v79 = v102;
          (*(v101 + 56))(v106, 1, 1, v102);
          v80 = type metadata accessor for ImageGlyph(0);
          v81 = objc_allocWithZone(v80);
          v82 = &v81[OBJC_IVAR___STKImageGlyph_optionalData];
          *v82 = 0;
          v82[1] = 0xE000000000000000;
          *&v81[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
          v81[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
          sub_19A60F0CC(v76, &v81[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
          *&v81[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
          *&v81[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
          v83 = &v81[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
          v84 = v114;
          *v83 = v115;
          v83[1] = v84;
          v85 = &v81[OBJC_IVAR___STKImageGlyph_poseIdentifier];
          *v85 = v72;
          v85[1] = v74;
          v86 = v77;
          v87 = &v81[OBJC_IVAR___STKImageGlyph_emoji];
          *v87 = 0u;
          *(v87 + 1) = 0u;
          *(v87 + 2) = 0u;
          *(v87 + 24) = 0;
          v88 = &v81[OBJC_IVAR___STKImageGlyph_emojiString];
          *v88 = 0;
          v88[1] = 0;
          v89 = v100;
          sub_19A60F0CC(v78, v100, &unk_1EAFCF110);
          if ((*(v77 + 48))(v89, 1, v79) == 1)
          {
            sub_19A5F2B54(v89, &unk_1EAFCF110);
          }

          else
          {
            v90 = v99;
            (*(v77 + 32))(v99, v89, v79);
            v91 = sub_19A76DC5C();
            v93 = v92;
            (*(v86 + 8))(v90, v79);
            *v82 = v91;
            v82[1] = v93;
          }

          v94 = &v81[OBJC_IVAR___STKImageGlyph_character];
          *v94 = 0;
          v94[1] = 0;
          v124.receiver = v81;
          v124.super_class = v80;
          v95 = objc_msgSendSuper2(&v124, sel_init);
          sub_19A5F2B54(v106, &unk_1EAFCF110);
          sub_19A5F2B54(v104, &qword_1EAFCD800);
          v31 = v116;
          v33 = v121;
          if (qword_1ED8B2A98 != -1)
          {
            swift_once();
          }

          v30 = sub_19A6542F4(v95);
          v97 = v96;

          (*(v117 + 8))(v105, v118);
          v55 = v119;
          v34 = v120;
          if (v97)
          {
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      if (v39 != 4)
      {
        if (v39 == 6)
        {
          v122 = sub_19A7AB0A4();
          v123[0] = v40;
          v41 = v36;
          v42 = sub_19A7AABF4();
          v44 = v43;

          v45 = 0;
          v119 = 0;
          v123[1] = v42;
          v123[2] = v44;
          v46 = MEMORY[0x1E69E7CC0];
LABEL_12:
          v47 = &v123[2 * v45];
          while (++v45 != 3)
          {
            v48 = v47 + 2;
            v49 = *v47;
            v47 += 2;
            if (v49)
            {
              v50 = v31;
              v51 = *(v48 - 3);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v46 = sub_19A5F61A0(0, *(v46 + 2) + 1, 1, v46);
              }

              v53 = *(v46 + 2);
              v52 = *(v46 + 3);
              if (v53 >= v52 >> 1)
              {
                v46 = sub_19A5F61A0((v52 > 1), v53 + 1, 1, v46);
              }

              *(v46 + 2) = v53 + 1;
              v54 = &v46[16 * v53];
              *(v54 + 4) = v51;
              *(v54 + 5) = v49;
              v31 = v50;
              v34 = v120;
              goto LABEL_12;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0);
          swift_arrayDestroy();
          v125 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
          sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0);
          v30 = sub_19A7AAF94();

          v33 = v121;
        }

        else
        {
          v30 = sub_19A7AB0A4();
        }

        goto LABEL_33;
      }

      v55 = v36;
      sub_19A7AAC04();
      v57 = v56;

      if (v57)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA80);
        v58 = v111;
        sub_19A7A9234();
        v59 = v114;
        v60 = v113;
        sub_19A7A9244();
        (*(v112 + 8))(v58, v60);

        v66 = v115;
        v67 = v116;
        if ((*(v115 + 48))(v59, 1, v116) != 1)
        {
          (*(v66 + 32))();
          swift_getKeyPath();
          sub_19A7A9254();

          v30 = MEMORY[0x19A9054C0](v125, v126, v127, v128);

          (*(v66 + 8))(v103, v67);
          goto LABEL_32;
        }

        sub_19A5F2B54(v59, &qword_1EAFCEA58);
      }
    }

    v30 = sub_19A7AB0A4();
LABEL_32:

    goto LABEL_33;
  }

  return v30;
}

uint64_t sub_19A6F34A0(uint64_t a1)
{
  if (a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 112);
  MEMORY[0x1EEE9AC00](0);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60EFE4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  return v4;
}

unint64_t sub_19A6F3548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 32))(v26, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_beginAccess();
  result = a1[9];
  if (result >> 62)
  {
    v23 = a1[9];
    v7 = sub_19A7ABBE4();
    result = v23;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_13:
    *a2 = v8;
    return result;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v9 = result;

  result = sub_19A5F6074(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v10 = 0;
    v8 = v27;
    v11 = v9;
    v25 = v9 & 0xC000000000000001;
    v12 = v9;
    v13 = v7;
    do
    {
      if (v25)
      {
        v14 = MEMORY[0x19A906130](v10, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = sub_19A76E038();
      v17 = sub_19A7663D0();
      v19 = v18;

      v27 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19A5F6074((v20 > 1), v21 + 1, 1);
        v8 = v27;
      }

      ++v10;
      *(v8 + 16) = v21 + 1;
      v22 = v8 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v11 = v12;
    }

    while (v13 != v10);

    a2 = v24;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6F3788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*v2 + 336))();
  v5 = v4;
  v23 = a2;
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v7 = 0;
    v8 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title);
    v9 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
    v24 = (a1 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A906130](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = *&v10[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title] == *v8 && *&v10[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8] == v8[1];
      if (!v13 && (sub_19A7AC064() & 1) == 0 || *&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] != *(a1 + v9))
      {
LABEL_4:

        goto LABEL_5;
      }

      v14 = *&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v15 = v24[1];
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_4;
        }

        if (*&v11[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v24 && v14 == v15)
        {

          goto LABEL_29;
        }

        v17 = sub_19A7AC064();

        if (v17)
        {
          goto LABEL_27;
        }
      }

      else
      {

        if (!v15)
        {
LABEL_27:

LABEL_29:
          v18 = v23;
          MEMORY[0x19A903470](0, 0);
          v19 = 0;
          goto LABEL_34;
        }
      }

LABEL_5:
      ++v7;
      if (v12 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v19 = 1;
  v18 = v23;
LABEL_34:
  v20 = sub_19A7A9094();
  v21 = *(*(v20 - 8) + 56);

  return v21(v18, v19, 1, v20);
}

uint64_t sub_19A6F3A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v4 = *(v2 + 104);
    if (v4 < 0)
    {
      sub_19A6F40F4();
      if (*(v2 + 104) > a1)
      {
        goto LABEL_4;
      }
    }

    else if (v4 > a1)
    {
LABEL_4:
      MEMORY[0x19A903470]();
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = 1;
LABEL_7:
  v7 = sub_19A7A9094();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v5, 1, v7);
}

size_t sub_19A6F3C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 != 1)
  {
LABEL_15:
    v19 = 1;
    goto LABEL_16;
  }

  v23 = v4;
  v24 = a4;
  result = sub_19A6F18CC();
  v14 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v15 = 0;
    v26 = v10 + 16;
    v16 = (v10 + 8);
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v10 + 16))(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, v9);
      if (sub_19A7A8F14() == a1 && v17 == a2)
      {
        break;
      }

      v18 = sub_19A7AC064();

      result = (*v16)(v12, v9);
      if (v18)
      {
        goto LABEL_11;
      }

      if (v25 == ++v15)
      {
        goto LABEL_9;
      }
    }

    (*v16)(v12, v9);
LABEL_11:

    v20 = v23;
    a4 = v24;
    v21 = *(v23 + 104);
    if ((v21 & 0x8000000000000000) == 0)
    {
      if (v15 >= v21)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    sub_19A6F40F4();
    if (v15 < *(v20 + 104))
    {
LABEL_13:
      MEMORY[0x19A903470](v15, 0);
      v19 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_9:

  v19 = 1;
  a4 = v24;
LABEL_16:
  v22 = sub_19A7A9094();
  return (*(*(v22 - 8) + 56))(a4, v19, 1, v22);
}

void sub_19A6F40F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - v3 + 24;
  v5 = sub_19A7AABD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  (*(v10 + 32))(v23, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  (*(v12 + 8))(v23, v11, v12);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  (*(*v0 + 376))();
  v13 = sub_19A7AAB74();
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v14 = *(sub_19A6F18CC() + 16);

  if (v13 != v14)
  {
    v15 = sub_19A7AB394();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;

    sub_19A682308(0, 0, v4, &unk_19A7BE680, v16);
  }

  if (qword_1ED8B21B8 != -1)
  {
    swift_once();
  }

  v17 = sub_19A7A9384();
  __swift_project_value_buffer(v17, qword_1ED8B21C0);
  v18 = sub_19A7A9364();
  v19 = sub_19A7AB574();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v13;
    _os_log_impl(&dword_19A5EE000, v18, v19, "Did count %ld user stickers", v20, 0xCu);
    MEMORY[0x19A907A30](v20, -1, -1);
  }

  v21 = 1000;
  if (v13 < 1000)
  {
    v21 = v13;
  }

  v1[13] = v21;
}

uint64_t sub_19A6F45F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19A6F4684;

  return sub_19A6F47A4();
}

uint64_t sub_19A6F4684(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A6F4784, 0, 0);
}

uint64_t sub_19A6F47A4()
{
  v1[27] = v0;
  v2 = sub_19A7AAAE4();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_19A7AAC14();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE650);
  v1[34] = swift_task_alloc();
  v4 = sub_19A7AAC44();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A5F3BFC, 0, 0);
}

void sub_19A6F4954(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v55 = a3;
  v62 = sub_19A7A8F64();
  v57 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A7AAAE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1((a1 + 16), v12);
  (*(v13 + 32))(v64, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v64);
  (*(v9 + 16))(v11, a2, v8);
  sub_19A6FB624(&qword_1ED8B2098, MEMORY[0x1E69D4660]);
  v14 = sub_19A7AB194();
  swift_beginAccess();

  v16 = sub_19A5F3B64(v15, v14);

  if ((v16 & 1) != 0 && (*(a1 + 57) & 1) == 0)
  {

    if (qword_1ED8B21B8 == -1)
    {
LABEL_42:
      v49 = sub_19A7A9384();
      __swift_project_value_buffer(v49, qword_1ED8B21C0);
      v50 = sub_19A7A9364();
      v51 = sub_19A7AB574();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_19A5EE000, v50, v51, "Stickers did not change", v52, 2u);
        MEMORY[0x19A907A30](v52, -1, -1);
      }

      v53 = 1;
      goto LABEL_51;
    }

LABEL_53:
    swift_once();
    goto LABEL_42;
  }

  *(a1 + 72) = v14;

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1((a1 + 16), v17);
  (*(v18 + 32))(v64, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v64);
  v19 = *(a1 + 72);
  if (v19 >> 62)
  {
LABEL_48:
    v20 = sub_19A7ABBE4();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = 1000;
  if (v20 < 1000)
  {
    v21 = v20;
  }

  *(a1 + 104) = v21;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v22 = *(v14 + 16);
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_50:

    v53 = 0;
LABEL_51:
    *(a1 + 57) = 256;
    *v55 = v53;
    return;
  }

  v22 = sub_19A7ABBE4();
  if (!v22)
  {
    goto LABEL_50;
  }

LABEL_10:
  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_53;
  }

  v23 = 0;
  v24 = v14 & 0xC000000000000001;
  v56 = v57 + 16;
  v58 = (v57 + 8);
  v59 = v14 & 0xC000000000000001;
  v60 = v22;
  v61 = v14;
  while (1)
  {
    v25 = v24 ? MEMORY[0x19A906130](v23, v14) : *(v14 + 8 * v23 + 32);
    v26 = v25;
    v27 = sub_19A7AADE4();
    if (!v4)
    {
      break;
    }

    v4 = 0;
LABEL_13:
    if (v22 == ++v23)
    {
      goto LABEL_50;
    }
  }

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v29 = sub_19A7AAD94();
    v30 = v29;
    if (v29 >> 62)
    {
      if (!sub_19A7ABBE4())
      {
LABEL_39:

        goto LABEL_13;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x19A906130](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v31 = *(v30 + 32);
    }

    v28 = v31;
  }

  v32 = v63;
  MEMORY[0x19A905020]();
  swift_beginAccess();
  v33 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(a1 + 88);
  v35 = v65;
  *(a1 + 88) = 0x8000000000000000;
  v14 = sub_19A6957E0(v32);
  v37 = v35[2];
  v38 = (v36 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v40 = v36;
  if (v35[3] >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = v65;
      if (v36)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_19A69A14C();
      v43 = v65;
      if (v40)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    v43[(v14 >> 6) + 8] |= 1 << v14;
    (*(v57 + 16))(v43[6] + *(v57 + 72) * v14, v63, v62);
    *(v43[7] + 8 * v14) = v33;
    v46 = v43[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_46;
    }

    v43[2] = v48;
    goto LABEL_37;
  }

  sub_19A69814C(v39, isUniquelyReferenced_nonNull_native);
  v41 = sub_19A6957E0(v63);
  if ((v40 & 1) == (v42 & 1))
  {
    v14 = v41;
    v43 = v65;
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v44 = v43[7];
    v45 = *(v44 + 8 * v14);
    *(v44 + 8 * v14) = v33;

LABEL_37:
    (*v58)(v63, v62);
    *(a1 + 88) = v43;
    swift_endAccess();

    v22 = v60;
    v14 = v61;
    v24 = v59;
    goto LABEL_13;
  }

  sub_19A7AC0C4();
  __break(1u);
}

uint64_t sub_19A6F4FA8(uint64_t a1)
{
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = MEMORY[0x1E69E7CC0];

  v3 = sub_19A69CCA4(v2);
  swift_beginAccess();
  *(a1 + 88) = v3;

  sub_19A6F505C();

  *(a1 + 104) = -1;
  *(a1 + 58) = 1;
  return result;
}

uint64_t sub_19A6F505C()
{
  swift_beginAccess();
  v0[2] = MEMORY[0x1E69E7CC8];

  v1 = v0[3];
  if (v1)
  {

    do
    {
      *(v1 + *(*v1 + 120)) = 0;

      v2 = *(v1 + *(*v1 + 128));

      v1 = v2;
    }

    while (v2);
  }

  v0[3] = 0;

  v0[4] = 0;
}

uint64_t sub_19A6F52A8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_19A6F5350;

  return sub_19A6F47A4();
}

uint64_t sub_19A6F5350()
{
  v1 = *(*v0 + 24);
  v5 = *v0;

  sub_19A7AAF14();
  v2 = sub_19A7AB234();

  (v1)[2](v1, v2);

  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_19A6F564C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_19A7A9094();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();

  return MEMORY[0x1EEE6DFA0](sub_19A6F5748, 0, 0);
}

uint64_t sub_19A6F5748()
{
  v1 = sub_19A6F2020(v0[5]);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_19A6F586C;

    return sub_19A6F7FF8(v2);
  }

  else
  {

    v5 = v0[6];
    (*(v0[4] + 8))(v0[5], v0[3]);
    v5[2](v5, 0);
    _Block_release(v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A6F586C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A6F596C, 0, 0);
}

uint64_t sub_19A6F596C()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (v3)[2](v3, v1);
  _Block_release(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A6F5BB0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_19A7A9094();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_19A7A9024();

  return MEMORY[0x1EEE6DFA0](sub_19A6F5CAC, 0, 0);
}

uint64_t sub_19A6F5CAC()
{
  v1 = sub_19A6F2020(v0[5]);
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_19A6F5DD0;

    return sub_19A6F939C(v2);
  }

  else
  {

    v5 = v0[6];
    (*(v0[4] + 8))(v0[5], v0[3]);
    v5[2](v5, 0);
    _Block_release(v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_19A6F5DD0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A6FBEA8, 0, 0);
}

uint64_t sub_19A6F5ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_19A7A8F64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v30 - v10, &qword_1EAFCD800);
  v31 = v4;
  v13 = *(v4 + 48);
  v14 = v3;
  LODWORD(v3) = v13(v11, 1, v3);
  v15 = v33;
  sub_19A5F2B54(v11, &qword_1EAFCD800);
  if (v3 != 1)
  {
    sub_19A60F0CC(a1 + v12, v9, &qword_1EAFCD800);
    v16 = v14;
    if (v13(v9, 1, v14) == 1)
    {
      sub_19A5F2B54(v9, &qword_1EAFCD800);
    }

    else
    {
      v18 = v30;
      v17 = v31;
      (*(v31 + 32))(v30, v9, v14);
      v19 = v32;
      v20 = v32[5];
      v21 = v32[6];
      __swift_project_boxed_opaque_existential_1(v32 + 2, v20);
      (*(v21 + 32))(v34, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = swift_beginAccess();
      v23 = v19[9];
      MEMORY[0x1EEE9AC00](v22);
      *(&v30 - 2) = v18;

      sub_19A6F1564(sub_19A6FBE88, (&v30 - 4), v23);
      v25 = v24;
      LOBYTE(v20) = v26;

      if ((v20 & 1) == 0)
      {
        MEMORY[0x19A903470](v25, 0);
        v29 = sub_19A7A9094();
        (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
        return (*(v17 + 8))(v18, v16);
      }

      (*(v17 + 8))(v18, v16);
    }
  }

  v27 = sub_19A7A9094();
  return (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
}

id sub_19A6F6294(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = a3;

  a4(v9);

  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_19A7A9014();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_19A6F63E8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[12] = swift_task_alloc();
  v3 = sub_19A7A8F64();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6F64EC, 0, 0);
}

uint64_t sub_19A6F64EC()
{
  v47 = v0;
  if (sub_19A7669B0() != 1)
  {
    goto LABEL_4;
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_19A60F0CC(v0[10] + OBJC_IVAR___STKImageGlyph_stickerUUID, v3, &qword_1EAFCD800);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19A5F2B54(v0[12], &qword_1EAFCD800);
LABEL_4:
    if (qword_1ED8B21B8 != -1)
    {
      swift_once();
    }

    v4 = v0[10];
    v5 = sub_19A7A9384();
    __swift_project_value_buffer(v5, qword_1ED8B21C0);
    v6 = v4;
    v7 = sub_19A7A9364();
    v8 = sub_19A7AB584();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v46 = v10;
      *v9 = 136315138;
      v11 = sub_19A7663D0();
      v13 = sub_19A62540C(v11, v12, &v46);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_19A5EE000, v7, v8, "Could not find sticker to delete for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x19A907A30](v10, -1, -1);
      MEMORY[0x19A907A30](v9, -1, -1);
    }

    v14 = 0;
    goto LABEL_9;
  }

  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];
  v20 = v0[11];
  (*(v19 + 32))(v17, v0[12], v18);
  v21 = v20[5];
  v22 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v21);
  (*(v22 + 8))(v21, v22);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_19A7B6C30;
  (*(v19 + 16))(v24 + v23, v17, v18);
  sub_19A7AAB64();
  v25 = v0[16];
  v26 = v0[11];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_beginAccess();
  v27 = *(v26 + 72);
  v28 = swift_task_alloc();
  *(v28 + 16) = v25;

  sub_19A6F1564(sub_19A6FB578, v28, v27);
  v30 = v29;
  LOBYTE(v22) = v31;

  if ((v22 & 1) == 0)
  {
    v32 = v0[11];
    v33 = *(v32 + 112);
    v34 = swift_task_alloc();
    *(v34 + 16) = v32;
    *(v34 + 24) = v30;
    v35 = swift_task_alloc();
    *(v35 + 16) = sub_19A6FB5B4;
    *(v35 + 24) = v34;
    os_unfair_lock_lock(v33 + 4);
    sub_19A5F57B8(v36);
    os_unfair_lock_unlock(v33 + 4);

    sub_19A6FA968();
  }

  v37 = v0[16];
  v38 = v0[11];
  v39 = *(v38 + 112);
  v40 = swift_task_alloc();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_task_alloc();
  *(v41 + 16) = sub_19A6FB598;
  *(v41 + 24) = v40;
  os_unfair_lock_lock(v39 + 4);
  sub_19A5F57B8(v42);
  os_unfair_lock_unlock(v39 + 4);

  v43 = v0[16];
  v44 = v0[13];
  v45 = v0[14];

  (*(v45 + 8))(v43, v44);
  v14 = 1;
LABEL_9:

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_19A6F6BA4(void *a1, unint64_t a2)
{
  swift_beginAccess();
  v4 = sub_19A64D4A8(a2);
  swift_endAccess();

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  (*(v6 + 32))(v10, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = a1[9];
  if (v7 >> 62)
  {
    result = sub_19A7ABBE4();
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 1000;
  if (result < 1000)
  {
    v9 = result;
  }

  a1[13] = v9;
  return result;
}

uint64_t sub_19A6F6C8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A7A8F64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = sub_19A6F6DD8(a2);
  swift_endAccess();
  sub_19A6A0EF8(v7);
  (*(v4 + 16))(v6, a2, v3);

  sub_19A73D87C(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A6F6DD8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19A6957E0(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19A69A14C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_19A7A8F64();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_19A73E548(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_19A6F702C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A64A654;

  return sub_19A6F63E8(v5);
}

uint64_t sub_19A6F70F0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_19A7AABD4();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6F71B4, 0, 0);
}

uint64_t sub_19A6F71B4()
{
  v1 = v0[22];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_beginAccess();
  v4 = v1[9];
  if (v4 >> 62)
  {
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= v0[20] || ((v6 = v1[5], v7 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v6), (*(v7 + 32))(v6, v7), __swift_destroy_boxed_opaque_existential_1((v0 + 7)), v8 = v1[9], v8 >> 62) ? (v9 = sub_19A7ABBE4()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), v9 <= v0[21]))
  {
    if (qword_1ED8B21B8 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1ED8B21C0);
    v16 = sub_19A7A9364();
    v17 = sub_19A7AB584();
    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[20];
      v18 = v0[21];
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v18;
      _os_log_impl(&dword_19A5EE000, v16, v17, "There aren't enough stickers to move item from %ld to %ld", v20, 0x16u);
      MEMORY[0x19A907A30](v20, -1, -1);
    }

    v21 = 0;
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v13 = v1[5];
    v14 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    (*(v14 + 8))(v13, v14);
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    (*(v11 + 104))(v10, *MEMORY[0x1E69D46E8], v12);
    sub_19A7AAB54();
    (*(v0[24] + 8))(v0[25], v0[23]);
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    if (qword_1ED8B21B8 != -1)
    {
      swift_once();
    }

    v24 = sub_19A7A9384();
    __swift_project_value_buffer(v24, qword_1ED8B21C0);
    v16 = sub_19A7A9364();
    v25 = sub_19A7AB5A4();
    if (os_log_type_enabled(v16, v25))
    {
      v27 = v0[20];
      v26 = v0[21];
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v27;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v26;
      _os_log_impl(&dword_19A5EE000, v16, v25, "Moved from index: %ld to index: %ld", v28, 0x16u);
      MEMORY[0x19A907A30](v28, -1, -1);
    }

    v21 = 1;
  }

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_19A6F77EC(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_19A6F78B0;

  return sub_19A6F70F0(a1, a2);
}

uint64_t sub_19A6F78B0(char a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_19A6F7B90(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_19A7A9094();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();

  return MEMORY[0x1EEE6DFA0](sub_19A6F7CB4, 0, 0);
}

uint64_t sub_19A6F7CB4()
{
  v1 = *(v0 + 16);
  v2 = sub_19A7A9044();
  v3 = sub_19A7A9044();
  v6 = (*(*v1 + 752) + **(*v1 + 752));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_19A6F7E10;

  return v6(v2, v3);
}

uint64_t sub_19A6F7E10(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v11 = *v1;

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  v3[2](v3, a1 & 1);
  _Block_release(v3);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_19A6F7FF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19A7A8F64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6F80FC, 0, 0);
}

uint64_t sub_19A6F80FC()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v4 + OBJC_IVAR___STKImageGlyph_stickerUUID, v1, &qword_1EAFCD800);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_19A5F2B54(v1, &qword_1EAFCD800);
  if (v2 == 1)
  {
LABEL_4:

    v9 = v0[1];

    return v9(0);
  }

  v7 = v0[7];
  v8 = v0[4];
  sub_19A60F0CC(v4 + v5, v7, &qword_1EAFCD800);
  if (v6(v7, 1, v8) == 1)
  {
    sub_19A5F2B54(v0[7], &qword_1EAFCD800);
    goto LABEL_4;
  }

  (*(v0[5] + 32))(v0[6], v0[7], v0[4]);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_19A6F82F8;
  v12 = v0[6];

  return sub_19A6F884C(v12);
}

uint64_t sub_19A6F82F8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A6F83F8, 0, 0);
}

uint64_t sub_19A6F83F8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[10];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_19A6F8620(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A6F86E4;

  return sub_19A6F7FF8(v5);
}

uint64_t sub_19A6F86E4(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_19A6F884C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_19A7A8F64();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_19A7AAC14();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6F8968, 0, 0);
}

uint64_t sub_19A6F8968()
{
  v41 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_19A6FB53C;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_19A60EFE4(&v40);
  os_unfair_lock_unlock(v3 + 4);
  v6 = v40;

  if (!v6)
  {
    v37 = v0[27];
    v38 = v0[28];
    v39 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v9[5];
    v12 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v11);
    (*(v12 + 8))(v11, v12);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_19A7B6C30;
    (*(v7 + 16))(v14 + v13, v10, v8);
    v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
    v0[16] = sub_19A623714(&qword_1EAFCEA48, &unk_1EAFCECC0);
    v0[12] = v14;
    (*(v37 + 104))(v38, *MEMORY[0x1E69D4708], v39);
    sub_19A7AAB94();
    (*(v0[27] + 8))(v0[28], v0[26]);
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    v15 = v0[10];
    v16 = __swift_project_boxed_opaque_existential_1(v0 + 7, v15);
    v17 = *(v15 - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    sub_19A7AAF14();
    v18 = sub_19A7AB2C4();

    if (v18 >> 62)
    {
      if (!sub_19A7ABBE4())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x19A906130](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v19 = *(v18 + 32);
    }

    v20 = v19;

    v16 = sub_19A7AAD94();

    if (v16 >> 62)
    {
      result = sub_19A7ABBE4();
      if (result)
      {
LABEL_9:
        if ((v16 & 0xC000000000000001) == 0)
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v22 = *(v16 + 32);
          goto LABEL_12;
        }

LABEL_25:
        v22 = MEMORY[0x19A906130](0, v16);
LABEL_12:
        v23 = v22;

        __swift_destroy_boxed_opaque_existential_1((v0 + 7));
        __swift_destroy_boxed_opaque_existential_1((v0 + 2));
        v24 = v23;
        v25 = sub_19A7AACC4();
        v27 = v26;

        v28 = objc_opt_self();
        v29 = sub_19A7A8E14();
        v30 = [v28 itk:v29 imageWithData:?];

        if (v30)
        {
          v32 = v0[21];
          v31 = v0[22];

          v6 = [v30 itk:160.0 scaledImageMaxDimension:1.0 scale:?];
          v33 = swift_task_alloc();
          v33[2] = v31;
          v33[3] = v32;
          v33[4] = v24;
          v33[5] = v6;
          v34 = swift_task_alloc();
          *(v34 + 16) = sub_19A6FB558;
          *(v34 + 24) = v33;
          os_unfair_lock_lock(v3 + 4);
          sub_19A5F5774(v35);
          os_unfair_lock_unlock(v3 + 4);
          sub_19A612F14(v25, v27);

          goto LABEL_21;
        }

        sub_19A612F14(v25, v27);
LABEL_20:
        v6 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_9;
      }
    }

LABEL_19:

    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    goto LABEL_20;
  }

LABEL_21:

  v36 = v0[1];

  return v36(v6);
}

uint64_t sub_19A6F9120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 96);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_19A6957E0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    swift_endAccess();

    sub_19A73CC88(v11);
    v12 = *(v10 + *(*v10 + 112));
  }

  else
  {
    swift_endAccess();

    v12 = 0;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_19A6F9208(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_19A7A8F64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 88);
  *(a1 + 88) = 0x8000000000000000;
  sub_19A65091C(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 88) = v16;
  swift_endAccess();
  (*(v9 + 16))(v11, a2, v8);

  if (a4)
  {
    sub_19A73CFD8(v11, a4);
  }

  else
  {
    sub_19A73D87C(v11);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_19A6F939C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_19A7AABD4();
  v2[4] = swift_task_alloc();
  v3 = sub_19A7A8F64();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A6F94CC, 0, 0);
}

uint64_t sub_19A6F94CC()
{
  v30 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v4 + OBJC_IVAR___STKImageGlyph_stickerUUID, v1, &qword_1EAFCD800);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_19A5F2B54(v1, &qword_1EAFCD800);
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  v7 = v0[8];
  v8 = v0[5];
  sub_19A60F0CC(v4 + v5, v7, &qword_1EAFCD800);
  if (v6(v7, 1, v8) == 1)
  {
    sub_19A5F2B54(v0[8], &qword_1EAFCD800);
LABEL_4:
    v9 = 0;
    goto LABEL_5;
  }

  v12 = v0[7];
  v13 = v0[3];
  (*(v0[6] + 32))(v12, v0[8], v0[5]);
  v14 = *(v13 + 112);
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = swift_task_alloc();
  *(v16 + 16) = sub_19A6FBE58;
  *(v16 + 24) = v15;
  os_unfair_lock_lock(v14 + 4);
  sub_19A6FBE70(v29);
  os_unfair_lock_unlock(v14 + 4);
  v17 = v29[0];

  v18 = v0[7];
  if (!v17)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_4;
  }

  v19 = v0[3];
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = swift_task_alloc();
  *(v21 + 16) = sub_19A6FB508;
  *(v21 + 24) = v20;
  os_unfair_lock_lock(v14 + 4);
  sub_19A6FB524(v29);
  os_unfair_lock_unlock(v14 + 4);
  v22 = v29[0];

  v24 = v0[6];
  v23 = v0[7];
  v25 = v0[5];
  if (!v22)
  {

    (*(v24 + 8))(v23, v25);
    goto LABEL_4;
  }

  sub_19A7AAF14();
  v28 = v23;
  sub_19A7AAE84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_19A7B6C40;
  *(v26 + 32) = v22;
  v27 = v22;
  sub_19A7AAE34();
  sub_19A7AAEF4();
  sub_19A7AAC04();
  sub_19A7AADC4();
  sub_19A7AAD84();
  sub_19A7AABF4();
  v9 = sub_19A7AAE54();

  (*(v24 + 8))(v28, v25);
LABEL_5:

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_19A6F98AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 88);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_19A6957E0(a2);
  if ((v9 & 1) == 0)
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  v11 = v10;

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  *a3 = v10;
  return result;
}

uint64_t sub_19A6F9AD8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_19A6FBEA4;

  return sub_19A6F939C(v5);
}

id sub_19A6F9B9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, v4, &qword_1EAFCD800);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A5F2B54(v4, &qword_1EAFCD800);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_19A6F9F48(v8, 1);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 distributionIsRestricted];

      (*(v6 + 8))(v8, v5);
      return v11;
    }

    (*(v6 + 8))(v8, v5);
  }

  if (qword_1ED8B21B8 != -1)
  {
    swift_once();
  }

  v13 = sub_19A7A9384();
  __swift_project_value_buffer(v13, qword_1ED8B21C0);
  v14 = a1;
  v15 = sub_19A7A9364();
  v16 = sub_19A7AB5A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = [v14 debugDescription];
    v20 = sub_19A7AB014();
    v22 = v21;

    v23 = sub_19A62540C(v20, v22, &v25);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_19A5EE000, v15, v16, "Cannot find sticker to to distribute. %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x19A907A30](v18, -1, -1);
    MEMORY[0x19A907A30](v17, -1, -1);
  }

  return 0;
}

uint64_t sub_19A6F9F48(uint64_t a1, char a2)
{
  v5 = sub_19A7AAC14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[14];
  v18 = v2;
  v19 = a1;
  v15 = sub_19A6FB4EC;
  v16 = &v17;
  os_unfair_lock_lock(v9 + 4);
  sub_19A6FBE70(v20);
  os_unfair_lock_unlock(v9 + 4);
  result = v20[0];
  if (!v20[0] && (a2 & 1) != 0)
  {
    v11 = v2[5];
    v12 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
    (*(v12 + 8))(v20, v11, v12);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    (*(v6 + 104))(v8, *MEMORY[0x1E69D4718], v5);
    v13 = sub_19A7AAB84();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v13;
  }

  return result;
}

uint64_t sub_19A6FA13C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  (*(v7 + 32))(v12, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_beginAccess();
  v8 = a1[9];
  v11[2] = a2;

  v9 = sub_19A76617C(sub_19A6FBE88, v11, v8);

  *a3 = v9;
  return result;
}

uint64_t sub_19A6FA224()
{
  v0 = sub_19A7A8F64();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x19A905020](v2);
  v5 = sub_19A7A8F34();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_19A6FA314()
{
  if (!v0[8])
  {
    v1 = v0;
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    (*(v3 + 16))(v21, v2, v3);
    v4 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_19A7AAAC4();
    v5 = sub_19A7AAA24();
    memset(v20, 0, sizeof(v20));
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = *(*v4 + 16);
    sub_19A60F0CC(v20, aBlock, &unk_1EAFCD750);
    v8 = v17;
    if (v17)
    {
      v9 = __swift_project_boxed_opaque_existential_1(aBlock, v17);
      v10 = *(v8 - 1);
      MEMORY[0x1EEE9AC00](v9);
      v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);

      v13 = sub_19A7AC054();
      (*(v10 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {

      v13 = 0;
    }

    v18 = sub_19A6FB428;
    v19 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A77855C;
    v17 = &block_descriptor_19;
    v14 = _Block_copy(aBlock);

    v15 = [v7 addObserverForName:v5 object:v13 queue:0 usingBlock:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
    sub_19A5F2B54(v20, &unk_1EAFCD750);

    v1[8] = v15;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_19A6FA5F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_19A7AB394();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_19A6816F0(0, 0, v2, &unk_19A7BE660, v6);
  }

  return result;
}

uint64_t sub_19A6FA710()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A6FA7A0;

  return sub_19A6F47A4();
}

uint64_t sub_19A6FA7A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_19A6FA8A0()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = *(v3 + 16);
    swift_unknownObjectRetain();
    v4(v5, v2, v3);
    [*(*__swift_project_boxed_opaque_existential_1(v5 v5[3]) + 16)];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v5);
    v0[8] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A6FA968()
{
  v1 = sub_19A7A8C04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8B2020 != -1)
  {
    swift_once();
  }

  v11 = 0u;
  v12 = 0u;
  v5 = qword_1ED8B4238;
  sub_19A7A8BD4();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v7 + 16))(&v11, v6, v7);
  v8 = *(*__swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1)) + 16);
  v9 = sub_19A7A8BB4();
  [v8 postNotification_];

  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1(&v11);
}

id sub_19A6FAB0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  type metadata accessor for ImageGlyphCategory(0);
  v5 = sub_19A7AB234();

  return v5;
}

uint64_t sub_19A6FAB7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19A7B6C40;
  v2 = *(v0 + 104);
  if (v2 < 0)
  {
    sub_19A6F40F4();
    v2 = *(v0 + 104);
  }

  v3 = type metadata accessor for ImageGlyphCategory(0);
  v4 = objc_allocWithZone(v3);
  sub_19A7A8F54();
  v5 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v4[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v6 = &v4[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v6 = 0x73746E65636552;
  v6[1] = 0xE700000000000000;
  *&v4[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7B9170;
  v4[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v4[v5] = v2;
  v8.receiver = v4;
  v8.super_class = v3;
  *(v1 + 32) = objc_msgSendSuper2(&v8, sel_init);
  return v1;
}

uint64_t sub_19A6FACB0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_19A7AABD4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_19A6FAED4(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_19A6FB0E4(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();
  v10 = *(v6 + 8);
  v10(v7, v5);
  v10(v8, v5);
  v9[2](v9, 0);
  _Block_release(v9);

  v11 = *(v3 + 8);

  return v11();
}

uint64_t sub_19A6FB250()
{
  sub_19A6F1BBC();

  return swift_deallocClassInstance();
}

uint64_t sub_19A6FB2A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60F860;

  return sub_19A6FB0E4(v2, v3, v4);
}

uint64_t sub_19A6FB368()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6FAED4(v2, v3, v4);
}

uint64_t sub_19A6FB438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60FB98;

  return sub_19A6FA710();
}

uint64_t sub_19A6FB624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A6FB66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A60FB98;

  return sub_19A6F45F0(a1);
}

uint64_t sub_19A6FB774()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6F9AD8(v2, v3, v4);
}

uint64_t sub_19A6FB828()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6F8620(v2, v3, v4);
}

uint64_t sub_19A6FB8DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19A60FB98;

  return sub_19A6F7B90(v2, v3, v5, v4);
}

uint64_t objectdestroy_151Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A6FB9DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19A60FB98;

  return sub_19A6F77EC(v2, v3, v5, v4);
}

uint64_t sub_19A6FBA9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6F702C(v2, v3, v4);
}

uint64_t sub_19A6FBB50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6F5BB0(v2, v3, v4);
}

uint64_t sub_19A6FBC04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A6F564C(v2, v3, v4);
}

uint64_t sub_19A6FBCB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A6F52A8(v2, v3);
}

uint64_t objectdestroy_168Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A6FBDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A6F1CD4(a1, v4, v5, v6);
}

uint64_t sub_19A6FBEB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19A6FBF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridListTranslator.GridListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridListTranslator.GridListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_19A6FC004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

id sub_19A6FC040()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicLookupFilterShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19A6FC098(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_mode);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_threshold);
  v4 = *(v1 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_preThreshold);
  v5 = *(v1 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_sigma);
  v7 = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v5;
  return [a1 setFragmentBytes:&v7 length:24 atIndex:0];
}

id sub_19A6FC178()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicEdgesShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19A6FC1D0(void *a1, void *a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_mode) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteCenter) = _Q0;
  v9 = (v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteColor);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteStart) = 0x3FD3333333333333;
  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteEnd) = 0x3FE8000000000000;
  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevels) = 1086324736;
  *(v3 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevelsRecip) = 1042983595;
  return sub_19A7116E4(a1, a2, 0xD000000000000027, 0x800000019A7CAF70, a3);
}

id sub_19A6FC278(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_mode);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteColor);
  v4 = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteCenter));
  v5 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteStart);
  v6 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteEnd);
  v7 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevels);
  v8 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevelsRecip);
  v10 = *(v1 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_mode);
  v11 = v4;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return [a1 setFragmentBytes:&v10 length:48 atIndex:0];
}

id sub_19A6FC36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicVignetteAndQuantizeShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_19A6FC3C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_19A6FC3E4(void *a1, uint64_t a2)
{
  v4 = v2;
  v32[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for StickerComicRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v32[0] = 0;
  v9 = [a1 newDefaultLibraryWithBundle:v8 error:v32];

  v10 = v32[0];
  if (!v9)
  {
    v14 = v32[0];
    sub_19A7A8D34();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v31 = v4;
  v11 = type metadata accessor for StickerComicSobelShader();
  objc_allocWithZone(v11);
  swift_unknownObjectRetain();
  v12 = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_19A7116E4(a1, v9, 0xD000000000000019, 0x800000019A7CB190, a2);
  if (v3)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v31;
LABEL_6:
    type metadata accessor for StickerComicRenderer.Shaders();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v31[2] = v13;
  v15 = type metadata accessor for StickerComicGaussBlurExpressShader();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC10StickerKit34StickerComicGaussBlurExpressShader_sigma] = 0x3FE0000000000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[3] = sub_19A7116E4(a1, v9, 0xD000000000000024, 0x800000019A7CB1B0, a2);
  v17 = type metadata accessor for StickerComicGaussBlurExpressPassTwoShader();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC10StickerKit41StickerComicGaussBlurExpressPassTwoShader_sigma] = 0x3FE0000000000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[4] = sub_19A7116E4(a1, v9, 0xD00000000000002BLL, 0x800000019A7CB1E0, a2);
  v19 = objc_allocWithZone(type metadata accessor for StickerComicBFBlurPassOneShader());
  *&v19[OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigmaColor] = 0;
  *&v19[OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigma] = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[5] = sub_19A711294(a1, v9, 0xD000000000000021, 0x800000019A7CB210, a2);
  v20 = objc_allocWithZone(type metadata accessor for StickerComicBFBlurPassTwoShader());
  *&v20[OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigmaColor] = 0;
  *&v20[OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigma] = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[6] = sub_19A711294(a1, v9, 0xD000000000000021, 0x800000019A7CB240, a2);
  v21 = objc_allocWithZone(type metadata accessor for StickerComicVignetteAndQuantizeShader());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[7] = sub_19A6FC1D0(a1, v9, a2);
  v22 = objc_allocWithZone(type metadata accessor for StickerComicEdgesShader());
  *&v22[OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_threshold] = 0x3FE0000000000000;
  *&v22[OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_preThreshold] = 0x3FE0000000000000;
  *&v22[OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_sigma] = 0;
  *&v22[OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_mode] = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[9] = sub_19A711294(a1, v9, 0xD000000000000019, 0x800000019A7CB270, a2);
  v23 = objc_allocWithZone(type metadata accessor for StickerComicStrokeShader());
  *&v23[OBJC_IVAR____TtC10StickerKit24StickerComicStrokeShader_sigma] = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[10] = sub_19A7116E4(a1, v9, 0xD00000000000001ALL, 0x800000019A7CB290, a2);
  v24 = objc_allocWithZone(type metadata accessor for StickerComicStrokeAndBlendShader());
  *&v24[OBJC_IVAR____TtC10StickerKit32StickerComicStrokeAndBlendShader_sigma] = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[11] = sub_19A711294(a1, v9, 0xD000000000000022, 0x800000019A7CB2B0, a2);
  v25 = objc_allocWithZone(type metadata accessor for StickerComicColorStrokeShader());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[8] = sub_19A711294(a1, v9, 0xD00000000000001FLL, 0x800000019A7CB2E0, a2);
  v26 = objc_allocWithZone(type metadata accessor for StickerComicLookupFilterShader());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[12] = sub_19A711294(a1, v9, 0xD000000000000020, 0x800000019A7CB300, a2);
  v27 = objc_allocWithZone(v11);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[13] = sub_19A7116E4(a1, v9, 0xD000000000000019, 0x800000019A7CB190, a2);
  v28 = objc_allocWithZone(v15);
  *&v28[OBJC_IVAR____TtC10StickerKit34StickerComicGaussBlurExpressShader_sigma] = 0x3FE0000000000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31[14] = sub_19A7116E4(a1, v9, 0xD000000000000024, 0x800000019A7CB1B0, a2);
  v29 = objc_allocWithZone(v17);
  *&v29[OBJC_IVAR____TtC10StickerKit41StickerComicGaussBlurExpressPassTwoShader_sigma] = 0x3FE0000000000000;
  v4 = v31;
  v31[15] = sub_19A7116E4(a1, v9, 0xD00000000000002BLL, 0x800000019A7CB1E0, a2);
  return v4;
}

uint64_t sub_19A6FCFB4()
{
  sub_19A6FCF2C();

  return swift_deallocClassInstance();
}

uint64_t sub_19A6FCFE4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 32) = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = v6;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = a1;
  type metadata accessor for StickerComicRenderer.Shaders();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_19A6FC3E4(v7, a2);
  if (v3)
  {
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicRenderer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 24) = v8;
  }

  return v4;
}

uint64_t sub_19A6FD0A8(unint64_t a1)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:

    v11 = MEMORY[0x19A906130](v12, v1);

    return v11;
  }

  v3 = v1;
  v12 = a1;
  swift_beginAccess();
  while (1)
  {
    v4 = *(v3 + 32);
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v2)
    {
      goto LABEL_16;
    }

LABEL_5:
    v7 = *(v3 + 64);
    v6 = *(v3 + 72);
    v8 = objc_opt_self();
    if (v7 <= -9.22337204e18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    if (v6 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v6 >= 9.22337204e18)
    {
      goto LABEL_25;
    }

    v1 = [v8 texture2DDescriptorWithPixelFormat:80 width:v7 height:v6 mipmapped:0];
    [v1 setUsage_];
    v9 = [*(v3 + 16) newTextureWithDescriptor_];

    if (v9)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectRetain();
      MEMORY[0x19A905660](v10);
      if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      v1 = v3 + 32;
      sub_19A7AB2A4();
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  result = sub_19A7ABBE4();
  if (result < v2)
  {
    goto LABEL_5;
  }

LABEL_16:
  v1 = *(v3 + 32);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
  {
    v11 = *(v1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6FD318(unint64_t a1)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:

    v11 = MEMORY[0x19A906130](v12, v1);

    return v11;
  }

  v3 = v1;
  v12 = a1;
  swift_beginAccess();
  while (1)
  {
    v4 = *(v3 + 40);
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v2)
    {
      goto LABEL_16;
    }

LABEL_5:
    v7 = *(v3 + 48);
    v6 = *(v3 + 56);
    v8 = objc_opt_self();
    if (v7 <= -9.22337204e18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    if (v6 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v6 >= 9.22337204e18)
    {
      goto LABEL_25;
    }

    v1 = [v8 texture2DDescriptorWithPixelFormat:80 width:v7 height:v6 mipmapped:0];
    [v1 setUsage_];
    v9 = [*(v3 + 16) newTextureWithDescriptor_];

    if (v9)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectRetain();
      MEMORY[0x19A905660](v10);
      if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      v1 = v3 + 40;
      sub_19A7AB2A4();
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  result = sub_19A7ABBE4();
  if (result < v2)
  {
    goto LABEL_5;
  }

LABEL_16:
  v1 = *(v3 + 40);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
  {
    v11 = *(v1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6FD588(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = *(v5 + 24);
  v10 = *a1;
  v11 = sub_19A6FD318(0);
  sub_19A711988(v11, a2, a5);
  swift_unknownObjectRelease();
  v12 = sub_19A6FD318(1uLL);
  v13 = sub_19A6FD318(0);
  sub_19A711988(v12, v13, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = sub_19A6FD318(0);
  v15 = sub_19A6FD318(1uLL);
  sub_19A711988(v14, v15, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = *(v9 + 40);
  v17 = sub_19A6FD318(1uLL);
  v18 = sub_19A6FD318(0);
  sub_19A711538(v17, a5);
  if (v10)
  {
    if (v19)
    {
      v20 = v19;
      [v19 setFragmentTexture:a2 atIndex:0];
      [v20 setFragmentTexture:v18 atIndex:1];
      [v20 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v20 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v20 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      *&v21 = *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigma);
      *&v22 = *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigmaColor);
      v23 = vcvt_f32_f64(*(v16 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
      v91 = __PAIR64__(v22, v21);
      v92 = v23;
      [v20 setFragmentBytes:&v91 length:16 atIndex:0];
      [v20 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v20 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v24 = *(v9 + 48);
    v25 = sub_19A6FD318(2uLL);
    v26 = sub_19A6FD318(1uLL);
    v27 = sub_19A6FD318(0);
    sub_19A711538(v25, a5);
    if (v28)
    {
      v29 = v28;
      [v28 setFragmentTexture:v26 atIndex:0];
      [v29 setFragmentTexture:v27 atIndex:1];
      [v29 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v29 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v29 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      *&v30 = *(v24 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigma);
      *&v31 = *(v24 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigmaColor);
      v32 = vcvt_f32_f64(*(v24 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
      v91 = __PAIR64__(v31, v30);
      v92 = v32;
      [v29 setFragmentBytes:&v91 length:16 atIndex:0];
      [v29 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v29 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v33 = sub_19A6FD318(1uLL);
    v34 = sub_19A6FD318(2uLL);
    v35 = sub_19A6FD318(0);
    sub_19A711538(v33, a5);
    if (v36)
    {
      v37 = v36;
      [v36 setFragmentTexture:v34 atIndex:0];
      [v37 setFragmentTexture:v35 atIndex:1];
      [v37 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v37 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v37 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      sub_19A6FC098(v37);
      [v37 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v37 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = *(v9 + 80);
    v39 = sub_19A6FD318(1uLL);
    sub_19A711988(a3, v39, a5);
  }

  else
  {
    if (v19)
    {
      v40 = v19;
      [v19 setFragmentTexture:a2 atIndex:0];
      [v40 setFragmentTexture:v18 atIndex:1];
      [v40 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v40 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v40 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      *&v41 = *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigma);
      *&v42 = *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigmaColor);
      v43 = vcvt_f32_f64(*(v16 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
      v91 = __PAIR64__(v42, v41);
      v92 = v43;
      [v40 setFragmentBytes:&v91 length:16 atIndex:0];
      [v40 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v40 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = *(v9 + 48);
    v45 = sub_19A6FD318(2uLL);
    v46 = sub_19A6FD318(1uLL);
    v47 = sub_19A6FD318(0);
    sub_19A711538(v45, a5);
    if (v48)
    {
      v49 = v48;
      [v48 setFragmentTexture:v46 atIndex:0];
      [v49 setFragmentTexture:v47 atIndex:1];
      [v49 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v49 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v49 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      *&v50 = *(v44 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigma);
      *&v51 = *(v44 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigmaColor);
      v52 = vcvt_f32_f64(*(v44 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
      v91 = __PAIR64__(v51, v50);
      v92 = v52;
      [v49 setFragmentBytes:&v91 length:16 atIndex:0];
      [v49 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v49 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v53 = sub_19A6FD0A8(0);
    v54 = sub_19A6FD318(2uLL);
    sub_19A711988(v53, v54, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v55 = sub_19A6FD318(1uLL);
    v56 = sub_19A6FD0A8(0);
    sub_19A711988(v55, v56, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v57 = sub_19A6FD318(3uLL);
    v58 = sub_19A6FD318(1uLL);
    sub_19A711988(v57, v58, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v59 = sub_19A6FD318(1uLL);
    v60 = sub_19A6FD318(3uLL);
    sub_19A711988(v59, v60, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v61 = *(v9 + 64);
    v62 = sub_19A6FD0A8(1uLL);
    v63 = sub_19A6FD0A8(0);
    v64 = sub_19A6FD318(1uLL);
    sub_19A711538(v62, a5);
    if (v65)
    {
      v66 = v65;
      [v65 setFragmentTexture:v63 atIndex:0];
      [v66 setFragmentTexture:v64 atIndex:1];
      [v66 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v66 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v66 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      v91 = vcvt_f32_f64(*(v61 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
      [v66 setFragmentBytes:&v91 length:8 atIndex:0];
      [v66 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v66 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v67 = sub_19A6FD318(1uLL);
    v68 = sub_19A6FD318(2uLL);
    v69 = sub_19A6FD318(0);
    sub_19A711538(v67, a5);
    if (v70)
    {
      v71 = v70;
      [v70 setFragmentTexture:v68 atIndex:0];
      [v71 setFragmentTexture:v69 atIndex:1];
      [v71 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
      [v71 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
      [v71 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
      sub_19A6FC098(v71);
      [v71 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v71 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (a4)
    {
      v72 = *(v9 + 88);
      swift_unknownObjectRetain();
      v73 = sub_19A6FD0A8(0);
      v74 = sub_19A6FD318(1uLL);
      v75 = sub_19A6FD0A8(1uLL);
      sub_19A711538(v73, a5);
      v77 = &off_1E751B000;
      if (v76)
      {
        v78 = v76;
        [v76 setFragmentTexture:v74 atIndex:0];
        [v78 setFragmentTexture:v75 atIndex:1];
        [v78 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
        [v78 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
        v77 = &off_1E751B000;
        [v78 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
        v79 = *(v72 + OBJC_IVAR____TtC10StickerKit32StickerComicStrokeAndBlendShader_sigma);
        v91 = vcvt_f32_f64(*(v72 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
        v92.f32[0] = v79;
        [v78 setFragmentBytes:&v91 length:16 atIndex:0];
        [v78 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v78 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v80 = sub_19A6FD0A8(0);
      sub_19A711538(a3, a5);
      if (v81)
      {
        v82 = v81;
        [v81 setFragmentTexture:v80 atIndex:0];
        [v82 setFragmentTexture:a4 atIndex:1];
        [v82 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
        [v82 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
        [v82 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
        [v82 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v82 v77[196]];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v83 = *(v9 + 88);
      v84 = sub_19A6FD318(1uLL);
      v85 = sub_19A6FD0A8(1uLL);
      sub_19A711538(a3, a5);
      if (v86)
      {
        v87 = v86;
        [v86 setFragmentTexture:v84 atIndex:0];
        [v87 setFragmentTexture:v85 atIndex:1];
        [v87 setVertexBytes:&unk_1F0DC4D88 length:32 atIndex:0];
        [v87 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:1];
        [v87 setVertexBytes:&unk_1F0DC4DC8 length:32 atIndex:2];
        v88 = *(v83 + OBJC_IVAR____TtC10StickerKit32StickerComicStrokeAndBlendShader_sigma);
        v91 = vcvt_f32_f64(*(v83 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size));
        v92.f32[0] = v88;
        [v87 setFragmentBytes:&v91 length:16 atIndex:0];
        [v87 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v87 endEncoding];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_19A6FE4A8()
{
  cacheOut[1] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v2 = sub_19A7AAFE4();
  v3 = [objc_opt_self() imageNamed_];

  if (v3)
  {
    [v3 size];
    v5 = v4;
    [v3 itk_scale];
    v7 = v5 * v6;
    if (COERCE__INT64(fabs(v5 * v6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        [v3 size];
        v9 = v8;
        [v3 itk_scale];
        v11 = v9 * v10;
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v11 > -9.22337204e18)
          {
            if (v11 < 9.22337204e18)
            {
              cacheOut[0] = 0;
              v12 = *MEMORY[0x1E695E480];
              if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, *(v0 + 16), 0, cacheOut) || (v13 = cacheOut[0]) == 0)
              {

LABEL_33:
                return 0;
              }

              v55 = v3;
              v56 = DeviceRGB;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEAE8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_19A7BE980;
              v15 = *MEMORY[0x1E6966208];
              *(inited + 32) = *MEMORY[0x1E6966208];
              v16 = MEMORY[0x1E69E6530];
              v54 = v7;
              *(inited + 40) = v7;
              v17 = *MEMORY[0x1E69660B8];
              *(inited + 64) = v16;
              *(inited + 72) = v17;
              v53 = v11;
              *(inited + 80) = v11;
              v18 = *MEMORY[0x1E6966130];
              *(inited + 104) = v16;
              *(inited + 112) = v18;
              v19 = MEMORY[0x1E69E7668];
              *(inited + 120) = 1111970369;
              v20 = *MEMORY[0x1E6966030];
              *(inited + 144) = v19;
              *(inited + 152) = v20;
              v21 = MEMORY[0x1E69E6370];
              *(inited + 160) = 1;
              v22 = v12;
              v23 = *MEMORY[0x1E6966028];
              *(inited + 184) = v21;
              *(inited + 192) = v23;
              *(inited + 200) = 1;
              v24 = *MEMORY[0x1E6966100];
              *(inited + 224) = v21;
              *(inited + 232) = v24;
              *(inited + 240) = 1;
              v25 = *MEMORY[0x1E69660D8];
              *(inited + 264) = v21;
              *(inited + 272) = v25;
              textureCache = v13;
              v26 = v15;
              v27 = v17;
              v28 = v18;
              v29 = v20;
              v30 = v23;
              v31 = v24;
              v32 = v25;
              sub_19A69D6CC(MEMORY[0x1E69E7CC0]);
              type metadata accessor for CFString(0);
              sub_19A6FF0E0();
              v33 = sub_19A7AAF34();

              type metadata accessor for CFDictionary(0);
              *(inited + 304) = v34;
              *(inited + 280) = v33;
              sub_19A69D6CC(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD980);
              swift_arrayDestroy();
              v35 = sub_19A7AAF34();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCEAF0);
              v36 = swift_initStackObject();
              v37 = MEMORY[0x1E6966158];
              *(v36 + 16) = xmmword_19A7B6C30;
              v38 = *v37;
              *(v36 + 32) = v38;
              *(v36 + 40) = 1;
              v39 = v38;
              sub_19A69D7F4(v36);
              swift_setDeallocating();
              sub_19A6FF138(v36 + 32);
              v40 = sub_19A7AAF34();

              poolOut = 0;
              if (CVPixelBufferPoolCreate(v22, v40, v35, &poolOut) || !poolOut)
              {

                v52 = textureCache;
LABEL_32:

                goto LABEL_33;
              }

              pixelBufferOut = 0;
              v41 = poolOut;
              if (CVPixelBufferPoolCreatePixelBuffer(v22, v41, &pixelBufferOut) || !pixelBufferOut)
              {
              }

              else
              {
                v42 = pixelBufferOut;
                CVPixelBufferLockBaseAddress(v42, 0);
                BaseAddress = CVPixelBufferGetBaseAddress(v42);
                if (BaseAddress)
                {
                  v44 = BaseAddress;
                  BytesPerRow = CVPixelBufferGetBytesPerRow(v42);
                  v46 = __CGBitmapContextCreate_1(v44, v54, v53, BytesPerRow, v56);
                  if (v46)
                  {
                    v47 = v53;
                    v48 = v46;
                    CGContextTranslateCTM(v46, 0.0, v53);
                    CGContextScaleCTM(v48, 1.0, -1.0);
                    UIGraphicsPushContext(v48);
                    [v55 drawInRect_];
                    UIGraphicsPopContext();
                    CVPixelBufferUnlockBaseAddress(v42, 0);
                    textureOut = 0;
                    if (v54 > -9.22337204e18)
                    {
                      if (v54 < 9.22337204e18)
                      {
                        if (v47 > -9.22337204e18)
                        {
                          if (v47 < 9.22337204e18)
                          {
                            if (CVMetalTextureCacheCreateTextureFromImage(v22, textureCache, v42, 0, MTLPixelFormatBGRA8Unorm, v54, v53, 0, &textureOut) || !textureOut)
                            {
                            }

                            else
                            {
                              v49 = textureOut;
                              v50 = CVMetalTextureGetTexture(v49);

                              if (v50)
                              {

                                return v50;
                              }
                            }

                            goto LABEL_31;
                          }

LABEL_44:
                          __break(1u);
                        }

LABEL_43:
                        __break(1u);
                        goto LABEL_44;
                      }

LABEL_42:
                      __break(1u);
                      goto LABEL_43;
                    }

LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }
                }
              }

LABEL_31:
              v52 = pixelBufferOut;
              goto LABEL_32;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return 0;
}

uint64_t sub_19A6FEB94()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_19A6FEC2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

BOOL sub_19A6FEC80(float *a1)
{
  v1 = a1[1];
  if (v1 < 0.0 || v1 > 1.0)
  {
    return 0;
  }

  v4 = a1[2];
  if (v4 < 0.0 || v4 > 1.0)
  {
    return 0;
  }

  v6 = a1[3];
  if (v6 < 0.0 || v6 > 1.0)
  {
    return 0;
  }

  v8 = a1[4];
  if (v8 < 0.0 || v8 > 1.0)
  {
    return 0;
  }

  v10 = 0;
  v11 = a1[5];
  if (v11 >= 0.0 && v11 <= 1.0)
  {
    v12 = a1[6];
    return v12 <= 1.0 && v12 >= 0.0;
  }

  return v10;
}

id sub_19A6FED1C(void *a1, uint64_t a2)
{
  v5 = [a1 width];
  result = [a1 height];
  v7 = v5 * 0.76;
  v8 = result * 0.76;
  if (v8 >= v5 * 0.76)
  {
    v9 = v5 * 0.76;
  }

  else
  {
    v9 = result * 0.76;
  }

  if (v7 > v8)
  {
    v10 = v5 * 0.76;
  }

  else
  {
    v10 = result * 0.76;
  }

  if (v9 <= 720.0)
  {
    if (v10 >= 140.0)
    {
      goto LABEL_12;
    }

    v11 = 140.0 / v10;
  }

  else
  {
    v11 = 720.0 / v9;
  }

  v8 = v8 * v11;
  v7 = v7 * v11;
LABEL_12:
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  v12 = ((*(a2 + 4) + *(a2 + 4)) + 1.0);
  v13 = v7 / v12;
  v14 = v8 / v12;
  *(v2 + 48) = v13;
  *(v2 + 56) = v14;
  v15 = *(v2 + 24);
  v16 = v15[5];
  *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigmaColor) = 0x3FBBC408E0000000;
  *(v16 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassOneShader_sigma) = 0x401A0A4260000000;
  v17 = v15[6];
  *(v17 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigmaColor) = 0x3FBBC408E0000000;
  *(v17 + OBJC_IVAR____TtC10StickerKit31StickerComicBFBlurPassTwoShader_sigma) = 0x401A0A4260000000;
  v18 = v15[7];
  *(v18 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteStart) = 0x3FD3333333333333;
  *(v18 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_vignetteEnd) = 0x3FE999999999999ALL;
  *(v18 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_mode) = 0;
  v19 = *(a2 + 32);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v19))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  *(v18 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevels) = v19;
  v20 = 1.0 / v19;
  if (!v19)
  {
    v20 = 0.0;
  }

  *(v18 + OBJC_IVAR____TtC10StickerKit37StickerComicVignetteAndQuantizeShader_numLevelsRecip) = v20;
  v21 = *(a2 + 12);
  v22 = v15[9];
  *(v22 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_sigma) = (1.0 - *(a2 + 8)) * 3.807 + 1.6;
  v23 = OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_preThreshold;
  *(v22 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_preThreshold) = 0x3FF0000000000000;
  *(v22 + OBJC_IVAR____TtC10StickerKit23StickerComicEdgesShader_mode) = 0;
  v24 = v15[10];
  *(v24 + OBJC_IVAR____TtC10StickerKit24StickerComicStrokeShader_sigma) = v21 * 12.0 + 4.0;
  v25 = v15[11];
  *(v25 + OBJC_IVAR____TtC10StickerKit32StickerComicStrokeAndBlendShader_sigma) = v21 * 32.0 + 4.8;
  v26 = v21 * 6.0 + 2.340625;
  v27 = v15[3];
  *(v27 + OBJC_IVAR____TtC10StickerKit34StickerComicGaussBlurExpressShader_sigma) = v26;
  v28 = v15[4];
  *(v28 + OBJC_IVAR____TtC10StickerKit41StickerComicGaussBlurExpressPassTwoShader_sigma) = v26;
  v29 = v15[14];
  *(v29 + OBJC_IVAR____TtC10StickerKit34StickerComicGaussBlurExpressShader_sigma) = 0x4001800000000000;
  v30 = v15[15];
  *(v30 + OBJC_IVAR____TtC10StickerKit41StickerComicGaussBlurExpressPassTwoShader_sigma) = 0x4001800000000000;
  *(v22 + v23) = *(a2 + 16) * -0.65 + 1.0;
  v31 = (v24 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v31 = v7;
  v31[1] = v8;
  v32 = (v25 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v32 = v7;
  v32[1] = v8;
  v33 = (v18 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v33 = v7;
  v33[1] = v8;
  v34 = (v15[8] + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v34 = v7;
  v34[1] = v8;
  v35 = (v15[12] + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v35 = v7;
  v35[1] = v8;
  result = OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size;
  v36 = (v15[2] + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v36 = v13;
  v36[1] = v14;
  v37 = (v16 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v37 = v13;
  v37[1] = v14;
  v38 = (v17 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v38 = v13;
  v38[1] = v14;
  v39 = (v22 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v39 = v13;
  v39[1] = v14;
  v40 = (v27 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v40 = v13;
  v40[1] = v14;
  v41 = (v28 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v41 = v13;
  v41[1] = v14;
  v42 = (v29 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v42 = v13;
  v42[1] = v14;
  v43 = (v30 + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v43 = v13;
  v43[1] = v14;
  v44 = (v15[13] + OBJC_IVAR____TtC10StickerKit22StickerComicShaderBase_size);
  *v44 = v13;
  v44[1] = v14;
  return result;
}

unint64_t sub_19A6FF0E0()
{
  result = qword_1EAFCBDE0;
  if (!qword_1EAFCBDE0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCBDE0);
  }

  return result;
}

uint64_t sub_19A6FF138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A6FF1D8()
{
  result = qword_1EAFCEB00;
  if (!qword_1EAFCEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEB00);
  }

  return result;
}

unint64_t sub_19A6FF230()
{
  result = qword_1EAFCEB08;
  if (!qword_1EAFCEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEB08);
  }

  return result;
}

void sub_19A6FF284(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EAFCAC38 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAFCAC48;
  v9 = *(qword_1EAFCAC48 + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController);
  if (v9)
  {
    v10 = qword_1EAFCA9D0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1EAFCA9E0);
    v13 = sub_19A7A9364();
    v14 = sub_19A7AB5A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19A5EE000, v13, v14, "Dismissing currently presented view controller", v15, 2u);
      MEMORY[0x19A907A30](v15, -1, -1);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v11;
    *(v16 + 32) = a1;
    *(v16 + 40) = v4;
    *(v16 + 48) = 1;
    *(v16 + 56) = a2;
    *(v16 + 64) = a3;
    v22[4] = sub_19A702EB8;
    v22[5] = v16;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_19A6815D4;
    v22[3] = &block_descriptor_17;
    v17 = _Block_copy(v22);
    v18 = v11;
    v19 = v8;
    v20 = a1;
    v21 = v4;
    sub_19A60138C(a2);

    [v18 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }

  else
  {
    sub_19A6FFF18(a1, v3, 1, a2, a3);
  }
}

uint64_t sub_19A6FF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19A702E48(a3, v22 - v9);
  v11 = sub_19A7AB394();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19A702DE0(v10);
  }

  else
  {
    sub_19A7AB384();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19A7AB2E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19A7AB074() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19A6FF724()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCA9E0);
  __swift_project_value_buffer(v0, qword_1EAFCA9E0);
  return sub_19A7A9374();
}

id sub_19A6FF8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenmojiRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19A6FF928()
{
  result = [objc_allocWithZone(type metadata accessor for STKPresentationController()) init];
  qword_1EAFCAC48 = result;
  return result;
}

void sub_19A6FF95C()
{
  v1 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow;
  if (*(v0 + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow))
  {
    v2 = v0;
    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_19A7A9384();
    __swift_project_value_buffer(v3, qword_1EAFCA9E0);
    v4 = sub_19A7A9364();
    v5 = sub_19A7AB5A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v5, "Hiding presenting window", v6, 2u);
      MEMORY[0x19A907A30](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    if (v7)
    {
      [v7 resignKeyWindow];
      v8 = *(v2 + v1);
      if (v8)
      {

        [v8 setHidden_];
      }
    }
  }
}

void sub_19A6FFA9C(void *a1)
{
  v2 = v1;
  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCA9E0);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB5A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "Removing presentingViewController", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingViewControllers;
  swift_beginAccess();
  v9 = sub_19A6961A8(a1);
  swift_endAccess();

  v10 = v2;
  v11 = sub_19A7A9364();
  v12 = sub_19A7AB5A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *&v2[v8];
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = sub_19A7ABBE4();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(v13 + 4) = v15;

    _os_log_impl(&dword_19A5EE000, v11, v12, "Remaining keys: %ld", v13, 0xCu);
    MEMORY[0x19A907A30](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }
}

void sub_19A6FFD50(uint64_t a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_19A6FF95C();
  sub_19A6FFDDC();
  sub_19A6FFA9C(a2);
  v14 = *(a1 + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController);
  *(a1 + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController) = 0;

  sub_19A6FFF18(a3, a4, a5, a6, a7);
}

uint64_t sub_19A6FFDDC()
{
  v1 = v0;
  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCA9E0);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB5A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Clearing responder to restore", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v8 _removeBoundingPathChangeObserver_];
    }
  }

  return swift_unknownObjectWeakAssign();
}

void sub_19A6FFF18(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v11 = sub_19A7A9384();
  __swift_project_value_buffer(v11, qword_1EAFCA9E0);
  v12 = sub_19A7A9364();
  v13 = sub_19A7AB5A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19A5EE000, v12, v13, "Presenting", v14, 2u);
    MEMORY[0x19A907A30](v14, -1, -1);
  }

  v15 = sub_19A7A9364();
  v16 = sub_19A7AB5A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_19A5EE000, v15, v16, "Saving presentingViewController", v17, 2u);
    MEMORY[0x19A907A30](v17, -1, -1);
  }

  v18 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingViewControllers;
  swift_beginAccess();
  v19 = *&v6[v18];
  if ((v19 & 0xC000000000000001) != 0)
  {
    if (v19 < 0)
    {
      v20 = *&v6[v18];
    }

    else
    {
      v20 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = a2;
    v22 = sub_19A7ABBE4();
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    *&v6[v18] = sub_19A6962F4(v20, v22 + 1);
  }

  else
  {
    v23 = a2;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109 = *&v6[v18];
  v100 = a2;
  sub_19A6507A4(a2, a1, isUniquelyReferenced_nonNull_native);
  *&v6[v18] = v109;
  swift_endAccess();
  v25 = v6;
  v26 = sub_19A7A9364();
  v27 = sub_19A7AB5A4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    v29 = *&v6[v18];
    if ((v29 & 0xC000000000000001) != 0)
    {

      v30 = sub_19A7ABBE4();
    }

    else
    {
      v30 = *(v29 + 16);
    }

    *(v28 + 4) = v30;

    _os_log_impl(&dword_19A5EE000, v26, v27, "Remaining keys: %ld", v28, 0xCu);
    MEMORY[0x19A907A30](v28, -1, -1);
  }

  else
  {

    v26 = v25;
  }

  v31 = [objc_opt_self() activeInstance];
  v32 = [v31 delegateAsResponder];

  if (v32)
  {
    v33 = [v32 _responderWindow];
    if (!v33)
    {
LABEL_57:

      return;
    }

    v34 = v33;
    objc_opt_self();
    v99 = v34;
    v97 = swift_dynamicCastObjCClass();
    swift_unknownObjectWeakAssign();
    v35 = v32;
    v36 = sub_19A7A9364();
    v37 = sub_19A7AB5A4();

    v96 = a4;
    v98 = v35;
    if (os_log_type_enabled(v36, v37))
    {
      v95 = a3;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v109 = v39;
      *v38 = 136315138;
      aBlock = 60;
      v104 = 0xE100000000000000;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = NSStringFromClass(ObjCClassFromMetadata);
      v42 = a5;
      v43 = sub_19A7AB014();
      v45 = v44;

      v46 = v43;
      a5 = v42;
      MEMORY[0x19A905510](v46, v45);

      MEMORY[0x19A905510](62, 0xE100000000000000);
      v47 = sub_19A62540C(60, 0xE100000000000000, &v109);

      *(v38 + 4) = v47;
      _os_log_impl(&dword_19A5EE000, v36, v37, "Responder to restore: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x19A907A30](v39, -1, -1);
      v48 = v38;
      a3 = v95;
      MEMORY[0x19A907A30](v48, -1, -1);
    }

    v49 = *(&v25->isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController);
    *(&v25->isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController) = a1;

    v50 = a1;
    v32 = v99;
    if (v97 || (v51 = [v99 windowScene]) == 0)
    {
LABEL_40:
      v74 = [objc_opt_self() currentDevice];
      v75 = [v74 userInterfaceIdiom];

      if (v75 == 1)
      {
        v76 = [v32 traitCollection];
        v77 = [v76 horizontalSizeClass];

        if (v77 == 2)
        {
          [v50 setModalPresentationStyle_];
          v78 = [v50 sheetPresentationController];
          if (v78)
          {
            v79 = v78;
            [v78 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
          }
        }
      }

      v80 = [v50 presentationController];
      if (v80)
      {
        v81 = v80;
        [v80 setDelegate_];
      }

      v82 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow;
      v83 = *(&v25->isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow);
      if (v83 && ([v83 setHidden_], (v84 = *(&v25->isa + v82)) != 0) && (objc_msgSend(v84, sel_makeKeyAndVisible), (v85 = *(&v25->isa + v82)) != 0))
      {
        v86 = *(&v25->isa + v82);
      }

      else
      {
        v86 = v32;
        v85 = 0;
      }

      v87 = v85;
      v88 = [v86 rootViewController];

      if (v88)
      {
        v89 = swift_allocObject();
        v89[2] = v100;
        v89[3] = v96;
        v89[4] = a5;
        v107 = sub_19A702ECC;
        v108 = v89;
        aBlock = MEMORY[0x1E69E9820];
        v104 = 1107296256;
        v105 = sub_19A6815D4;
        v106 = &block_descriptor_23;
        v90 = _Block_copy(&aBlock);
        v91 = v100;
        v92 = v88;
        sub_19A60138C(v96);

        [v92 presentViewController:v50 animated:a3 & 1 completion:v90];
        _Block_release(v90);

        v32 = v99;
      }

      objc_opt_self();
      v93 = swift_dynamicCastObjCClass();
      if (v93)
      {
        [v93 _addBoundingPathChangeObserver_];
        v94 = v98;
      }

      else
      {
        v94 = v32;
        v32 = v98;
      }

      goto LABEL_57;
    }

    v52 = v51;
    v102 = a5;
    v53 = OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow;
    v54 = *(&v25->isa + OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_presentingWindow);
    if (v54)
    {
      v55 = [v54 windowScene];
      if (v55)
      {
        v56 = v55;
        sub_19A5F5028(0, &unk_1EAFCA548);
        v57 = v52;
        v58 = sub_19A7AB924();

        v32 = v99;
        if (v58)
        {
LABEL_39:

          a5 = v102;
          goto LABEL_40;
        }
      }
    }

    v59 = sub_19A7A9364();
    v60 = sub_19A7AB5A4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_19A5EE000, v59, v60, "Creating new presenting window", v61, 2u);
      v62 = v61;
      v32 = v99;
      MEMORY[0x19A907A30](v62, -1, -1);
    }

    v63 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
    v64 = *(&v25->isa + v53);
    *(&v25->isa + v53) = v63;

    v65 = *(&v25->isa + v53);
    if (v65)
    {
      v66 = v65;
      v67 = [v32 tintColor];
      [v66 setTintColor_];

      v68 = *(&v25->isa + v53);
      if (v68)
      {
        [v68 setWindowLevel_];
      }
    }

    type metadata accessor for GenmojiRootViewController();
    v69 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v70 = *(&v25->isa + v53);
    if (!v70 || ([v70 setRootViewController_], (v71 = *(&v25->isa + v53)) == 0))
    {
LABEL_38:

      goto LABEL_39;
    }

    v72 = [v71 _rootSheetPresentationController];
    if (v72)
    {
      v73 = v72;
      [v72 _setShouldScaleDownBehindDescendantSheets_];

      goto LABEL_38;
    }

LABEL_60:
    __break(1u);
  }
}

uint64_t sub_19A7008B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = *&a1[OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController];
  *&a1[OBJC_IVAR____TtC10StickerKitP33_EA33ED8DB99C4DEC95D72ADC49E80F3125STKPresentationController_currentViewController] = 0;

  sub_19A7AB374();
  v16 = sub_19A7AB394();
  (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
  sub_19A7AB354();
  sub_19A60138C(a2);
  v17 = a1;
  sub_19A60138C(a4);
  v18 = a6;
  v19 = sub_19A7AB344();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = v17;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = v18;
  sub_19A6FF4D8(0, 0, v14, &unk_19A7BEC90, v20);

  return sub_19A702DE0(v14);
}

uint64_t sub_19A700A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_19A7ABDC4();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_19A7AB354();
  v8[11] = sub_19A7AB344();
  v11 = sub_19A7AB2E4();
  v8[12] = v11;
  v8[13] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19A700B58, v11, v10);
}

uint64_t sub_19A700B58()
{
  v65 = v0;
  if (*(v0 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong _responderWindow];
    }

    else
    {
      v3 = 0;
    }

    *(v0 + 112) = v3;
    v61 = (*(v0 + 16) + **(v0 + 16));
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_19A7013B8;

    return v61(v3);
  }

  sub_19A6FF95C();
  v4 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = v4;
  if (!v4)
  {

    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v13 = sub_19A7A9384();
    __swift_project_value_buffer(v13, qword_1EAFCA9E0);
    v14 = sub_19A7A9364();
    v15 = sub_19A7AB584();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19A5EE000, v14, v15, "Responder to restore is nil", v16, 2u);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    goto LABEL_32;
  }

  v5 = v4;
  v6 = [v4 inputAccessoryView];
  if (v6 || (v6 = [v5 inputAccessoryViewController]) != 0)
  {

    v7 = sub_19A7AC1E4();
    v9 = v8;
    sub_19A7AC0F4();
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_19A701C38;

    return sub_19A776184(v7, v9, 0, 0, 1);
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = *(v0 + 128);
    v20 = [v18 window];
    if (!v20)
    {
      if (qword_1EAFCA9D0 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 128);
      v48 = sub_19A7A9384();
      __swift_project_value_buffer(v48, qword_1EAFCA9E0);
      v49 = v47;
      v14 = sub_19A7A9364();
      v50 = sub_19A7AB584();

      v51 = os_log_type_enabled(v14, v50);
      v52 = *(v0 + 128);
      if (v51)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 136315138;
        v62 = v54;
        v63 = 60;
        v64 = 0xE100000000000000;
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v56 = NSStringFromClass(ObjCClassFromMetadata);
        v57 = sub_19A7AB014();
        v59 = v58;

        MEMORY[0x19A905510](v57, v59);

        MEMORY[0x19A905510](62, 0xE100000000000000);

        v60 = sub_19A62540C(60, 0xE100000000000000, &v62);

        *(v53 + 4) = v60;
        _os_log_impl(&dword_19A5EE000, v14, v50, "Responder: %s is not in a window", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x19A907A30](v54, -1, -1);
        MEMORY[0x19A907A30](v53, -1, -1);
      }

      else
      {
      }

      goto LABEL_32;
    }

    v21 = *(v0 + 128);
  }

  if ([*(v0 + 128) becomeFirstResponder])
  {
    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 128);
    v23 = sub_19A7A9384();
    __swift_project_value_buffer(v23, qword_1EAFCA9E0);
    v24 = v22;
    v25 = sub_19A7A9364();
    v26 = sub_19A7AB5A4();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136315138;
    v62 = v28;
    v63 = 60;
    v64 = 0xE100000000000000;
    swift_getObjectType();
    v29 = swift_getObjCClassFromMetadata();
    v30 = NSStringFromClass(v29);
    v31 = sub_19A7AB014();
    v33 = v32;

    MEMORY[0x19A905510](v31, v33);

    MEMORY[0x19A905510](62, 0xE100000000000000);
    v34 = sub_19A62540C(60, 0xE100000000000000, &v62);

    *(v27 + 4) = v34;
    v35 = "Restored responder: %s";
  }

  else
  {
    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 128);
    v37 = sub_19A7A9384();
    __swift_project_value_buffer(v37, qword_1EAFCA9E0);
    v38 = v36;
    v25 = sub_19A7A9364();
    v26 = sub_19A7AB584();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_31;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136315138;
    v62 = v28;
    v63 = 60;
    v64 = 0xE100000000000000;
    swift_getObjectType();
    v39 = swift_getObjCClassFromMetadata();
    v40 = NSStringFromClass(v39);
    v41 = sub_19A7AB014();
    v43 = v42;

    MEMORY[0x19A905510](v41, v43);

    MEMORY[0x19A905510](62, 0xE100000000000000);
    v44 = sub_19A62540C(60, 0xE100000000000000, &v62);

    *(v27 + 4) = v44;
    v35 = "Failed to restore responder: %s";
  }

  _os_log_impl(&dword_19A5EE000, v25, v26, v35, v27, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v28);
  MEMORY[0x19A907A30](v28, -1, -1);
  MEMORY[0x19A907A30](v27, -1, -1);
LABEL_31:

  v14 = *(v0 + 128);
  sub_19A6FFDDC();
LABEL_32:

  v45 = *(v0 + 40);
  if (v45)
  {
    v45();
  }

  sub_19A6FFA9C(*(v0 + 56));

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_19A7013B8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19A7014F8, v4, v3);
}

uint64_t sub_19A7014F8()
{
  v60 = v0;
  sub_19A6FF95C();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {

    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v9 = sub_19A7A9384();
    __swift_project_value_buffer(v9, qword_1EAFCA9E0);
    v10 = sub_19A7A9364();
    v11 = sub_19A7AB584();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19A5EE000, v10, v11, "Responder to restore is nil", v12, 2u);
      MEMORY[0x19A907A30](v12, -1, -1);
    }

    goto LABEL_25;
  }

  v2 = Strong;
  v3 = [Strong inputAccessoryView];
  if (v3 || (v3 = [v2 inputAccessoryViewController]) != 0)
  {

    v4 = sub_19A7AC1E4();
    v6 = v5;
    sub_19A7AC0F4();
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_19A701C38;

    return sub_19A776184(v4, v6, 0, 0, 1);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 128);
    v16 = [v14 window];
    if (!v16)
    {
      if (qword_1EAFCA9D0 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 128);
      v44 = sub_19A7A9384();
      __swift_project_value_buffer(v44, qword_1EAFCA9E0);
      v45 = v43;
      v10 = sub_19A7A9364();
      v46 = sub_19A7AB584();

      v47 = os_log_type_enabled(v10, v46);
      v48 = *(v0 + 128);
      if (v47)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 136315138;
        v57 = v50;
        v58 = 60;
        v59 = 0xE100000000000000;
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = NSStringFromClass(ObjCClassFromMetadata);
        v53 = sub_19A7AB014();
        v55 = v54;

        MEMORY[0x19A905510](v53, v55);

        MEMORY[0x19A905510](62, 0xE100000000000000);

        v56 = sub_19A62540C(60, 0xE100000000000000, &v57);

        *(v49 + 4) = v56;
        _os_log_impl(&dword_19A5EE000, v10, v46, "Responder: %s is not in a window", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x19A907A30](v50, -1, -1);
        MEMORY[0x19A907A30](v49, -1, -1);
      }

      else
      {
      }

      goto LABEL_25;
    }

    v17 = *(v0 + 128);
  }

  if ([*(v0 + 128) becomeFirstResponder])
  {
    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 128);
    v19 = sub_19A7A9384();
    __swift_project_value_buffer(v19, qword_1EAFCA9E0);
    v20 = v18;
    v21 = sub_19A7A9364();
    v22 = sub_19A7AB5A4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v57 = v24;
    v58 = 60;
    v59 = 0xE100000000000000;
    swift_getObjectType();
    v25 = swift_getObjCClassFromMetadata();
    v26 = NSStringFromClass(v25);
    v27 = sub_19A7AB014();
    v29 = v28;

    MEMORY[0x19A905510](v27, v29);

    MEMORY[0x19A905510](62, 0xE100000000000000);
    v30 = sub_19A62540C(60, 0xE100000000000000, &v57);

    *(v23 + 4) = v30;
    v31 = "Restored responder: %s";
  }

  else
  {
    if (qword_1EAFCA9D0 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 128);
    v33 = sub_19A7A9384();
    __swift_project_value_buffer(v33, qword_1EAFCA9E0);
    v34 = v32;
    v21 = sub_19A7A9364();
    v22 = sub_19A7AB584();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_24;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v57 = v24;
    v58 = 60;
    v59 = 0xE100000000000000;
    swift_getObjectType();
    v35 = swift_getObjCClassFromMetadata();
    v36 = NSStringFromClass(v35);
    v37 = sub_19A7AB014();
    v39 = v38;

    MEMORY[0x19A905510](v37, v39);

    MEMORY[0x19A905510](62, 0xE100000000000000);
    v40 = sub_19A62540C(60, 0xE100000000000000, &v57);

    *(v23 + 4) = v40;
    v31 = "Failed to restore responder: %s";
  }

  _os_log_impl(&dword_19A5EE000, v21, v22, v31, v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v24);
  MEMORY[0x19A907A30](v24, -1, -1);
  MEMORY[0x19A907A30](v23, -1, -1);
LABEL_24:

  v10 = *(v0 + 128);
  sub_19A6FFDDC();
LABEL_25:

  v41 = *(v0 + 40);
  if (v41)
  {
    v41();
  }

  sub_19A6FFA9C(*(v0 + 56));

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_19A701C38()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_19A702334;
  }

  else
  {
    v8 = sub_19A701DD0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A701DD0()
{
  v50 = v0;

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
LABEL_4:
    if ([*(v0 + 128) becomeFirstResponder])
    {
      if (qword_1EAFCA9D0 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 128);
      v7 = sub_19A7A9384();
      __swift_project_value_buffer(v7, qword_1EAFCA9E0);
      v8 = v6;
      v9 = sub_19A7A9364();
      v10 = sub_19A7AB5A4();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_14;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v47 = v12;
      v48 = 60;
      v49 = 0xE100000000000000;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = NSStringFromClass(ObjCClassFromMetadata);
      v15 = sub_19A7AB014();
      v17 = v16;

      MEMORY[0x19A905510](v15, v17);

      MEMORY[0x19A905510](62, 0xE100000000000000);
      v18 = sub_19A62540C(60, 0xE100000000000000, &v47);

      *(v11 + 4) = v18;
      v19 = "Restored responder: %s";
    }

    else
    {
      if (qword_1EAFCA9D0 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 128);
      v21 = sub_19A7A9384();
      __swift_project_value_buffer(v21, qword_1EAFCA9E0);
      v22 = v20;
      v9 = sub_19A7A9364();
      v10 = sub_19A7AB584();

      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_14;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v47 = v12;
      v48 = 60;
      v49 = 0xE100000000000000;
      swift_getObjectType();
      v23 = swift_getObjCClassFromMetadata();
      v24 = NSStringFromClass(v23);
      v25 = sub_19A7AB014();
      v27 = v26;

      MEMORY[0x19A905510](v25, v27);

      MEMORY[0x19A905510](62, 0xE100000000000000);
      v28 = sub_19A62540C(60, 0xE100000000000000, &v47);

      *(v11 + 4) = v28;
      v19 = "Failed to restore responder: %s";
    }

    _os_log_impl(&dword_19A5EE000, v9, v10, v19, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x19A907A30](v12, -1, -1);
    MEMORY[0x19A907A30](v11, -1, -1);
LABEL_14:

    v29 = *(v0 + 128);
    sub_19A6FFDDC();
    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0 + 128);
  v4 = [v2 window];
  if (v4)
  {
    v5 = *(v0 + 128);

    goto LABEL_4;
  }

  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 128);
  v31 = sub_19A7A9384();
  __swift_project_value_buffer(v31, qword_1EAFCA9E0);
  v32 = v30;
  v29 = sub_19A7A9364();
  v33 = sub_19A7AB584();

  v34 = os_log_type_enabled(v29, v33);
  v35 = *(v0 + 128);
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 136315138;
    v47 = v37;
    v48 = 60;
    v49 = 0xE100000000000000;
    swift_getObjectType();
    v38 = swift_getObjCClassFromMetadata();
    v39 = NSStringFromClass(v38);
    v40 = sub_19A7AB014();
    v42 = v41;

    MEMORY[0x19A905510](v40, v42);

    MEMORY[0x19A905510](62, 0xE100000000000000);

    v43 = sub_19A62540C(60, 0xE100000000000000, &v47);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_19A5EE000, v29, v33, "Responder: %s is not in a window", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x19A907A30](v37, -1, -1);
    MEMORY[0x19A907A30](v36, -1, -1);
  }

  else
  {
  }

LABEL_21:
  v44 = *(v0 + 40);
  if (v44)
  {
    v44();
  }

  sub_19A6FFA9C(*(v0 + 56));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_19A702334()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    (*(v0 + 40))(v2);
  }

  sub_19A6FFA9C(*(v0 + 56));

  v3 = *(v0 + 8);

  return v3();
}

void sub_19A70255C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EAFCAC38 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAFCAC48;
  if (qword_1EAFCA9D0 != -1)
  {
    swift_once();
  }

  v11 = sub_19A7A9384();
  __swift_project_value_buffer(v11, qword_1EAFCA9E0);
  v12 = sub_19A7A9364();
  v13 = sub_19A7AB5A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_19A5EE000, v12, v13, "Dismissing", v14, 2u);
    MEMORY[0x19A907A30](v14, -1, -1);
  }

  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a1;
  v19[4] = sub_19A702CDC;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_19A6815D4;
  v19[3] = &block_descriptor_20;
  v16 = _Block_copy(v19);
  v17 = v10;
  sub_19A60138C(a2);
  sub_19A60138C(a4);
  v18 = a1;

  [v18 dismissViewControllerAnimated:1 completion:v16];
  _Block_release(v16);
}