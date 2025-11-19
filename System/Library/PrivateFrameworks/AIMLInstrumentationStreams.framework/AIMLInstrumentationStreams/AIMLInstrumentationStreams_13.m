uint64_t sub_23C671364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFC8, &qword_23C889BA8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC50, &qword_23C878FD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC50, &qword_23C878FD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEFC8, &qword_23C889BA8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFC8, &qword_23C889BA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFC8, &qword_23C889BA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFC8, &qword_23C889BA8);
    return sub_23C585C34(v36, &qword_27E1FEFC8, &qword_23C889BA8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFC8, &qword_23C889BA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C671920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFD0, &qword_23C889BB0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC50, &qword_23C878FD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC50, &qword_23C878FD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEFD0, &qword_23C889BB0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFD0, &qword_23C889BB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFD0, &qword_23C889BB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFD0, &qword_23C889BB0);
    return sub_23C585C34(v36, &qword_27E1FEFD0, &qword_23C889BB0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFD0, &qword_23C889BB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC50, &qword_23C878FD8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoSystemTypeProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FAC50, &qword_23C878FD8);
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C674008(v3, a1, a2, a3);
        goto LABEL_22;
      case 2u:
        sub_23C67448C(v3, a1, a2, a3);
        goto LABEL_22;
      case 3u:
        result = sub_23C672244(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 4u:
        result = sub_23C672490(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        result = sub_23C6726DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 6u:
        result = sub_23C672928(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        result = sub_23C672B74(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        result = sub_23C672DC0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        result = sub_23C67300C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_23C673258(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_23C6734A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_23C673924(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_23C673B70(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C673DBC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C674240(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6736F0(v3, a1, a2, a3);
LABEL_22:
        result = sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoSystemTypeProtocol(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C672244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 3)
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

uint64_t sub_23C672490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_23C6726DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_23C672928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_23C672B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 7)
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

uint64_t sub_23C672DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 8)
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

uint64_t sub_23C67300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 9)
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

uint64_t sub_23C673258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 10)
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

uint64_t sub_23C6734A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 11)
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

uint64_t sub_23C6736F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC50, &qword_23C878FD8);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C673924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
    if (EnumCaseMultiPayload == 12)
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

uint64_t sub_23C673B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_23C673DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_23C674008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC50, &qword_23C878FD8);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C674240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC50, &qword_23C878FD8);
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC50, &qword_23C878FD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
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

uint64_t sub_23C67448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC50, &qword_23C878FD8);
  v13 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC50, &qword_23C878FD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C674774(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB18, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674814()
{
  sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return sub_23C8711F4();
}

uint64_t sub_23C674880()
{
  sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);

  return sub_23C871204();
}

uint64_t sub_23C674900()
{
  result = MEMORY[0x23EED7100](0xD000000000000016, 0x800000023C8AF1D0);
  qword_27E1FC0F0 = 0xD00000000000001ALL;
  *algn_27E1FC0F8 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C674AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB10, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674B60()
{
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_23C8711F4();
}

uint64_t sub_23C674BCC()
{
  sub_23C716EF0(&qword_27E1FDAB8, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);

  return sub_23C871204();
}

uint64_t sub_23C674C48()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADBD0);
  qword_27E1FC118 = 0xD00000000000001ALL;
  unk_27E1FC120 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C674E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB08, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C674EA8()
{
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_23C8711F4();
}

uint64_t sub_23C674F14()
{
  sub_23C716EF0(&qword_27E1FDAD0, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);

  return sub_23C871204();
}

uint64_t sub_23C674F94()
{
  result = MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AF1B0);
  qword_27E1FC140 = 0xD00000000000001ALL;
  *algn_27E1FC148 = 0x800000023C8ACFB0;
  return result;
}

uint64_t sub_23C67515C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEB00, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6751FC()
{
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_23C8711F4();
}

uint64_t sub_23C675268()
{
  sub_23C716EF0(&qword_27E1FDAE8, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);

  return sub_23C871204();
}

uint64_t sub_23C6753C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAF8, type metadata accessor for ToolKitProtoTypeDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C675468()
{
  sub_23C716EF0(&qword_27E1FDB00, type metadata accessor for ToolKitProtoTypeDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6754D4()
{
  sub_23C716EF0(&qword_27E1FDB00, type metadata accessor for ToolKitProtoTypeDefinition);

  return sub_23C871204();
}

uint64_t sub_23C675550()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FC180 = 0xD000000000000016;
  *algn_27E1FC188 = 0x800000023C8ACFD0;
  return result;
}

uint64_t sub_23C6755E8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC190);
  __swift_project_value_buffer(v0, qword_27E1FC190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enumeration";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6764B8(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_23C676A74(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C67594C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C675EFC(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C67594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA0, &qword_23C889B80);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB08, &qword_23C878EE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFA0, &qword_23C889B80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
    return sub_23C585C34(v36, &qword_27E1FEFA0, &qword_23C889B80);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFA0, &qword_23C889B80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C675EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFA8, &qword_23C889B88);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB08, &qword_23C878EE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEFA8, &qword_23C889B88);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFA8, &qword_23C889B88);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFA8, &qword_23C889B88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFA8, &qword_23C889B88);
    return sub_23C585C34(v36, &qword_27E1FEFA8, &qword_23C889B88);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFA8, &qword_23C889B88);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6764B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFB0, &qword_23C889B90);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB08, &qword_23C878EE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEFB0, &qword_23C889B90);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFB0, &qword_23C889B90);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFB0, &qword_23C889B90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFB0, &qword_23C889B90);
    return sub_23C585C34(v36, &qword_27E1FEFB0, &qword_23C889B90);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFB0, &qword_23C889B90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C676A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFB8, &qword_23C889B98);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB08, &qword_23C878EE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB08, &qword_23C878EE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FEFB8, &qword_23C889B98);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEFB8, &qword_23C889B98);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEFB8, &qword_23C889B98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEFB8, &qword_23C889B98);
    return sub_23C585C34(v36, &qword_27E1FEFB8, &qword_23C889B98);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEFB8, &qword_23C889B98);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB08, &qword_23C878EE0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypeDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FAB08, &qword_23C878EE0);
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C677670(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6778A8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C677438(v3, a1, a2, a3);
  }

  else
  {
    sub_23C677204(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C677204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB08, &qword_23C878EE0);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C716EF0(&qword_27E1FDA68, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifier.Primitive);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB08, &qword_23C878EE0);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB08, &qword_23C878EE0);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C6778A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB08, &qword_23C878EE0);
  v13 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB08, &qword_23C878EE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  __break(1u);
  return result;
}

uint64_t sub_23C677B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C677C3C()
{
  sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C677CA8()
{
  sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);

  return sub_23C871204();
}

uint64_t sub_23C677D28()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x797469746E452ELL, 0xE700000000000000);

  qword_27E1FC1A8 = v1;
  unk_27E1FC1B0 = v2;
  return result;
}

uint64_t sub_23C677DF4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1B8);
  __swift_project_value_buffer(v0, qword_27E1FC1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "properties";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "runtimeRequirements";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sampleInvocations";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "systemProtocols";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "runtimeFlags";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coercions";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          v3 = v0;
          if (result == 5)
          {
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          }

          else
          {
            type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
            sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);
          }

          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_23C70ACAC();
          sub_23C871064();
        }

        else if (result == 8)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoCoercionDefinition(0);
          sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition);
          goto LABEL_5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        }

        sub_23C67850C();
      }

      else if (result == 1)
      {
        sub_23C678458();
      }

      else if (result == 2)
      {
        v3 = v0;
        type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
        sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
LABEL_5:
        v0 = v3;
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C678458()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 40);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C67850C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 44);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C678900(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C8712F4();
    }

    if (*(v5[1] + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
      sub_23C8712F4();
    }

    sub_23C678B1C(v5, a1, a2, a3);
    if (*(v5[2] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_23C8712F4();
    }

    if (*(v5[3] + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);
      sub_23C8712F4();
    }

    if (*(v5[4] + 16))
    {
      sub_23C70ACAC();
      sub_23C871234();
    }

    if (*(v5[5] + 16))
    {
      type metadata accessor for ToolKitProtoCoercionDefinition(0);
      sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_23C8712F4();
    }

    v11 = v5 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0) + 48);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C678900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C678B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  sub_23C5855B0(a1 + *(v14 + 44), v8, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C678D84@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[10];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[11];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v10;
  *(a2 + 2) = v10;
  *(a2 + 3) = v10;
  *(a2 + 4) = v10;
  *(a2 + 5) = v10;
  return result;
}

uint64_t sub_23C678EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAE8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C678F50()
{
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_23C8711F4();
}

uint64_t sub_23C678FBC()
{
  sub_23C716EF0(&qword_27E1FDB28, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity);

  return sub_23C871204();
}

uint64_t sub_23C67903C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1D0);
  __swift_project_value_buffer(v0, qword_27E1FC1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RuntimeFlags_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimeFlags_TRANSIENT_APP_ENTITY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C679260()
{
  if (qword_27E1F83F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC1A8;
  v2 = qword_27E1FC1B0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x747265706F72502ELL, 0xE900000000000079);

  qword_27E1FC1E8 = v1;
  unk_27E1FC1F0 = v2;
  return result;
}

uint64_t sub_23C679330()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC1F8);
  __swift_project_value_buffer(v0, qword_27E1FC1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C679618();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C679618()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v4))
  {
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v4))
    {
      result = sub_23C6797A8(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6797A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C679A10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C679AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAE0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C679B90()
{
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_23C8711F4();
}

uint64_t sub_23C679BFC()
{
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_23C871204();
}

uint64_t sub_23C679C7C()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_27E1FC210 = v1;
  *algn_27E1FC218 = v2;
  return result;
}

uint64_t sub_23C679D50()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC220);
  __swift_project_value_buffer(v0, qword_27E1FC220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "cases";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "runtimeRequirements";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "systemProtocols";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        break;
      }

      if (result == 4)
      {
        sub_23C67A32C();
        goto LABEL_5;
      }

      if (result != 5)
      {
        if (result != 6)
        {
          goto LABEL_5;
        }

        v3 = v0;
        type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
        sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);
LABEL_16:
        v0 = v3;
        goto LABEL_19;
      }

      sub_23C70AD00();
      sub_23C8710A4();
LABEL_5:
      result = sub_23C871044();
    }

    if (result == 1)
    {
      sub_23C67A278();
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

      v3 = v0;
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
      goto LABEL_16;
    }

    type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
    sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
LABEL_19:
    sub_23C871194();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23C67A278()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 32);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C67A32C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 36);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C67A628(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_23C8712F4();
    }

    if (*(*(v5 + 8) + 16))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
      sub_23C8712F4();
    }

    sub_23C67A844(v5, a1, a2, a3);
    if (*(v5 + 16))
    {
      v12 = *(v5 + 16);
      sub_23C70AD00();
      sub_23C871254();
    }

    if (*(*(v5 + 24) + 16))
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      sub_23C716EF0(&qword_27E1FD508, type metadata accessor for ToolKitProtoSystemTypeProtocol);
      sub_23C8712F4();
    }

    v11 = v5 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C67A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C67A844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C67AAAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[8];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[9];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + a1[10];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_23C67ABD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAD8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67AC78()
{
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C67ACE4()
{
  sub_23C716EF0(&qword_27E1FDB60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_23C871204();
}

uint64_t sub_23C67AD64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC238);
  __swift_project_value_buffer(v0, qword_27E1FC238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kind_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Kind_APP_ENUM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Kind_ACTION_ENUM";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67AFD4()
{
  if (qword_27E1F8420 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC210;
  v2 = *algn_27E1FC218;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x657361432ELL, 0xE500000000000000);

  qword_27E1FC250 = v1;
  *algn_27E1FC258 = v2;
  return result;
}

uint64_t sub_23C67B09C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC260);
  __swift_project_value_buffer(v0, qword_27E1FC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67B2D8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C67B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C67B6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAD0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67B758()
{
  sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_23C8711F4();
}

uint64_t sub_23C67B7C4()
{
  sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_23C871204();
}

uint64_t sub_23C67B870()
{
  if (qword_27E1F83E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC180;
  v2 = *algn_27E1FC188;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x79726575512ELL, 0xE600000000000000);

  qword_27E1FC278 = v1;
  unk_27E1FC280 = v2;
  return result;
}

uint64_t sub_23C67B938()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC288);
  __swift_project_value_buffer(v0, qword_27E1FC288);
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
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C67BB64()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_23C8711A4();
}

uint64_t sub_23C67BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
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

uint64_t sub_23C67BF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAC8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67BFF8()
{
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_23C8711F4();
}

uint64_t sub_23C67C064()
{
  sub_23C716EF0(&qword_27E1FDB98, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_23C871204();
}

uint64_t sub_23C67C0E4()
{
  if (qword_27E1F8448 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC278;
  v2 = qword_27E1FC280;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AF0C0);

  qword_27E1FC2A0 = v1;
  *algn_27E1FC2A8 = v2;
  return result;
}

uint64_t sub_23C67C1B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2B0);
  __swift_project_value_buffer(v0, qword_27E1FC2B0);
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
  *v9 = "stringSearch";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "idSearch";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "all";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "suggested";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sampleInvocations";
  *(v17 + 1) = 17;
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

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_23C67CA28();
          }

          else if (result == 8)
          {
            sub_23C67CADC();
          }
        }

        else
        {
          if (result != 5)
          {
            v3 = v0;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
LABEL_21:
            v0 = v3;
            sub_23C871194();
            goto LABEL_5;
          }

          sub_23C67C974();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C67C80C();
        }

        else
        {
          sub_23C67C8C0();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
          sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template);
          goto LABEL_21;
        }

        if (result == 2)
        {
          sub_23C67C758();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C67C758()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 24);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67C80C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 28);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67C8C0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 32);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);
  return sub_23C8711A4();
}

uint64_t sub_23C67C974()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 36);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);
  return sub_23C8711A4();
}

uint64_t sub_23C67CA28()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 40);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C67CADC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 44);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate.Template(0), sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C67CD80(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C67CF9C(v3, a1, a2, a3);
      sub_23C67D1B8(v3, a1, a2, a3);
      sub_23C67D3D4(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
        sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
        sub_23C8712F4();
      }

      sub_23C67D5F0(v3, a1, a2, a3);
      sub_23C67D80C(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 48);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C67CD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF90, &qword_23C889B70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FEF90, &qword_23C889B70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEF90, &qword_23C889B70);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
}

uint64_t sub_23C67CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF80, &unk_23C889C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FEF80, &unk_23C889C70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEF80, &unk_23C889C70);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
}

uint64_t sub_23C67D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FED30, &qword_23C889980);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED30, &qword_23C889980);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAllPredicate);
}

uint64_t sub_23C67D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FED38, &unk_23C889C80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED38, &unk_23C889C80);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoSuggestedPredicate);
}

uint64_t sub_23C67D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF60, &qword_23C889B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FEF60, &qword_23C889B48);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEF60, &qword_23C889B48);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
}

uint64_t sub_23C67D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v10 = *(valid - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](valid);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_23C5855B0(a1 + *(v14 + 44), v8, &qword_27E1FED48, &unk_23C889C90);
  if ((*(v10 + 48))(v8, 1, valid) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FED48, &unk_23C889C90);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoValidPredicate);
}

uint64_t sub_23C67DA74@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = a1[10];
  v13 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a2[v14], 1, 1, valid);
  v16 = &a2[a1[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v18 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v18;
  return result;
}

uint64_t sub_23C67DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C67DCEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C67DD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAC0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C67DE30()
{
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_23C8711F4();
}

uint64_t sub_23C67DE9C()
{
  sub_23C716EF0(&qword_27E1FDBB0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_23C871204();
}

uint64_t sub_23C67DF38()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2C8);
  __swift_project_value_buffer(v0, qword_27E1FC2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875590;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "collection";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entityIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "deferred";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_23C67E3CC(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C67E7AC(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C67EB94(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_23C67F74C(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_23C67FB38(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_23C67EF7C(v5, a1, a2, a3);
    }

    else
    {
      sub_23C67F364(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C67E3CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF20, &qword_23C889B08);
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

    sub_23C585C34(v18, &qword_27E1FEF20, &qword_23C889B08);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF20, &qword_23C889B08);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF20, &qword_23C889B08);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF20, &qword_23C889B08);
    return sub_23C585C34(v16, &qword_27E1FEF20, &qword_23C889B08);
  }

  else
  {
    v24 = v30;
    sub_23C716FA0(v16, v30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    if (v31 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF20, &qword_23C889B08);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    v27 = *v29;
    *v29 = v25;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67E7AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF28, &qword_23C889B10);
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

    sub_23C585C34(v18, &qword_27E1FEF28, &qword_23C889B10);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF28, &qword_23C889B10);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF28, &qword_23C889B10);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF28, &qword_23C889B10);
    return sub_23C585C34(v16, &qword_27E1FEF28, &qword_23C889B10);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF28, &qword_23C889B10);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67EB94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF30, &qword_23C889B18);
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

    sub_23C585C34(v18, &qword_27E1FEF30, &qword_23C889B18);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF30, &qword_23C889B18);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF30, &qword_23C889B18);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF30, &qword_23C889B18);
    return sub_23C585C34(v16, &qword_27E1FEF30, &qword_23C889B18);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF30, &qword_23C889B18);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67EF7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF38, &qword_23C889B20);
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

    sub_23C585C34(v18, &qword_27E1FEF38, &qword_23C889B20);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF38, &qword_23C889B20);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF38, &qword_23C889B20);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF38, &qword_23C889B20);
    return sub_23C585C34(v16, &qword_27E1FEF38, &qword_23C889B20);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF38, &qword_23C889B20);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67F364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v6 = *(Value - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](Value);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF40, &qword_23C889B28);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, Value);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEF40, &qword_23C889B28);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v19(v18, 0, 1, Value);
  }

  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF40, &qword_23C889B28);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF40, &qword_23C889B28);
  if ((*(v6 + 48))(v16, 1, Value) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF40, &qword_23C889B28);
    return sub_23C585C34(v16, &qword_27E1FEF40, &qword_23C889B28);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF40, &qword_23C889B28);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67F74C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF48, &qword_23C889B30);
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

    sub_23C585C34(v18, &qword_27E1FEF48, &qword_23C889B30);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF48, &qword_23C889B30);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF48, &qword_23C889B30);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF48, &qword_23C889B30);
    return sub_23C585C34(v16, &qword_27E1FEF48, &qword_23C889B30);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF48, &qword_23C889B30);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    v27 = *v29;
    *v29 = v25 | 0xA000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t sub_23C67FB38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF50, &qword_23C889B38);
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
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_23C585C34(v18, &qword_27E1FEF50, &qword_23C889B38);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FEF50, &qword_23C889B38);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FEF50, &qword_23C889B38);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FEF50, &qword_23C889B38);
    return sub_23C585C34(v16, &qword_27E1FEF50, &qword_23C889B38);
  }

  else
  {
    v24 = v31;
    sub_23C716FA0(v16, v31, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    if (v30 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FEF50, &qword_23C889B38);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    v27 = *v29;
    *v29 = v25 | 0xC000000000000000;
    return sub_23C56F2D8(v27);
  }
}

uint64_t ToolKitProtoTypedValue.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        result = sub_23C680174(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }

      else
      {
        result = sub_23C6802CC(v0);
        if (!v1)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
      result = sub_23C680024(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      result = sub_23C6806D4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C68082C(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 == 3)
  {
    result = sub_23C680424(v0);
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoTypedValue(0) + 20);
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C68057C(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C680024(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
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
    sub_23C716F38(v8, v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_23C871304();
    return sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t sub_23C680174(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6802CC(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C680424(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C68057C(void *a1)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v3 = *(*(Value - 8) + 64);
  result = MEMORY[0x28223BE20](Value);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6806D4(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C68082C(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    v8 = swift_projectBox();
    sub_23C716F38(v8, v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_23C871304();
    return sub_23C717008(v6, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C680A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAB8, type metadata accessor for ToolKitProtoTypedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C680B24()
{
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);

  return sub_23C8711F4();
}

uint64_t sub_23C680B90()
{
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);

  return sub_23C871204();
}

uint64_t sub_23C680C54()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC2F0);
  __swift_project_value_buffer(v0, qword_27E1FC2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C680E94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C680F3C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.ID(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C681030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C681308(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAB0, type metadata accessor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6813A8()
{
  sub_23C716EF0(&qword_27E1FDBD8, type metadata accessor for ToolKitProtoTypedValue.ID);

  return sub_23C8711F4();
}

uint64_t sub_23C681414()
{
  sub_23C716EF0(&qword_27E1FDBD8, type metadata accessor for ToolKitProtoTypedValue.ID);

  return sub_23C871204();
}

uint64_t sub_23C6814EC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC318);
  __swift_project_value_buffer(v0, qword_27E1FC318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23C87D6D0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "noneVariant";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "url";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "app";
  *(v37 + 8) = 3;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "searchableItem";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "encodedDateComponents";
  *(v41 + 1) = 21;
  v41[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C670A2C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 18);
          break;
        case 2:
          sub_23C681E58(a1, v5);
          break;
        case 3:
          sub_23C68202C(a1, v5);
          break;
        case 4:
          sub_23C682208(a1, v5);
          break;
        case 5:
          sub_23C6823E4(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 4);
          break;
        case 7:
          sub_23C6829A0(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_5;
        case 9:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, 7);
          break;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_5;
        case 11:
          sub_23C683360(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C68391C(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C683ED8(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C684494(v5, a1, a2, a3);
          break;
        case 15:
          sub_23C684A50(v5, a1, a2, a3);
          break;
        case 16:
          sub_23C68500C(v5, a1, a2, a3);
          break;
        case 17:
          sub_23C6855C8(v5, a1, a2, a3);
          break;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
LABEL_5:
          sub_23C683138(v11, v12, v13, v14, &qword_27E1FD578, &qword_23C87D740, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind, v15);
          break;
        case 19:
          sub_23C685B84(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C681E58(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  result = sub_23C871074();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_23C5855B0(a2, v7, &qword_27E1FD578, &qword_23C87D740);
      v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
      if (v12 != 1)
      {
        v13 = v15;
        result = sub_23C871054();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_23C68202C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 1;
  result = sub_23C871104();
  if (!v2 && (v16 & 1) == 0)
  {
    v17 = 0;
    v14 = v15;
    sub_23C5855B0(a2, v7, &qword_27E1FD578, &qword_23C87D740);
    v9 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    if (v11 != 1)
    {
      v12 = v17;
      result = sub_23C871054();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_23C682208(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = sub_23C871134();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    sub_23C5855B0(a2, v7, &qword_27E1FD578, &qword_23C87D740);
    v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_23C585C34(v7, &qword_27E1FD578, &qword_23C87D740);
    if (v12 != 1)
    {
      v13 = v15;
      result = sub_23C871054();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    sub_23C585C34(a2, &qword_27E1FD578, &qword_23C87D740);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_23C6823E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FEEA0, &qword_23C889AA8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEEA0, &qword_23C889AA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEEA0, &qword_23C889AA8);
    return sub_23C585C34(v36, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEEA0, &qword_23C889AA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6829A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v50 = a1;
  v4 = sub_23C870EC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v42 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v38 - v26;
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = v4;
  v28(&v38 - v26, 1, 1, v4);
  sub_23C5855B0(v50, v13, &qword_27E1FD578, &qword_23C87D740);
  v39 = v15;
  v40 = (*(v15 + 48))(v13, 1, v14);
  if (v40 == 1)
  {
    sub_23C585C34(v13, &qword_27E1FD578, &qword_23C87D740);
  }

  else
  {
    sub_23C716FA0(v13, v21, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v21, v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v27, &unk_27E1F9D10, &qword_23C874E00);
      v29 = *(v44 + 32);
      v30 = v41;
      v31 = v46;
      v29(v41, v19, v46);
      v29(v27, v30, v31);
      v28(v27, 0, 1, v31);
      goto LABEL_7;
    }

    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  v31 = v46;
LABEL_7:
  sub_23C716EF0(&qword_27E1FEED8, MEMORY[0x277D21570]);
  v32 = v45;
  sub_23C8711A4();
  if (v32)
  {
    return sub_23C585C34(v27, &unk_27E1F9D10, &qword_23C874E00);
  }

  v34 = v42;
  sub_23C5855B0(v27, v42, &unk_27E1F9D10, &qword_23C874E00);
  v35 = v44;
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_23C585C34(v27, &unk_27E1F9D10, &qword_23C874E00);
    return sub_23C585C34(v34, &unk_27E1F9D10, &qword_23C874E00);
  }

  else
  {
    v36 = *(v35 + 32);
    v36(v43, v34, v31);
    if (v40 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &unk_27E1F9D10, &qword_23C874E00);
    v37 = v50;
    sub_23C585C34(v50, &qword_27E1FD578, &qword_23C87D740);
    v36(v37, v43, v31);
    swift_storeEnumTagMultiPayload();
    return (*(v39 + 56))(v37, 0, 1, v14);
  }
}

uint64_t sub_23C682F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v36 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v34 = 0;
  v35 = 0;
  result = sub_23C871154();
  if (v8)
  {
  }

  v31 = a3;
  v32 = a4;
  v33 = a2;
  if (v35)
  {
    v30 = v35;
    v28 = v34;
    sub_23C5855B0(v33, v18, a5, a6);
    v20 = a7(0);
    v27 = *(v20 - 8);
    v21 = *(v27 + 48);
    v29 = v20;
    v22 = v21(v18, 1);
    sub_23C585C34(v18, a5, a6);
    if (v22 != 1)
    {
      sub_23C871054();
    }

    v23 = v33;
    sub_23C585C34(v33, a5, a6);
    v24 = v29;
    v25 = v30;
    *v23 = v28;
    v23[1] = v25;
    swift_storeEnumTagMultiPayload();
    return (*(v27 + 56))(v23, 0, 1, v24);
  }

  return result;
}

uint64_t sub_23C683138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v31 = a8;
  v29 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v30 = xmmword_23C879130;
  sub_23C8710B4();
  v18 = *(&v30 + 1);
  if (v8)
  {
    return sub_23C5AD0AC(v30, *(&v30 + 1));
  }

  v26 = a3;
  v27 = a4;
  v28 = a2;
  if (*(&v30 + 1) >> 60 == 15)
  {
    return sub_23C5AD0AC(v30, *(&v30 + 1));
  }

  v19 = v30;
  sub_23C5855B0(v28, v17, a5, a6);
  v20 = v29(0);
  v24 = *(v20 - 8);
  v25 = v20;
  LODWORD(v29) = (*(v24 + 48))(v17, 1);
  sub_23C5ACFC8(v19, v18);
  sub_23C585C34(v17, a5, a6);
  if (v29 != 1)
  {
    sub_23C871054();
  }

  sub_23C5AD0AC(v19, v18);
  v22 = v28;
  sub_23C585C34(v28, a5, a6);
  *v22 = v19;
  v22[1] = v18;
  v23 = v25;
  swift_storeEnumTagMultiPayload();
  return (*(v24 + 56))(v22, 0, 1, v23);
}

uint64_t sub_23C683360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEE0, &qword_23C889AC8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E1FEEE0, &qword_23C889AC8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEEE0, &qword_23C889AC8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEEE0, &qword_23C889AC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEEE0, &qword_23C889AC8);
    return sub_23C585C34(v36, &qword_27E1FEEE0, &qword_23C889AC8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEEE0, &qword_23C889AC8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C68391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEE8, &qword_23C889AD0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E1FEEE8, &qword_23C889AD0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEEE8, &qword_23C889AD0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEEE8, &qword_23C889AD0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEEE8, &qword_23C889AD0);
    return sub_23C585C34(v36, &qword_27E1FEEE8, &qword_23C889AD0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEEE8, &qword_23C889AD0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C683ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEF0, &qword_23C889AD8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E1FEEF0, &qword_23C889AD8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEEF0, &qword_23C889AD8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEEF0, &qword_23C889AD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEEF0, &qword_23C889AD8);
    return sub_23C585C34(v36, &qword_27E1FEEF0, &qword_23C889AD8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEEF0, &qword_23C889AD8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C684494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEF8, &qword_23C889AE0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E1FEEF8, &qword_23C889AE0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEEF8, &qword_23C889AE0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEEF8, &qword_23C889AE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEEF8, &qword_23C889AE0);
    return sub_23C585C34(v36, &qword_27E1FEEF8, &qword_23C889AE0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEEF8, &qword_23C889AE0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C684A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF00, &qword_23C889AE8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v28, &qword_27E1FEF00, &qword_23C889AE8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEF00, &qword_23C889AE8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEF00, &qword_23C889AE8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEF00, &qword_23C889AE8);
    return sub_23C585C34(v36, &qword_27E1FEF00, &qword_23C889AE8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEF00, &qword_23C889AE8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C68500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF08, &qword_23C889AF0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v28, &qword_27E1FEF08, &qword_23C889AF0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEF08, &qword_23C889AF0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEF08, &qword_23C889AF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEF08, &qword_23C889AF0);
    return sub_23C585C34(v36, &qword_27E1FEF08, &qword_23C889AF0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEF08, &qword_23C889AF0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6855C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF10, &qword_23C889AF8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v28, &qword_27E1FEF10, &qword_23C889AF8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEF10, &qword_23C889AF8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEF10, &qword_23C889AF8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEF10, &qword_23C889AF8);
    return sub_23C585C34(v36, &qword_27E1FEF10, &qword_23C889AF8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEF10, &qword_23C889AF8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C685B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF18, &qword_23C889B00);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD578, &qword_23C87D740);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD578, &qword_23C87D740);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v28, &qword_27E1FEF18, &qword_23C889B00);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEF18, &qword_23C889B00);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEF18, &qword_23C889B00);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEF18, &qword_23C889B00);
    return sub_23C585C34(v36, &qword_27E1FEF18, &qword_23C889B00);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEF18, &qword_23C889B00);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD578, &qword_23C87D740);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD578, &qword_23C87D740);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        result = sub_23C686980(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        result = sub_23C686AE4(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        sub_23C686C48(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C686E80(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        sub_23C686FF8(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C68725C(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C6873DC(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C687554(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        sub_23C6876D4(v3, a1, a2, a3);
        goto LABEL_35;
      case 0xAu:
        sub_23C68790C(v3, a1, a2, a3);
LABEL_35:
        result = sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        sub_23C687B44(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xCu:
        sub_23C687D7C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xDu:
        sub_23C687FB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xEu:
        sub_23C6881EC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

        goto LABEL_10;
      case 0xFu:
        sub_23C688424(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0x10u:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_23C68865C(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        sub_23C6887DC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

LABEL_10:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        break;
      case 0x12u:
        result = sub_23C6865D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        result = sub_23C686820(v3);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6865D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FD578, &qword_23C87D740);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FD578, &qword_23C87D740);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (EnumCaseMultiPayload == 18)
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

uint64_t sub_23C686820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_23C5855B0(a1, &v9 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    return sub_23C871244();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  sub_23C5855B0(a1, &v9 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    return sub_23C871294();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  sub_23C5855B0(a1, &v9 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return sub_23C8712B4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C686FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_23C870EC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_23C716EF0(&qword_27E1FEED8, MEMORY[0x277D21570]);
    sub_23C871304();
    return (*(v10 + 8))(v13, v9);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68725C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_23C871264();
    return sub_23C595090(v8, v7);
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6873DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_23C871264();
    return sub_23C595090(v8, v7);
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6876D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C687FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6881EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C688424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C68865C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD578, &qword_23C87D740);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_23C871264();
    return sub_23C595090(v8, v7);
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6887DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD578, &qword_23C87D740);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD578, &qword_23C87D740);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_23C688AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C688B70()
{
  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_23C8711F4();
}

uint64_t sub_23C688BDC()
{
  sub_23C716EF0(&qword_27E1FDBF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_23C871204();
}

uint64_t sub_23C688C5C()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6C616D696365442ELL, 0xE800000000000000);

  qword_27E1FC330 = v1;
  *algn_27E1FC338 = v2;
  return result;
}

uint64_t sub_23C688D28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC340);
  __swift_project_value_buffer(v0, qword_27E1FC340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "significand";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C689054();
          break;
        case 2:
          sub_23C871114();
          break;
        case 1:
          sub_23C70BFA8();
          sub_23C8710A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C689054()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  sub_23C870ED4();
  sub_23C716EF0(&qword_27E1FEEC8, MEMORY[0x277D215C8]);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_23C70BFA8(), result = sub_23C871254(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_23C871294(), !v4))
    {
      result = sub_23C6891EC(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6891EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB0, &unk_23C889CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_23C870ED4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FEEB0, &unk_23C889CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEEB0, &unk_23C889CA0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_23C716EF0(&qword_27E1FEEC8, MEMORY[0x277D215C8]);
  sub_23C871304();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_23C689454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23C870ED4();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C689530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEAA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6895D0()
{
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_23C8711F4();
}

uint64_t sub_23C68963C()
{
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_23C871204();
}

uint64_t sub_23C6896BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC358);
  __swift_project_value_buffer(v0, qword_27E1FC358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Sign_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Sign_MINUS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Sign_PLUS";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68992C()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_27E1FC370 = v1;
  *algn_27E1FC378 = v2;
  return result;
}

uint64_t sub_23C689A00()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC380);
  __swift_project_value_buffer(v0, qword_27E1FC380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "unitType";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C70BFFC();
          sub_23C8710A4();
          break;
        case 2:
          sub_23C871144();
          break;
        case 1:
          sub_23C871164();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)()
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
    if (*(v0 + 2) == 0.0 || (result = sub_23C8712B4(), !v1))
    {
      if (!*(v0 + 24) || (v7 = *(v0 + 24), sub_23C70BFFC(), result = sub_23C871254(), !v1))
      {
        v6 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C689E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_23C689F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C689FAC()
{
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_23C8711F4();
}

uint64_t sub_23C68A018()
{
  sub_23C716EF0(&qword_27E1FDC30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_23C871204();
}

uint64_t sub_23C68A098()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_27E1FC398 = v1;
  unk_27E1FC3A0 = v2;
  return result;
}

uint64_t sub_23C68A170()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3A8);
  __swift_project_value_buffer(v0, qword_27E1FC3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68A3FC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  return sub_23C8711A4();
}

uint64_t sub_23C68A4B0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68A5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FEEA0, &qword_23C889AA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEEA0, &qword_23C889AA8);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_23C716EF0(&qword_27E1FDC08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
}

uint64_t sub_23C68A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68AAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68AB4C()
{
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_23C8711F4();
}

uint64_t sub_23C68ABB8()
{
  sub_23C716EF0(&qword_27E1FDC48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_23C871204();
}

uint64_t sub_23C68AC38()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_27E1FC3C0 = v1;
  *algn_27E1FC3C8 = v2;
  return result;
}

uint64_t sub_23C68AD10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3D0);
  __swift_project_value_buffer(v0, qword_27E1FC3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C68B03C();
          break;
        case 2:
          sub_23C871154();
          break;
        case 1:
          sub_23C70C050();
          sub_23C8710A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C68B03C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (!*v3 || (v10 = *v3, sub_23C70C050(), result = sub_23C871254(), !v4))
  {
    if (*(v3 + 16))
    {
      v8 = *(v3 + 8);
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      sub_23C68B1D8(v3, v7, a2, a3);
      v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C68B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68B440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C68B51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68B5BC()
{
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_23C8711F4();
}

uint64_t sub_23C68B628()
{
  sub_23C716EF0(&qword_27E1FDC60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_23C871204();
}

uint64_t sub_23C68B6A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC3E8);
  __swift_project_value_buffer(v0, qword_27E1FC3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23C875060;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Type_UNSPECIFIED";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Type_CHECKING";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Type_SAVINGS";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Type_BROKERAGE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Type_DEBIT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Type_CREDIT";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Type_PREPAID";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "Type_STORE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Type_APPLE_PAY";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C68BA88()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_27E1FC400 = v1;
  *algn_27E1FC408 = v2;
  return result;
}

uint64_t sub_23C68BB58()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC410);
  __swift_project_value_buffer(v0, qword_27E1FC410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68BD98()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_23C871264();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v18 = v5 + *(a5(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C68BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68C268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68C308()
{
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_23C8711F4();
}

uint64_t sub_23C68C374()
{
  sub_23C716EF0(&qword_27E1FDC88, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_23C871204();
}

uint64_t sub_23C68C420()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6E6F737265502ELL, 0xE700000000000000);

  qword_27E1FC428 = v1;
  unk_27E1FC430 = v2;
  return result;
}

uint64_t sub_23C68C4EC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC438);
  __swift_project_value_buffer(v0, qword_27E1FC438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68C72C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68CB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68CBAC()
{
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_23C8711F4();
}

uint64_t sub_23C68CC18()
{
  sub_23C716EF0(&qword_27E1FDCA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_23C871204();
}

uint64_t sub_23C68CCC4()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x656C69462ELL, 0xE500000000000000);

  qword_27E1FC450 = v1;
  *algn_27E1FC458 = v2;
  return result;
}

uint64_t sub_23C68CD8C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC460);
  __swift_project_value_buffer(v0, qword_27E1FC460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68CFCC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

double sub_23C68D354@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a3 = xmmword_23C87D700;
  return result;
}

uint64_t sub_23C68D438(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA70, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68D4D8()
{
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_23C8711F4();
}

uint64_t sub_23C68D544()
{
  sub_23C716EF0(&qword_27E1FDCB8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_23C871204();
}

uint64_t sub_23C68D5F0()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](1886404910, 0xE400000000000000);

  qword_27E1FC478 = v1;
  unk_27E1FC480 = v2;
  return result;
}

uint64_t sub_23C68D6B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC488);
  __swift_project_value_buffer(v0, qword_27E1FC488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C68D8F4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C68D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_23C8712C4(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      v16 = v5 + *(a5(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C68DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C68DD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA68, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68DE38()
{
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_23C8711F4();
}

uint64_t sub_23C68DEA4()
{
  sub_23C716EF0(&qword_27E1FDCD0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_23C871204();
}

uint64_t sub_23C68DF50()
{
  if (qword_27E1F8480 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC308;
  v2 = qword_27E1FC310;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_27E1FC4A0 = v1;
  *algn_27E1FC4A8 = v2;
  return result;
}

uint64_t sub_23C68E028()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4B0);
  __swift_project_value_buffer(v0, qword_27E1FC4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "second";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nanosecond";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekday";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "weekdayOrdinal";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "quarter";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weekOfMonth";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "weekOfYear";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "yearForWeekOfYear";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
          sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
          sub_23C8711A4();
          break;
        case 2:
          v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 20);
          sub_23C871154();
          break;
        case 3:
          v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 24);
          goto LABEL_5;
        case 4:
          v10 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 28);
          goto LABEL_5;
        case 5:
          v5 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 32);
          goto LABEL_5;
        case 6:
          v13 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 36);
          goto LABEL_5;
        case 7:
          v15 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 40);
          goto LABEL_5;
        case 8:
          v11 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 44);
          goto LABEL_5;
        case 9:
          v17 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 48);
          goto LABEL_5;
        case 10:
          v7 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 52);
          goto LABEL_5;
        case 11:
          v16 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 56);
          goto LABEL_5;
        case 12:
          v4 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 60);
          goto LABEL_5;
        case 13:
          v6 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 64);
          goto LABEL_5;
        case 14:
          v14 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 68);
          goto LABEL_5;
        case 15:
          v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 72);
          goto LABEL_5;
        case 16:
          v9 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 76);
LABEL_5:
          sub_23C871104();
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C68E9B4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C69EF38(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C6B9E1C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_23C68EBC4(v3);
    sub_23C68EC3C(v3);
    sub_23C68ECB4(v3);
    sub_23C68ED2C(v3);
    sub_23C68EDA4(v3);
    sub_23C68EE1C(v3);
    sub_23C68EE94(v3);
    sub_23C68EF0C(v3);
    sub_23C68EF84(v3);
    sub_23C68EFFC(v3);
    sub_23C68F074(v3);
    sub_23C68F0EC(v3);
    sub_23C68F164(v3);
    v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C68E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE90, &unk_23C889CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FEE90, &unk_23C889CB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEE90, &unk_23C889CB0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_23C68EBC4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EC3C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68ECB4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68ED2C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EDA4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EE1C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EE94(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EF0C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EF84(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68EFFC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F074(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F0EC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F164(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C68F254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C68F2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C68F33C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t sub_23C68F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C68F430()
{
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_23C8711F4();
}

uint64_t sub_23C68F49C()
{
  sub_23C716EF0(&qword_27E1FDCE8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_23C871204();
}

uint64_t sub_23C68F51C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4C8);
  __swift_project_value_buffer(v0, qword_27E1FC4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23C87D710;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GREGORIAN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BUDDHIST";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CHINESE";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "COPTIC";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ETHIOPIC_AMETE_MIHRET";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ETHIOPIC_AMETE_ALEM";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HEBREW";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ISO8601";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INDIAN";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ISLAMIC";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ISLAMIC_CIVIL";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "JAPANESE";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PERSIAN";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "REPUBLIC_OF_CHINA";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ISLAMIC_TABULAR";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ISLAMIC_UMM_AL_QURA";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t sub_23C68FAE0()
{
  if (qword_27E1F8520 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC4A0;
  v2 = *algn_27E1FC4A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x61646E656C61432ELL, 0xE900000000000072);

  qword_27E1FC4E0 = v1;
  *algn_27E1FC4E8 = v2;
  return result;
}

uint64_t sub_23C68FBB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC4F0);
  __swift_project_value_buffer(v0, qword_27E1FC4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "minimumDaysInFirstWeek";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C70C0A4();
          sub_23C8710A4();
        }

        else if (result == 2)
        {
          sub_23C871164();
        }
      }

      else if (result == 3)
      {
        sub_23C871154();
      }

      else if (result == 4 || result == 5)
      {
        sub_23C871114();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)()
{
  if (!*v0 || (v7 = *v0, sub_23C70C0A4(), result = sub_23C871254(), !v1))
  {
    result = *(v0 + 1);
    v3 = *(v0 + 2);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_23C8712C4(), !v1))
    {
      if (*(v0 + 6))
      {
        v5 = *(v0 + 5);
        result = sub_23C8712C4();
      }

      if (!v1)
      {
        if (*(v0 + 3))
        {
          sub_23C871294();
        }

        if (*(v0 + 4))
        {
          sub_23C871294();
        }

        v6 = &v0[*(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36)];
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C690120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6901B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA58, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C690258()
{
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_23C8711F4();
}

uint64_t sub_23C6902C4()
{
  sub_23C716EF0(&qword_27E1FDD10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_23C871204();
}

uint64_t sub_23C690344()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AECD0);
  qword_27E1FC508 = 0xD000000000000012;
  unk_27E1FC510 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C6903E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC518);
  __swift_project_value_buffer(v0, qword_27E1FC518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C69066C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        sub_23C871164();
        break;
      case 1:
        a4(a1, v9, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_23C690738()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6907EC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C6908F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    v14 = *v6;
    v15 = v6[1];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_23C8712C4();
    }

    a5(v6, a1, a2, a3);
    v17 = v6 + *(a6(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6909DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
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

uint64_t sub_23C690BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C690EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA50, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C690F58()
{
  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_23C8711F4();
}

uint64_t sub_23C690FC4()
{
  sub_23C716EF0(&qword_27E1FDD28, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_23C871204();
}

uint64_t sub_23C691098()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC540);
  __swift_project_value_buffer(v0, qword_27E1FC540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C875570;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "properties";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "hydratedAppEntity";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C691478();
      }

      else if (result == 2)
      {
        sub_23C871164();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C69152C();
          break;
        case 4:
          sub_23C691624();
          break;
        case 5:
          v3 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
          sub_23C8710B4();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C691478()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 24);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C69152C()
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t sub_23C691624()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C691890(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_23C8712C4();
    }

    if (*(v3[2] + 16))
    {
      sub_23C870EE4();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716EF0(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C871214();
    }

    sub_23C691AAC(v3, a1, a2, a3);
    sub_23C691CC8(v3);
    v12 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 36);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C691890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C691AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C691CC8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_23C5ACFC8(*v3, *(v3 + 8));
    sub_23C871264();
    return sub_23C5AD0AC(v5, v4);
  }

  return result;
}

unint64_t sub_23C691DB4@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[9];
  *&a2[a1[8]] = xmmword_23C879130;
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  result = sub_23C599478(MEMORY[0x277D84F90]);
  *(a2 + 2) = result;
  return result;
}

uint64_t sub_23C691EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA48, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C691F90()
{
  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return sub_23C8711F4();
}

uint64_t sub_23C691FFC()
{
  sub_23C716EF0(&qword_27E1FDD40, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return sub_23C871204();
}

uint64_t sub_23C69207C()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AEC90);
  qword_27E1FC558 = 0xD000000000000012;
  unk_27E1FC560 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C692118()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC568);
  __swift_project_value_buffer(v0, qword_27E1FC568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C692418();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C692418()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C6925C8(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6925C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
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

uint64_t sub_23C6928C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA40, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C692968()
{
  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return sub_23C8711F4();
}

uint64_t sub_23C6929D4()
{
  sub_23C716EF0(&qword_27E1FDD58, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return sub_23C871204();
}

uint64_t sub_23C692AE8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC590);
  __swift_project_value_buffer(v0, qword_27E1FC590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C692D14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_23C871044();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        a4(a1, v7, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C692E1C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery);
  return sub_23C8711A4();
}

uint64_t sub_23C692F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    v14 = v6 + *(a6(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C692FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE80, &qword_23C889A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoQuery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  sub_23C5855B0(a1 + *(Value + 20), v8, &qword_27E1FEE80, &qword_23C889A90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEE80, &qword_23C889A90);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoQuery);
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_23C6932B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA38, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C693358()
{
  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return sub_23C8711F4();
}

uint64_t sub_23C6933C4()
{
  sub_23C716EF0(&qword_27E1FDD70, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return sub_23C871204();
}

uint64_t sub_23C693444()
{
  result = MEMORY[0x23EED7100](0xD000000000000016, 0x800000023C8AEC70);
  qword_27E1FC5A8 = 0xD000000000000012;
  unk_27E1FC5B0 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C6934D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC5B8);
  __swift_project_value_buffer(v0, qword_27E1FC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C693764()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C693818()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t sub_23C693920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
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

uint64_t sub_23C693B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC30, &qword_23C878FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC30, &qword_23C878FC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_23C693DA4@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = a1[5];
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C693EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA30, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C693F68()
{
  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_23C8711F4();
}

uint64_t sub_23C693FD4()
{
  sub_23C716EF0(&qword_27E1FDD88, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_23C871204();
}

uint64_t sub_23C694084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000012;
  *a5 = 0x800000023C8ACFF0;
  return result;
}

uint64_t sub_23C694118()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC5E0);
  __swift_project_value_buffer(v0, qword_27E1FC5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "storage";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C69453C();
          break;
        case 2:
          sub_23C694488();
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypeIdentifier(0);
          sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C694488()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C69453C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C573D90(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C694698(v3, a1, a2, a3);
    sub_23C6948B4(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C694698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6948B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE70, &unk_23C889CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FEE70, &unk_23C889CC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEE70, &unk_23C889CC0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_23C694B1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + a1[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C694C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA28, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C694D14()
{
  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return sub_23C8711F4();
}

uint64_t sub_23C694D80()
{
  sub_23C716EF0(&qword_27E1FDDA0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return sub_23C871204();
}

uint64_t sub_23C694E00()
{
  if (qword_27E1F8598 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC5D0;
  v2 = *algn_27E1FC5D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x656761726F74532ELL, 0xE800000000000000);

  qword_27E1FC5F8 = v1;
  unk_27E1FC600 = v2;
  return result;
}

uint64_t sub_23C694F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE68, &qword_23C889A80);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E1FEE58, &qword_23C889A70);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E1FEE58, &qword_23C889A70);
    v30 = v44;
  }

  else
  {
    sub_23C716FA0(v13, v21, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_23C716FA0(v21, v19, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_23C585C34(v27, &qword_27E1FEE68, &qword_23C889A80);
    v31 = v42;
    sub_23C716FA0(v19, v42, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    sub_23C716FA0(v31, v27, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E1FEE68, &qword_23C889A80);
  }

  sub_23C5855B0(v27, v43, &qword_27E1FEE68, &qword_23C889A80);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E1FEE68, &qword_23C889A80);
    return sub_23C585C34(v33, &qword_27E1FEE68, &qword_23C889A80);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v33, v40, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E1FEE68, &qword_23C889A80);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E1FEE58, &qword_23C889A70);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C6954D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C695560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FEE58, &qword_23C889A70);
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEE58, &qword_23C889A70);
  }

  sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C871304();
  return sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
}

uint64_t sub_23C69581C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6958BC()
{
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_23C8711F4();
}

uint64_t sub_23C695928()
{
  sub_23C716EF0(&qword_27E1FDDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_23C871204();
}

uint64_t sub_23C6959A8()
{
  if (qword_27E1F85A8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC5F8;
  v2 = qword_27E1FC600;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AEC10);

  qword_27E1FC620 = v1;
  *algn_27E1FC628 = v2;
  return result;
}

uint64_t sub_23C695A78()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC630);
  __swift_project_value_buffer(v0, qword_27E1FC630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C695D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FEA18, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C695E3C()
{
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_23C8711F4();
}

uint64_t sub_23C695EA8()
{
  sub_23C716EF0(&qword_27E1FDDD0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_23C871204();
}

uint64_t sub_23C695F70()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC648);
  __swift_project_value_buffer(v0, qword_27E1FC648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "collection";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "optionalVariant";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "union";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "restricted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "deferred";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C696F44(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C69732C(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C697714(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C696394(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C696774(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C696B5C(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C696394(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
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

    sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
    v21 = swift_projectBox();
    sub_23C716F38(v21, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_23C56F2D8(v20);
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoTypeIdentifier);
    v19(v18, 0, 1, v5);
  }

  sub_23C716EF0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  v22 = v32;
  sub_23C8711A4();
  if (v22)
  {
    return sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C5855B0(v18, v16, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
    return sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
  }

  else
  {
    v24 = v30;
    sub_23C716FA0(v16, v30, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (v31 != 0xF000000000000007)
    {
      sub_23C871054();
    }

    sub_23C585C34(v18, &qword_27E1FAB38, &unk_23C8791E0);
    v25 = swift_allocBox();
    sub_23C716FA0(v24, v26, type metadata accessor for ToolKitProtoTypeIdentifier);
    v27 = *v29;
    *v29 = v25;
    return sub_23C56F2D8(v27);
  }
}