uint64_t sub_19D60EC28()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v1[21];
  v12 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_19D60EDE4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
  sub_19E6CD558();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60F010;
  v1[13] = &block_descriptor_44;
  [v9 createPDFWithConfiguration:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_19D60EDE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_19D60EF94;
  }

  else
  {
    v5 = sub_19D60EF14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D60EF14()
{

  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_19D60EF94()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_19D60F010(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
    sub_19E6CD568();
  }

  else
  {
    v6 = a2;
    sub_19E6CCF48();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
    sub_19E6CD578();
  }
}

uint64_t WKWebView.evaluateJavaScript(_:in:contentWorld:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E0);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  sub_19E6CD5B8();
  v6[31] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v6[32] = v9;
  v6[33] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D60F1D8, v9, v8);
}

uint64_t sub_19D60F1D8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[28];
  v10 = v1[27];
  v11 = v1[25];
  v12 = v1[26];
  v7 = sub_19E6CD4C8();
  v1[34] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_19D60F3C0;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
  sub_19E6CD558();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60EA4C;
  v1[13] = &block_descriptor_48;
  [v10 evaluateJavaScript:v7 inFrame:v11 inContentWorld:v12 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_19D60F3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_19D60F578;
  }

  else
  {
    v5 = sub_19D60F4F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D60F4F0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 176);

  v3 = *(v0 + 160);
  *v2 = *(v0 + 144);
  v2[1] = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19D60F578()
{
  v1 = *(v0 + 272);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WKWebView.find(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175F0);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_19E6CD5B8();
  v4[26] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19D60F6FC, v7, v6);
}

uint64_t sub_19D60F6FC()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v11 = v1[22];
  v12 = v1[21];
  v8 = sub_19E6CD4C8();
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_19D60F8BC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_19D61039C();
  sub_19E6CD558();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_19D60FA48;
  v1[13] = &block_descriptor_52;
  [v11 findString:v8 withConfiguration:v12 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_19D60F8BC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_19D60F9C4, v2, v1);
}

uint64_t sub_19D60F9C4()
{
  v1 = v0[29];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_19D60FA48(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175F0);
  return sub_19E6CD578();
}

uint64_t WKWebExtension.init(appExtensionBundle:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_19E6CD5B8();
  v2[5] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D60FB74, v4, v3);
}

uint64_t sub_19D60FB74()
{
  v1 = v0[3];

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v0[2] = 0;
  v3 = [v2 initWithAppExtensionBundle:v1 resourceBaseURL:0 error:v0 + 2];
  v4 = v0[2];
  v5 = v0[3];
  if (v3)
  {
    v6 = v3;
    v7 = v4;

    v8 = v0[1];

    return v8(v6);
  }

  else
  {
    v10 = v4;
    sub_19E6CCEB8();

    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t WKWebExtension.init(resourceBaseURL:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_19E6CD5B8();
  v2[5] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D60FDA0, v4, v3);
}

uint64_t sub_19D60FDA0()
{

  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_19E6CCEF8();
  v0[2] = 0;
  v3 = [v1 initWithAppExtensionBundle:0 resourceBaseURL:v2 error:v0 + 2];

  v4 = v0[2];
  v5 = v0[3];
  if (v3)
  {
    v6 = sub_19E6CCF28();
    v7 = *(*(v6 - 8) + 8);
    v8 = v4;
    v7(v5, v6);
    v9 = v0[1];

    return v9(v3);
  }

  else
  {
    v11 = v4;
    sub_19E6CCEB8();

    swift_willThrow();
    v12 = sub_19E6CCF28();
    (*(*(v12 - 8) + 8))(v5, v12);
    v13 = v0[1];

    return v13();
  }
}

unint64_t sub_19D60FFE0(uint64_t a1, uint64_t a2)
{
  sub_19E6CD918();
  sub_19E6CD518();
  v4 = sub_19E6CD938();

  return sub_19D610058(a1, a2, v4);
}

unint64_t sub_19D610058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_19E6CD878())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D610110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017600);
    v3 = sub_19E6CD858();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D6104FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19D60FFE0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19D60D3B8(&v15, (v3[7] + 32 * result));
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

uint64_t sub_19D610220(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19D610298(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D6102E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_19D61039C()
{
  result = qword_1EB0175F8;
  if (!qword_1EB0175F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0175F8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19D61042C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D610440(a1, a2);
  }

  return a1;
}

uint64_t sub_19D610440(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19D610494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19D6104FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WebPage.BackForwardList.Item.ID.hash(into:)()
{
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8]);

  return sub_19E6CD4A8();
}

uint64_t WebPage.BackForwardList.Item.ID.hashValue.getter()
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D6106D0()
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D610758()
{
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8]);

  return sub_19E6CD4A8();
}

uint64_t sub_19D6107DC()
{
  sub_19E6CD918();
  sub_19E6CCF78();
  sub_19D611654(&qword_1EB017610, MEMORY[0x1E69695A8]);
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

void sub_19D610864(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_19E6CCF68();
  v4 = type metadata accessor for WebPage.BackForwardList.Item(0);
  *(a2 + *(v4 + 32)) = a1;
  v5 = a1;
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_19E6CD4E8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (a2 + *(v4 + 20));
  *v11 = v8;
  v11[1] = v10;
  v12 = [v5 URL];
  sub_19E6CCF18();

  v13 = [v5 initialURL];
  sub_19E6CCF18();
}

uint64_t sub_19D6109A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPage.BackForwardList.Item.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D610A24(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebPage.BackForwardList.Item.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for WebPage.BackForwardList.Item(0) + 20));

  return v1;
}

uint64_t WebPage.BackForwardList.Item.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 24);
  v4 = sub_19E6CCF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebPage.BackForwardList.Item.initialURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 28);
  v4 = sub_19E6CCF28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebPage.BackForwardList.currentItem.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 && (v3 = [*v1 currentItem]) != 0)
  {
    v4 = v3;
    sub_19E6CD5B8();
    v5 = v4;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v5;
    sub_19D610864(v6, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

size_t sub_19D610CF4(SEL *a1)
{
  v3 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v36 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  if (!*v1)
  {
    return v9;
  }

  v10 = [*v1 *a1];
  sub_19D611980(0, &qword_1EB017618);
  v11 = sub_19E6CD538();

  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_23:

    return v9;
  }

  while (1)
  {
    v37 = v9;
    result = sub_19D6112C8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      break;
    }

    v9 = v37;
    v35 = v11 & 0xC000000000000001;
    v14 = sub_19E6CD5B8();
    v15 = v11;
    v16 = 0;
    v31 = v11 & 0xFFFFFFFFFFFFFF8;
    v32 = v14;
    v33 = v12;
    v34 = v11;
    while (1)
    {
      if (v35)
      {
        v17 = MEMORY[0x19EAFE3C0](v16, v15);
        goto LABEL_11;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v16 >= *(v31 + 16))
      {
        goto LABEL_21;
      }

      v17 = *(v15 + 8 * v16 + 32);
LABEL_11:
      v18 = v17;
      sub_19E6CD5A8();
      sub_19E6CD548();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = v18;
      sub_19E6CCF68();
      *&v6[*(v3 + 32)] = v19;
      v20 = v19;
      v21 = [v20 title];
      if (v21)
      {
        v22 = v21;
        v23 = sub_19E6CD4E8();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = &v6[*(v3 + 20)];
      *v26 = v23;
      v26[1] = v25;
      v27 = [v20 URL];
      sub_19E6CCF18();

      v28 = [v20 initialURL];
      sub_19E6CCF18();

      sub_19D6115A8(v6, v8);

      v37 = v9;
      v11 = *(v9 + 16);
      v29 = *(v9 + 24);
      if (v11 >= v29 >> 1)
      {
        sub_19D6112C8(v29 > 1, v11 + 1, 1);
        v9 = v37;
      }

      ++v16;
      *(v9 + 16) = v11 + 1;
      sub_19D6115A8(v8, v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v11);
      v15 = v34;
      if (v33 == v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v12 = sub_19E6CD7D8();
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t WebPage.BackForwardList.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 && (v4 = [*v2 itemAtIndex_]) != 0)
  {
    v5 = v4;
    sub_19E6CD5B8();
    v6 = v5;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = v6;
    sub_19D610864(v7, a2);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for WebPage.BackForwardList.Item(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t static WebPage.BackForwardList.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19D611980(0, &qword_1EB017620);
      v4 = v3;
      v5 = v2;
      v6 = sub_19E6CD6A8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19D611240(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_19D611980(0, &qword_1EB017620);
      v4 = v3;
      v5 = v2;
      v6 = sub_19E6CD6A8();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

size_t sub_19D6112C8(size_t a1, int64_t a2, char a3)
{
  result = sub_19D6112E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19D6112E8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017640);
  v10 = *(type metadata accessor for WebPage.BackForwardList.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WebPage.BackForwardList.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s6WebKit0A4PageC15BackForwardListV4ItemV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s6WebKit0A4PageC15BackForwardListV4ItemV2IDV2eeoiySbAI_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for WebPage.BackForwardList.Item(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_19E6CD878() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_19E6CCF08() & 1) != 0 && (sub_19E6CCF08())
  {
    sub_19D611980(0, &qword_1EB017648);
    return sub_19E6CD6A8() & 1;
  }

  return 0;
}

uint64_t sub_19D6115A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPage.BackForwardList.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D611654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D6116F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_19D61174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_19D6117D4()
{
  type metadata accessor for WebPage.BackForwardList.Item.ID(319);
  if (v0 <= 0x3F)
  {
    sub_19D611898();
    if (v1 <= 0x3F)
    {
      sub_19E6CCF28();
      if (v2 <= 0x3F)
      {
        sub_19D611980(319, &qword_1EB017618);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19D611898()
{
  if (!qword_1EB017638)
  {
    v0 = sub_19E6CD6C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB017638);
    }
  }
}

uint64_t sub_19D611910()
{
  result = sub_19E6CCF78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D611980(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double WebPage.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() defaultDataStore];
  *(a1 + 8) = [objc_allocWithZone(WKUserContentController) init];
  *(a1 + 16) = 0;
  WebPage.NavigationPreferences.init()((a1 + 24));
  *(a1 + 32) = sub_19D612738(MEMORY[0x1E69E7CC0]);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(a1 + 40) = &unk_19E700A08;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *&result = 16842753;
  *(a1 + 73) = 16842753;
  *(a1 + 77) = 0;
  *(a1 + 79) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void *WebPage.Configuration.webExtensionController.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void WebPage.Configuration.defaultNavigationPreferences.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 26);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
}

uint64_t WebPage.Configuration.defaultNavigationPreferences.setter(uint64_t result)
{
  v2 = *(result + 1);
  v3 = *(result + 2);
  *(v1 + 24) = *result;
  *(v1 + 25) = v2;
  *(v1 + 26) = v3;
  return result;
}

uint64_t WebPage.Configuration.urlSchemeHandlers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t WebPage.DeviceSensorAuthorization.init(decision:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = &unk_19E700A18;
  a2[1] = result;
  return result;
}

uint64_t WebPage.Configuration.deviceSensorAuthorization.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

__n128 WebPage.Configuration.deviceSensorAuthorization.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

uint64_t WebPage.Configuration.applicationNameForUserAgent.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t WebPage.Configuration.applicationNameForUserAgent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

_BYTE *(*WebPage.Configuration.showsSystemScreenTimeBlockingView.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 79);
  return sub_19D611F34;
}

BOOL static WebPage.DeviceSensorAuthorization.Permission.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WebPage.DeviceSensorAuthorization.Permission.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x19EAFE5E0](1);
  }

  return MEMORY[0x19EAFE5E0](v1);
}

uint64_t WebPage.DeviceSensorAuthorization.Permission.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19E6CD918();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x19EAFE5E0](1);
    v3 = v1;
  }

  MEMORY[0x19EAFE5E0](v3);
  return sub_19E6CD938();
}

uint64_t sub_19D6120C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19E6CD918();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x19EAFE5E0](1);
    v3 = v1;
  }

  MEMORY[0x19EAFE5E0](v3);
  return sub_19E6CD938();
}

uint64_t sub_19D612120()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x19EAFE5E0](1);
  }

  return MEMORY[0x19EAFE5E0](v1);
}

uint64_t sub_19D612168()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_19E6CD918();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

BOOL sub_19D6121C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t WebPage.DeviceSensorAuthorization.init(decisionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t WebPage.Configuration.MediaPlaybackBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t _s6WebKit0A4PageC21NavigationPreferencesV11ContentModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D612334()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

BOOL sub_19D6123B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_19D6123E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_19D612410@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19D6124E8()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D61255C()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D6125A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19D6130DC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_19D6125EC(uint64_t a1, uint64_t a2)
{
  sub_19D61319C();
  v2 = sub_19E6CD498();
  return sub_19D612654(a1, a2, v2);
}

unint64_t sub_19D612654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_19D60D64C();
    do
    {

      v7 = sub_19E6CD4B8();

      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D612738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017698);
    v3 = sub_19E6CD858();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D613114(v4, &v12);
      result = sub_19D6125EC(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = sub_19D613184(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 56;
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

uint64_t sub_19D612848()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D613200;

  return sub_19D61220C(v3, v4, v5, v2);
}

uint64_t sub_19D6128DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D612970;

  return sub_19D61220C(v3, v4, v5, v2);
}

uint64_t sub_19D612970(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_19D612A70()
{
  result = qword_1EB017650;
  if (!qword_1EB017650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017650);
  }

  return result;
}

unint64_t sub_19D612AC8()
{
  result = qword_1EB017658;
  if (!qword_1EB017658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017658);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19D612B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_19D612B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D612BF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19D612C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s25DeviceSensorAuthorizationV10PermissionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s25DeviceSensorAuthorizationV10PermissionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19D612CEC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D612D08(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _s21NavigationPreferencesV11ContentModeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21NavigationPreferencesV11ContentModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_19D612EE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_19D612FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D6130DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_19D613114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D613184(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_19D61319C()
{
  result = qword_1EB0176A8;
  if (!qword_1EB0176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176A8);
  }

  return result;
}

uint64_t WebPage.JavaScriptConfirmResult.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t WebPage.JavaScriptPromptResult.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);

  return sub_19E6CD518();
}

uint64_t WebPage.JavaScriptPromptResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_19E6CD918();
  if (v1)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t sub_19D613394()
{
  v1 = *(v0 + 8);
  sub_19E6CD918();
  if (v1)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t sub_19D613404()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);

  return sub_19E6CD518();
}

uint64_t sub_19D61347C()
{
  v1 = *(v0 + 8);
  sub_19E6CD918();
  if (v1)
  {
    MEMORY[0x19EAFE5E0](0);
    sub_19E6CD518();
  }

  else
  {
    MEMORY[0x19EAFE5E0](1);
  }

  return sub_19E6CD938();
}

uint64_t static WebPage.FileInputPromptResult.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_19D613570(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_19D613570(uint64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_19D614AF8(&qword_1EB0176D0);
    v21 = sub_19E6CD4B8();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t WebPage.FileInputPromptResult.hash(into:)()
{
  v1 = sub_19E6CCF28();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (!*v0)
  {
    return MEMORY[0x19EAFE5E0](1);
  }

  MEMORY[0x19EAFE5E0](0);
  result = MEMORY[0x19EAFE5E0](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v4, v11, v1);
      sub_19D614AF8(&qword_1EB0176B0);
      sub_19E6CD4A8();
      result = (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t WebPage.FileInputPromptResult.hashValue.getter()
{
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)();
  return sub_19E6CD938();
}

uint64_t sub_19D613938()
{
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)();
  return sub_19E6CD938();
}

uint64_t sub_19D613988()
{
  sub_19E6CD918();
  WebPage.FileInputPromptResult.hash(into:)();
  return sub_19E6CD938();
}

uint64_t sub_19D6139D4()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613A68, v2, v1);
}

uint64_t sub_19D613A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WebPage.DialogPresenting.handleJavaScriptAlert(message:initiatedBy:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D614B40, v2, v1);
}

uint64_t sub_19D613B5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(a1);
}

uint64_t WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613C8C, v3, v2);
}

uint64_t sub_19D613C8C()
{
  v1 = *(v0 + 16);

  *v1 = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D613CF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(a1);
}

uint64_t WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D613E24, v3, v2);
}

uint64_t sub_19D613E24()
{
  v1 = *(v0 + 16);

  *v1 = 0;
  v1[1] = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D613E88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D613F20;

  return WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(a1);
}

uint64_t sub_19D613F20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19E6CD5B8();
  *(v1 + 24) = sub_19E6CD5A8();
  v3 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D6140AC, v3, v2);
}

uint64_t sub_19D6140AC()
{
  v1 = *(v0 + 16);

  *v1 = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s6WebKit0A4PageC22JavaScriptPromptResultO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_19E6CD878();
}

unint64_t sub_19D61418C()
{
  result = qword_1EB0176B8;
  if (!qword_1EB0176B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176B8);
  }

  return result;
}

unint64_t sub_19D6141E4()
{
  result = qword_1EB0176C0;
  if (!qword_1EB0176C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176C0);
  }

  return result;
}

unint64_t sub_19D61423C()
{
  result = qword_1EB0176C8;
  if (!qword_1EB0176C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176C8);
  }

  return result;
}

uint64_t _s23JavaScriptConfirmResultOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s23JavaScriptConfirmResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19D6143EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D61443C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_19D614490(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19D6144A8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_19D6144D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D614528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_19D61457C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_19D614594(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptAlert(message:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19D614B3C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_19D614B3C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_19D614B3C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_19D613F20;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_19D614AF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19E6CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void WebPage.FrameInfo.request.getter()
{
  v1 = [*v0 request];
  sub_19E6CCD68();
}

id WebPage.FrameInfo.securityOrigin.getter()
{
  v1 = [*v0 securityOrigin];

  return v1;
}

uint64_t sub_19D614C00(uint64_t *a1, int a2)
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

uint64_t sub_19D614C48(uint64_t result, int a2, int a3)
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

uint64_t WebPage.NavigationEvent.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

unint64_t sub_19D614D20()
{
  result = qword_1EB017A60;
  if (!qword_1EB017A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017A60);
  }

  return result;
}

uint64_t _s21NavigationPreferencesV20UpgradeToHTTPSPolicyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21NavigationPreferencesV20UpgradeToHTTPSPolicyOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6WebKit0A4PageC15NavigationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19D614EEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D614F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t WebPage.NavigationAction.source.getter@<X0>(void *a1@<X8>)
{
  v3 = [*v1 sourceFrame];

  return sub_19D610BA8(v3, a1);
}

id WebPage.NavigationAction.target.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 targetFrame];
  if (result)
  {
    v4 = result;
    sub_19E6CD5B8();
    v5 = v4;
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v5;
    sub_19D610BA8(v6, a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void WebPage.NavigationAction.request.getter()
{
  v1 = [*v0 request];
  sub_19E6CCD68();
}

id WebPage.NavigationResponse.response.getter()
{
  v1 = [*v0 response];

  return v1;
}

uint64_t sub_19D615284()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615318, v2, v1);
}

uint64_t sub_19D615318()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t WebPage.NavigationDeciding.decidePolicy(for:preferences:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t sub_19D615410()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t WebPage.NavigationDeciding.decidePolicy(for:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B80, v2, v1);
}

uint64_t sub_19D615538()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D6155CC, v2, v1);
}

uint64_t sub_19D6155CC()
{

  v1 = *(v0 + 8);

  return v1(1, 0);
}

uint64_t WebPage.NavigationDeciding.decideAuthenticationChallengeDisposition(for:)()
{
  sub_19E6CD5B8();
  *(v0 + 16) = sub_19E6CD5A8();
  v2 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D615B84, v2, v1);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decidePolicy(for:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19D612970;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decidePolicy(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19D613200;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WebPage.NavigationDeciding.decideAuthenticationChallengeDisposition(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19D615A70;

  return v9(a1, a2, a3);
}

uint64_t sub_19D615A70(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

double WebPage.NavigationPreferences.init()@<D0>(_DWORD *a1@<X8>)
{
  *&result = 33554688;
  *a1 = 33554688;
  return result;
}

_BYTE *(*WebPage.NavigationPreferences.isLockdownModeEnabled.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 3) & 1;
  return sub_19D615CE4;
}

void sub_19D615CF4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 preferredContentMode];
  if (v4 >= 3 || (v5 = v4, v6 = [a1 preferredHTTPSNavigationPolicy], v6 >= 4))
  {
    sub_19E6CD808();
    __break(1u);
  }

  else
  {
    v7 = v6;
    v8 = [a1 allowsContentJavaScript];
    v9 = [a1 isLockdownModeEnabled];

    *a2 = v5;
    a2[1] = v8;
    a2[2] = v7;
    a2[3] = v9;
  }
}

unint64_t sub_19D615DEC()
{
  result = qword_1EB0176D8;
  if (!qword_1EB0176D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176D8);
  }

  return result;
}

unint64_t sub_19D615E44()
{
  result = qword_1EB0176E0;
  if (!qword_1EB0176E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0176E0);
  }

  return result;
}

uint64_t _s21NavigationPreferencesVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s21NavigationPreferencesVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void static WebPage.ExportedContentConfiguration.Region.rect(_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

double static WebPage.ExportedContentConfiguration.Region.contents.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t static WebPage.ExportedContentConfiguration.pdf(region:allowTransparentBackground:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 256;
  v4 = *(result + 16);
  if ((a2 & 1) == 0)
  {
    v3 = 0;
  }

  v5 = v3 | *(result + 32);
  *a3 = *result;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t static WebPage.ExportedContentConfiguration.image(region:allowTransparentBackground:snapshotWidth:afterScreenUpdates:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = 256;
  if ((a2 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | *(result + 32) & 1;
  v8 = *(result + 16);
  if (a5)
  {
    v9 = -32512;
  }

  else
  {
    v9 = 0x8000;
  }

  *a6 = *result;
  *(a6 + 16) = v8;
  *(a6 + 32) = v7;
  *(a6 + 40) = a3;
  *(a6 + 48) = v9 & 0xFFFE | a4 & 1;
  return result;
}

uint64_t static WebPage.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_19E6CD198();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176E8);
  v25[0] = *(v2 - 8);
  v3 = v25[0];
  v4 = *(v25[0] + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v25 - v5;
  sub_19E6CD158();
  v6 = sub_19D618F48(&qword_1EB0176F0, type metadata accessor for WebPage);
  v7 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_19E6CD168();
  v8 = v25 - v5;
  v9 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v9);
  v26 = v25 - v5;
  sub_19E6CD188();
  v25[2] = v6;
  v10 = sub_19E6CCFF8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = v25 - v5;
  sub_19E6CD178();
  sub_19E6CCFF8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0176F8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  v16 = v13[12];
  v17 = v13[16];
  v18 = v13[20];
  v19 = *(v3 + 16);
  v19(v25 - v14, v28, v2);
  v20 = &v15[v16];
  v21 = v8;
  v19(v20, v8, v2);
  v22 = v26;
  v19(&v15[v17], v26, v2);
  v19(&v15[v18], v11, v2);
  sub_19E6CD008();
  v23 = *(v25[0] + 8);
  v23(v11, v2);
  v23(v22, v2);
  v23(v21, v2);
  return (v23)(v28, v2);
}

uint64_t sub_19D6163F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D619500;

  return sub_19D616488();
}

uint64_t sub_19D616488()
{
  v1[4] = v0;
  v1[5] = sub_19E6CD5B8();
  v1[6] = sub_19E6CD5A8();
  v3 = sub_19E6CD548();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_19D616524, v3, v2);
}

uint64_t sub_19D616524()
{
  v1 = sub_19E6CD5A8();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_19D616610;
  v3 = v0[4];
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v4, 0xD00000000000001ALL, 0x800000019E70AD00, sub_19D619024, v3, v5);
}

uint64_t sub_19D616610()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_19D616794;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_19D61672C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19D61672C()
{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_19D616794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19D616804()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = xmmword_19E7014F0;
  *(v0 + 64) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_19D6168B4;

  return WebPage.exported(as:)((v0 + 16));
}

uint64_t sub_19D6168B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D616A04, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t WebPage.exported(as:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 128) = v1;
  *(v2 + 136) = v3;
  v5 = a1[2];
  v6 = a1[3];
  *(v2 + 144) = v4;
  *(v2 + 152) = v5;
  v7 = a1[4];
  *(v2 + 160) = v6;
  *(v2 + 168) = v7;
  v8 = *(a1 + 24);
  if (v8 < 0)
  {
    v11 = a1[5];
    v12 = (v7 >> 8) & 1;
    *(v2 + 56) = v3;
    *(v2 + 64) = v4;
    *(v2 + 72) = v5;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7 & 1;
    v13 = swift_task_alloc();
    *(v2 + 208) = v13;
    *v13 = v2;
    v13[1] = sub_19D616CA4;

    return sub_19D617A54(v2 + 56, v12, v11, v8 & 1, BYTE1(v8) & 1);
  }

  else
  {
    sub_19E6CD5B8();
    *(v2 + 176) = sub_19E6CD5A8();
    v10 = sub_19E6CD548();
    *(v2 + 184) = v10;
    *(v2 + 192) = v9;

    return MEMORY[0x1EEE6DFA0](sub_19D616B84, v10, v9);
  }
}

uint64_t sub_19D616B84()
{
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WKPDFConfiguration) init];
  *(v0 + 200) = v2;
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 136);
  }

  v5 = *(v0 + 168);
  v6 = (v5 >> 8) & 1;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5 & 1;
  WKPDFConfiguration.rect.setter(v0 + 16);
  [v2 setAllowTransparentBackground_];
  *(v0 + 224) = WebPage.backingWebView.getter();
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_19D616DF4;

  return WKWebView.pdf(configuration:)(v2);
}

uint64_t sub_19D616CA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 216) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D617004, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_19D616DF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 96) = v3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a2;
  *(v4 + 120) = v2;
  *(v4 + 240) = v2;

  if (v2)
  {
    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_19D616F8C;
  }

  else
  {

    v5 = *(v4 + 184);
    v6 = *(v4 + 192);
    v7 = sub_19D616F18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_19D616F18()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_19D616F8C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D61701C()
{
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_19D6170D8;

  return sub_19D617A54(v0 + 16, 0, 0, 1, 1);
}

uint64_t sub_19D6170D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_19D617228, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_19D617240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D6172D0;

  return sub_19D6173E0();
}

uint64_t sub_19D6172D0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_19D6173E0()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017728);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  v1[6] = swift_task_alloc();
  v2 = sub_19E6CCF28();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[10] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D617544, v4, v3);
}

uint64_t sub_19D617544()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  WebPage.url.getter(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_19D60D358(v5, &qword_1EB017738);
    type metadata accessor for WKError(0);
    v0[3] = 1;
    sub_19D610110(MEMORY[0x1E69E7CC0]);
    sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);
    sub_19E6CCE98();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    sub_19E6CD178();
    v9 = sub_19E6CD198();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    v10 = swift_task_alloc();
    v0[13] = v10;
    v11 = sub_19D618FD8();
    *v10 = v0;
    v10[1] = sub_19D617794;
    v12 = v0[7];
    v13 = v0[5];

    return MEMORY[0x1EEDBF590](v13, v12, v11);
  }
}

uint64_t sub_19D617794(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = v2;

  v7 = v6[5];
  if (v2)
  {
    sub_19D60D358(v7, &qword_1EB017728);
    v8 = v6[11];
    v9 = v6[12];
    v10 = sub_19D6179B0;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    sub_19D60D358(v7, &qword_1EB017728);
    v8 = v6[11];
    v9 = v6[12];
    v10 = sub_19D617900;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_19D617900()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v6 = v0[15];
  v5 = v0[16];

  return v4(v5, v6);
}

uint64_t sub_19D6179B0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19D617A54(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 338) = a5;
  *(v6 + 337) = a4;
  *(v6 + 176) = a3;
  *(v6 + 184) = v5;
  *(v6 + 336) = a2;
  v7 = *(a1 + 16);
  *(v6 + 192) = *a1;
  *(v6 + 208) = v7;
  *(v6 + 339) = *(a1 + 32);
  *(v6 + 224) = sub_19E6CD5B8();
  *(v6 + 232) = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  *(v6 + 240) = v9;
  *(v6 + 248) = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D617B0C, v9, v8);
}

uint64_t sub_19D617B0C()
{
  v1 = *(v0 + 339);
  v2 = [objc_allocWithZone(WKSnapshotConfiguration) init];
  v3 = v2;
  *(v0 + 256) = v2;
  v4 = MEMORY[0x1E695F050];
  v5 = (MEMORY[0x1E695F050] + 24);
  v6 = (MEMORY[0x1E695F050] + 16);
  v7 = (MEMORY[0x1E695F050] + 8);
  if ((v1 & 1) == 0)
  {
    v4 = (v0 + 192);
    v7 = (v0 + 200);
    v6 = (v0 + 208);
    v5 = (v0 + 216);
  }

  v8 = *(v0 + 337);
  v9 = *(v0 + 336);
  [v2 setRect_];
  [v3 _setUsesTransparentBackground_];
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 176);
    sub_19E6CD5A8();
    sub_19E6CD548();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v12 = *(v0 + 338);
  [v3 setSnapshotWidth_];

  [v3 setAfterScreenUpdates_];
  v19 = WebPage.backingWebView.getter();
  *(v0 + 264) = v19;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_19D617E9C;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710);
  *(v0 + 136) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  sub_19D618814();
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
  sub_19E6CD558();
  (*(v15 + 32))(boxed_opaque_existential_0, v16, v13);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19D618A24;
  *(v0 + 104) = &block_descriptor_0;
  [v19 takeSnapshotWithConfiguration:v17 completionHandler:?];
  (*(v15 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_19D617E9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_19D61841C;
  }

  else
  {
    v5 = sub_19D617FCC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19D617FCC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[18];
  v0[35] = v3;

  if (MEMORY[0x1E6981758])
  {
    v4 = MEMORY[0x1E6981738] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x1E6981740] == 0 || MEMORY[0x1E6981750] == 0)
  {
    v14 = v0[32];

    type metadata accessor for WKError(0);
    v0[20] = 1;
    sub_19D610110(MEMORY[0x1E69E7CC0]);
    sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);
    sub_19E6CCE98();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v7 = v3;
    v8 = sub_19E6CD3C8();
    v0[36] = v8;
    v0[21] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017728);
    v9 = swift_task_alloc();
    v0[37] = v9;
    sub_19E6CD188();
    v10 = sub_19E6CD198();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    v11 = swift_task_alloc();
    v0[38] = v11;
    v12 = sub_19D618F90();
    *v11 = v0;
    v11[1] = sub_19D618230;
    v13 = MEMORY[0x1E6981750];

    return MEMORY[0x1EEDBF590](v9, v13, v12);
  }
}

uint64_t sub_19D618230(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 312) = v2;

  if (v2)
  {
    sub_19D60D358(v6[37], &qword_1EB017728);
    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_19D6184A0;
  }

  else
  {
    v10 = v6[37];
    v6[40] = a2;
    v6[41] = a1;
    sub_19D60D358(v10, &qword_1EB017728);

    v7 = v6[30];
    v8 = v6[31];
    v9 = sub_19D618394;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_19D618394()
{
  v1 = v0[35];
  v2 = v0[32];

  v3 = v0[1];
  v5 = v0[40];
  v4 = v0[41];

  return v3(v4, v5);
}

uint64_t sub_19D61841C()
{
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_19D6184A0()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D6185B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t sub_19D6185F4()
{
  result = qword_1EB017700;
  if (!qword_1EB017700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017700);
  }

  return result;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s28ExportedContentConfigurationV6RegionV7StorageOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_19D6186B0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D6186CC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_19D618704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
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

double sub_19D61875C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 50) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19D6187E0(uint64_t result, __int16 a2)
{
  v2 = *(result + 48) & 0x101 | (a2 << 15);
  *(result + 32) &= 0x101uLL;
  *(result + 48) = v2;
  return result;
}

unint64_t sub_19D618814()
{
  result = qword_1EB017718;
  if (!qword_1EB017718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB017718);
  }

  return result;
}

void sub_19D618860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = WebPage.backingWebView.getter();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  WKWebView.createWebArchiveData(completionHandler:)(sub_19D61902C, v8);
}

void sub_19D618A24(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710);
    sub_19E6CD568();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017710);
    sub_19E6CD578();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19D618B00(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017768, type metadata accessor for WKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19D618B6C(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017768, type metadata accessor for WKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19D618BD8(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19D618C5C(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19D618CC8(uint64_t a1)
{
  v2 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19D618D34(void *a1, uint64_t a2)
{
  v4 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19D618DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19D618E64()
{
  sub_19E6CD918();
  sub_19E6CD4A8();
  return sub_19E6CD938();
}

uint64_t sub_19D618EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19D618F48(&qword_1EB017720, type metadata accessor for WKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_19D618F48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19D618F90()
{
  result = qword_1EB017730;
  if (!qword_1EB017730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017730);
  }

  return result;
}

unint64_t sub_19D618FD8()
{
  result = qword_1EB017740;
  if (!qword_1EB017740)
  {
    sub_19E6CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017740);
  }

  return result;
}

uint64_t sub_19D61902C(void *a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
  if (a3)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
    return sub_19E6CD568();
  }

  else
  {
    sub_19D61911C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175E8);
    return sub_19E6CD578();
  }
}

uint64_t sub_19D61911C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19D61917C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D61919C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_19D6193EC()
{
  result = qword_1EB017790;
  if (!qword_1EB017790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017790);
  }

  return result;
}

uint64_t WebPage.CSSMediaType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_19D619590@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D61959C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WebPage.FullscreenState.hashValue.getter()
{
  v1 = *v0;
  sub_19E6CD918();
  MEMORY[0x19EAFE5E0](v1);
  return sub_19E6CD938();
}

uint64_t sub_19D619630(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_19D610BA8(0, v13);
  *(v4 + 112) = v13[0];
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 136) = sub_19D626CC0(MEMORY[0x1E69E7CC0]);
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = sub_19D626DB8(v8);
  *(v4 + 168) = sub_19D626FA0(v8);
  *(v4 + 176) = sub_19D627188(v8);
  sub_19E6CCFC8();
  v9 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v9;
  *(v4 + 80) = a1[4];
  *(v4 + 90) = *(a1 + 74);
  v10 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v10;
  type metadata accessor for WKUIDelegateAdapter();
  sub_19D6283C4(a3, v13, &qword_1EB0178D0);
  *(v4 + 120) = sub_19D632CA8(v13);
  type metadata accessor for WKNavigationDelegateAdapter();
  sub_19D6283C4(a2, v13, &qword_1EB0178D8);
  v11 = sub_19D62E5D8(v13);
  sub_19D60D358(a3, &qword_1EB0178D0);
  sub_19D60D358(a2, &qword_1EB0178D8);
  *(v4 + 128) = v11;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  swift_weakAssign();
  return v4;
}

void sub_19D619800(void **a1)
{
  v2 = *a1;
  swift_beginAccess();
  sub_19D619950();
  if (sub_19E6CD4B8())
  {
    v3 = *(v1 + 112);
    *(v1 + 112) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF88();
  }
}

unint64_t sub_19D619950()
{
  result = qword_1EB0177B8;
  if (!qword_1EB0177B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0177B8);
  }

  return result;
}

uint64_t WebPage.__allocating_init<A, B>(configuration:navigationDecider:dialogPresenter:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a4;
  v20[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  v14 = *(a4 - 8);
  (*(v14 + 16))(boxed_opaque_existential_0, a2, a4);
  v19[3] = a5;
  v19[4] = a7;
  v15 = __swift_allocate_boxed_opaque_existential_0(v19);
  v16 = *(a5 - 8);
  (*(v16 + 16))(v15, a3, a5);
  v17 = swift_allocObject();
  sub_19D619630(a1, v20, v19);
  (*(v16 + 8))(a3, a5);
  (*(v14 + 8))(a2, a4);
  return v17;
}

uint64_t WebPage.__allocating_init<A>(configuration:dialogPresenter:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  v8 = *(a3 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, a3);
  v9 = swift_allocObject();
  sub_19D619630(a1, v12, v11);
  (*(v8 + 8))(a2, a3);
  return v9;
}

uint64_t WebPage.__allocating_init<A>(configuration:navigationDecider:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v8 = *(a3 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, a3);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = swift_allocObject();
  sub_19D619630(a1, v13, v11);
  (*(v8 + 8))(a2, a3);
  return v9;
}

uint64_t WebPage.__allocating_init(configuration:)(_OWORD *a1)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = swift_allocObject();
  sub_19D619630(a1, v6, v4);
  return v2;
}

id WebPage.backForwardList.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();

  swift_beginAccess();
  v3 = *(v1 + 112);
  *a1 = v3;

  return v3;
}

id sub_19D619DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();

  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_19D619EAC(void **a1)
{
  v2 = *a1;
  v1 = v2;
  sub_19D619800(&v2);
}

void sub_19D619EE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;
}

uint64_t type metadata accessor for WebPage()
{
  result = qword_1EB01CA60;
  if (!qword_1EB01CA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19D619F94@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = sub_19E6CCF78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  sub_19E6CCF68();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8790], v3);
  sub_19E6CD618();
  (*(v4 + 8))(v6, v3);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v12 + 16);
  v19(v15, v17, v11);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v12 + 32))(v21 + v20, v15, v11);
  v22 = v27;
  sub_19E6CD628();
  v19(v15, v17, v11);
  v24 = v28;
  v23 = v29;
  (*(v28 + 16))(v29, v10, v22);
  (*(v24 + 56))(v23, 0, 1, v22);
  swift_beginAccess();
  sub_19D622CB8(v23, v15);
  swift_endAccess();
  (*(v24 + 8))(v10, v22);
  return (*(v12 + 8))(v17, v11);
}

uint64_t WebPage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = sub_19E6CCFD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v39 = swift_getKeyPath();
  swift_beginAccess();
  v16 = sub_19D622788(KeyPath, v1[17]);
  swift_endAccess();
  if (v16)
  {

    v17 = v38;
  }

  else
  {
    v34 = v10;
    v35 = v6;

    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v18);
    v36 = WebPage.backingWebView.getter();
    v41 = v36;
    (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v11);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v12 + 32))(v22 + v20, v14, v11);
    *(v22 + v21) = v2;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

    v23 = sub_19E6CCEE8();

    swift_beginAccess();
    v24 = v2[17];
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v25 = v2[17];
      }

      else
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_19E6CD7D8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      v2[17] = sub_19D624BD8(v25, result + 1);
    }

    v17 = v38;
    v10 = v34;
    v6 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v2[17];
    sub_19D625FDC(v23, KeyPath, isUniquelyReferenced_nonNull_native);
    v2[17] = v40;
    swift_endAccess();
  }

  v41 = v2;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();
  v28 = WebPage.backingWebView.getter();
  v29 = [v28 URL];
  if (v29)
  {
    v30 = v29;
    sub_19E6CCF18();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = sub_19E6CCF28();
  (*(*(v32 - 8) + 56))(v6, v31, 1, v32);
  v33 = v37;
  sub_19D627430(v6, v37);
  sub_19D627430(v33, v10);

  sub_19D627430(v10, v17);
}

uint64_t sub_19D61A800@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_19D61ADD4(KeyPath, v3, a2);
}

uint64_t sub_19D61A87C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 URL];
  if (v3)
  {
    v4 = v3;
    sub_19E6CCF18();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_19E6CCF28();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void WebPage.title.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {
  }

  else
  {

    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
    v20 = WebPage.backingWebView.getter();
    v22 = v20;
    (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v9, v5, v2);
    *(v11 + v10) = v1;
    *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

    v12 = sub_19E6CCEE8();

    swift_beginAccess();
    v13 = v1[17];
    if ((v13 & 0xC000000000000001) != 0)
    {
      if (v13 < 0)
      {
        v14 = v1[17];
      }

      else
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = sub_19E6CD7D8();
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      v1[17] = sub_19D624BD8(v14, v15 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
  }

  v22 = v1;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();
  v1 = WebPage.backingWebView.getter();
  v17 = [v1 title];
  if (v17)
  {
    v18 = v17;
    sub_19E6CD4E8();

    return;
  }

LABEL_13:

  __break(1u);
}

uint64_t sub_19D61ACEC@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_19D61B0E8(KeyPath, v5, v3);
  v7 = v6;
  v9 = v8;

  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_19D61AD6C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_19D61ADD4(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_19E6CCFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = sub_19D622788(a1, a2[17]);
  swift_endAccess();
  if (v10)
  {

LABEL_10:
    v25 = a2;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v20 = WebPage.backingWebView.getter();
    v25 = v20;
    swift_getAtKeyPath();

    return;
  }

  v21[1] = a3;

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v11);
  v23 = WebPage.backingWebView.getter();
  v25 = v23;
  (*(v7 + 16))(v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v6);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v9, v6);
  *(v14 + v13) = a2;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v15 = sub_19E6CCEE8();

  swift_beginAccess();
  v16 = a2[17];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a2[17];
    sub_19D625FDC(v15, a1, isUniquelyReferenced_nonNull_native);
    a2[17] = v24;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v16 < 0)
  {
    v17 = a2[17];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = sub_19E6CD7D8();
  if (!__OFADD__(v18, 1))
  {
    a2[17] = sub_19D624BD8(v17, v18 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_19D61B0E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v9)
  {
  }

  else
  {

    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
    v21 = WebPage.backingWebView.getter();
    v23 = v21;
    (*(v6 + 16))(&isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v11, v8, v5);
    *(v13 + v12) = a3;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

    v14 = sub_19E6CCEE8();

    swift_beginAccess();
    v15 = a3[17];
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = a3[17];
      }

      else
      {
        v16 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = sub_19E6CD7D8();
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      a3[17] = sub_19D624BD8(v16, v17 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = a3[17];
    sub_19D625FDC(v14, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v22;
    swift_endAccess();
  }

  v23 = a3;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();
  v19 = WebPage.backingWebView.getter();
  v22 = v19;
  swift_getAtKeyPath();

  if (!v24)
  {
LABEL_13:
    __break(1u);
  }
}

void sub_19D61B3F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v23 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v19 = WebPage.backingWebView.getter();
    v22 = v19;
    swift_getAtKeyPath();

    return;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
  v21 = WebPage.backingWebView.getter();
  v23 = v21;
  (*(v6 + 16))(&isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v14 = sub_19E6CCEE8();

  swift_beginAccess();
  v15 = a3[17];
  if ((v15 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = a3[17];
    sub_19D625FDC(v14, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v22;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v15 < 0)
  {
    v16 = a3[17];
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = sub_19E6CD7D8();
  if (!__OFADD__(v17, 1))
  {
    a3[17] = sub_19D624BD8(v16, v17 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_19D61B6FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v23 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v19 = WebPage.backingWebView.getter();
    v23 = v19;
    swift_getAtKeyPath();

    return v22;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
  v21 = WebPage.backingWebView.getter();
  v23 = v21;
  (*(v6 + 16))(&isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v14 = sub_19E6CCEE8();

  swift_beginAccess();
  v15 = a3[17];
  if ((v15 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = a3[17];
    sub_19D625FDC(v14, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v22;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v15 < 0)
  {
    v16 = a3[17];
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v16, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61BA00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v23 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v19 = WebPage.backingWebView.getter();
    v22 = v19;
    swift_getAtKeyPath();

    return v23;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
  v21 = WebPage.backingWebView.getter();
  v23 = v21;
  (*(v6 + 16))(&isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v14 = sub_19E6CCEE8();

  swift_beginAccess();
  v15 = a3[17];
  if ((v15 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = a3[17];
    sub_19D625FDC(v14, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v22;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v15 < 0)
  {
    v16 = a3[17];
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v16, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_19D61BD04(uint64_t a1@<X0>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = sub_19E6CCFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = sub_19D622788(a1, *(a2 + 136));
  swift_endAccess();
  if (v10)
  {
  }

  else
  {
    v22 = a3;

    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v11);
    v24 = WebPage.backingWebView.getter();
    v26 = v24;
    (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v6);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v12, v9, v6);
    *(v14 + v13) = a2;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

    v15 = sub_19E6CCEE8();

    swift_beginAccess();
    v16 = *(a2 + 136);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(a2 + 136);
      }

      else
      {
        v17 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = sub_19E6CD7D8();
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      *(a2 + 136) = sub_19D624BD8(v17, v18 + 1);
    }

    a3 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a2 + 136);
    sub_19D625FDC(v15, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 136) = v25;
    swift_endAccess();
  }

  v26 = a2;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();
  v20 = WebPage.backingWebView.getter();
  v25 = v20;
  swift_getAtKeyPath();

  if (v26 < 4)
  {
    *a3 = 0x1020003u >> (8 * v26);
    return;
  }

LABEL_13:
  sub_19E6CD808();
  __break(1u);
}

uint64_t sub_19D61C07C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_19E6CCFD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = sub_19D622788(a1, a3[17]);
  swift_endAccess();
  if (v9)
  {

LABEL_10:
    v23 = a3;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v19 = WebPage.backingWebView.getter();
    v22 = v19;
    swift_getAtKeyPath();

    return v23;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
  v21 = WebPage.backingWebView.getter();
  v23 = v21;
  (*(v6 + 16))(&isIntegralOrPointerType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v11, v8, v5);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v14 = sub_19E6CCEE8();

  swift_beginAccess();
  v15 = a3[17];
  if ((v15 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = a3[17];
    sub_19D625FDC(v14, a1, isUniquelyReferenced_nonNull_native);
    a3[17] = v22;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v15 < 0)
  {
    v16 = a3[17];
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    a3[17] = sub_19D624BD8(v16, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t WebPage.backingProperty<A, B>(_:backedBy:_:)(uint64_t *a1, void *a2, void (*a3)(char *))
{
  v4 = v3;
  v8 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - v10;
  swift_beginAccess();
  v12 = sub_19D622788(a1, v3[17]);
  swift_endAccess();
  if (v12)
  {

LABEL_10:
    v21 = v4;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v21 = v17;
    swift_getAtKeyPath();

    a3(v11);
    return (*(v9 + 8))(v11, v8);
  }

  v19 = sub_19D623E28(a1, a2);
  swift_beginAccess();
  v13 = v4[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v4[17];
    sub_19D625FDC(v19, a1, isUniquelyReferenced_nonNull_native);
    v4[17] = v20;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v4[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v4[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void WebPage.estimatedProgress.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v21 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    [v17 estimatedProgress];

    return;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v19 = WebPage.backingWebView.getter();
  v21 = v19;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v20;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = sub_19E6CD7D8();
  if (!__OFADD__(v15, 1))
  {
    v1[17] = sub_19D624BD8(v14, v15 + 1);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_19D61C920@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_19D61B3F8(KeyPath, v5, v3);
  v7 = v6;

  *a2 = v7;
  return result;
}

id sub_19D61C99C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedProgress];
  *a2 = v4;
  return result;
}

uint64_t WebPage.isLoading.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 isLoading];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61CD14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLoading];
  *a2 = result;
  return result;
}

uint64_t WebPage.serverTrust.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 serverTrust];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61D080@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_19D61BA00(KeyPath, v5, v3);

  *a2 = v6;
  return result;
}

id sub_19D61D0F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 serverTrust];
  *a2 = result;
  return result;
}

uint64_t WebPage.hasOnlySecureContent.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 hasOnlySecureContent];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61D474@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasOnlySecureContent];
  *a2 = result;
  return result;
}

uint64_t WebPage.isWritingToolsActive.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 isWritingToolsActive];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61D7EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isWritingToolsActive];
  *a2 = result;
  return result;
}

uint64_t WebPage.isBlockedByScreenTime.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 isBlockedByScreenTime];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61DB64@<X0>(uint64_t **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  LOBYTE(v3) = sub_19D61B6FC(KeyPath, v5, v3);

  *a2 = v3 & 1;
  return result;
}

id sub_19D61DBD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBlockedByScreenTime];
  *a2 = result;
  return result;
}

uint64_t WebPage.fullscreenState.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_19E6CCFD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v9 = sub_19D622788(KeyPath, v1[17]);
  swift_endAccess();
  if (v9)
  {
  }

  else
  {
    v23 = a1;

    isIntegralOrPointerType = WTF::isIntegralOrPointerType(v10);
    v25 = WebPage.backingWebView.getter();
    v27 = v25;
    (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v4);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v11, v7, v4);
    *(v13 + v12) = v2;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

    v14 = sub_19E6CCEE8();

    swift_beginAccess();
    v15 = v2[17];
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = v2[17];
      }

      else
      {
        v16 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = sub_19E6CD7D8();
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_13;
      }

      v2[17] = sub_19D624BD8(v16, v17 + 1);
    }

    a1 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2[17];
    sub_19D625FDC(v14, KeyPath, isUniquelyReferenced_nonNull_native);
    v2[17] = v26;
    swift_endAccess();
  }

  v27 = v2;
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  sub_19E6CCF98();
  v19 = WebPage.backingWebView.getter();
  v20 = [v19 fullscreenState];

  if (v20 < 4)
  {

    *a1 = 0x1020003u >> (8 * v20);
    return result;
  }

LABEL_13:
  result = sub_19E6CD808();
  __break(1u);
  return result;
}

uint64_t sub_19D61DFA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_19D61BD04(KeyPath, v3, &v6);

  *a2 = v6;
  return result;
}

id sub_19D61E024@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fullscreenState];
  *a2 = result;
  return result;
}

uint64_t WebPage.cameraCaptureState.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 cameraCaptureState];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_19D61E39C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cameraCaptureState];
  *a2 = result;
  return result;
}

uint64_t WebPage.microphoneCaptureState.getter()
{
  v1 = v0;
  v2 = sub_19E6CCFD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  v7 = sub_19D622788(KeyPath, v0[17]);
  swift_endAccess();
  if (v7)
  {

LABEL_10:
    v22 = v1;
    sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
    sub_19E6CCF98();
    v17 = WebPage.backingWebView.getter();
    v18 = [v17 microphoneCaptureState];

    return v18;
  }

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v8);
  v20 = WebPage.backingWebView.getter();
  v22 = v20;
  (*(v3 + 16))(&isIntegralOrPointerType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v2);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v9, v5, v2);
  *(v11 + v10) = v1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v12 = sub_19E6CCEE8();

  swift_beginAccess();
  v13 = v1[17];
  if ((v13 & 0xC000000000000001) == 0)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1[17];
    sub_19D625FDC(v12, KeyPath, isUniquelyReferenced_nonNull_native);
    v1[17] = v21;
    swift_endAccess();
    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v14 = v1[17];
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_19E6CD7D8();
  if (!__OFADD__(result, 1))
  {
    v1[17] = sub_19D624BD8(v14, result + 1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_19D61E714@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_19D61C07C(KeyPath, v5, v3);

  *a2 = v6;
  return result;
}

id sub_19D61E784@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 microphoneCaptureState];
  *a2 = result;
  return result;
}

void WebPage.mediaType.getter(uint64_t *a1@<X8>)
{
  v2 = WebPage.backingWebView.getter();
  v3 = [v2 mediaType];

  if (v3)
  {
    v4 = sub_19E6CD4E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void WebPage.mediaType.setter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = WebPage.backingWebView.getter();
  if (v1)
  {
    v3 = sub_19E6CD4C8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setMediaType_];
}

id WebPage.backingWebView.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for WebPageWebView();
    sub_19D627F10();
    v3 = *(v0 + 64);
    v4 = *(v0 + 32);
    v19 = *(v0 + 48);
    v20 = v3;
    v5 = *(v0 + 64);
    v21[0] = *(v0 + 80);
    *(v21 + 10) = *(v0 + 90);
    v6 = *(v0 + 32);
    v18[0] = *(v0 + 16);
    v18[1] = v6;
    v16[2] = v19;
    v16[3] = v5;
    v17[0] = *(v0 + 80);
    *(v17 + 10) = *(v0 + 90);
    v16[0] = v18[0];
    v16[1] = v4;
    sub_19D6273B4(v18, &v15);
    v7 = v0;
    sub_19D63ABB0(v16);
    v9 = WebPageWebView.__allocating_init(frame:configuration:)(v8, 0.0, 0.0, 1024.0, 768.0);
    v10 = *(v0 + 128);
    v11 = v9;
    [v11 setNavigationDelegate_];
    [v11 setUIDelegate_];

    v12 = *(v7 + 152);
    *(v7 + 152) = v11;
    v2 = v11;

    v1 = 0;
  }

  v13 = v1;
  return v2;
}

void (*WebPage.mediaType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 mediaType];

  if (v4)
  {
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_19D61EA90;
}

uint64_t WebPage.customUserAgent.getter()
{
  v0 = WebPage.backingWebView.getter();
  v1 = [v0 customUserAgent];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_19E6CD4E8();

  return v2;
}

void sub_19D61EB1C(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = WebPage.backingWebView.getter();
  v5 = [v4 *a1];

  if (v5)
  {
    v6 = sub_19E6CD4E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_19D61EBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(a1 + 8);
  v7 = WebPage.backingWebView.getter();
  if (v6)
  {
    v8 = sub_19E6CD4C8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 *a5];
}

void WebPage.customUserAgent.setter(uint64_t a1, uint64_t a2)
{
  v3 = WebPage.backingWebView.getter();
  if (a2)
  {
    v4 = sub_19E6CD4C8();
  }

  else
  {
    v4 = 0;
  }

  [v3 setCustomUserAgent_];
}

void (*WebPage.customUserAgent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 customUserAgent];

  if (v4)
  {
    v5 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_19D61ED44;
}

void sub_19D61ED50(uint64_t a1, char a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + 152);
  if (a2)
  {
    v7 = v5;
    if (v4)
    {

      v6 = sub_19E6CD4C8();
    }

    else
    {
      v6 = 0;
    }

    [v7 *a3];
  }

  else
  {
    v7 = v5;
    if (v4)
    {
      v6 = sub_19E6CD4C8();

      [v7 *a3];
    }

    else
    {
      v6 = 0;
      [v7 *a3];
    }
  }
}

id WebPage.isInspectable.getter()
{
  v0 = WebPage.backingWebView.getter();
  v1 = [v0 isInspectable];

  return v1;
}

void sub_19D61EE84(unsigned __int8 *a1@<X8>)
{
  v2 = WebPage.backingWebView.getter();
  v3 = [v2 isInspectable];

  *a1 = v3;
}

void sub_19D61EED0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = WebPage.backingWebView.getter();
  [v2 setInspectable_];
}

void WebPage.isInspectable.setter(char a1)
{
  v2 = WebPage.backingWebView.getter();
  [v2 setInspectable_];
}

id (*WebPage.isInspectable.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = WebPage.backingWebView.getter();
  v4 = [v3 isInspectable];

  *(a1 + 8) = v4;
  return sub_19D61EFE4;
}

uint64_t sub_19D61F030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 144);
  return result;
}

void sub_19D61F078(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  v4 = WebPage.backingWebView.getter();
  v5 = v4;
  if (*(v3 + 144))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1024.0;
  }

  if (*(v3 + 144))
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 768.0;
  }

  [v4 setFrame_];
}

void WebPage.isBoundToWebView.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  v3 = WebPage.backingWebView.getter();
  v4 = v3;
  if (*(v1 + 144))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1024.0;
  }

  if (*(v1 + 144))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 768.0;
  }

  [v3 setFrame_];
}

void (*WebPage.isBoundToWebView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19D61F1D0;
}

void sub_19D61F1D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = WebPage.backingWebView.getter();
    v8 = v5;
    if (*(v4 + 144))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1024.0;
    }

    if (*(v4 + 144))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 768.0;
    }

    [v5 setFrame_];
  }
}

id sub_19D61F268@<X0>(void *a1@<X8>)
{
  result = WebPage.backingWebView.getter();
  *a1 = result;
  return result;
}

void sub_19D61F294(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
  v3 = v2;
}

void WebPage.backingWebView.setter(uint64_t a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
}

void (*WebPage.backingWebView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = WebPage.backingWebView.getter();
  return sub_19D61F330;
}

void sub_19D61F330(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
}

uint64_t WebPage.load(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_19E6CCF28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D6283C4(a1, v9, &qword_1EB017738);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19D60D358(v9, &qword_1EB017738);
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8790], v3);
    return sub_19E6CD658();
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x1EEE9AC00](v15);
    *(&v16 - 2) = v13;
    sub_19D61F7C0(sub_19D6275C4, (&v16 - 4), v17);
    return (*(v11 + 8))(v13, v10);
  }
}

{
  v3[2] = a1;
  return sub_19D61F7C0(sub_19D6275CC, v3, a2);
}

{
  v3[2] = a1;
  return sub_19D61F7C0(sub_19D62784C, v3, a2);
}

id sub_19D61F610(void *a1, uint64_t a2)
{
  v4 = sub_19E6CCF28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19E6CCD88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  sub_19E6CCD78();
  v12 = sub_19E6CCD58();
  (*(v9 + 8))(v11, v8);
  v13 = [a1 loadRequest_];

  return v13;
}

uint64_t sub_19D61F7C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a1;
  v29 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = WebPage.backingWebView.getter();
  v17 = v28();

  (*(v9 + 104))(v11, *MEMORY[0x1E69E8790], v8);
  if (!v17)
  {
    return sub_19E6CD658();
  }

  sub_19E6CD618();
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v17;
  sub_19E6CD628();
  (*(v13 + 16))(v7, v15, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_19D622EEC(v7, v20);
  swift_endAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8);
  v22 = *(v21 - 8);
  v23 = v26;
  (*(v22 + 16))(v26, v29, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  swift_beginAccess();
  sub_19D623194(v23, v20);
  swift_endAccess();

  return (*(v13 + 8))(v15, v12);
}

void WebPage.load(_:mimeType:characterEncoding:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString *a5)
{
  v6 = sub_19E6CD4F8();
  v7 = CFStringConvertNSStringEncodingToEncoding(v6);
  if (v7 == -1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = CFStringConvertEncodingToIANACharSetName(v7);
  if (v8)
  {
    a5 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = 0;
      sub_19E6CD4D8();

      goto LABEL_7;
    }

LABEL_6:
  }

LABEL_7:
  __break(1u);
}

uint64_t WebPage.load(html:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return sub_19D61F7C0(sub_19D6276D8, v5, a4);
}

uint64_t WebPage.load(simulatedRequest:response:responseData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  return sub_19D61F7C0(sub_19D627748, v6, a5);
}

uint64_t WebPage.load(simulatedRequest:responseHTML:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return sub_19D61F7C0(sub_19D6277D0, v5, a4);
}

uint64_t WebPage.reload(fromOrigin:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = WebPage.backingWebView.getter();
  v16 = v15;
  v17 = &selRef_reloadFromOrigin;
  if ((v27 & 1) == 0)
  {
    v17 = &selRef_reload;
  }

  v18 = [v15 *v17];

  (*(v8 + 104))(v10, *MEMORY[0x1E69E8790], v7);
  if (!v18)
  {
    return sub_19E6CD658();
  }

  sub_19E6CD618();
  (*(v8 + 8))(v10, v7);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = v18;
  sub_19E6CD628();
  (*(v12 + 16))(v6, v14, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_19D622EEC(v6, v21);
  swift_endAccess();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8);
  v23 = *(v22 - 8);
  v24 = v26;
  (*(v23 + 16))(v26, v28, v22);
  (*(v23 + 56))(v24, 0, 1, v22);
  swift_beginAccess();
  sub_19D623194(v24, v21);
  swift_endAccess();

  return (*(v12 + 8))(v14, v11);
}

Swift::Void __swiftcall WebPage.stopLoading()()
{
  v0 = WebPage.backingWebView.getter();
  [v0 stopLoading];
}

uint64_t WebPage.callJavaScript(_:arguments:in:contentWorld:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7[26] = a6;
  v7[27] = v6;
  v7[24] = a3;
  v7[25] = a4;
  v7[22] = a1;
  v7[23] = a2;
  v7[28] = *a5;
  sub_19E6CD5B8();
  v7[29] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D6203C8, v9, v8);
}

uint64_t sub_19D6203C8()
{
  v1 = v0[28];
  v2 = v0[26];
  v0[32] = WebPage.backingWebView.getter();
  v3 = v0[26];
  if (v2)
  {
    v4 = v1;
    v5 = v3;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = v1;
    v5 = [v6 pageWorld];
  }

  v0[33] = v5;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_19D6204DC;
  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[23];

  return WKWebView.callAsyncJavaScript(_:arguments:in:contentWorld:)((v0 + 2), v13, v11, v12, v10, v5);
}

uint64_t sub_19D6204DC()
{
  v2 = *v1;
  v2[35] = v0;

  v3 = v2[33];
  v4 = v2[32];
  v5 = v2[28];
  if (v0)
  {

    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_19D6207EC;
  }

  else
  {

    v6 = v2[30];
    v7 = v2[31];
    v8 = sub_19D620654;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_19D620654()
{

  sub_19D6283C4(v0 + 16, v0 + 80, &qword_1EB0175C0);
  if (*(v0 + 104))
  {
    v1 = *(v0 + 176);
    sub_19D60D3B8((v0 + 80), (v0 + 48));
    sub_19D60D3C8(v0 + 48, v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F0);
    swift_dynamicCast();
    v2 = *(v0 + 168);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 144), v2);
    v1[3] = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
    sub_19D60D358(v0 + 16, &qword_1EB0175C0);
    __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  }

  else
  {
    v5 = *(v0 + 176);
    sub_19D60D358(v0 + 16, &qword_1EB0175C0);
    sub_19D60D358(v0 + 80, &qword_1EB0175C0);
    *v5 = 0u;
    v5[1] = 0u;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19D6207EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WebPage.pauseAllMediaPlayback()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[22] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D620950, v4, v3);
}

uint64_t sub_19D620950()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = WebPage.backingWebView.getter();
  v0[25] = v4;
  v0[2] = v0;
  v0[3] = sub_19D620AF0;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_1;
  [v4 pauseAllMediaPlaybackWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D620AF0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19D620BF8, v2, v1);
}

uint64_t sub_19D620BF8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D620C68(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  return sub_19E6CD578();
}

uint64_t WebPage.mediaPlaybackState()()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017800);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[23] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D620DB0, v4, v3);
}

uint64_t sub_19D620DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = WebPage.backingWebView.getter();
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19D620F60;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  type metadata accessor for WKMediaPlaybackState(0);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D6210E8;
  v0[13] = &block_descriptor_90;
  [v4 requestMediaPlaybackStateWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D620F60()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D621068, v2, v1);
}

uint64_t sub_19D621068()
{
  v1 = v0[26];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_19D6210E8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017800);
  return sub_19E6CD578();
}

uint64_t WebPage.setAllMediaPlaybackSuspended(_:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 208) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  sub_19E6CD5B8();
  *(v2 + 176) = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  *(v2 + 184) = v5;
  *(v2 + 192) = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D621248, v5, v4);
}

uint64_t sub_19D621248()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 208);
  v5 = WebPage.backingWebView.getter();
  *(v0 + 200) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_19D6213F8;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_19D620C68;
  *(v0 + 104) = &block_descriptor_93;
  [v5 setAllMediaPlaybackSuspended:v4 completionHandler:v0 + 80];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_19D6213F8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_19D628454, v2, v1);
}

uint64_t WebPage.closeAllMediaPresentations()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_19E6CD5B8();
  v1[22] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D621600, v4, v3);
}

uint64_t sub_19D621600()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = WebPage.backingWebView.getter();
  v0[25] = v4;
  v0[2] = v0;
  v0[3] = sub_19D6213F8;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_96;
  [v4 closeAllMediaPresentationsWithCompletionHandler_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t WebPage.setCameraCaptureState(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v2[23] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D6218A0, v5, v4);
}

uint64_t sub_19D6218A0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = WebPage.backingWebView.getter();
  v0[26] = v5;
  v0[2] = v0;
  v0[3] = sub_19D621A50;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_99;
  [v5 setCameraCaptureState:v4 completionHandler:v0 + 10];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D621A50()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D621B58, v2, v1);
}

uint64_t sub_19D621B58()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WebPage.setMicrophoneCaptureState(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177F8);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_19E6CD5B8();
  v2[23] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D621CC8, v5, v4);
}

uint64_t sub_19D621CC8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v5 = WebPage.backingWebView.getter();
  v0[26] = v5;
  v0[2] = v0;
  v0[3] = sub_19D621E78;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_19E6CD558();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D620C68;
  v0[13] = &block_descriptor_102;
  [v5 setMicrophoneCaptureState:v4 completionHandler:v0 + 10];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D621E78()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D628458, v2, v1);
}

uint64_t sub_19D621F80(uint64_t *a1, void *a2)
{
  v3 = v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017808);
  v6 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017810);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v71 - v23;
  v81 = *a1;
  v25 = *(a1 + 8);
  v79 = v8;
  v83 = v9;
  v74 = v6;
  v78 = v25;
  if (a2)
  {
    swift_beginAccess();
    v26 = *(v3 + 20);
    v27 = *(v26 + 16);
    v76 = a2;
    v73 = v16;
    if (v27 && (v28 = sub_19D6246C8(a2), (v29 & 1) != 0))
    {
      (*(v9 + 16))(v21, *(v26 + 56) + *(v9 + 72) * v28, v8);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(v9 + 56);
    v31(v21, v30, 1, v8);
    v72 = *(v9 + 48);
    if (v72(v21, 1, v8))
    {
      v32 = v76;
      sub_19D60D358(v21, &qword_1EB0177D8);
      swift_endAccess();
      v33 = 1;
    }

    else
    {
      v47 = *(v9 + 16);
      v71 = v31;
      v48 = v73;
      v47(v73, v21, v8);
      v49 = v76;
      sub_19D60D358(v21, &qword_1EB0177D8);
      swift_endAccess();
      v88 = v81;
      v89 = v25;
      sub_19E6CD638();
      v50 = v48;
      v31 = v71;
      (*(v9 + 8))(v50, v8);
      v33 = 0;
    }

    (*(v6 + 56))(v24, v33, 1, v82);
    sub_19D60D358(v24, &qword_1EB017810);
    if ((v25 & 1) == 0 && v81 == 3)
    {
      v51 = v31;
      swift_beginAccess();
      v52 = *(v3 + 20);
      if (*(v52 + 16))
      {
        v53 = sub_19D6246C8(v76);
        v54 = v75;
        if (v55)
        {
          (*(v9 + 16))(v75, *(v52 + 56) + *(v9 + 72) * v53, v8);
          v56 = 0;
        }

        else
        {
          v56 = 1;
        }
      }

      else
      {
        v56 = 1;
        v54 = v75;
      }

      v51(v54, v56, 1, v8);
      if (!v72(v54, 1, v8))
      {
        v70 = v73;
        (*(v9 + 16))(v73, v54, v8);
        sub_19D60D358(v54, &qword_1EB0177D8);
        swift_endAccess();
        v88 = 0;
        sub_19E6CD648();

        (*(v9 + 8))(v70, v8);
        goto LABEL_30;
      }

      sub_19D60D358(v54, &qword_1EB0177D8);
      swift_endAccess();
    }

LABEL_30:
    swift_beginAccess();
    v57 = *(v3 + 22);
    v58 = 1 << *(v57 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v57 + 64);
    v61 = (v58 + 63) >> 6;
    v75 = (v83 + 8);
    v76 = (v83 + 16);
    v62 = (v74 + 8);

    v63 = 0;
    v64 = v83;
    for (i = v79; v60; result = (*v62)(v69, v82))
    {
      v66 = v63;
LABEL_38:
      v67 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v68 = v77;
      (*(v64 + 16))(v77, *(v57 + 56) + *(v64 + 72) * (v67 | (v66 << 6)), i);
      v69 = v80;
      v84 = v81;
      v85 = v78;
      sub_19E6CD638();
      (*(v64 + 8))(v68, i);
    }

    while (1)
    {
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v66 >= v61)
      {
      }

      v60 = *(v57 + 64 + 8 * v66);
      ++v63;
      if (v60)
      {
        v63 = v66;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  swift_beginAccess();
  v73 = v3;
  v34 = *(v3 + 20);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v75 = (v9 + 8);
  v76 = (v9 + 16);
  v39 = (v6 + 8);

  v41 = 0;
  for (j = v83; v37; result = (*v39)(v46, v82))
  {
    v43 = v41;
LABEL_16:
    v44 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v45 = v79;
    (*(j + 16))(v14, *(v34 + 56) + *(j + 72) * (v44 | (v43 << 6)), v79);
    v46 = v80;
    v86 = v81;
    v87 = v78;
    sub_19E6CD638();
    (*(j + 8))(v14, v45);
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v38)
    {

      v3 = v73;
      goto LABEL_30;
    }

    v37 = *(v34 + 64 + 8 * v43);
    ++v41;
    if (v37)
    {
      v41 = v43;
      goto LABEL_16;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_19D622788(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_19E6CD7E8();

    if (v3)
    {
      sub_19E6CCE28();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_19D6245B4(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_19D622840(uint64_t a1, uint64_t a2)
{
  v3 = sub_19E6CCF78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_19E6CD5D8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    sub_19E6CD5B8();

    v13 = sub_19E6CD5A8();
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 2) = v13;
    *(v15 + 3) = v16;
    *(v15 + 4) = v11;
    (*(v4 + 32))(&v15[v14], v6, v3);
    sub_19D62343C(0, 0, v9, &unk_19E7021F0, v15);
  }

  return result;
}

uint64_t sub_19D622A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  v5[7] = swift_task_alloc();
  v6 = sub_19E6CCF78();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_19E6CD5B8();
  v5[11] = sub_19E6CD5A8();
  v8 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D622B98, v8, v7);
}

uint64_t sub_19D622B98()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  (*(v3 + 16))(v1, v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  swift_beginAccess();
  sub_19D622CB8(v4, v1);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_19D622CB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D8);
    sub_19D624A20(a2, v7);
    v12 = sub_19E6CCF78();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_19D60D358(v7, &qword_1EB0177D8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_19D625DCC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_19E6CCF78();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_19D622EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D8);
    v13 = sub_19D6246C8(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19D626960(&qword_1EB0177E0, &unk_19E701DC8, &qword_1EB017860);
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_19D625C10(v15, v17, &qword_1EB0177E0);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_19D60D358(v8, &qword_1EB0177D8);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_19D626144(v12, a2, v18, &qword_1EB0177E0, &unk_19E701DC8, &qword_1EB017860);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_19D623194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_19D60D358(a1, &qword_1EB0177D0);
    v13 = sub_19D6246C8(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19D626960(&qword_1EB0177E8, &unk_19E701DD0, &qword_1EB017858);
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_19D625C10(v15, v17, &qword_1EB0177E8);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_19D60D358(v8, &qword_1EB0177D0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_19D626144(v12, a2, v18, &qword_1EB0177E8, &unk_19E701DD0, &qword_1EB017858);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_19D62343C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19D6283C4(a3, v25 - v10, &unk_1EB017A40);
  v12 = sub_19E6CD5D8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19D60D358(v11, &unk_1EB017A40);
  }

  else
  {
    sub_19E6CD5C8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19E6CD548();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19E6CD508() + 32;
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

      sub_19D60D358(a3, &unk_1EB017A40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19D60D358(a3, &unk_1EB017A40);
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

uint64_t sub_19D623748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_19D627E7C();
  swift_allocError();
  *v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  sub_19E6CD648();
}

uint64_t sub_19D623834(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_19E6CD5D8();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    (*(v6 + 16))(v9, a1, v5);
    sub_19E6CD5B8();

    v21 = a3;
    v16 = sub_19E6CD5A8();
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    (*(v6 + 32))(v19 + v17, v9, v5);
    *(v19 + v18) = v14;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
    sub_19D62343C(0, 0, v12, &unk_19E702180, v19);
  }

  return result;
}

uint64_t sub_19D623AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D0);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177D8);
  v6[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_19E6CD5B8();
  v6[16] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D623C14, v9, v8);
}

uint64_t sub_19D623C14()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[8];

  (*(v3 + 16))(v1, v4, v2);
  LODWORD(v4) = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x1E69E8760];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = WebPage.backingWebView.getter();
    [v6 stopLoading];
  }

  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  swift_beginAccess();
  sub_19D622EEC(v8, v9);
  swift_endAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  swift_beginAccess();
  sub_19D623194(v7, v9);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_19D623E28(uint64_t *a1, void *a2)
{
  v17 = *a1;
  v18 = a2;
  v16 = *a2;
  v3 = sub_19E6CCFD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  isIntegralOrPointerType = WTF::isIntegralOrPointerType(v7);
  v9 = WebPage.backingWebView.getter();
  v19 = v9;
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar, v3);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = *MEMORY[0x1E69E77B0];
  *(v12 + 16) = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  *(v12 + 24) = *(v16 + v13 + 8);
  (*(v4 + 32))(v12 + v10, v6, v3);
  *(v12 + v11) = v2;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = isIntegralOrPointerType;

  v14 = sub_19E6CCEE8();

  return v14;
}

uint64_t WebPage.deinit()
{
  v1 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v1;
  v7[0] = *(v0 + 80);
  *(v7 + 10) = *(v0 + 90);
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v2;
  sub_19D6278D8(v6);

  sub_19D624190(*(v0 + 136));

  v3 = OBJC_IVAR____TtC6WebKit7WebPage___observationRegistrar;
  v4 = sub_19E6CCFD8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WebPage.__deallocating_deinit()
{
  WebPage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_19D624190(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_19E6CD7C8() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v8 = 0;
  v9 = (v2 + 64) >> 6;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v8;
    v11 = v3;
    v12 = v8;
    if (!v3)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v15 = *(*(v4 + 48) + v14);
    v16 = *(*(v4 + 56) + v14);

    v17 = v16;
    if (!v15)
    {
LABEL_18:
      sub_19D627BE8();

      return;
    }

    while (1)
    {

      sub_19E6CCE18();

      v8 = v12;
      v3 = v13;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_19E6CD7F8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
        swift_dynamicCast();
        sub_19E6CCE28();
        swift_dynamicCast();
        v17 = v18;
        v12 = v8;
        v13 = v3;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v1 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall WebPage.terminateWebContentProcess()()
{
  v0 = WebPage.backingWebView.getter();
  [v0 _killWebContentProcess];
}

uint64_t sub_19D6243C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19D6244BC;

  return v6(a1);
}

uint64_t sub_19D6244BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_19D6245B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
  v2 = sub_19E6CD498();
  return sub_19D62470C(a1, v2);
}

unint64_t sub_19D624630(uint64_t a1)
{
  sub_19E6CCF78();
  sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8]);
  v2 = sub_19E6CD498();

  return sub_19D6247F4(a1, v2);
}

unint64_t sub_19D6246C8(uint64_t a1)
{
  v2 = sub_19E6CD908();

  return sub_19D6249B4(a1, v2);
}

unint64_t sub_19D62470C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
      if (sub_19E6CD4B8())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19D6247F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_19E6CCF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_19D6282A4(&qword_1EB0178C8, MEMORY[0x1E69695A8]);
      v15 = sub_19E6CD4B8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_19D6249B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_19D624A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_19D624630(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19D6264A4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_19E6CCF78();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_19D6258C0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_19D624BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0);
    v2 = sub_19E6CD848();
    v17 = v2;
    sub_19E6CD7C8();
    for (i = sub_19E6CD7F8(); i; i = sub_19E6CD7F8())
    {
      v15 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
      swift_dynamicCast();
      sub_19E6CCE28();
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_19D6252C8(v10 + 1, 1);
      }

      v2 = v17;
      result = sub_19E6CD498();
      v5 = v17 + 64;
      v6 = -1 << *(v17 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v17 + 48) + 8 * v9) = v16;
      *(*(v17 + 56) + 8 * v9) = v15;
      ++*(v17 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_19D624E18(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - v6;
  v7 = sub_19E6CCF78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178C0);
  v47 = a2;
  result = sub_19E6CD838();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8]);
      result = sub_19E6CD498();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_19D6252C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0);
  v32 = a2;
  result = sub_19E6CD838();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {

        v22 = v21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
      result = sub_19E6CD498();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19D625574(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v10;
  v11 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v41 = a2;
  result = sub_19E6CD838();
  v13 = result;
  if (*(v11 + 16))
  {
    v38 = v7;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v9 + 16);
    v40 = v9;
    v20 = (v9 + 32);
    v21 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(v9 + 72);
      v29 = *(v11 + 56) + v28 * v26;
      if (v41)
      {
        (*v20)(v42, v29, v43);
      }

      else
      {
        (*v39)(v42, v29, v43);
      }

      result = sub_19E6CD908();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + 8 * v22) = v27;
      result = (*v20)(*(v13 + 56) + v28 * v22, v42, v43);
      ++*(v13 + 16);
      v9 = v40;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v11 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero((v11 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v7 = v13;
  return result;
}

unint64_t sub_19D6258C0(int64_t a1, uint64_t a2)
{
  v4 = sub_19E6CCF78();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_19E6CD6F8();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_19D6282A4(&qword_1EB017610, MEMORY[0x1E69695A8]);
      v22 = sub_19E6CD498();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19D625C10(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_19E6CD6F8() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_19E6CD908();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19D625DCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19E6CCF78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19D624630(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19D6264A4();
      goto LABEL_7;
    }

    sub_19D624E18(v17, a3 & 1);
    v28 = sub_19D624630(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_19D6262F4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_19E6CD898();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_19D625FDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_19D6245B4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_19D6252C8(v14, a3 & 1);
      v9 = sub_19D6245B4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017850);
        sub_19E6CD898();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_19D626800();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

uint64_t sub_19D626144(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_19D6246C8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_19D626960(a4, a5, a6);
      goto LABEL_7;
    }

    sub_19D625574(v19, a3 & 1, a4, a5, a6);
    v30 = sub_19D6246C8(a2);
    if ((v20 & 1) == (v31 & 1))
    {
      v16 = v30;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

      return sub_19D6263F4(v16, a2, a1, v22, a4);
    }

LABEL_15:
    result = sub_19E6CD898();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    return sub_19D6263F4(v16, a2, a1, v22, a4);
  }

LABEL_8:
  v23 = v22[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

uint64_t sub_19D6262F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19E6CCF78();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_19D6263F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_19D6264A4()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v2;
  v39 = sub_19E6CCF78();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178C0);
  v4 = *v0;
  v5 = sub_19E6CD828();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}