uint64_t sub_23C696774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FAC40, &unk_23C8791C0);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeInstance);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypeInstance);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FAC40, &unk_23C8791C0);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeInstance);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C696B5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE38, &qword_23C889A50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE38, &qword_23C889A50);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE38, &qword_23C889A50);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE38, &qword_23C889A50);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE38, &qword_23C889A50);
    return sub_23C585C34(v16, &qword_27E1FEE38, &qword_23C889A50);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE38, &qword_23C889A50);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C696F44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE40, &qword_23C889A58);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE40, &qword_23C889A58);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE40, &qword_23C889A58);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE40, &qword_23C889A58);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE40, &qword_23C889A58);
    return sub_23C585C34(v16, &qword_27E1FEE40, &qword_23C889A58);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Union);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE40, &qword_23C889A58);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C69732C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE48, &qword_23C889A60);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE48, &qword_23C889A60);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE48, &qword_23C889A60);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE48, &qword_23C889A60);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE48, &qword_23C889A60);
    return sub_23C585C34(v16, &qword_27E1FEE48, &qword_23C889A60);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE48, &qword_23C889A60);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C697714(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE50, &qword_23C889A68);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE50, &qword_23C889A68);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE50, &qword_23C889A68);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE50, &qword_23C889A68);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE50, &qword_23C889A68);
    return sub_23C585C34(v16, &qword_27E1FEE50, &qword_23C889A68);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE50, &qword_23C889A68);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v27 = *v29;
    *v29 = v25 | 0xA000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t ToolKitProtoTypeInstance.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      result = sub_23C697FF0(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else if (v4 == 4)
    {
      result = sub_23C698148(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C6982A0(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      result = sub_23C697D40(v0);
      if (!v1)
      {
LABEL_2:
        v2 = v0 + *(type metadata accessor for ToolKitProtoTypeInstance(0) + 20);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C697E98(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C697BF0(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C697BF0(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v5, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C871304();
    return sub_23C717008(v5, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

uint64_t sub_23C697D40(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C697E98(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C697FF0(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C698148(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6982A0(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6984F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA10, type metadata accessor for ToolKitProtoTypeInstance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C698598()
{
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);

  return sub_23C8711F4();
}

uint64_t sub_23C698604()
{
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);

  return sub_23C871204();
}

uint64_t sub_23C6986D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC670);
  __swift_project_value_buffer(v0, qword_27E1FC670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeInstance(0);
        sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C6989D4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6989D4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C698ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C698DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA08, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C698E68()
{
  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return sub_23C8711F4();
}

uint64_t sub_23C698ED4()
{
  sub_23C716EF0(&qword_27E1FDDF8, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return sub_23C871204();
}

uint64_t ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypeInstance(0), sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoTypeInstance.Union(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C69915C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6992B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA00, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C699354()
{
  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return sub_23C8711F4();
}

uint64_t sub_23C6993C0()
{
  sub_23C716EF0(&qword_27E1FDE10, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return sub_23C871204();
}

uint64_t sub_23C699454(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C699554()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC6C0);
  __swift_project_value_buffer(v0, qword_27E1FC6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.Restricted.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C699854();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoRestrictionContext(0);
        sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C699854()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeInstance.Restricted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C699A04(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C699A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C699D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9F8, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C699DA4()
{
  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return sub_23C8711F4();
}

uint64_t sub_23C699E10()
{
  sub_23C716EF0(&qword_27E1FDE28, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return sub_23C871204();
}

uint64_t sub_23C699EF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x800000023C8AD010;
  return result;
}

uint64_t sub_23C69A03C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_23C716EF0(a5, a6);
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C69A214(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9F0, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69A2B4()
{
  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return sub_23C8711F4();
}

uint64_t sub_23C69A320()
{
  sub_23C716EF0(&qword_27E1FDE40, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return sub_23C871204();
}

uint64_t sub_23C69A3BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC700);
  __swift_project_value_buffer(v0, qword_27E1FC700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "inSet";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "representableAs";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "personReachableAs";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dateExpressibleAs";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "textTypedWith";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C69A788(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_23C69AB68(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C69AF50();
          break;
        case 4:
          sub_23C69B01C();
          break;
        case 5:
          sub_23C69B0E8(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C69A788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE20, &qword_23C889A38);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 61) && v31 != 0xF000000000000007)
  {

    sub_23C585C34(v18, &qword_27E1FEE20, &qword_23C889A38);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE20, &qword_23C889A38);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE20, &qword_23C889A38);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE20, &qword_23C889A38);
    return sub_23C585C34(v16, &qword_27E1FEE20, &qword_23C889A38);
  }

  else
  {
    v24 = v30;
    sub_23C716FA0(v16, v30, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    if (v31 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE20, &qword_23C889A38);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v27 = *v29;
    *v29 = v25;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C69AB68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE28, &qword_23C889A40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE28, &qword_23C889A40);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE28, &qword_23C889A40);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE28, &qword_23C889A40);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE28, &qword_23C889A40);
    return sub_23C585C34(v16, &qword_27E1FEE28, &qword_23C889A40);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE28, &qword_23C889A40);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C69B0E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE30, &qword_23C889A48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEE30, &qword_23C889A48);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEE30, &qword_23C889A48);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEE30, &qword_23C889A48);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEE30, &qword_23C889A48);
    return sub_23C585C34(v16, &qword_27E1FEE30, &qword_23C889A48);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEE30, &qword_23C889A48);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t ToolKitProtoRestrictionContext.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      result = sub_23C69B6FC(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C69B5AC(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 == 2)
  {
    result = sub_23C69B854(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else if (v4 == 3)
  {
    result = sub_23C69B8E8(v0);
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext(0) + 20);
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C69B97C(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C69B5AC(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_23C871304();
    return sub_23C717008(v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

uint64_t sub_23C69B6FC(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23C69B854(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_23C716E48();
    return sub_23C871254();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23C69B8E8(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_23C716E9C();
    return sub_23C871254();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C69B97C(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C69BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9E8, type metadata accessor for ToolKitProtoRestrictionContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69BC74()
{
  sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext);

  return sub_23C8711F4();
}

uint64_t sub_23C69BCE0()
{
  sub_23C716EF0(&qword_27E1FD650, type metadata accessor for ToolKitProtoRestrictionContext);

  return sub_23C871204();
}

uint64_t sub_23C69BDC8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC718);
  __swift_project_value_buffer(v0, qword_27E1FC718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "PersonReachableAs_UNSPECIFIED";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PersonReachableAs_CONTACT";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PersonReachableAs_PHONE";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PersonReachableAs_EMAIL";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "PersonReachableAs_EMAILORPHONE";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C69C0B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC730);
  __swift_project_value_buffer(v0, qword_27E1FC730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAs_DATE";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAs_TIME";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAs_DATE_AND_TIME";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69C3A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC758);
  __swift_project_value_buffer(v0, qword_27E1FC758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
        sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C69C6A0();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C69C6A0()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_23C8711A4();
}

uint64_t sub_23C69C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE00, &qword_23C889A28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FEE00, &qword_23C889A28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEE00, &qword_23C889A28);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_23C69C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FEDF0, &unk_23C889C60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEDF0, &unk_23C889C60);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_23C69CC4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C69CD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9E0, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69CE0C()
{
  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return sub_23C8711F4();
}

uint64_t sub_23C69CE78()
{
  sub_23C716EF0(&qword_27E1FDE88, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return sub_23C871204();
}

uint64_t sub_23C69CEF8()
{
  if (qword_27E1F8628 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC748;
  v2 = qword_27E1FC750;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x655365756C61562ELL, 0xE900000000000074);

  qword_27E1FC770 = v1;
  *algn_27E1FC778 = v2;
  return result;
}

uint64_t sub_23C69CFC8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC780);
  __swift_project_value_buffer(v0, qword_27E1FC780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C69DF7C(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C69E538(a1, v5);
          break;
        case 6:
          sub_23C69E72C(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20);
          sub_23C871154();
          break;
        case 2:
          sub_23C69D410(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C69D9C0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C69D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDD8, &qword_23C889A08);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD678, &unk_23C889CD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD678, &unk_23C889CD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEDD8, &qword_23C889A08);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDD8, &qword_23C889A08);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDD8, &qword_23C889A08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDD8, &qword_23C889A08);
    return sub_23C585C34(v36, &qword_27E1FEDD8, &qword_23C889A08);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDD8, &qword_23C889A08);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C69D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE0, &qword_23C889A10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD678, &unk_23C889CD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD678, &unk_23C889CD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEDE0, &qword_23C889A10);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDE0, &qword_23C889A10);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDE0, &qword_23C889A10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDE0, &qword_23C889A10);
    return sub_23C585C34(v36, &qword_27E1FEDE0, &qword_23C889A10);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDE0, &qword_23C889A10);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C69DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE8, &qword_23C889A18);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD678, &unk_23C889CD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD678, &unk_23C889CD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDE8, &qword_23C889A18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
    return sub_23C585C34(v36, &qword_27E1FEDE8, &qword_23C889A18);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C69E538(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = sub_23C871154();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    sub_23C5855B0(a2, v7, &qword_27E1FD678, &unk_23C889CD0);
    v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_23C585C34(v7, &qword_27E1FD678, &unk_23C889CD0);
    if (v11 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(a2, &qword_27E1FD678, &unk_23C889CD0);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_23C69E72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDE8, &qword_23C889A18);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD678, &unk_23C889CD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD678, &unk_23C889CD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDE8, &qword_23C889A18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
    return sub_23C585C34(v36, &qword_27E1FEDE8, &qword_23C889A18);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDE8, &qword_23C889A18);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD678, &unk_23C889CD0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_23C69EF38(v3, a1, a2, a3, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  if (!v4)
  {
    sub_23C5855B0(v3, v11, &qword_27E1FD678, &unk_23C889CD0);
    v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_23C69F1F0(v3, a1, a2, a3);
        }

        else
        {
          sub_23C69EFBC(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_23C69F428(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_23C717008(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          sub_23C69F660(v3);
          goto LABEL_13;
        }

        sub_23C69F7D8(v3, a1, a2, a3);
      }

      sub_23C717008(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

LABEL_13:
    v15 = v3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C69EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C69EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD678, &unk_23C889CD0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD678, &unk_23C889CD0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD678, &unk_23C889CD0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD678, &unk_23C889CD0);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD678, &unk_23C889CD0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD678, &unk_23C889CD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_23C69FA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C69FB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9D8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C69FBCC()
{
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_23C8711F4();
}

uint64_t sub_23C69FC38()
{
  sub_23C716EF0(&qword_27E1FDEA0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_23C871204();
}

uint64_t sub_23C69FCB8()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AE960);

  qword_27E1FC798 = v1;
  unk_27E1FC7A0 = v2;
  return result;
}

uint64_t sub_23C69FD88()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7A8);
  __swift_project_value_buffer(v0, qword_27E1FC7A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69FFD4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6A0144(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9D0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A01E4()
{
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C6A0250()
{
  sub_23C716EF0(&qword_27E1FDEB8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_23C871204();
}

uint64_t sub_23C6A02CC(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6A03A8()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD00000000000001ELL, 0x800000023C8AE930);

  qword_27E1FC7C0 = v1;
  *algn_27E1FC7C8 = v2;
  return result;
}

uint64_t sub_23C6A0478()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7D0);
  __swift_project_value_buffer(v0, qword_27E1FC7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C6A0708();
    }

    else if (result == 2)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6A0708()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6A0868(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_23C8712C4();
    }

    v9 = v3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6A0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FED60, &qword_23C889998);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6A0B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9C8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A0BE0()
{
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_23C8711F4();
}

uint64_t sub_23C6A0C4C()
{
  sub_23C716EF0(&qword_27E1FDED0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_23C871204();
}

uint64_t sub_23C6A0CCC()
{
  if (qword_27E1F8638 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC770;
  v2 = *algn_27E1FC778;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_27E1FC7E8 = v1;
  unk_27E1FC7F0 = v2;
  return result;
}

uint64_t sub_23C6A0D9C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC7F8);
  __swift_project_value_buffer(v0, qword_27E1FC7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "actionIdentifier";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_23C8712C4(), !v1))
      {
        v10 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6A11B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6A124C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9C0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A12EC()
{
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C6A1358()
{
  sub_23C716EF0(&qword_27E1FDEE8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_23C871204();
}

uint64_t sub_23C6A13D8()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AE8E0);
  qword_27E1FC810 = 0xD00000000000001ALL;
  *algn_27E1FC818 = 0x800000023C8AD030;
  return result;
}

uint64_t sub_23C6A15AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9B8, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A164C()
{
  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_23C8711F4();
}

uint64_t sub_23C6A16B8()
{
  sub_23C716EF0(&qword_27E1FDF00, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_23C871204();
}

uint64_t sub_23C6A1764(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000023C8AD030;
  return result;
}

uint64_t sub_23C6A17F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC848);
  __swift_project_value_buffer(v0, qword_27E1FC848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "multiline_allowed";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "smart_quotes_enabled";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "smart_dashes_enabled";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "keyboard_type";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "autocorrection_type";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "capitalization_type";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            sub_23C70C0F8();
            break;
          case 5:
            v3 = v0;
            sub_23C70C14C();
            break;
          case 6:
            v3 = v0;
            sub_23C70C1A0();
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_23C8710A4();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_23C871084();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_23C871244(), !v1))
  {
    if (v0[1] != 1 || (result = sub_23C871244(), !v1))
    {
      if (v0[2] != 1 || (result = sub_23C871244(), !v1))
      {
        v3 = v1;
        if (v0[3])
        {
          v7 = v0[3];
          sub_23C70C0F8();
          result = sub_23C871254();
          if (v1)
          {
            return result;
          }

          v3 = 0;
        }

        if (v0[4])
        {
          v6 = v0[4];
          sub_23C70C14C();
          v4 = v3;
          result = sub_23C871254();
          if (v3)
          {
            return result;
          }

          if (!v0[5])
          {
            goto LABEL_16;
          }
        }

        else
        {
          v4 = v3;
          if (!v0[5])
          {
LABEL_16:
            v5 = &v0[*(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40)];
            return sub_23C870F14();
          }
        }

        sub_23C70C1A0();
        result = sub_23C871254();
        if (v4)
        {
          return result;
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_23C6A1E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a2 + 4) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_23C6A1EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A1F58()
{
  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_23C8711F4();
}

uint64_t sub_23C6A1FC4()
{
  sub_23C716EF0(&qword_27E1FDF18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_23C871204();
}

uint64_t sub_23C6A2044()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC860);
  __swift_project_value_buffer(v0, qword_27E1FC860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionType_ON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AutocorrectionType_OFF";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A22B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC878);
  __swift_project_value_buffer(v0, qword_27E1FC878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875580;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardType_ASCII_CAPABLE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardType_NUMBERS_AND_PUNCTUATION";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardType_URL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardType_NUMBER_PAD";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardType_PHONE_PAD";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardType_NAME_PHONE_PAD";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardType_EMAIL_ADDRESS";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 8;
  *v23 = "KeyboardType_DECIMAL_PAD";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "KeyboardType_TWITTER";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "KeyboardType_WEB_SEARCH";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "KeyboardType_ASCII_CAPABLE_NUMBER_PAD";
  *(v29 + 1) = 37;
  v29[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A2750()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC890);
  __swift_project_value_buffer(v0, qword_27E1FC890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A2A10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8A8);
  __swift_project_value_buffer(v0, qword_27E1FC8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkEnumContentItemClass";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C6A3314(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6A2D58(v5, a1, a2, a3);
          break;
        case 1:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD6C8, &unk_23C889CE0, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind, 0);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6A2D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDC0, &qword_23C8899F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6C8, &unk_23C889CE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6C8, &unk_23C889CE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEDC0, &qword_23C8899F0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDC0, &qword_23C8899F0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDC0, &qword_23C8899F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDC0, &qword_23C8899F0);
    return sub_23C585C34(v36, &qword_27E1FEDC0, &qword_23C8899F0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDC0, &qword_23C8899F0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6C8, &unk_23C889CE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDC8, &qword_23C8899F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6C8, &unk_23C889CE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6C8, &unk_23C889CE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEDC8, &qword_23C8899F8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDC8, &qword_23C8899F8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDC8, &qword_23C8899F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDC8, &qword_23C8899F8);
    return sub_23C585C34(v36, &qword_27E1FEDC8, &qword_23C8899F8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDC8, &qword_23C8899F8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6C8, &unk_23C889CE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoContentItemClassDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FD6C8, &unk_23C889CE0);
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    result = sub_23C6A3AA0(v3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23C6A3C14(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6A3E4C(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  if (!v4)
  {
LABEL_9:
    v15 = v3 + *(type metadata accessor for ToolKitProtoContentItemClassDescriptor(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6A3AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD6C8, &unk_23C889CE0);
  v6 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6C8, &unk_23C889CE0);
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A3E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6C8, &unk_23C889CE0);
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A4134(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9A8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A41D4()
{
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return sub_23C8711F4();
}

uint64_t sub_23C6A4240()
{
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return sub_23C871204();
}

uint64_t sub_23C6A42C0()
{
  result = MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AE510);
  qword_27E1FC8C0 = 0xD000000000000022;
  *algn_27E1FC8C8 = 0x800000023C8AD050;
  return result;
}

uint64_t sub_23C6A435C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8D0);
  __swift_project_value_buffer(v0, qword_27E1FC8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A4660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9A0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A4700()
{
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_23C8711F4();
}

uint64_t sub_23C6A476C()
{
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_23C871204();
}

uint64_t sub_23C6A4818()
{
  result = MEMORY[0x23EED7100](0xD000000000000019, 0x800000023C8AE4F0);
  qword_27E1FC8E8 = 0xD000000000000022;
  unk_27E1FC8F0 = 0x800000023C8AD050;
  return result;
}

uint64_t sub_23C6A48B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8F8);
  __swift_project_value_buffer(v0, qword_27E1FC8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A4AB4()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 3)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6A4C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE998, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A4CA8()
{
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_23C8711F4();
}

uint64_t sub_23C6A4D14()
{
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_23C871204();
}

uint64_t sub_23C6A4DAC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC910);
  __swift_project_value_buffer(v0, qword_27E1FC910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A5088()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_23C8711A4();
}

uint64_t sub_23C6A513C()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_23C8711A4();
}

uint64_t sub_23C6A51F0()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t sub_23C6A530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FED80, &qword_23C8899B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED80, &qword_23C8899B8);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_23C6A5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA8, &unk_23C889CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FEDA8, &unk_23C889CF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEDA8, &unk_23C889CF0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_23C6A5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FED60, &qword_23C889998);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6A5A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE990, type metadata accessor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A5AB0()
{
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6A5B1C()
{
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6A5BF0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC938);
  __swift_project_value_buffer(v0, qword_27E1FC938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_23C6A6404(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6A69B4(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_23C6A6F70(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C6A752C(v5, a1, a2, a3);
          break;
        case 7:
          sub_23C6A7AE8(v5, a1, a2, a3);
          break;
        case 8:
          sub_23C6A80A4(v5, a1, a2, a3);
          break;
        case 9:
          sub_23C6A8660(v5, a1, a2, a3);
          break;
        case 10:
          sub_23C6A8C1C(v5, a1, a2, a3);
          break;
        case 11:
          sub_23C6A91D8(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C6A9794(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C6A9D50(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C6AA30C(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FD6F0, &qword_23C87D748, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind, v15);
          break;
        case 16:
          sub_23C6AA8C8(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6A6404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A7AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A80A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A8660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A8C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A91D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6A9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6AA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6AA8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA0, &qword_23C8899D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD6F0, &qword_23C87D748);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD6F0, &qword_23C87D748);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E1FEDA0, &qword_23C8899D8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEDA0, &qword_23C8899D8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEDA0, &qword_23C8899D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEDA0, &qword_23C8899D8);
    return sub_23C585C34(v36, &qword_27E1FEDA0, &qword_23C8899D8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEDA0, &qword_23C8899D8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD6F0, &qword_23C87D748);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6AB450(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_23C6ABB20(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_23C6ABD58(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_23C6ABF90(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_23C6AC1C8(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_23C6AC400(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_23C6AC638(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_23C6AC870(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 9u:
        sub_23C6ACAA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xAu:
        sub_23C6ACCE0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xBu:
        sub_23C6ACF18(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_23C6AD39C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

LABEL_10:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        break;
      case 0xDu:
        result = sub_23C6AB688(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6AB8D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6AD150(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6AB21C(v3, a1, a2, a3);
LABEL_23:
        result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6AB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AB450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AB688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD6F0, &qword_23C87D748);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD6F0, &qword_23C87D748);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6ABB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ABD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ABF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD6F0, &qword_23C87D748);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6AD39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD6F0, &qword_23C87D748);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AD690(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE988, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6AD730()
{
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_23C8711F4();
}

uint64_t sub_23C6AD79C()
{
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_23C871204();
}

uint64_t sub_23C6AD81C()
{
  if (qword_27E1F86E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC928;
  v2 = qword_27E1FC930;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726961502ELL, 0xE500000000000000);

  qword_27E1FC950 = v1;
  *algn_27E1FC958 = v2;
  return result;
}

uint64_t sub_23C6AD8E4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC960);
  __swift_project_value_buffer(v0, qword_27E1FC960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C6ADBE4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6ADBE4()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C6ADCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C6ADEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C6AE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  v5(a2 + *(a1 + 20), 1, 1, v4);
  v6 = a2 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6AE260(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE980, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6AE300()
{
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_23C8711F4();
}

uint64_t sub_23C6AE36C()
{
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_23C871204();
}

uint64_t sub_23C6AE3EC()
{
  if (qword_27E1F86E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC928;
  v2 = qword_27E1FC930;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);

  qword_27E1FC978 = v1;
  unk_27E1FC980 = v2;
  return result;
}

uint64_t sub_23C6AE4BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC988);
  __swift_project_value_buffer(v0, qword_27E1FC988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_23C6AECD0(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6AF280(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_23C6AF83C(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C6AFDF8(v5, a1, a2, a3);
          break;
        case 7:
          sub_23C6B03B4(v5, a1, a2, a3);
          break;
        case 8:
          sub_23C6B0970(v5, a1, a2, a3);
          break;
        case 9:
          sub_23C6B0F2C(v5, a1, a2, a3);
          break;
        case 10:
          sub_23C6B14E8(v5, a1, a2, a3);
          break;
        case 11:
          sub_23C6B1AA4(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C6B2060(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C6B261C(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C6B2BD8(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FD708, &unk_23C889D00, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind, v15);
          break;
        case 16:
          sub_23C6B3194(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6AECD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6AF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6AF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6AFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B03B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B2BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6B3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD708, &unk_23C889D00);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD708, &unk_23C889D00);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v36, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAC40, &unk_23C8791C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD708, &unk_23C889D00);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6B3D1C(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_23C6B43EC(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_23C6B4624(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_23C6B485C(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_23C6B4A94(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_23C6B4CCC(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_23C6B4F04(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_23C6B513C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 9u:
        sub_23C6B5374(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xAu:
        sub_23C6B55AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xBu:
        sub_23C6B57E4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_23C6B5C68(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

LABEL_10:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        break;
      case 0xDu:
        result = sub_23C6B3F54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6B41A0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6B5A1C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6B3AE8(v3, a1, a2, a3);
LABEL_23:
        result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6B3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B3D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD708, &unk_23C889D00);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD708, &unk_23C889D00);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B43EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B55AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD708, &unk_23C889D00);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD708, &unk_23C889D00);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE978, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B5FFC()
{
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B6068()
{
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B6110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x800000023C8AD080;
  return result;
}

uint64_t sub_23C6B61A4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9B0);
  __swift_project_value_buffer(v0, qword_27E1FC9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6B6478(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C871164();
      }

      else if (result == 4)
      {
        a6(a1, v11, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(a1, v11, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v11, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6B6580()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_23C8711A4();
}

uint64_t sub_23C6B6634()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C6B66E8()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t sub_23C6B6804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    v16 = *v7;
    v17 = v7[1];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_23C8712C4();
    }

    a6(v7, a1, a2, a3);
    v19 = v7 + *(a7(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6B690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FED80, &qword_23C8899B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED80, &qword_23C8899B8);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_23C6B6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED70, &qword_23C8899A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FED70, &qword_23C8899A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED70, &qword_23C8899A8);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_23C6B6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FED60, &qword_23C889998);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6B6FC4@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v6 = a1[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = a1[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = a1[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  v12 = &a3[a1[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6B7130(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE970, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B71D0()
{
  sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B723C()
{
  sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B72D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9C8);
  __swift_project_value_buffer(v0, qword_27E1FC9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C70C1F4();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoComparisonPredicate(0);
        sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoCompoundPredicate.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, sub_23C70C1F4(), result = sub_23C871254(), !v1))
  {
    if (!*(*(v0 + 1) + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate), result = sub_23C8712F4(), !v1))
    {
      v3 = &v0[*(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ToolKitProtoCompoundPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_23C5DC0E8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6B78A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE968, type metadata accessor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B7940()
{
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B79AC()
{
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B7A28(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_23C5DC0E8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7AE0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9E0);
  __swift_project_value_buffer(v0, qword_27E1FC9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Operator_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Operator_AND";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Operator_OR";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6B7E08(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE960, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B7FEC()
{
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8058()
{
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B80D4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B8190()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA10 = 0xD00000000000001DLL;
  *algn_27E1FCA18 = 0x800000023C8AD0C0;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV2eeoiySbAC_ACtFZ_0()
{
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B8364(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE958, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8404()
{
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8470()
{
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B8620(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE950, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B86C0()
{
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B872C()
{
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B87A8()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA50 = 0xD000000000000019;
  *algn_27E1FCA58 = 0x800000023C8AD0E0;
  return result;
}

uint64_t sub_23C6B88F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE948, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8994()
{
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8A00()
{
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B8BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE940, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8C4C()
{
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8CB8()
{
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B8D34()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA90 = 0xD00000000000001FLL;
  *algn_27E1FCA98 = 0x800000023C8AD100;
  return result;
}

uint64_t sub_23C6B8E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE938, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8F20()
{
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8F8C()
{
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B90CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE930, type metadata accessor for ToolKitProtoAllPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B916C()
{
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B91D8()
{
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9318(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE928, type metadata accessor for ToolKitProtoValidPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B93B8()
{
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B9424()
{
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9564(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE920, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B9604()
{
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B9670()
{
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9710()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB00);
  __swift_project_value_buffer(v0, qword_27E1FCB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "limit";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for ToolKitProtoQuery(0) + 24);
          sub_23C871104();
          break;
        case 2:
          sub_23C70C248();
          sub_23C8710A4();
          break;
        case 1:
          sub_23C6B9A58();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6B9A58()
{
  v0 = *(type metadata accessor for ToolKitProtoQuery(0) + 20);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6B9C00(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      sub_23C70C248();
      sub_23C871254();
    }

    sub_23C6B9E1C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoQuery);
    v9 = &v3[*(type metadata accessor for ToolKitProtoQuery(0) + 28)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6B9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED50, &unk_23C889D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoQuery(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FED50, &unk_23C889D10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED50, &unk_23C889D10);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_23C6B9E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C6B9EE4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[8] = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6B9FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE918, type metadata accessor for ToolKitProtoQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BA068()
{
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C6BA0D4()
{
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery);

  return sub_23C871204();
}

uint64_t sub_23C6BA154()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB18);
  __swift_project_value_buffer(v0, qword_27E1FCB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrder_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrder_FORWARD";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SortOrder_REVERSE";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6BA3C0()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x23EED7100](0x64657250796E412ELL, 0xED00006574616369);
  qword_27E1FCB30 = v1[0];
  *algn_27E1FCB38 = v1[1];
  return result;
}

uint64_t sub_23C6BA468()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB40);
  __swift_project_value_buffer(v0, qword_27E1FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "compound";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stringSearch";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "idSearch";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "all";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "suggested";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_23C6BCBC8(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_23C6BD184(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_23C6BC050(v5, a1, a2, a3);
      }

      else
      {
        sub_23C6BC60C(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6BB4D8(v5, a1, a2, a3);
      }

      else
      {
        sub_23C6BBA94(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C6BA96C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C6BAF1C(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6BA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED10, &qword_23C889960);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FED10, &qword_23C889960);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoComparisonPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoComparisonPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED10, &qword_23C889960);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED10, &qword_23C889960);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED10, &qword_23C889960);
    return sub_23C585C34(v36, &qword_27E1FED10, &qword_23C889960);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoComparisonPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED10, &qword_23C889960);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoComparisonPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED18, &qword_23C889968);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FED18, &qword_23C889968);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoCompoundPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoCompoundPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED18, &qword_23C889968);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED18, &qword_23C889968);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED18, &qword_23C889968);
    return sub_23C585C34(v36, &qword_27E1FED18, &qword_23C889968);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED18, &qword_23C889968);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoCompoundPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BB4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED20, &qword_23C889970);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FED20, &qword_23C889970);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoStringSearchPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoStringSearchPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED20, &qword_23C889970);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED20, &qword_23C889970);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED20, &qword_23C889970);
    return sub_23C585C34(v36, &qword_27E1FED20, &qword_23C889970);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoStringSearchPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED20, &qword_23C889970);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoStringSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}