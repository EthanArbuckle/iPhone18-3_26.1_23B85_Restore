unint64_t sub_23A7C81FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E08, &qword_23A7FE3F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
    v8 = sub_23A7EEDB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A7A8D38(v10, v6, &qword_27DFA9E08, &qword_23A7FE3F0);
      result = sub_23A7C0FD0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23A7EDFE4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
      result = sub_23A7C8B80(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PreviewApplication.PreviewSessionMap);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A7C8418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
    v3 = sub_23A7EEDB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A7A8D38(v4, &v13, &qword_27DFA9C78, &qword_23A7FE038);
      v5 = v13;
      v6 = v14;
      result = sub_23A7C1068(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23A7A8AB8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23A7C8548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E00, &qword_23A7FE3E8);
    v3 = sub_23A7EEDB4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23A7C3574(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23A7C8640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DD8, &qword_23A7FE328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A7C86A8()
{
  result = qword_27DFA9DE0;
  if (!qword_27DFA9DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9DE0);
  }

  return result;
}

unint64_t sub_23A7C86F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DE8, &qword_23A7FE3D0);
    v3 = sub_23A7EEDB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A7A8D38(v4, &v11, &qword_27DFA9DF0, &qword_23A7FE3D8);
      v5 = v11;
      result = sub_23A7C3574(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A7A8AB8(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_23A7C881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = sub_23A7EDF84();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_23A7C8B38(&qword_27DFA8E80, type metadata accessor for DocumentReadingOptionKey);
  v8 = sub_23A7EE7C4();

  v14[0] = 0;
  v9 = [v5 initWithData:v7 options:v8 documentAttributes:a4 error:v14];

  if (v9)
  {
    v10 = v14[0];
  }

  else
  {
    v11 = v14[0];
    sub_23A7EDEF4();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A7C8A90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23A7C8AD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23A7C8B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A7C8B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A7C8BFC()
{
  result = qword_27DFA9E18;
  if (!qword_27DFA9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E18);
  }

  return result;
}

void sub_23A7C8C50(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    sub_23A7A44D4();
    v7 = a1;
    sub_23A7EE014();

    v8 = *(a3 + 16);
    if (v8)
    {
      v9 = *(a3 + 24);
      sub_23A7A3D7C(v8);

      sub_23A7EEBF4();
      type metadata accessor for QLHostPlaceholderUIView();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v6 setPlaceholderView_];
    }

    else
    {
      sub_23A7EEBF4();
    }
  }

  else
  {
    sub_23A7EED64();
    __break(1u);
  }
}

id sub_23A7C8DE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator()
{
  result = qword_27DFA9E30;
  if (!qword_27DFA9E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7C8EBC()
{
  sub_23A7C8F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A7C8F5C()
{
  if (!qword_27DFA9E40)
  {
    sub_23A7EE164();
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9E40);
    }
  }
}

id sub_23A7C8FD0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for QLHostPrimaryViewControllerWrapper.HostCoordinator();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtCV9QuickLook34QLHostPrimaryViewControllerWrapper15HostCoordinator_identity;
  v7 = sub_23A7EE164();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCV9QuickLook34QLHostPrimaryViewControllerWrapper15HostCoordinator_parent] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23A7C9098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7C9464();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23A7C90FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7C9464();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23A7C9160()
{
  sub_23A7C9464();
  sub_23A7EE5E4();
  __break(1u);
}

unint64_t sub_23A7C918C()
{
  result = qword_27DFA9E48;
  if (!qword_27DFA9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E48);
  }

  return result;
}

id sub_23A7C91E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result subviews];

    sub_23A7C9418();
    v4 = sub_23A7EE9A4();

    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A7EEC84())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE8C140](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [objc_opt_self() clearColor];
        [v8 setBackgroundColor_];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E60, &qword_23A7FE5D8);
    sub_23A7EE614();
    [v0 setDelegate_];

    result = [v0 view];
    if (result)
    {
      v11 = result;
      v12 = [objc_opt_self() clearColor];
      [v11 setBackgroundColor_];

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23A7C9418()
{
  result = qword_27DFA9450;
  if (!qword_27DFA9450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9450);
  }

  return result;
}

unint64_t sub_23A7C9464()
{
  result = qword_27DFA9E68;
  if (!qword_27DFA9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E68);
  }

  return result;
}

uint64_t sub_23A7C94B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9E70, &unk_23A7FE5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall QLPreviewController.loadView()()
{
  v11 = [objc_allocWithZone(type metadata accessor for QLPreviewControllerView()) init];
  swift_unknownObjectWeakAssign();
  v1 = sub_23A7EE814();
  [v11 setAccessibilityIdentifier_];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v11 setFrame_];
    [v11 setAutoresizingMask_];
  }

  [v0 setView_];
}

id sub_23A7C97E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLPreviewControllerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23A7C9828(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_23A7EE234();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v21 = Strong;
  v22 = [Strong internalCurrentPreviewItem];
  if (!v22)
  {

LABEL_8:
    v34 = type metadata accessor for QLPreviewControllerView();
    v46.receiver = v5;
    v46.super_class = v34;
    return objc_msgSendSuper2(&v46, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
  }

  v23 = v22;
  v44 = a1;
  v43 = swift_allocBox();
  v25 = v24;
  v26 = sub_23A7EE374();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = [v23 previewItemContentType];
  if (v27)
  {
    v28 = v27;
    sub_23A7EE844();

    sub_23A7EE384();
    sub_23A7CBEA8(v19, v25);
  }

  v29 = [v23 previewItemTitle];
  if (v29)
  {
    v30 = v29;
    v31 = sub_23A7EE844();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  (*(v12 + 104))(v15, *MEMORY[0x277D74648], v11);
  v36 = v44;
  v37 = sub_23A7EE174();
  (*(v12 + 8))(v15, v11);
  v38 = swift_allocObject();
  v38[2] = v43;
  v38[3] = v23;
  v38[4] = v37;
  v38[5] = v36;
  v38[6] = v31;
  v38[7] = v33;
  v38[8] = v21;
  aBlock[4] = sub_23A7CBE7C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_8;
  v39 = _Block_copy(aBlock);

  v40 = v23;

  v41 = v36;
  v42 = v21;

  [v40 prepareShareableURL_];
  _Block_release(v39);
}

id sub_23A7C9C04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v178 = a7;
  v203 = a6;
  v187 = a5;
  v193 = a4;
  v205 = a3;
  v200 = a2;
  v174 = sub_23A7EE2D4();
  v173 = *(v174 - 8);
  v8 = *(v173 + 64);
  v9 = MEMORY[0x28223BE20](v174);
  v172 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v171 = &v167 - v11;
  v177 = sub_23A7EE2B4();
  v176 = *(v177 - 8);
  v12 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E88, &qword_23A7FE620);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v184 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v183 = &v167 - v18;
  v19 = sub_23A7EE1B4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v185 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_23A7EE304();
  v189 = *(v190 - 8);
  v22 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v194 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23A7EE234();
  v204 = *(v24 - 8);
  v25 = *(v204 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23A7EDF64();
  v201 = *(v28 - 8);
  v29 = *(v201 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v169 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v179 = &v167 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v197 = &v167 - v35;
  v168 = v36;
  MEMORY[0x28223BE20](v34);
  v202 = &v167 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v191 = &v167 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v182 = &v167 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v186 = &v167 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v167 - v46;
  v48 = sub_23A7EE374();
  v49 = *(v48 - 1);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v192 = &v167 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v181 = &v167 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v167 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v167 - v58;
  v170 = a1;
  v60 = swift_projectBox();
  swift_beginAccess();
  v199 = v60;
  sub_23A7A8D38(v60, v47, &unk_27DFA94C0, &unk_23A7FD330);
  v61 = *(v49 + 48);
  v198 = (v49 + 48);
  v62 = v61;
  v63 = v61(v47, 1, v48);
  v196 = v49;
  v195 = v57;
  if (v63 == 1)
  {
    sub_23A7CBF18(v47);
    v64 = v203;
    v65 = v24;
    v66 = v204;
  }

  else
  {
    (*(v49 + 32))(v59, v47, v48);
    sub_23A7EE334();
    LODWORD(v188) = sub_23A7EE364();
    v180 = v28;
    v67 = *(v49 + 8);
    v67(v57, v48);
    v67(v59, v48);
    v65 = v24;
    v66 = v204;
    v64 = v203;
    v28 = v180;
    if (v188)
    {
      goto LABEL_32;
    }
  }

  v68 = [v200 shareableURL];
  if (!v68)
  {
LABEL_14:
    if (v64)
    {
      v101 = v199;
      swift_beginAccess();
      v102 = v191;
      sub_23A7A8D38(v101, v191, &unk_27DFA94C0, &unk_23A7FD330);
      if (v62(v102, 1, v48) != 1)
      {
        v188 = v65;
        v197 = v27;
        v103 = v196;
        v104 = v192;
        (*(v196 + 32))(v192, v102, v48);

        v105 = v195;
        sub_23A7EE354();
        v106 = sub_23A7EE364();
        v107 = *(v103 + 8);
        (v107)(v105, v48);
        if (v106)
        {
          v108 = v182;
          (*(v103 + 16))(v182, v104, v48);
          (*(v103 + 56))(v108, 0, 1, v48);
          v109 = sub_23A7EDFA4();
          v110 = *(*(v109 - 8) + 56);
          v110(v183, 1, 1, v109);
          v200 = v48;
          v110(v184, 1, 1, v109);
          sub_23A7EE194();
          v111 = v197;
          sub_23A7EE204();
          v112 = v188;
          (*(v66 + 104))(v111, *MEMORY[0x277D74620], v188);
          sub_23A7EE224();
          (*(v66 + 8))(v111, v112);
          return (v107)(v192, v200);
        }

        v201 = v103 + 8;
        v202 = v107;
        sub_23A7EE184();
        __swift_project_boxed_opaque_existential_0(v206, v207);
        v129 = v194;
        v130 = v192;
        sub_23A7EE2C4();
        v131 = sub_23A7EE2F4();
        (*(v189 + 8))(v129, v190);
        __swift_destroy_boxed_opaque_existential_0(v206);
        if (v131)
        {
          v132 = v182;
          (*(v103 + 16))(v182, v130, v48);
          (*(v103 + 56))(v132, 0, 1, v48);
          v133 = sub_23A7EDFA4();
          v134 = *(*(v133 - 8) + 56);
          v134(v183, 1, 1, v133);
          v134(v184, 1, 1, v133);
          v135 = v185;
          sub_23A7EE194();
          v136 = v197;
          MEMORY[0x23EE8B700](v187, v64, v135);
          v137 = v188;
          (*(v66 + 104))(v136, *MEMORY[0x277D74688], v188);
          sub_23A7EE224();
          (*(v66 + 8))(v136, v137);
          return (v202)(v130, v48);
        }

        (v202)(v130, v48);

        goto LABEL_28;
      }

      sub_23A7CBF18(v102);
    }

LABEL_32:
    (*(v66 + 104))(v27, *MEMORY[0x277D74648], v65);
    sub_23A7EE224();
    return (*(v66 + 8))(v27, v65);
  }

  v188 = v65;
  v69 = v197;
  v70 = v68;
  sub_23A7EDF44();

  v72 = v201;
  v71 = v202;
  v180 = *(v201 + 32);
  v180(v202, v69, v28);
  if ((sub_23A7EDF04() & 1) == 0)
  {
    (*(v72 + 8))(v71, v28);
    v65 = v188;
    goto LABEL_14;
  }

  v197 = v27;
  v73 = v199;
  swift_beginAccess();
  v74 = v73;
  v75 = v186;
  sub_23A7A8D38(v74, v186, &unk_27DFA94C0, &unk_23A7FD330);
  if (v62(v75, 1, v48) == 1)
  {
    v76 = v28;
    sub_23A7CBF18(v75);
    goto LABEL_8;
  }

  v113 = v48;
  v114 = v28;
  v115 = v113;
  v116 = v196;
  v117 = v181;
  (*(v196 + 32))(v181, v75, v113);
  v118 = v195;
  sub_23A7EE354();
  v119 = sub_23A7EE364();
  v120 = *(v116 + 8);
  v198 = (v116 + 8);
  v192 = v120;
  (v120)(v118, v115);
  if (v119)
  {
    sub_23A7EE184();
    v121 = v197;
    __swift_project_boxed_opaque_existential_0(v206, v207);
    sub_23A7EE2C4();
    v122 = *(v201 + 16);
    v180 = v114;
    v122(v179, v202, v114);
    v123 = v182;
    (*(v116 + 16))(v182, v117, v115);
    v124 = *(v116 + 56);
    v200 = v115;
    v124(v123, 0, 1, v115);
    v125 = sub_23A7EDFA4();
    v126 = *(*(v125 - 8) + 56);
    v126(v183, 1, 1, v125);
    v126(v184, 1, 1, v125);

    sub_23A7EE194();
    sub_23A7EE1F4();
    __swift_destroy_boxed_opaque_existential_0(v206);
    v127 = v204;
    v128 = v188;
    (*(v204 + 104))(v121, *MEMORY[0x277D74620], v188);
    sub_23A7EE224();
    (*(v127 + 8))(v121, v128);
LABEL_26:
    (v192)(v181, v200);
    return (*(v201 + 8))(v202, v180);
  }

  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v206, v207);
  v138 = v194;
  sub_23A7EE2C4();
  v139 = sub_23A7EE2F4();
  (*(v189 + 8))(v138, v190);
  __swift_destroy_boxed_opaque_existential_0(v206);
  if (v139)
  {
    sub_23A7EE184();
    v140 = v197;
    __swift_project_boxed_opaque_existential_0(v206, v207);
    sub_23A7EE2C4();
    v141 = *(v201 + 16);
    v180 = v114;
    v141(v179, v202, v114);
    v142 = v196;
    v143 = v182;
    (*(v196 + 16))(v182, v117, v115);
    v144 = *(v142 + 56);
    v200 = v115;
    v144(v143, 0, 1, v115);
    v145 = sub_23A7EDFA4();
    v146 = *(*(v145 - 8) + 56);
    v146(v183, 1, 1, v145);
    v146(v184, 1, 1, v145);

    sub_23A7EE194();
    v147 = v175;
    sub_23A7EE284();
    __swift_destroy_boxed_opaque_existential_0(v206);
    v148 = v176;
    v149 = v177;
    (*(v176 + 16))(v140, v147, v177);
    v150 = v204;
    v151 = v188;
    (*(v204 + 104))(v140, *MEMORY[0x277D74688], v188);
    sub_23A7EE224();
    (*(v150 + 8))(v140, v151);
    (*(v148 + 8))(v147, v149);
    goto LABEL_26;
  }

  v152 = v115;
  (v192)(v117, v115);
  v66 = v204;
  v76 = v114;
  v48 = v152;
LABEL_8:
  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v206, v207);
  v77 = v194;
  sub_23A7EE2C4();
  v78 = v195;
  sub_23A7EE334();
  v79 = sub_23A7EE2F4();
  (*(v196 + 8))(v78, v48);
  v80 = *(v189 + 8);
  v80(v77, v190);
  __swift_destroy_boxed_opaque_existential_0(v206);
  if ((v79 & 1) == 0)
  {
    (*(v201 + 8))(v202, v76);
LABEL_28:
    v27 = v197;
    v65 = v188;
    goto LABEL_32;
  }

  v81 = [v178 printer];
  v65 = v188;
  if (!v81)
  {
LABEL_31:
    (*(v201 + 8))(v202, v76);
    v27 = v197;
    goto LABEL_32;
  }

  v82 = v81;
  v83 = [objc_allocWithZone(QLPreviewPrinter) initWithPreviewPrinter_];
  if (!v83)
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v198 = v83;
  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v206, v207);
  v84 = v194;
  sub_23A7EE2C4();
  v85 = v171;
  sub_23A7EE2E4();
  v80(v84, v190);
  v86 = v173;
  v87 = v172;
  v88 = v174;
  (*(v173 + 104))(v172, *MEMORY[0x277D74820], v174);
  sub_23A7CBF80();
  v89 = sub_23A7EE804();
  v90 = *(v86 + 8);
  v90(v87, v88);
  v90(v85, v88);
  __swift_destroy_boxed_opaque_existential_0(v206);
  v91 = v201;
  v92 = *(v201 + 16);
  if (v89)
  {
    v93 = v202;
    v92(v179, v202, v76);
    v94 = v199;
    swift_beginAccess();
    sub_23A7A8D38(v94, v182, &unk_27DFA94C0, &unk_23A7FD330);
    v95 = sub_23A7EDFA4();
    v96 = *(*(v95 - 8) + 56);
    v96(v183, 1, 1, v95);
    v96(v184, 1, 1, v95);

    sub_23A7EE194();
    v97 = v197;
    sub_23A7EE274();
    v98 = v204;
    v99 = v188;
    (*(v204 + 104))(v97, *MEMORY[0x277D74688], v188);
    sub_23A7EE224();

    swift_unknownObjectRelease();
    (*(v98 + 8))(v97, v99);
    return (*(v91 + 8))(v93, v76);
  }

  else
  {
    v153 = v169;
    v92(v169, v202, v76);
    v154 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v155 = (v168 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
    v156 = swift_allocObject();
    v157 = v170;
    *(v156 + 16) = v205;
    *(v156 + 24) = v157;
    v180((v156 + v154), v153, v76);
    v158 = (v156 + v155);
    v159 = v203;
    *v158 = v187;
    v158[1] = v159;

    v160 = v198;
    swift_unknownObjectRetain();

    v161 = v160;
    swift_unknownObjectRetain();
    result = [v178 view];
    if (result)
    {
      v162 = result;
      v163 = [result window];

      v164 = [v163 windowScene];
      v165 = v200;
      v206[0] = v200;
      v206[1] = v82;
      v206[2] = v161;
      swift_unknownObjectWeakInit();
      v166 = v165;

      v208 = sub_23A7CBFD8;
      v209 = v156;
      sub_23A7C4BDC(v206);
      swift_unknownObjectRelease_n();

      sub_23A7A8CE4(v206);
      return (*(v91 + 8))(v202, v76);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_23A7CB444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v85 = a5;
  v86 = a6;
  v82 = a4;
  v92 = a2;
  v88 = a1;
  v77 = sub_23A7EE234();
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA9E98, &qword_23A7FE628);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v71 - v10;
  v11 = sub_23A7EE1C4();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23A7EDF64();
  v93 = *(v87 - 8);
  v14 = *(v93 + 64);
  v15 = MEMORY[0x28223BE20](v87);
  v71[1] = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v71 - v17;
  v73 = sub_23A7EE2B4();
  v72 = *(v73 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v84 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E88, &qword_23A7FE620);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = v71 - v30;
  v32 = sub_23A7EE1B4();
  v90 = *(v32 - 8);
  v91 = v32;
  v33 = *(v90 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v78 = v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v71 - v37;
  MEMORY[0x28223BE20](v36);
  v94 = v71 - v39;
  v79 = _s12GeneratedPDFVMa();
  v40 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v89 = v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (v71 - v44);
  v46 = swift_projectBox();
  sub_23A7A8D38(v88, v45, &qword_27DFA94F8, &unk_23A7FE630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v45;
    v48 = *v45;
    sub_23A7EE214();

    return;
  }

  v49 = v89;
  sub_23A7A8DA0(v45, v89);
  swift_beginAccess();
  sub_23A7A8D38(v46, v31, &unk_27DFA94C0, &unk_23A7FD330);
  v50 = sub_23A7EDFA4();
  v51 = *(*(v50 - 8) + 56);
  v51(v27, 1, 1, v50);
  v51(v25, 1, 1, v50);
  sub_23A7EE194();
  sub_23A7EE1A4();
  v52 = *(v90 + 8);
  v88 = v90 + 8;
  v82 = v52;
  v52(v38, v91);
  v53 = *(v93 + 16);
  v93 += 16;
  v71[0] = v53;
  v53(v18, v49, v87);
  (*(v80 + 104))(v83, *MEMORY[0x277D74490], v81);
  v54 = sub_23A7EE374();
  (*(*(v54 - 8) + 56))(v31, 1, 1, v54);
  v51(v27, 1, 1, v50);
  v51(v25, 1, 1, v50);

  sub_23A7EE194();
  v55 = sub_23A7EE1E4();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  sub_23A7EE1D4();
  v58 = v91;
  (*(v90 + 16))(v38, v94, v91);
  v59 = v84;
  sub_23A7EE294();
  v60 = v58;
  v61 = v89;
  v62 = *(v89 + *(v79 + 24));
  if (__OFADD__(v62, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v62 + 1 < v62)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v63 = *(v89 + *(v79 + 20));
  v64 = v74;
  sub_23A7EE244();
  v65 = sub_23A7EE254();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  sub_23A7EE264();
  v66 = v72;
  v67 = v75;
  v68 = v73;
  (*(v72 + 16))(v75, v59, v73);
  v69 = v76;
  v70 = v77;
  (*(v76 + 104))(v67, *MEMORY[0x277D74688], v77);
  sub_23A7EE224();
  (*(v69 + 8))(v67, v70);
  (*(v66 + 8))(v59, v68);
  v82(v94, v60);
  sub_23A7A8E18(v61);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7CBEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7CBF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A7CBF80()
{
  result = qword_27DFA9E90;
  if (!qword_27DFA9E90)
  {
    sub_23A7EE2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E90);
  }

  return result;
}

void sub_23A7CBFD8(uint64_t a1)
{
  v3 = *(sub_23A7EDF64() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_23A7CB444(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t QLAccessoryAppExtensionScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x726F737365636361;
  a3[1] = 0xE900000000000079;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t QLAccessoryAppExtensionScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = type metadata accessor for QLAccessoryAppExtensionSceneProxy(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A7EE044();
  v9 = swift_allocObject();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  *(v9 + 32) = v3;
  v12 = *(v1 + 1);
  *(v9 + 40) = v12;
  *(v9 + 56) = v4;
  *(v9 + 64) = v8;
  v13 = v12;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2821169D0](v3, v13, sub_23A7CC338, v9, sub_23A7CC3E0, v8, v11, v10);
}

uint64_t sub_23A7CC1F4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - v11;
  v13(v10);
  v14 = v5[2];
  v14(v12, v9, a2);
  v15 = v5[1];
  v15(v9, a2);
  v14(a3, v12, a2);
  return (v15)(v12, a2);
}

uint64_t sub_23A7CC338@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_23A7CC1F4(v1[8], v1[2], a1);
}

uint64_t sub_23A7CC34C(id a1, uint64_t a2)
{
  if (qword_27DFA8D28 != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_23A7CC3E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A7CC46C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7CC4C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);
  sub_23A7EE014();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_23A7A3D7C(v4);
}

uint64_t sub_23A7CC570(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);
  sub_23A7EE004();
}

uint64_t sub_23A7CC640()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9F20);
  __swift_project_value_buffer(v0, qword_27DFA9F20);
  return sub_23A7EE3A4();
}

uint64_t sub_23A7CC6C0()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  return *(v0 + 16);
}

uint64_t sub_23A7CC760(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE004();
  }

  return result;
}

uint64_t sub_23A7CC870()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  return *(v0 + 17);
}

uint64_t sub_23A7CC910(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE004();
  }

  return result;
}

void *sub_23A7CCA20()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_23A7CCACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v4 = *(v3 + 24);
  *a2 = v4;
  return v4;
}

uint64_t sub_23A7CCB78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE004();
}

uint64_t sub_23A7CCC44()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v1 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_23A7CCCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_23A7CCD24()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v1 = *(v0 + 40);
}

uint64_t sub_23A7CCDC8(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE004();
  }
}

uint64_t sub_23A7CCEFC()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v1 = *(v0 + 48);
}

uint64_t sub_23A7CCFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  *a2 = *(v3 + 48);
}

uint64_t sub_23A7CD04C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23A7CD078(v4);
}

uint64_t sub_23A7CD078(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE004();
  }
}

uint64_t sub_23A7CD1AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v3 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  return sub_23A7D10BC(v5 + v3, a1);
}

uint64_t sub_23A7CD274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v4 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  return sub_23A7D10BC(v3 + v4, a2);
}

uint64_t sub_23A7CD33C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_23A7D10BC(a1, &v10[-v6]);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE004();

  return sub_23A7D0C04(v7);
}

uint64_t sub_23A7CD46C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  sub_23A7D104C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_23A7CD4D8()
{
  *(v0 + 16) = 256;
  v1 = type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_23A7EE044();
  *(v0 + 40) = v4;
  v5 = type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_23A7EE044();
  *(v0 + 48) = v8;
  v9 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  v10 = sub_23A7EE154();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  sub_23A7EE0B4();
  sub_23A7EE044();
  return v0;
}

uint64_t sub_23A7CD5E4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_23A7EE0F4();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_23A7EE124();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = sub_23A7EE164();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = sub_23A7EE0C4();
  v2[26] = v12;
  v13 = *(v12 - 8);
  v2[27] = v13;
  v14 = *(v13 + 64) + 15;
  v2[28] = swift_task_alloc();
  v15 = sub_23A7EE0D4();
  v2[29] = v15;
  v16 = *(v15 - 8);
  v2[30] = v16;
  v17 = *(v16 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7CD844, 0, 0);
}

uint64_t sub_23A7CD844()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[13];
  v0[33] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel_quickLookUIExtensionPointQuery;
  sub_23A7EE0E4();
  (*(v4 + 16))(v2, v1, v3);
  sub_23A7D112C(&unk_27DFA9F90, MEMORY[0x277CC5D98]);
  sub_23A7EEAC4();
  v7 = sub_23A7D112C(&qword_27DFA97D0, MEMORY[0x277CC5D88]);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_23A7CD9BC;
  v10 = v0[28];
  v11 = v0[26];

  return MEMORY[0x282200308](v0 + 11, v11, v7);
}

uint64_t sub_23A7CD9BC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v4 = sub_23A7CDEA8;
  }

  else
  {
    v4 = sub_23A7CDAE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A7CDAE8()
{
  v1 = v0[11];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  if (!v1)
  {
    (*(v3 + 8))(v2, v4);
LABEL_8:
    v21 = v0[33];
    v23 = v0[15];
    v22 = v0[16];
    v26 = v0 + 13;
    v25 = v0[13];
    v24 = v26[1];
    sub_23A7EECD4();

    (*(v23 + 16))(v22, v25 + v21, v24);
    v27 = sub_23A7EE8B4();
    MEMORY[0x23EE8BD70](v27);

    MEMORY[0x23EE8BD70](39, 0xE100000000000000);
    return sub_23A7EED64();
  }

  (*(v3 + 8))(v2, v4);
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v29 = v0[20];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[19];
  v10 = v0[13];
  v11 = *(v8 + 16);
  v11(v6, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

  (*(v8 + 32))(v5, v6, v9);
  v11(v7, v5, v9);
  swift_allocObject();
  swift_weakInit();
  sub_23A7EE104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A7FE710;
  v13 = sub_23A7EE814();
  v14 = sub_23A7EE814();
  v15 = [objc_opt_self() attributeWithDomain:v13 name:v14];

  *(inited + 32) = v15;
  v16 = sub_23A7EE114();
  sub_23A7D0C90(inited);
  v16(v0 + 7, 0);
  (*(v30 + 16))(v32, v29, v31);
  v17 = *(MEMORY[0x277CC5DB0] + 4);
  v18 = swift_task_alloc();
  v0[36] = v18;
  *v18 = v0;
  v18[1] = sub_23A7CDFA4;
  v19 = v0[19];
  v20 = v0[12];

  return MEMORY[0x282116960](v20, v19);
}

uint64_t sub_23A7CDEA8()
{
  v11 = v0[35];
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A7CDFA4()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_23A7CE1EC;
  }

  else
  {
    v3 = sub_23A7CE0B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7CE0B8()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
  v11 = v0[24];
  v12 = v0[23];
  v8 = v0[21];
  v13 = v0[19];
  v14 = v0[16];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A7CE1EC()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v3 + 8))(v1, v2);
  v14 = v0[37];
  v4 = v0[31];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23A7CE320()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    aBlock[4] = sub_23A7D122C;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7A0EA0;
    aBlock[3] = &block_descriptor_9;
    v3 = _Block_copy(aBlock);

    QLRunInMainThread();
    _Block_release(v3);
  }

  return result;
}

uint64_t sub_23A7CE42C()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = sub_23A7EE154();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[13] = v6;
  v1[14] = sub_23A7EEA34();
  v1[15] = sub_23A7EEA24();
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v1;
  v7[1] = sub_23A7CE59C;

  return sub_23A7CD5E4(v6);
}

uint64_t sub_23A7CE59C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = v0;

  v6 = v3[15];
  v7 = v3[14];
  v8 = sub_23A7EE9E4();
  if (v2)
  {
    v10 = sub_23A7CF22C;
  }

  else
  {
    v3[18] = v8;
    v3[19] = v9;
    v10 = sub_23A7CE700;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_23A7CE700()
{
  v1 = v0[17];
  v12 = v0[13];
  v13 = v0[12];
  v2 = v0[10];
  v11 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v4);
  (*(v2 + 56))(v4, 0, 1, v11);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v0[22] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v0[2] = v3;
  v0[23] = sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE004();

  sub_23A7D0C04(v4);
  (v5)(v13, v12, v11);
  v7 = swift_allocObject();
  v0[24] = v7;
  swift_weakInit();

  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_23A7CE958;
  v9 = v0[12];

  return sub_23A7A3DFC(v9, 0x7972616D697270, 0xE700000000000000, sub_23A7D0C6C, v7);
}

uint64_t sub_23A7CE958(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 200);
  v7 = *v3;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = v2;

  v8 = v4[24];

  if (v2)
  {
    v9 = v5[18];
    v10 = v5[19];
    v11 = sub_23A7CEE84;
  }

  else
  {

    v9 = v5[18];
    v10 = v5[19];
    v11 = sub_23A7CEAA4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23A7CEAA4()
{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v16 = v0[20];
  v17 = v0[21];
  v12 = v0[28];
  v13 = v0[11];
  v14 = v0[9];
  v15 = v0[13];
  v5 = v0[7];
  swift_getKeyPath();
  v0[3] = v5;
  sub_23A7EE014();

  v6 = *(v5 + 40);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v1;
  v0[4] = v6;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);

  sub_23A7EE004();

  v16(v13, v15, v14);
  v8 = swift_allocObject();
  v0[29] = v8;
  swift_weakInit();

  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_23A7CED30;
  v10 = v0[11];

  return sub_23A7C4548(v10, 0x726F737365636361, 0xE900000000000079, sub_23A7D1028, v8);
}

uint64_t sub_23A7CED30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 240);
  v8 = *v3;
  v6[31] = v2;

  v9 = v6[29];

  if (v2)
  {
    v10 = v6[18];
    v11 = v6[19];
    v12 = sub_23A7CF150;
  }

  else
  {

    v6[32] = a2;
    v6[33] = a1;
    v10 = v6[18];
    v11 = v6[19];
    v12 = sub_23A7CEF44;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_23A7CEE84()
{
  v1 = v0[24];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[10];

  (*(v5 + 8))(v3, v4);

  v6 = v0[28];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23A7CEF44()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v13 = v0[26];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[15];
  v15 = v0[27];
  v16 = v0[13];
  v7 = v0[10];
  v17 = v0[12];
  v18 = v0[11];
  v14 = v0[9];
  v19 = v0[8];
  v8 = v0[7];

  swift_getKeyPath();
  v0[5] = v8;
  sub_23A7EE014();

  v9 = *(v8 + 48);
  swift_getKeyPath();
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v2;
  v10[4] = v1;
  v0[6] = v9;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);

  sub_23A7EE004();

  (*(v7 + 8))(v16, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23A7CF150()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];

  (*(v7 + 8))(v5, v6);

  v8 = v0[31];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7CF22C()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

void sub_23A7CF2C0(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = [objc_opt_self() sharedInstance];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setRemoteObserver_];
  }

  if (qword_27DFA8D68 != -1)
  {
    swift_once();
  }

  v5 = sub_23A7EE3B4();
  __swift_project_value_buffer(v5, qword_27DFA9F20);
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23A714000, v6, v7, a2, v8, 2u);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }
}

id sub_23A7CF408()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE014();

    v2 = *(v1 + 40);

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
    sub_23A7EE004();
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE014();

    v6 = *(v5 + 48);

    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);
    sub_23A7EE004();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    [result setRemoteObserver_];
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    if (*(v10 + 17))
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
      sub_23A7EE004();
    }

    else
    {
      *(v10 + 17) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = swift_getKeyPath();
    MEMORY[0x28223BE20](v12);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    sub_23A7EE004();
  }

  return result;
}

uint64_t sub_23A7CF97C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[3] = v2;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[5] = v3;
  v0[6] = *(v2 + 24);
  sub_23A7A3D7C(v3);

  if (v3)
  {

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_23A7CFBB4;

    return sub_23A7E9E84();
  }

  else
  {
    sub_23A7D0B74();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23A7CFBB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[6];

  if (v1)
  {
    v8 = sub_23A7D13F4;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_23A7D13D8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23A7CFD18()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v2 = *(v1 + 48);
  swift_getKeyPath();
  v0[3] = v2;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[5] = v3;
  v0[6] = *(v2 + 24);
  sub_23A7A3D7C(v3);

  if (v3)
  {

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_23A7CFF50;

    return sub_23A7EA368();
  }

  else
  {
    sub_23A7D0B74();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23A7CFF50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[6];

  if (v1)
  {
    v8 = sub_23A7D0104;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_23A7D0094;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23A7D0094()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3(v4);
}

uint64_t sub_23A7D0104()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7D0170()
{
  v1[3] = v0;
  v1[4] = sub_23A7EEA34();
  v1[5] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23A7D020C, v3, v2);
}

uint64_t sub_23A7D020C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  v0[8] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v0[9] = sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[2] = v2;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[10] = v3;
  v0[11] = *(v2 + 24);
  sub_23A7A3D7C(v3);

  if (v3)
  {
    v4 = v0[4];
    v0[12] = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v7 = v6;
    v8 = sub_23A7D0518;
LABEL_5:

    return MEMORY[0x2822009F8](v8, v5, v7);
  }

  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[3];
  swift_getKeyPath();
  v0[2] = v11;
  sub_23A7EE014();

  v12 = *(v11 + 48);
  swift_getKeyPath();
  v0[2] = v12;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v13 = *(v12 + 16);
  v0[13] = v13;
  v0[14] = *(v12 + 24);
  sub_23A7A3D7C(v13);

  if (v13)
  {
    v14 = v0[4];
    v0[15] = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v7 = v15;
    v8 = sub_23A7D0780;
    goto LABEL_5;
  }

  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_23A7D0518()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *__swift_project_boxed_opaque_existential_0((v2 + 24), *(v2 + 48));
  sub_23A7EEB84();
  [*(v2 + 64) invalidate];
  v5 = *(v2 + 64);
  *(v2 + 64) = 0;

  v6 = v0[6];
  v7 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7D05C8, v6, v7);
}

uint64_t sub_23A7D05C8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  swift_getKeyPath();
  v0[2] = v3;
  sub_23A7EE014();

  v4 = *(v3 + 48);
  swift_getKeyPath();
  v0[2] = v4;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v5 = *(v4 + 16);
  v0[13] = v5;
  v0[14] = *(v4 + 24);
  sub_23A7A3D7C(v5);

  if (v5)
  {
    v6 = v0[4];
    v0[15] = sub_23A7EEA24();
    v8 = sub_23A7EE9E4();

    return MEMORY[0x2822009F8](sub_23A7D0780, v8, v7);
  }

  else
  {
    v9 = v0[5];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23A7D0780()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = *__swift_project_boxed_opaque_existential_0((v2 + 24), *(v2 + 48));
  sub_23A7EEB84();
  [*(v2 + 64) invalidate];
  v5 = *(v2 + 64);
  *(v2 + 64) = 0;

  v6 = v0[6];
  v7 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7D0830, v6, v7);
}

uint64_t sub_23A7D0830()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7D0890()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  sub_23A7D0C04(v0 + OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process);
  v4 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel_quickLookUIExtensionPointQuery;
  v5 = sub_23A7EE0F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v7 = sub_23A7EE054();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for QLHostRemoteViewModel()
{
  result = qword_27DFA9F58;
  if (!qword_27DFA9F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7D09F0()
{
  sub_23A7D0B1C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_23A7EE0F4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_23A7EE054();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23A7D0B1C()
{
  if (!qword_27DFA9778)
  {
    sub_23A7EE154();
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9778);
    }
  }
}

unint64_t sub_23A7D0B74()
{
  result = qword_27DFA9F78;
  if (!qword_27DFA9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9F78);
  }

  return result;
}

uint64_t sub_23A7D0C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7D0C90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23A7EEC84();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23A7EEC84();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23A7D0D80(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23A7D0E20(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23A7D0D80(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23A7EEC84();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23A7EECF4();
  *v1 = result;
  return result;
}

uint64_t sub_23A7D0E20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23A7EEC84();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23A7EEC84();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A7D11C8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FB0, &qword_23A7FE8C0);
            v9 = sub_23A7D0FA0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23A7D117C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_23A7D0FA0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE8C140](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23A7D1020;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A7D104C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D10BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D112C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23A7D117C()
{
  result = qword_27DFA9FA8;
  if (!qword_27DFA9FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9FA8);
  }

  return result;
}

unint64_t sub_23A7D11C8()
{
  result = qword_27DFA9FB8;
  if (!qword_27DFA9FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9FB0, &qword_23A7FE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9FB8);
  }

  return result;
}

id sub_23A7D122C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23A7CF408();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23A7D1274()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
}

uint64_t sub_23A7D12B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_23A7D12EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

unint64_t sub_23A7D133C()
{
  result = qword_27DFA9FC0;
  if (!qword_27DFA9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9FC0);
  }

  return result;
}

void sub_23A7D13F8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23A7EDEE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_23A7D1468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23A7D1538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_23A7D1608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_23A7D16B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE004();
}

uint64_t sub_23A7D1780()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9FD0);
  __swift_project_value_buffer(v0, qword_27DFA9FD0);
  return sub_23A7EE3A4();
}

id sub_23A7D1800()
{
  v1 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController);
  }

  else
  {
    v4 = sub_23A7D1864(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23A7D1864(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  v3 = *(a1 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v4 = *(v3 + 48);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v5 = *(v4 + 16);
  sub_23A7A3D7C(v5);

  if (v5)
  {

    sub_23A7EEBF4();
    type metadata accessor for QLHostPlaceholderUIView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setPlaceholderView_];
  }

  else
  {
    sub_23A7EEBF4();
  }

  return v2;
}

uint64_t sub_23A7D1AF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  return *(v1 + 17);
}

uint64_t sub_23A7D1C98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7A8D38(v1 + v10, v9, &qword_27DFA9FF8, &qword_23A7FEA58);
  v11 = sub_23A7EDFE4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_23A7A8E74(v9, &qword_27DFA9FF8, &qword_23A7FEA58);
  sub_23A7EDFD4();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_23A7D1E84(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_23A7D1E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D207C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_23A7EDFE4();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7D1E84(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_23A7D21A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7D1E84(v7, v13 + v14);
  return swift_endAccess();
}

void (*sub_23A7D2338(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_23A7EDFE4();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_23A7D1C98(v10);
  return sub_23A7D2458;
}

void sub_23A7D2458(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
    swift_beginAccess();
    sub_23A7D1E84(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
    swift_beginAccess();
    sub_23A7D1E84(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

id sub_23A7D25D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  v8 = type metadata accessor for QLHostRemoteViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = sub_23A7CD4D8();
  *&v3[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController] = 0;
  v11 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  v12 = sub_23A7EDFE4();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  if (a2)
  {
    v13 = sub_23A7EE814();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for QLRemoteUIHostViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

uint64_t type metadata accessor for QLRemoteUIHostViewController()
{
  result = qword_27DFAA0B0;
  if (!qword_27DFAA0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id QLRemoteUIHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLRemoteUIHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static QLRemoteUIHostViewController.remotePreviewCollection()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23A7A1FDC;

  return sub_23A7E40BC();
}

void sub_23A7D2A4C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 setRemoteObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A7D2AC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_23A7D2C98(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23A7EEA34();
  *(v1 + 24) = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D2D30, v3, v2);
}

uint64_t sub_23A7D2D30()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[4] = _Block_copy(v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23A7D2DE4;

  return sub_23A7E40BC();
}

uint64_t sub_23A7D2DE4(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.toggleDebugView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  swift_getKeyPath();
  sub_23A7EE034();

  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath();
  sub_23A7EE024();
}

uint64_t sub_23A7D30B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 232) = a5;
  *(v5 + 160) = a4;
  sub_23A7EEA34();
  *(v5 + 168) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 176) = v7;
  *(v5 + 184) = v6;

  return MEMORY[0x2822009F8](sub_23A7D3154, v7, v6);
}

uint64_t sub_23A7D3154()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  v0[18] = v1;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[19] = v2;
  sub_23A7E7880(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[24] = v3;
  v0[25] = *(v2 + 24);
  sub_23A7A3D7C(v3);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_23A7D336C;

    return sub_23A7E9E84();
  }

  else
  {
    v6 = v0[21];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7D336C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = sub_23A7D3770;
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = sub_23A7D3494;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A7D3494()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7D35B8;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A79AB70;
  *(v0 + 104) = &block_descriptor_476;
  *(v0 + 112) = v3;
  [v1 setAllowInteractiveTransitions:v2 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7D35B8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7D3698, 0, 0);
}

uint64_t sub_23A7D3698()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  swift_unknownObjectRelease();

  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x2822009F8](sub_23A7D3710, v4, v5);
}

uint64_t sub_23A7D3710()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7D3770()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x2822009F8](sub_23A7D37DC, v3, v4);
}

uint64_t sub_23A7D37DC()
{
  v1 = *(v0 + 168);

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 216);
  if (v7)
  {
    v9 = *(v0 + 232);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 10) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to set allowInteractiveTransitions to %{BOOL}d. Error: %@", v10, 0x12u);
    sub_23A7A8E74(v11, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v11, -1, -1);
    MEMORY[0x23EE8D760](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

void __swiftcall QLRemoteUIHostViewController.accessoryView()(UIView *__return_ptr retstr)
{
  v1 = sub_23A7D1800();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_23A7D3ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7D3B68, v8, v7);
}

uint64_t sub_23A7D3B68()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D3C04;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D3C04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7D3D2C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D3D2C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D3DB0, v5, v4);
}

uint64_t sub_23A7D3DB0()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = sub_23A7EE814();
  [v1 setHostApplicationBundleIdentifier_];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7D3E54()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B28, v5, v4);
}

uint64_t QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:fullScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v30 = &unk_284D81A48;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (v16)
  {
    v17 = v16;
    v28 = a1;
    v18 = *&v6[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel];
    KeyPath = swift_getKeyPath();
    v26 = &v26;
    MEMORY[0x28223BE20](KeyPath);
    v27 = a2;
    *(&v26 - 2) = v18;
    *(&v26 - 1) = v17;
    v29 = v18;
    sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    swift_unknownObjectRetain();
    a1 = v28;
    sub_23A7EE004();
    a2 = v27;

    swift_unknownObjectRelease();
  }

  sub_23A7EEA44();
  v20 = sub_23A7EEA64();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  sub_23A7EEA34();
  swift_unknownObjectRetain();
  v21 = v6;
  swift_unknownObjectRetain();
  v22 = sub_23A7EEA24();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *(v23 + 32) = v21;
  *(v23 + 40) = a1;
  *(v23 + 48) = a2;
  *(v23 + 56) = a3;
  *(v23 + 64) = a4;
  *(v23 + 72) = a5 & 1;
  sub_23A7B9D94(0, 0, v15, &unk_23A7FEAD8, v23);
}

uint64_t sub_23A7D41B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 56) = sub_23A7EEA34();
  *(v8 + 64) = sub_23A7EEA24();
  *(v8 + 72) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return MEMORY[0x2822009F8](sub_23A7D4270, v10, v9);
}

uint64_t sub_23A7D4270()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D430C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D430C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_23A7D4568;
  }

  else
  {
    v4[14] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_23A7D4434;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D4434()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D44B8, v5, v4);
}

uint64_t sub_23A7D44B8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 120);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  [v1 configureWithNumberOfItems:v7 currentPreviewItemIndex:v6 itemProvider:v5 stateManager:v4 fullScreen:v3];
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23A7D4568()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B1C, v5, v4);
}

uint64_t QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  v28 = &unk_284D81A48;
  v13 = swift_dynamicCastObjCProtocolConditional();
  if (v13)
  {
    v14 = v13;
    v15 = a3;
    v16 = a1;
    v17 = *&v4[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel];
    KeyPath = swift_getKeyPath();
    v25[1] = v25;
    v26 = a2;
    MEMORY[0x28223BE20](KeyPath);
    v25[-2] = v17;
    v25[-1] = v14;
    v27 = v17;
    sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
    swift_unknownObjectRetain();
    a1 = v16;
    a3 = v15;
    sub_23A7EE004();

    swift_unknownObjectRelease();
    a2 = v26;
  }

  sub_23A7EEA44();
  v19 = sub_23A7EEA64();
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_23A7EEA34();
  swift_unknownObjectRetain();
  v20 = v4;
  swift_unknownObjectRetain();
  v21 = sub_23A7EEA24();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  sub_23A7B9D94(0, 0, v12, &unk_23A7FEB18, v22);
}

uint64_t sub_23A7D4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = sub_23A7EEA34();
  v8[8] = sub_23A7EEA24();
  v8[9] = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x2822009F8](sub_23A7D49D8, v10, v9);
}

uint64_t sub_23A7D49D8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D4A74;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D4A74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_23A7D4568;
  }

  else
  {
    v4[14] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_23A7D4B9C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D4B9C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D4C20, v5, v4);
}

uint64_t sub_23A7D4C20()
{
  v1 = v0[14];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  [v1 configureWithNumberOfItems:v6 currentPreviewItemIndex:v5 itemProvider:v4 stateManager:v3];
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7();
}

uint64_t sub_23A7D4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7D4E34, v8, v7);
}

uint64_t sub_23A7D4E34()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D4ED0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D4ED0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D4FF8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D4FF8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D507C, v5, v4);
}

uint64_t sub_23A7D507C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);

  [v1 setCurrentPreviewItemIndex:v4 animated:v3];
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A7D5114()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B24, v5, v4);
}

uint64_t sub_23A7D51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7D5298, v7, v6);
}

uint64_t sub_23A7D5298()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D5334;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5334(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D545C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D545C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D54E0, v5, v4);
}

uint64_t sub_23A7D54E0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);

  [v1 hostApplicationDidEnterBackground_];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7D5568()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B20, v5, v4);
}

uint64_t sub_23A7D5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7D56FC, v6, v5);
}

uint64_t sub_23A7D56FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D5798;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5798(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D58C0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D58C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D5944, v5, v4);
}

uint64_t sub_23A7D5944()
{
  v1 = v0[10];
  v2 = v0[4];

  [v1 hostApplicationDidBecomeActive];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t QLRemoteUIHostViewController.toolbarButtons(for:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = sub_23A7EEA34();
  v2[23] = sub_23A7EEA24();
  v2[24] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  v2[25] = v4;
  v2[26] = v3;

  return MEMORY[0x2822009F8](sub_23A7D5AA0, v4, v3);
}

uint64_t sub_23A7D5AA0()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D5B3C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_23A7D5F9C;
  }

  else
  {
    v4[29] = a1;
    v7 = v4[25];
    v8 = v4[26];
    v9 = sub_23A7D5C64;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D5C64()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v5 = sub_23A7EE9E4();
  v0[30] = v5;
  v0[31] = v4;

  return MEMORY[0x2822009F8](sub_23A7D5CE8, v5, v4);
}

uint64_t sub_23A7D5CE8()
{
  v1 = v0[29];
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A7D5E14;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F90, &qword_23A7FEB60);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79A290;
  v0[13] = &block_descriptor_10;
  v0[14] = v3;
  [v1 toolbarButtonsForTraitCollection:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D5E14()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7D5F1C, v2, v1);
}

uint64_t sub_23A7D5F1C()
{
  v1 = v0[29];
  v2 = v0[23];

  v3 = v0[18];
  v4 = v0[19];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_23A7D5F9C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D6020, v5, v4);
}

uint64_t sub_23A7D6020()
{
  v1 = v0[23];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to get toolbar buttons: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  v12 = v0[28];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];

  return v13(v14, v15);
}

uint64_t sub_23A7D6354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23A7EEA34();
  v3[5] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D63F0, v5, v4);
}

uint64_t sub_23A7D63F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23A7D64B4;
  v8 = v0[4];
  v9 = v0[2];

  return QLRemoteUIHostViewController.toolbarButtons(for:)(v9);
}

uint64_t sub_23A7D64B4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v9 = *v0;

  sub_23A7A3798(0, &qword_27DFAA0D0, 0x277D43FB0);
  v5 = sub_23A7EE994();
  v6 = sub_23A7EE994();
  (v2)[2](v2, v5, v6);

  _Block_release(v2);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t QLRemoteUIHostViewController.toolbarButtonPressed(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = sub_23A7EEA34();
  v3[23] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();
  v3[24] = v5;
  v3[25] = v4;

  return MEMORY[0x2822009F8](sub_23A7D6718, v5, v4);
}

uint64_t sub_23A7D6718()
{
  v16 = v0;
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_23A7EE3B4();
  v0[26] = __swift_project_value_buffer(v2, qword_27DFA9FD0);

  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB14();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_23A797A74(0xD000000000000025, 0x800000023A80AE30, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_23A797A74(v6, v5, &v15);
    _os_log_impl(&dword_23A714000, v3, v4, "Calling %s on the service (%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  v9 = *(v0[21] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  v0[18] = v9;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  if (*(v9 + 17) == 1)
  {
    v10 = v0[22];
    v0[27] = sub_23A7EEA24();
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v11[1] = sub_23A7D69EC;

    return sub_23A7CF95C();
  }

  else
  {
    v13 = v0[23];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23A7D69EC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 224);
  v7 = *v2;
  v5[29] = v1;

  v8 = v5[27];
  v9 = v5[22];
  if (v3)
  {
    v10 = sub_23A7EE9E4();
    v12 = v11;
    v13 = sub_23A7D6E78;
  }

  else
  {
    v5[30] = a1;
    v10 = sub_23A7EE9E4();
    v12 = v14;
    v13 = sub_23A7D6B6C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_23A7D6B6C()
{
  v1 = v0[27];

  v2 = v0[24];
  v3 = v0[25];

  return MEMORY[0x2822009F8](sub_23A7D6BD0, v2, v3);
}

uint64_t sub_23A7D6BD0()
{
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_23A7EE814();
  v0[31] = v4;
  v0[2] = v0;
  v0[3] = sub_23A7D6D00;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_40_0;
  v0[14] = v5;
  [v1 toolbarButtonPressedWithIdentifier:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D6D00()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7D6E08, v2, v1);
}

uint64_t sub_23A7D6E08()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[23];

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7D6E78()
{
  v1 = v0[27];

  v2 = v0[24];
  v3 = v0[25];

  return MEMORY[0x2822009F8](sub_23A7D6EDC, v2, v3);
}

uint64_t sub_23A7D6EDC()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[23];

  v4 = v1;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to inform toolbar button has been pressed: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7D71CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23A7EEA34();
  v3[5] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7268, v5, v4);
}

uint64_t sub_23A7D7268()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v4);
  v5 = sub_23A7EE844();
  v7 = v6;
  v0[7] = v6;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_23A7D7344;
  v10 = v0[4];

  return QLRemoteUIHostViewController.toolbarButtonPressed(withIdentifier:)(v5, v7);
}

uint64_t sub_23A7D7344()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t QLRemoteUIHostViewController.shouldDisplayLockActivity()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7D7548, v3, v2);
}

uint64_t sub_23A7D7548()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D75E4;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D75E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7D7A28;
  }

  else
  {
    v4[26] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7D770C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D770C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();
  v0[27] = v5;
  v0[28] = v4;

  return MEMORY[0x2822009F8](sub_23A7D7790, v5, v4);
}

uint64_t sub_23A7D7790()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_23A7D78AC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F98, &qword_23A7FEB80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79B37C;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 shouldDisplayLockActivityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D78AC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7D79B4, v2, v1);
}

uint64_t sub_23A7D79B4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);

  v3 = *(v0 + 232);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23A7D7A28()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7AAC, v5, v4);
}

uint64_t sub_23A7D7AAC()
{
  v1 = v0[20];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to know if current preview can be locked: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_23A7D7DD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7E68, v4, v3);
}

uint64_t sub_23A7D7E68()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23A7D7F18;
  v6 = v0[3];

  return QLRemoteUIHostViewController.shouldDisplayLockActivity()();
}

uint64_t sub_23A7D7F18(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23A7D8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7D813C, v6, v5);
}

uint64_t sub_23A7D813C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D81D8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D81D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D8300;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D8300()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8384, v5, v4);
}

uint64_t sub_23A7D8384()
{
  v1 = v0[10];
  v2 = v0[4];

  [v1 requestLockForCurrentItem];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t QLRemoteUIHostViewController.keyCommands()()
{
  v1[19] = v0;
  v1[20] = sub_23A7EEA34();
  v1[21] = sub_23A7EEA24();
  v1[22] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_23A7D84E0, v3, v2);
}

uint64_t sub_23A7D84E0()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D857C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D857C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = v4[23];
    v8 = v4[24];
    v9 = sub_23A7D89C0;
  }

  else
  {
    v4[27] = a1;
    v7 = v4[23];
    v8 = v4[24];
    v9 = sub_23A7D86A4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D86A4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v5 = sub_23A7EE9E4();
  v0[28] = v5;
  v0[29] = v4;

  return MEMORY[0x2822009F8](sub_23A7D8728, v5, v4);
}

uint64_t sub_23A7D8728()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A7D8844;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA090, &qword_23A7FEBA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79BD54;
  v0[13] = &block_descriptor_52;
  v0[14] = v2;
  [v1 keyCommandsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D8844()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7D894C, v2, v1);
}

uint64_t sub_23A7D894C()
{
  v1 = v0[27];
  v2 = v0[21];

  v3 = v0[18];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23A7D89C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8A44, v5, v4);
}

uint64_t sub_23A7D8A44()
{
  v1 = v0[21];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to get key commands: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  v12 = v0[26];

  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

uint64_t sub_23A7D8D60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8DF8, v4, v3);
}

uint64_t sub_23A7D8DF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23A7D8EA8;
  v6 = v0[3];

  return QLRemoteUIHostViewController.keyCommands()();
}

uint64_t sub_23A7D8EA8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v7 = *v0;

  sub_23A7A3798(0, &qword_27DFA8FD8, 0x277D43F80);
  v4 = sub_23A7EE994();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23A7D9058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_23A7EEA34();
  v5[5] = sub_23A7EEA24();
  v5[6] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_23A7D9100, v7, v6);
}

uint64_t sub_23A7D9100()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D919C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D919C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D92C4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D92C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9348, v5, v4);
}

uint64_t sub_23A7D9348()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];

  [v1 keyCommandWasPerformed_];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t QLRemoteUIHostViewController.setAppearance(_:animated:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_23A7EEA44();
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_23A7EEA34();
  v10 = v2;
  v11 = a1;
  v12 = sub_23A7EEA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = a2;
  sub_23A7B9D94(0, 0, v8, &unk_23A7FEBC0, v13);
}

uint64_t sub_23A7D954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7D95F8, v8, v7);
}

uint64_t sub_23A7D95F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D9694;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D9694(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D97BC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D97BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9840, v5, v4);
}

uint64_t sub_23A7D9840()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);

  [v1 setAppearance:v4 animated:v3];
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.notifyFirstTimeAppearance(with:)(__C::QLPreviewControllerFirstTimeAppearanceActions with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  sub_23A7EEA44();
  v7 = sub_23A7EEA64();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_23A7EEA34();
  v8 = v1;
  v9 = sub_23A7EEA24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2].rawValue = v9;
  v10[3].rawValue = v11;
  v10[4].rawValue = v8;
  v10[5].rawValue = with.rawValue;
  sub_23A7B9D94(0, 0, v6, &unk_23A7FEBD0, v10);
}

uint64_t sub_23A7D9B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_23A7EEA34();
  v5[5] = sub_23A7EEA24();
  v5[6] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_23A7D9C1C, v7, v6);
}

uint64_t sub_23A7D9C1C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7D9CB8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D9CB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7D9DE0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7D9DE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9E64, v5, v4);
}

uint64_t sub_23A7D9E64()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];

  [v1 notifyFirstTimeAppearanceWithActions_];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.notifyStateRestorationUserInfo(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  sub_23A7EEA44();
  v7 = sub_23A7EEA64();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_23A7EEA34();

  v8 = v1;
  v9 = sub_23A7EEA24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = rawValue;
  sub_23A7B9D94(0, 0, v6, &unk_23A7FEBE0, v10);
}

uint64_t sub_23A7DA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_23A7EEA34();
  v5[8] = sub_23A7EEA24();
  v5[9] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_23A7DA21C, v7, v6);
}

uint64_t sub_23A7DA21C()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DA2B8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DA2B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[12];
  v6 = *v2;
  v4[13] = v1;

  v7 = v3[11];
  v8 = v3[10];
  if (v1)
  {
    v9 = sub_23A7DA538;
  }

  else
  {
    v9 = sub_23A7DA3FC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7DA3FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DA480, v5, v4);
}

uint64_t sub_23A7DA480()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  if (v2)
  {
    v3 = *(v0 + 48);
    v2 = sub_23A7EE7C4();
  }

  [*(v0 + 24) notifyStateRestorationUserInfo_];

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7DA538()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DA5BC, v5, v4);
}

uint64_t sub_23A7DA5BC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_23A7DA7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DA860, v8, v7);
}

uint64_t sub_23A7DA860()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DA8FC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DA8FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DAA24;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DAA24()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DAAA8, v5, v4);
}

uint64_t sub_23A7DAAA8()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  [v1 previewItemDisplayState:sub_23A7EEDF4() wasAppliedToItemAtIndex:v3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t QLRemoteUIHostViewController.startTransition(withSourceViewProvider:transitionController:presenting:useInteractiveTransition:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 152) = a2;
  *(v5 + 160) = v4;
  *(v5 + 249) = a4;
  *(v5 + 248) = a3;
  *(v5 + 144) = a1;
  *(v5 + 168) = sub_23A7EEA34();
  *(v5 + 176) = sub_23A7EEA24();
  *(v5 + 184) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 192) = v7;
  *(v5 + 200) = v6;

  return MEMORY[0x2822009F8](sub_23A7DAC34, v7, v6);
}

uint64_t sub_23A7DAC34()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DACD0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DACD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_23A7DB130;
  }

  else
  {
    v4[28] = a1;
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_23A7DADF8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DADF8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  v5 = sub_23A7EE9E4();
  v0[29] = v5;
  v0[30] = v4;

  return MEMORY[0x2822009F8](sub_23A7DAE7C, v5, v4);
}

uint64_t sub_23A7DAE7C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7DAFBC;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A79AB70;
  *(v0 + 104) = &block_descriptor_76;
  *(v0 + 112) = v6;
  [v1 startTransitionWithSourceViewProvider:v5 transitionController:v4 presenting:v3 useInteractiveTransition:v2 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7DAFBC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7DB0C4, v2, v1);
}

uint64_t sub_23A7DB0C4()
{
  v1 = v0[28];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A7DB130()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DB1B4, v5, v4);
}

uint64_t sub_23A7DB1B4()
{
  v1 = v0[22];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[27];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to start transition: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7DB50C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_23A7EEA34();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DB5B0, v8, v7);
}

uint64_t sub_23A7DB5B0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  *(v0 + 56) = _Block_copy(v4);
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_23A7DB688;
  v9 = *(v0 + 40);
  v10 = *(v0 + 73);
  v11 = *(v0 + 72);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return QLRemoteUIHostViewController.startTransition(withSourceViewProvider:transitionController:presenting:useInteractiveTransition:)(v13, v12, v11, v10);
}

uint64_t sub_23A7DB688()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  swift_unknownObjectRelease();
  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23A7DB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7DB8DC, v7, v6);
}

uint64_t sub_23A7DB8DC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DB978;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DB978(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7DBBAC;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7DBAA0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DBAA0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBB24, v5, v4);
}

uint64_t sub_23A7DBB24()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);

  [v1 tearDownTransition_];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7DBBAC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBC30, v5, v4);
}

uint64_t sub_23A7DBC30()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23A7DBCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DBDA8, v8, v7);
}

uint64_t sub_23A7DBDA8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DBE44;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DBE44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DC094;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DBF6C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DBF6C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBFF0, v5, v4);
}

uint64_t sub_23A7DBFF0()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = sub_23A7EE814();
  [v1 setLoadingString_];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7DC094()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC118, v5, v4);
}

uint64_t sub_23A7DC118()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_23A7DC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  sub_23A7EEA44();
  v14 = sub_23A7EEA64();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_23A7EEA34();
  v15 = v5;

  v16 = sub_23A7EEA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  v17[5] = a1;
  v17[6] = a2;
  a5(0, 0, v13, a4, v17);
}

uint64_t sub_23A7DC338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DC3E4, v8, v7);
}

uint64_t sub_23A7DC3E4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DC480;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DC480(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DC6CC;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DC5A8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DC5A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC62C, v5, v4);
}

uint64_t sub_23A7DC62C()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = sub_23A7EE814();
  [v1 overrideParentApplicationDisplayIdentifierWithIdentifier_];

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7DC6CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC750, v5, v4);
}

uint64_t sub_23A7DC750()
{
  v1 = v0[6];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to override parent application display identifier: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_23A7DC930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_23A7EE844();
  v15 = v14;
  v16 = a1;
  sub_23A7EEA44();
  v17 = sub_23A7EEA64();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  sub_23A7EEA34();
  v18 = v16;
  v19 = sub_23A7EEA24();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = v13;
  v20[6] = v15;
  a6(0, 0, v12, a5, v20);
}

uint64_t QLRemoteUIHostViewController.preparePreviewCollectionForInvalidation()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DCB40, v3, v2);
}

uint64_t sub_23A7DCB40()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DCBDC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DCBDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DCFA4;
  }

  else
  {
    v4[26] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DCD04;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DCD04()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();
  v0[27] = v5;
  v0[28] = v4;

  return MEMORY[0x2822009F8](sub_23A7DCD88, v5, v4);
}

uint64_t sub_23A7DCD88()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[3] = sub_23A7DCE9C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_92_0;
  v0[14] = v2;
  [v1 preparePreviewCollectionForInvalidationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DCE9C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7E7B08, v2, v1);
}

uint64_t sub_23A7DCFA4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DD028, v5, v4);
}

uint64_t sub_23A7DD028()
{
  v1 = v0[20];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to prepare preview collection for invalidation: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7DD348(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DD3E0, v4, v3);
}

uint64_t sub_23A7DD3E0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23A7E7B0C;
  v6 = v0[3];

  return QLRemoteUIHostViewController.preparePreviewCollectionForInvalidation()();
}

uint64_t QLRemoteUIHostViewController.invalidateService()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DD538, v3, v2);
}

uint64_t sub_23A7DD538()
{
  v0[24] = *(v0[18] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_23A7DD5D8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DD5D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DDBBC;
  }

  else
  {
    v4[27] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DD700;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DD700()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();
  v0[28] = v5;
  v0[29] = v4;

  return MEMORY[0x2822009F8](sub_23A7DD784, v5, v4);
}

uint64_t sub_23A7DD784()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_23A7DD898;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_96_0;
  v0[14] = v2;
  [v1 invalidateServiceWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DD898()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7DD9A0, v2, v1);
}

uint64_t sub_23A7DD9A0()
{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DDA30;
  v2 = *(v0 + 192);

  return sub_23A7D0170();
}

uint64_t sub_23A7DDA30()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_23A7DDB50, v4, v3);
}

uint64_t sub_23A7DDB50()
{
  v1 = v0[27];
  v2 = v0[20];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23A7DDBBC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DDC40, v5, v4);
}

uint64_t sub_23A7DDC40()
{
  v1 = v0[20];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[26];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to invalidate service: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7DDF60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DDFF8, v4, v3);
}

uint64_t sub_23A7DDFF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23A7DE0A8;
  v6 = v0[3];

  return QLRemoteUIHostViewController.invalidateService()();
}

uint64_t sub_23A7DE0A8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23A7DE200(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_23A7EEA34();
  v13 = v4;
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  sub_23A7B9D94(0, 0, v11, a4, v15);
}

uint64_t sub_23A7DE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7DE3E8, v8, v7);
}

uint64_t sub_23A7DE3E8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DE484;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DE484(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7DE6C8;
  }

  else
  {
    v4[11] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_23A7DE5AC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DE5AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DE630, v5, v4);
}

uint64_t sub_23A7DE630()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);

  [v1 hostViewControlerTransitionToState:v4 animated:v3];
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23A7DE6C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DE74C, v5, v4);
}

uint64_t sub_23A7DE74C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_23A7DE7D0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = a1;
  sub_23A7EEA44();
  v15 = sub_23A7EEA64();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_23A7EEA34();
  v16 = v14;
  v17 = sub_23A7EEA24();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  sub_23A7B9D94(0, 0, v13, a6, v18);
}

uint64_t sub_23A7DE93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_23A79842C(a1, v18);
  sub_23A7EEA34();
  v13 = v4;
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  sub_23A7A8AB8(v18, (v15 + 40));
  *(v15 + 72) = a2;
  sub_23A7B9D94(0, 0, v11, a4, v15);
}

uint64_t sub_23A7DEA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DEB44, v8, v7);
}

uint64_t sub_23A7DEB44()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DEBE0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DEBE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = sub_23A7DED08;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DED08()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DED8C, v5, v4);
}

uint64_t sub_23A7DED8C()
{
  v1 = v0[12];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  [v1 setPreviewItemDisplayState:sub_23A7EEDF4() onItemAtIndex:v3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_23A7DEE64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  swift_unknownObjectRetain();
  v13 = a1;
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  sub_23A7EEA44();
  v14 = sub_23A7EEA64();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_23A79842C(v21, v20);
  sub_23A7EEA34();
  v15 = v13;
  v16 = sub_23A7EEA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  sub_23A7A8AB8(v20, (v17 + 40));
  *(v17 + 72) = a4;
  sub_23A7B9D94(0, 0, v12, a6, v17);

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t QLRemoteUIHostViewController.prepareForActionSheetPresentation()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DF098, v3, v2);
}

uint64_t sub_23A7DF098()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DF134;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DF134(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DF568;
  }

  else
  {
    v4[26] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_23A7DF25C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DF25C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();
  v0[27] = v5;
  v0[28] = v4;

  return MEMORY[0x2822009F8](sub_23A7DF2E0, v5, v4);
}

uint64_t sub_23A7DF2E0()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[3] = sub_23A7DF3F4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_109;
  v0[14] = v2;
  [v1 prepareForActionSheetPresentationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DF3F4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7DF4FC, v2, v1);
}

uint64_t sub_23A7DF4FC()
{
  v1 = v0[26];
  v2 = v0[20];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A7DF568()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DF5EC, v5, v4);
}

uint64_t sub_23A7DF5EC()
{
  v1 = v0[20];

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to prepare for action sheet presentation: %@", v9, 0xCu);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A7DF90C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DF9A4, v4, v3);
}

uint64_t sub_23A7DF9A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23A7DFA54;
  v6 = v0[3];

  return QLRemoteUIHostViewController.prepareForActionSheetPresentation()();
}

uint64_t sub_23A7DFA54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 24);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 40);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_23A7DFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7DFC78, v6, v5);
}

uint64_t sub_23A7DFC78()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7DFD14;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DFD14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7DFE3C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7DFE3C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DFEC0, v5, v4);
}

uint64_t sub_23A7DFEC0()
{
  v1 = v0[10];
  v2 = v0[4];

  [v1 actionSheetDidDismiss];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23A7DFFA8(uint64_t a1, uint64_t a2, void (*a3)(void, void, char *, uint64_t, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_23A7EEA44();
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_23A7EEA34();
  v11 = v3;
  v12 = sub_23A7EEA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  a3(0, 0, v9, a2, v13);
}

uint64_t sub_23A7E00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_23A7EEA34();
  v4[5] = sub_23A7EEA24();
  v4[6] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_23A7E0188, v6, v5);
}

uint64_t sub_23A7E0188()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_23A7E0224;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E0224(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v7 = *(v3 + 64);
  v8 = *(v3 + 56);
  if (v1)
  {
    v9 = sub_23A7E0498;
  }

  else
  {
    v9 = sub_23A7E0368;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7E0368()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E03EC, v5, v4);
}

uint64_t sub_23A7E03EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  v3 = [v1 respondsToSelector_];
  if (v3)
  {
    [*(v0 + 80) documentMenuActionWillBegin];
  }

  v4 = *(v0 + 80);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  *v5 = (v3 & 1) == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23A7E0498()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E051C, v5, v4);
}

uint64_t sub_23A7E051C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_23A7E05B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = a1;
  sub_23A7EEA44();
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_23A7EEA34();
  v14 = v12;
  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  a5(0, 0, v11, a4, v16);
}

uint64_t sub_23A7E0730(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_23A7EEA34();
  v13 = v4;
  v14 = a1;
  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  a4(0, 0, v11, a3, v16);
}

uint64_t sub_23A7E0874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = sub_23A7EEA34();
  v5[6] = sub_23A7EEA24();
  v5[7] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_23A7E0920, v7, v6);
}

uint64_t sub_23A7E0920()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23A7E09BC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E09BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_23A7E0C34;
  }

  else
  {
    v9 = sub_23A7E0B00;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7E0B00()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E0B84, v5, v4);
}

uint64_t sub_23A7E0B84()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = [v1 respondsToSelector_];
  if (v3)
  {
    [*(v0 + 88) hostViewControllerBackgroundColorChanged_];
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  *v5 = (v3 & 1) == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23A7E0C34()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E0CB8, v5, v4);
}

uint64_t sub_23A7E0CB8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

void sub_23A7E0D50(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = a3;
  v15 = a1;
  sub_23A7EEA44();
  v16 = sub_23A7EEA64();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_23A7EEA34();
  v17 = v14;
  v18 = v15;
  v19 = sub_23A7EEA24();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = v17;
  a6(0, 0, v13, a5, v20);
}

uint64_t QLRemoteUIHostViewController.saveIntoPhotoLibraryMedia(with:previewItemType:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A7EEA34();

  v14 = a1;
  sub_23A7B7C24(a3);
  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  sub_23A7AF7B0(0, 0, v11, &unk_23A7FECA0, v16);
}

uint64_t sub_23A7E104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v8[12] = sub_23A7EEA34();
  v8[13] = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  v8[14] = v10;
  v8[15] = v9;

  return MEMORY[0x2822009F8](sub_23A7E10F0, v10, v9);
}

uint64_t sub_23A7E10F0()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = v0[12];
    v0[17] = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v0[18] = v5;
    v0[19] = v4;

    return MEMORY[0x2822009F8](sub_23A7E11DC, v5, v4);
  }

  else
  {
    v6 = v0[13];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7E11DC()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_23A7E1278;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E1278(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);
  v8 = *(v3 + 144);
  if (v1)
  {
    v9 = sub_23A7E1768;
  }

  else
  {
    v9 = sub_23A7E13BC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7E13BC()
{
  v1 = v0[17];

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_23A7E1420, v2, v3);
}

uint64_t sub_23A7E1420()
{
  v1 = v0[21];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_23A7EEA24();
  v0[23] = v5;
  v6 = swift_task_alloc();
  v0[24] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[25] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0D8, &qword_23A7FEF38);
  *v8 = v0;
  v8[1] = sub_23A7E154C;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 5, v5, v10, 0xD000000000000042, 0x800000023A80B1D0, sub_23A7E77D0, v6, v9);
}

uint64_t sub_23A7E154C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23A7E16AC, v6, v5);
}

uint64_t sub_23A7E16AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  v3 = *(v0 + 48);
  v4 = *(v0 + 168);
  v5 = *(v0 + 128);
  if (v2)
  {
    v6 = *(v0 + 88);
    (*(v0 + 80))(*(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + 168);
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23A7E1768()
{
  v1 = v0[17];

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_23A7E17CC, v2, v3);
}

uint64_t sub_23A7E17CC()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[22];
  v4 = v0[16];
  if (v2)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v3;
    v6(0, v3);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A7E1884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock - v11;
  if ([a2 respondsToSelector_])
  {
    (*(v9 + 16))(v12, a1, v8);
    v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v14 = swift_allocObject();
    (*(v9 + 32))(v14 + v13, v12, v8);
    v21 = sub_23A7E77DC;
    v22 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_23A79FD28;
    v20 = &block_descriptor_416;
    v15 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [a2 saveIntoPhotoLibraryMediaWithURLWrapper:a3 previewItemType:a4 completionHandler:v15];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock) = 0;
    v18 = 0;
    return sub_23A7EEA04();
  }
}

uint64_t sub_23A7E1A94(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);
  return sub_23A7EEA04();
}

uint64_t sub_23A7E1BF8(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_23A7EEA34();
  v13 = v4;
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = a1;
  a4(0, 0, v11, a3, v15);
}

uint64_t sub_23A7E1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7E1DE4, v7, v6);
}

uint64_t sub_23A7E1DE4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_23A7E1E80;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E1E80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_23A7E1FA8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7E1FA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E202C, v5, v4);
}

uint64_t sub_23A7E202C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);

  [v1 setIsContentManaged_];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

void sub_23A7E20E8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = a1;
  sub_23A7EEA44();
  v15 = sub_23A7EEA64();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_23A7EEA34();
  v16 = v14;
  v17 = sub_23A7EEA24();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = a3;
  a6(0, 0, v13, a5, v18);
}

uint64_t QLRemoteUIHostViewController.saveCurrentPreviewEditsSynchronously(_:)(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 248) = a1;
  *(v2 + 168) = sub_23A7EEA34();
  *(v2 + 176) = sub_23A7EEA24();
  *(v2 + 184) = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  *(v2 + 192) = v4;
  *(v2 + 200) = v3;

  return MEMORY[0x2822009F8](sub_23A7E22E4, v4, v3);
}

uint64_t sub_23A7E22E4()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_23A7E2380;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E2380(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_23A7E27D0;
  }

  else
  {
    v4[28] = a1;
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_23A7E24A8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7E24A8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  v5 = sub_23A7EE9E4();
  v0[29] = v5;
  v0[30] = v4;

  return MEMORY[0x2822009F8](sub_23A7E252C, v5, v4);
}

uint64_t sub_23A7E252C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 248);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23A7E2658;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FA0, &qword_23A7FECC0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A7A04E0;
  *(v0 + 104) = &block_descriptor_136;
  *(v0 + 112) = v3;
  [v1 saveCurrentPreviewEditsSynchronously:v2 withCompletionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7E2658()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7E2760, v2, v1);
}

uint64_t sub_23A7E2760()
{
  v1 = v0[28];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_23A7E27D0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E2854, v5, v4);
}

void sub_23A7E2854()
{
  v21 = v0;
  v1 = *(v0 + 176);

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    if (v8)
    {
      v12 = 0x6F7268636E797361;
    }

    else
    {
      v12 = 0x6E6F7268636E7973;
    }

    if (v8)
    {
      v13 = 0xEE00796C73756F6ELL;
    }

    else
    {
      v13 = 0xED0000796C73756FLL;
    }

    v14 = sub_23A797A74(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to save current preview edits %s: %@", v9, 0x16u);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EE8D760](v11, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  v17 = *(v0 + 216);
  v18 = sub_23A7EDED4();

  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v0 + 8);

    v19(v18, 0);
  }
}

uint64_t sub_23A7E2C40(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_23A7EEA34();
  *(v3 + 32) = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E2CDC, v5, v4);
}

uint64_t sub_23A7E2CDC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_23A7E2D94;
  v6 = *(v0 + 24);
  v7 = *(v0 + 56);

  return QLRemoteUIHostViewController.saveCurrentPreviewEditsSynchronously(_:)(v7);
}

uint64_t sub_23A7E2D94(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v10 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v8 = *(v10 + 8);

  return v8();
}

void sub_23A7E2EE8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  if (*(v1 + 17) == 1)
  {
    type metadata accessor for QLHostRemoteViewModel();

    sub_23A7EE6E4();
    v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0F0, &unk_23A7FF000));

    v3 = sub_23A7EE564();
    sub_23A7E3718(v3);
  }

  else
  {
    sub_23A7E3088(v1);
    swift_getKeyPath();
    sub_23A7EE014();

    v4 = *(v1 + 32);
    if (v4)
    {
      [v4 remoteViewControllerWasInvalidated];
    }
  }
}

void sub_23A7E3088(uint64_t a1)
{
  v2 = [objc_allocWithZone(QLErrorItemViewController) init];
  swift_getKeyPath();
  v10[0] = a1;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 currentItem];
    v5 = [v4 createPreviewContext];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v10[4] = sub_23A7E7A90;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23A7E3B78;
  v10[3] = &block_descriptor_504;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 loadPreviewControllerWithContents:v4 context:v5 completionHandler:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
}

uint64_t sub_23A7E3284()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_23A7EEA64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_23A7EEA34();
  v6 = sub_23A7EEA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = Strong;
  sub_23A7AF7B0(0, 0, v3, &unk_23A7FEFF8, v7);
}

uint64_t sub_23A7E33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23A7EEA34();
  *(v4 + 24) = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E345C, v6, v5);
}

uint64_t sub_23A7E345C()
{
  v2 = v0[2];
  v1 = v0[3];

  if (v2)
  {
    v3 = v0[2];
    sub_23A7E3540();
    *(swift_task_alloc() + 16) = v3;
    *(swift_task_alloc() + 16) = v3;
    sub_23A7EDFF4();
  }

  v4 = v0[1];

  return v4();
}

id sub_23A7E3540()
{
  v1 = [v0 childViewControllers];
  sub_23A7A3798(0, &qword_27DFA8FE0, 0x277D75D28);
  v2 = sub_23A7EE9A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_23A7EEC84();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE8C140](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController_];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_23A7E36BC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23A7E3718(a3);
  }
}

void sub_23A7E3718(void *a1)
{
  v34 = [a1 view];
  if (!v34)
  {
    goto LABEL_15;
  }

  v3 = [objc_opt_self() clearColor];
  [v34 setBackgroundColor_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23A7FD2F0;
  v7 = [v34 topAnchor];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [v34 bottomAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [v34 leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [v34 trailingAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    sub_23A7EECD4();

    v29 = a1;
    v30 = [v29 description];
    v31 = sub_23A7EE844();
    v33 = v32;

    MEMORY[0x23EE8BD70](v31, v33);

    sub_23A7EED64();
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_23A7A3798(0, &qword_27DFA95B0, 0x277CCAAD0);
  v28 = sub_23A7EE994();

  [v25 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

void sub_23A7E3B80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_23A7E3BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23A7A3828;

  return v7();
}

uint64_t sub_23A7E3CD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23A7A3240;

  return v8();
}

uint64_t sub_23A7E3DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23A7A8D38(a3, v25 - v11, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v13 = sub_23A7EEA64();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23A7A8E74(v12, &qword_27DFA8FD0, &qword_23A7FDBC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23A7EEA54();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23A7EE9E4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23A7EE8C4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

    return v23;
  }

LABEL_8:
  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23A7E40BC()
{
  v0[14] = sub_23A7EEA34();
  v0[15] = sub_23A7EEA24();
  v2 = sub_23A7EE9E4();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x2822009F8](sub_23A7E4154, v2, v1);
}

uint64_t sub_23A7E4154()
{
  type metadata accessor for QLRemoteUIHostViewController();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  v0[18] = v1;
  v0[19] = v2;
  v0[20] = *&v1[v2];

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_23A7E421C;

  return sub_23A7CE42C();
}

uint64_t sub_23A7E421C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v5 = v2[16];
    v6 = v2[17];
    v7 = sub_23A7E57E0;
  }

  else
  {
    v8 = v2[20];
    v9 = v2[14];

    v2[23] = sub_23A7EEA24();
    v10 = sub_23A7EE9E4();
    v6 = v11;
    v2[24] = v10;
    v2[25] = v11;
    v7 = sub_23A7E437C;
    v5 = v10;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7E437C()
{
  v1 = *(v0[18] + v0[19]);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_23A7E4410;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E4410(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 200);
  v8 = *(v3 + 192);
  if (v1)
  {
    v9 = sub_23A7E4858;
  }

  else
  {
    v9 = sub_23A7E4554;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7E4554()
{
  v1 = v0[23];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E45B8, v2, v3);
}

uint64_t sub_23A7E45B8()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 112);
    [*(v0 + 216) setNotificationCenter_];

    swift_unknownObjectRelease();
    *(v0 + 232) = sub_23A7EEA24();
    v6 = sub_23A7EE9E4();
    v3 = v7;
    *(v0 + 240) = v6;
    *(v0 + 248) = v7;
    v1 = sub_23A7E469C;
    v2 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23A7E469C()
{
  v1 = *(v0[18] + v0[19]);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_23A7E4730;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E4730(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v7 = v4[30];
    v8 = v4[31];
    v9 = sub_23A7E4DC0;
  }

  else
  {
    v4[34] = a1;
    v7 = v4[30];
    v8 = v4[31];
    v9 = sub_23A7E4A68;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7E4858()
{
  v1 = v0[23];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E48BC, v2, v3);
}

uint64_t sub_23A7E48BC()
{
  v1 = v0[15];

  v2 = v0[28];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to create remote preview collection: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];
  v12 = v0[18];

  return v11(v12);
}

uint64_t sub_23A7E4A68()
{
  v1 = v0[29];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E4ACC, v2, v3);
}

uint64_t sub_23A7E4ACC()
{
  v1 = v0[34];
  v2 = v0[14];
  v0[6] = sub_23A7D2A4C;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_23A7D2AC4;
  v0[5] = &block_descriptor_482;
  v3 = _Block_copy(v0 + 2);
  [v1 getNetworkObserverWithCompletionBlock_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v0[35] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();
  v0[36] = v5;
  v0[37] = v4;

  return MEMORY[0x2822009F8](sub_23A7E4BE8, v5, v4);
}

uint64_t sub_23A7E4BE8()
{
  v1 = *(v0[18] + v0[19]);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_23A7E4C7C;

  return sub_23A7CFCF8();
}

uint64_t sub_23A7E4C7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v7 = *(v3 + 296);
  v8 = *(v3 + 288);
  if (v1)
  {
    v9 = sub_23A7E5220;
  }

  else
  {
    v9 = sub_23A7E4FD0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23A7E4DC0()
{
  v1 = v0[29];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E4E24, v2, v3);
}

uint64_t sub_23A7E4E24()
{
  v1 = v0[15];

  v2 = v0[33];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to create remote preview collection: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];
  v12 = v0[18];

  return v11(v12);
}

uint64_t sub_23A7E4FD0()
{
  v1 = v0[35];
  v2 = v0[14];

  v0[41] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  v0[42] = v4;
  v0[43] = v3;

  return MEMORY[0x2822009F8](sub_23A7E5064, v4, v3);
}

uint64_t sub_23A7E5064()
{
  v1 = *(v0[18] + v0[19]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_23A7E50F8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E50F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[42];
    v8 = v4[43];
    v9 = sub_23A7E55C4;
  }

  else
  {
    v4[46] = a1;
    v7 = v4[42];
    v8 = v4[43];
    v9 = sub_23A7E5430;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7E5220()
{
  v1 = v0[35];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E5284, v2, v3);
}

uint64_t sub_23A7E5284()
{
  v1 = v0[15];

  v2 = v0[40];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v3 = sub_23A7EE3B4();
  __swift_project_value_buffer(v3, qword_27DFA9FD0);
  v4 = v2;
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v5, v6, "Failed to create remote preview collection: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];
  v12 = v0[18];

  return v11(v12);
}

uint64_t sub_23A7E5430()
{
  v1 = v0[41];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E5494, v2, v3);
}

uint64_t sub_23A7E5494()
{
  v1 = v0[46];
  v2 = v0[39];
  v3 = v0[15];

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v0[12] = sub_23A7E78C8;
  v0[13] = v4;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23A7D2B24;
  v0[11] = &block_descriptor_490;
  v5 = _Block_copy(v0 + 8);
  v6 = v0[13];
  swift_unknownObjectRetain();

  [v1 getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler_];
  _Block_release(v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v0[1];
  v8 = v0[18];

  return v7(v8);
}

uint64_t sub_23A7E55C4()
{
  v1 = v0[41];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_23A7E5628, v2, v3);
}

uint64_t sub_23A7E5628()
{
  v1 = v0[39];
  v2 = v0[15];

  swift_unknownObjectRelease();
  v3 = v0[45];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA9FD0);
  v5 = v3;
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v6, v7, "Failed to create remote preview collection: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = v0[18];

  return v12(v13);
}

uint64_t sub_23A7E57E0()
{
  v1 = v0[20];
  v2 = v0[15];

  v3 = v0[22];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA9FD0);
  v5 = v3;
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v6, v7, "Failed to create remote preview collection: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = v0[18];

  return v12(v13);
}

uint64_t sub_23A7E5998(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D30B8(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E5A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D3ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E5B24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23A7A3828;

  return sub_23A7D41B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_12Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 56);
  swift_unknownObjectRelease();
  v5 = *(v1 + 64);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E5C8C(uint64_t a1)
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
  v11[1] = sub_23A7A3828;

  return sub_23A7D4928(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23A7E5D68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D4D88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E5E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D51EC(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E5EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7D5654(a1, v4, v5, v6);
}

uint64_t sub_23A7E5FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7D8094(a1, v4, v5, v6);
}

uint64_t sub_23A7E6074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D9058(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E6134(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D954C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E61FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D9B74(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E62BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DA174(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E637C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DA7B4(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_23A7E6444(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DB830(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E6508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DBCFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E65D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DC338(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E6698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DE33C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E6760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DEA98(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_23A7E6828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7DFBD0(a1, v4, v5, v6);
}

uint64_t sub_23A7E68DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7E00E0(a1, v4, v5, v6);
}

uint64_t sub_23A7E6990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7E0874(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E6A50(uint64_t a1)
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
  v11[1] = sub_23A7A3828;

  return sub_23A7E104C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23A7E6B2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7E1D38(a1, v4, v5, v6, v7);
}

void sub_23A7E6BF8()
{
  sub_23A7E6D88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A7E6D88()
{
  if (!qword_27DFAA0C0)
  {
    sub_23A7EDFE4();
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAA0C0);
    }
  }
}

uint64_t sub_23A7E6DE0()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7E2C40(v2, v4, v3);
}

uint64_t sub_23A7E6E94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A3828;

  return sub_23A7B1D24(a1, v5);
}

uint64_t sub_23A7E6F4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DF90C(v2, v3);
}

uint64_t sub_23A7E6FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3240;

  return sub_23A7DE33C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E70C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DDF60(v2, v3);
}

uint64_t sub_23A7E716C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DD348(v2, v3);
}

uint64_t sub_23A7E7218()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A7A3828;

  return sub_23A7DB50C(v2, v3, v4, v5, v7, v6);
}

uint64_t objectdestroy_70Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_54Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E73D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7D8D60(v2, v3);
}

uint64_t sub_23A7E7480()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7D7DD0(v2, v3);
}

uint64_t sub_23A7E752C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7D71CC(v2, v3, v4);
}

uint64_t objectdestroy_336Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A7E7628()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7D6354(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A7E7724()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7D2C98(v2);
}

uint64_t sub_23A7E77DC(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40) - 8) + 80);

  return sub_23A7E1A94(a1, a2);
}

uint64_t block_copy_helper_414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7E7880(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_23A7E78C8(id result)
{
  if (result)
  {
    return [*(v1 + 16) configureAsAccessoryViewContainerForPreviewCollectionWithPreviewCollectionUUID_];
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E7938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3240;

  return sub_23A7E33C4(a1, v4, v5, v6);
}

uint64_t (*sub_23A7E79EC())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_23A7E78E4;
}

uint64_t objectdestroy_191Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_23A7E7B30(void *a1)
{
  v2 = sub_23A7EE404();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1;
  sub_23A7EE3F4();
  v5[3] = sub_23A7EE414();
  v5[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_23A7EE424();
  sub_23A7EEC04();
}

void sub_23A7E7BE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9448, &qword_23A7FD320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = a1;
  sub_23A7EE3D4();
  v7 = sub_23A7EE3E4();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  sub_23A7EEC14();
}

uint64_t sub_23A7E7CE0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_23A7E7CB8(*v1);
}

uint64_t static QLAppExtensionSceneBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v7 + 32))(v11 + v10, v9, a2);
  *a4 = sub_23A7E7E18;
  a4[1] = v11;
  return result;
}