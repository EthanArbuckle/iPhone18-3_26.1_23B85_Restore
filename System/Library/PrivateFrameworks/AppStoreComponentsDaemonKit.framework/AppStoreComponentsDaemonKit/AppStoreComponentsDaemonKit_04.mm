id sub_2226AC790(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_22273793C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = [v14 iapItemID];
    v16 = sub_2226DC824(v15, a3);

    if ([v14 streamlinedOffer])
    {
      ObjectType = swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v56 = a1;
        v57 = v8;
        v19 = *(v18 + 8);
        v20 = v18;
        swift_unknownObjectRetain();
        v21 = v19(ObjectType, v20);
        a1 = v56;
        v22 = v57;
        v23 = v21;
        swift_unknownObjectRelease_n();
        if (v23)
        {

          if ((v16 & 1) == 0)
          {
            (*(v9 + 16))(v12, a1, v22);
            v24 = (*(v9 + 88))(v12, v22);
            if (v24 == *MEMORY[0x277CEC098])
            {
              (*(v9 + 8))(v12, v22);
LABEL_8:
              v25 = [a2 titles];
              type metadata accessor for ASCOfferTitleVariant(0);
              sub_2226AB470();
              v26 = sub_22273910C();

              if (*(v26 + 16) && (v27 = sub_222694708(@"discountUnownedParent"), (v28 & 1) != 0))
              {
                v29 = (*(v26 + 56) + 16 * v27);
                v31 = *v29;
                v30 = v29[1];
              }

              else
              {

                v41 = a4[4];
                __swift_project_boxed_opaque_existential_1(a4, a4[3]);
                sub_2227390BC();
              }

              v42 = [a2 subtitles];
              v43 = sub_22273910C();

              if (*(v43 + 16) && (v44 = sub_222694708(@"standard"), (v45 & 1) != 0))
              {
                v46 = (*(v43 + 56) + 16 * v44);
                v48 = *v46;
                v47 = v46[1];
              }

              else
              {
                v47 = 0;
              }

              v49 = sub_22273916C();

              if (v47)
              {
                v50 = sub_22273916C();
              }

              else
              {
                v50 = 0;
              }

              v51 = [objc_opt_self() textMetadataWithTitle:v49 subtitle:v50];
              swift_unknownObjectRelease();

              return v51;
            }

            if (v24 == *MEMORY[0x277CEC0C0])
            {
              (*(v9 + 96))(v12, v22);
              v34 = [a2 titles];
              type metadata accessor for ASCOfferTitleVariant(0);
              sub_2226AB470();
              v35 = sub_22273910C();

              if (*(v35 + 16) && (v36 = sub_222694708(@"discountOwnedParent"), (v37 & 1) != 0))
              {
                v38 = (*(v35 + 56) + 16 * v36);
                v40 = *v38;
                v39 = v38[1];
              }

              else
              {

                v52 = a4[4];
                __swift_project_boxed_opaque_existential_1(a4, a4[3]);
                sub_2227390BC();
              }

              v53 = objc_opt_self();
              v54 = sub_22273916C();

              v33 = [v53 textMetadataWithTitle:v54 subtitle:0];

              swift_unknownObjectRelease();
              v55 = sub_22273786C();
              (*(*(v55 - 8) + 8))(v12, v55);
            }

            else
            {
              if (v24 == *MEMORY[0x277CEC0A8] || v24 == *MEMORY[0x277CEC0B0])
              {
                goto LABEL_8;
              }

              v33 = sub_2226ABBE0(a1, a2, @"standard", a4);
              swift_unknownObjectRelease();
              (*(v9 + 8))(v12, v22);
            }

            return v33;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v33 = sub_2226ABBE0(a1, a2, @"standard", a4);
    swift_unknownObjectRelease();
    return v33;
  }

  return sub_2226ABBE0(a1, a2, @"standard", a4);
}

id sub_2226ACE1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v84 = a4;
  v7 = sub_2227376AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v81 - v13;
  v15 = sub_2227376CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a3, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277CEBF80])
  {
    (*(v16 + 96))(v19, v15);
    (*(v8 + 32))(v14, v19, v7);
    v21 = v14;
    v22 = v8;
    if (([a2 flags] & 8) == 0)
    {
      (*(v8 + 104))(v12, *MEMORY[0x277CEBF68], v7);
      v23 = sub_22273769C();
      v82 = *(v8 + 8);
      v83 = v8 + 8;
      v82(v12, v7);
      v24 = [a2 titles];
      type metadata accessor for ASCOfferTitleVariant(0);
      sub_2226AB470();
      v25 = sub_22273910C();

      v26 = *(v25 + 16);
      if (v23)
      {
        if (v26 && (v27 = sub_222694708(@"trial"), (v28 & 1) != 0))
        {
          v29 = (*(v25 + 56) + 16 * v27);
          v30 = *v29;
          v31 = v29[1];

          v21 = v14;
        }

        else
        {

          v62 = v84[4];
          __swift_project_boxed_opaque_existential_1(v84, v84[3]);
          sub_2227390BC();
        }

        v63 = sub_22273916C();

        v64 = [a2 subtitles];
        v65 = sub_22273910C();

        if (*(v65 + 16))
        {
          v66 = sub_222694708(@"trial");
          v67 = v7;
          if (v68)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (v26 && (v50 = sub_222694708(@"notSubscribed"), (v51 & 1) != 0))
        {
          v52 = (*(v25 + 56) + 16 * v50);
          v53 = *v52;
          v54 = v52[1];

          v21 = v14;
        }

        else
        {

          v69 = v84[4];
          __swift_project_boxed_opaque_existential_1(v84, v84[3]);
          sub_2227390BC();
        }

        v63 = sub_22273916C();

        v70 = [a2 subtitles];
        v65 = sub_22273910C();

        if (*(v65 + 16))
        {
          v66 = sub_222694708(@"notSubscribed");
          v67 = v7;
          if (v71)
          {
LABEL_34:
            v72 = (*(v65 + 56) + 16 * v66);
            v73 = *v72;
            v74 = v72[1];

            v75 = sub_22273916C();

LABEL_39:
            v80 = [objc_opt_self() textMetadataWithTitle:v63 subtitle:v75];

            v82(v21, v67);
            return v80;
          }

LABEL_38:

          v75 = 0;
          goto LABEL_39;
        }
      }

      v75 = 0;
      v67 = v7;
      goto LABEL_39;
    }

    v36 = [a2 titles];
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226AB470();
    v37 = sub_22273910C();

    if (*(v37 + 16) && (v38 = sub_222694708(@"preorderNotSubscribed"), (v39 & 1) != 0))
    {
      v40 = (*(v37 + 56) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
    }

    else
    {

      v47 = v84[4];
      __swift_project_boxed_opaque_existential_1(v84, v84[3]);
      sub_2227390BC();
    }

    v48 = objc_opt_self();
    v49 = sub_22273916C();

    v46 = [v48 textMetadataWithTitle:v49 subtitle:0];

    (*(v22 + 8))(v14, v7);
    return v46;
  }

  if (v20 == *MEMORY[0x277CEBF70])
  {
    (*(v16 + 8))(v19, v15);
    v32 = objc_opt_self();
    v33 = sub_22273916C();
    v34 = [v32 textMetadataWithTitle:v33 subtitle:0];

    return v34;
  }

  if (v20 == *MEMORY[0x277CEBF78])
  {
    (*(v16 + 8))(v19, v15);
    v43 = [a2 flags];
    v44 = ASCOfferTitleVariantStandard;
    if ((v43 & 8) != 0)
    {
      v44 = ASCOfferTitleVariantPreorderSubscribed;
    }

    v45 = *v44;
    v46 = sub_2226ABBE0(a1, a2, v45, v84);

    return v46;
  }

  if (v20 != *MEMORY[0x277CEBF88])
  {
    (*(v16 + 8))(v19, v15);
  }

  v55 = [a2 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226AB470();
  v56 = sub_22273910C();

  if (*(v56 + 16) && (v57 = sub_222694708(@"notSubscribed"), (v58 & 1) != 0))
  {
    v59 = (*(v56 + 56) + 16 * v57);
    v61 = *v59;
    v60 = v59[1];
  }

  else
  {

    v76 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    sub_2227390BC();
  }

  v77 = objc_opt_self();
  v78 = sub_22273916C();

  v79 = [v77 textMetadataWithTitle:v78 subtitle:0];

  return v79;
}

uint64_t sub_2226AD794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD0, &qword_222743118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t ASCOffer.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2227382CC();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227386BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v13 = sub_22273937C();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_2227386AC();
    return sub_2227383AC();
  }

  v14 = sub_22273984C();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = MEMORY[0x277D84F90];
  result = sub_2226AE744(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v33 = a1;
    v16 = 0;
    v17 = v43;
    v34 = v40 + 32;
    v35 = v13 & 0xC000000000000001;
    v37 = v13;
    v38 = v7;
    v36 = v14;
    do
    {
      if (v35)
      {
        v18 = MEMORY[0x223DBEC70](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v19 topic];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22273919C();
        v41 = v23;
        v42 = v22;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      [v19 shouldFlush];
      v24 = [v19 fields];
      sub_22273910C();

      v25 = [v19 includingFields];
      v26 = sub_2227394CC();

      sub_2226ADE58(v26, sub_2226E92DC, 0);
      v27 = [v19 includingFields];
      v28 = sub_2227394CC();

      sub_2226AE0E4(v28, sub_2226E932C, 0);
      v29 = v38;
      sub_22273829C();

      v43 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2226AE744(v30 > 1, v31 + 1, 1);
        v17 = v43;
      }

      ++v16;
      *(v17 + 16) = v31 + 1;
      (*(v40 + 32))(v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v29, v39);
      v13 = v37;
    }

    while (v36 != v16);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226ADBF8(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_2226AF5F8(&qword_27D0134D0, MEMORY[0x277CEC160]);
  result = MEMORY[0x223DBE820](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_22268D61C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2226ADE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222738ABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014700, &unk_2227459B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v29 - v16;
  v18 = *(a1 + 16);
  v19 = sub_2226AF5F8(&qword_27D013668, MEMORY[0x277D22320]);
  v20 = MEMORY[0x223DBE820](v18, v6, v19);
  v29[8] = a3;
  v30 = v20;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 56);
  v24 = -v21;
  v29[2] = a1;
  v29[3] = a1 + 56;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v29[4] = v22;
  v29[5] = 0;
  v29[6] = v25 & v23;
  v29[7] = a2;
  sub_222729B68(v17);
  v26 = *(v7 + 48);
  if (v26(v17, 1, v6) != 1)
  {
    v29[1] = a3;
    v27 = *(v7 + 32);
    do
    {
      v27(v11, v17, v6);
      sub_22268E030(v13, v11);
      (*(v7 + 8))(v13, v6);
      sub_222729B68(v17);
    }

    while (v26(v17, 1, v6) != 1);
    v20 = v30;
  }

  sub_2226342B0();

  return v20;
}

uint64_t sub_2226AE0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222738A8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B08, &qword_222743140);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v29 - v16;
  v18 = *(a1 + 16);
  v19 = sub_2226AF5F8(&qword_27D013650, MEMORY[0x277D22300]);
  v20 = MEMORY[0x223DBE820](v18, v6, v19);
  v29[8] = a3;
  v30 = v20;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 56);
  v24 = -v21;
  v29[2] = a1;
  v29[3] = a1 + 56;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v29[4] = v22;
  v29[5] = 0;
  v29[6] = v25 & v23;
  v29[7] = a2;
  sub_222729B50(v17);
  v26 = *(v7 + 48);
  if (v26(v17, 1, v6) != 1)
  {
    v29[1] = a3;
    v27 = *(v7 + 32);
    do
    {
      v27(v11, v17, v6);
      sub_22268DD50(v13, v11);
      (*(v7 + 8))(v13, v6);
      sub_222729B50(v17);
    }

    while (v26(v17, 1, v6) != 1);
    v20 = v30;
  }

  sub_2226342B0();

  return v20;
}

uint64_t sub_2226AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = MEMORY[0x223DBE820](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v22 = v8;
  v9 = -1 << *(a1 + 32);
  v10 = ~v9;
  v11 = *(a1 + 56);
  v12 = -v9;
  v21[2] = a1;
  v21[3] = a1 + 56;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v21[4] = v10;
  v21[5] = 0;
  v21[6] = v13 & v11;
  v21[7] = a2;
  v21[8] = a3;
  v14 = a4();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      sub_22268DC00(v21, v16, v17);

      v16 = (a4)(v18);
      v17 = v19;
    }

    while (v19);
    v8 = v22;
  }

  sub_2226342B0();

  return v8;
}

uint64_t sub_2226AE4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_22273984C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x223DBE820](v6, MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v19 = v7;
  sub_2226AF170(a1, a2, a3, v20);
  v15 = v20[0];
  v16 = v20[1];
  v17 = v20[2];
  v18 = v21;
  sub_22272A158();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    do
    {
      sub_22268E4BC(&v14, v10);
      sub_22272A158();
      v10 = v11;
    }

    while ((v12 & 1) == 0);
    v7 = v19;
  }

  sub_2226342B0();

  return v7;
}

uint64_t sub_2226AE5A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v6 = sub_22273793C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6);
  v12 = (*(v7 + 88))(v10, v6);
  v13 = *MEMORY[0x277CEC098];
  (*(v7 + 8))(v10, v6);
  if (v12 == v13 && (([v3 flags] & 0x200) != 0 || objc_msgSend(v16, sel_supportsDSIDLessInstall)))
  {
    return (*(v7 + 104))(a3, *MEMORY[0x277CEC0A8], v6);
  }

  else
  {
    return (v11)(a3, a1, v6);
  }
}

size_t sub_2226AE744(size_t a1, int64_t a2, char a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &qword_27D013B10, &qword_222743148, MEMORY[0x277D21BB8]);
  *v3 = result;
  return result;
}

char *sub_2226AE788(char *a1, int64_t a2, char a3)
{
  result = sub_2226AE8D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2226AE7A8(size_t a1, int64_t a2, char a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &qword_27D012FD8, &qword_222741568, MEMORY[0x277CEC000]);
  *v3 = result;
  return result;
}

char *sub_2226AE7EC(char *a1, int64_t a2, char a3)
{
  result = sub_2226AE9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE80C(char *a1, int64_t a2, char a3)
{
  result = sub_2226AEB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE82C(char *a1, int64_t a2, char a3)
{
  result = sub_2226AEC0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2226AE84C(void *a1, int64_t a2, char a3)
{
  result = sub_2226AED2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2226AE86C(char *a1, int64_t a2, char a3)
{
  result = sub_2226AEE74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2226AE88C(size_t a1, int64_t a2, char a3)
{
  result = sub_2226AEF94(a1, a2, a3, *v3, &unk_27D0130B0, &unk_2227414D0, MEMORY[0x277D21B28]);
  *v3 = result;
  return result;
}

char *sub_2226AE8D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2226AE9E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B00, &qword_222743138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AEB00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2226AEC0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AD8, &qword_222743128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2226AED2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF8, &qword_222743130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2226AEE74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B18, &qword_222743150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2226AEF94(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2226AF170@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_22273980C();
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226AF270(&qword_27D013AE8, &qword_281312B80, 0x277CCABB0);
    sub_2227394FC();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_2226AF270(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22262E364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2226AF2C0(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2226AF5F8(&qword_27D0134D0, MEMORY[0x277CEC160]);
  result = MEMORY[0x223DBE820](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22268D61C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2226AF45C(uint64_t a1)
{
  v2 = sub_2227377BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2226AF5F8(&unk_281312FF8, MEMORY[0x277CEC000]);
  result = MEMORY[0x223DBE820](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_22268D8FC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2226AF5F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226AF640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DBE820](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22268DC00(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2226AF6D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ASCMetricsInvocationPoint(0);
  v4 = v3;
  v5 = sub_2226AF5F8(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint);
  result = MEMORY[0x223DBE820](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_22268E310(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2226AF794(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22273984C())
  {
    v4 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    v5 = sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
    result = MEMORY[0x223DBE820](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DBEC70](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22268E59C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22273984C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2226AF8EC(uint64_t a1)
{
  v10[1] = MEMORY[0x277D84FA0];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_22268DBDC(v10, [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_]);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2226AFA08(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      v8 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22273919C();
      v4 = inited + 32;
      v5 = 0x8000000222749C30;
      *(inited + 72) = MEMORY[0x277D837D0];
      v6 = 0xD000000000000018;
      goto LABEL_7;
    case 2:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      v7 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22273919C();
      v4 = inited + 32;
      v5 = 0x8000000222749C50;
      *(inited + 72) = MEMORY[0x277D837D0];
      v6 = 0xD000000000000011;
      goto LABEL_7;
    case 1:
      type metadata accessor for ASCOpenAppError(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      v2 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22273919C();
      v4 = inited + 32;
      v5 = 0x8000000222749C70;
      *(inited + 72) = MEMORY[0x277D837D0];
      v6 = 0xD000000000000013;
LABEL_7:
      *(inited + 40) = v3;
      *(inited + 48) = v6;
      *(inited + 56) = v5;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_2226AFC24(v4);
      sub_2226AFC8C();
      sub_22273725C();
      return v10;
  }

  return 0;
}

uint64_t sub_2226AFC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226AFC8C()
{
  result = qword_27D012E38;
  if (!qword_27D012E38)
  {
    type metadata accessor for ASCOpenAppError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012E38);
  }

  return result;
}

id sub_2226AFCE4(void *a1, void *a2, char *a3, int a4)
{
  v75 = a4;
  v80 = a3;
  v81 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v69 - v9;
  v10 = sub_22273793C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v76 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v69 - v15;
  v16 = sub_2227381BC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v85 = sub_222738F6C();
  v83 = __swift_project_value_buffer(v85, qword_27D019C68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v19 = *(sub_2227381FC() - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  v84 = (v21 + 32) & ~v21;
  v72 = v21;
  v73 = v20;
  v74 = v18;
  v22 = swift_allocObject();
  v71 = xmmword_2227412F0;
  *(v22 + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v82 = a1;
  v23 = [a1 id];
  v70 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v89 = v70;
  v88[0] = v23;
  sub_22273816C();
  sub_222660468(v88, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v89 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  v25 = v11;
  v26 = *(v11 + 16);
  v27 = v80;
  v26(boxed_opaque_existential_1, v80, v10);
  sub_22273815C();
  sub_222660468(v88, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v89 = sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
  v88[0] = v81;
  v81 = v81;
  sub_22273815C();
  sub_222660468(v88, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v28 = v87;
  v29 = v27;
  v26(v87, v27, v10);
  v30 = (*(v25 + 88))(v28, v10);
  v31 = *MEMORY[0x277CEC0D0];
  v86 = v10;
  if (v30 != v31)
  {
    v34 = v25;
    if (v30 == *MEMORY[0x277CEC0D8])
    {
      v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v42 setIsUpdate_];
      v40 = v25;
      v41 = *(v25 + 8);
      v41(v28, v10);
      v38 = v82;
      goto LABEL_12;
    }

    v38 = v82;
    if (v30 != *MEMORY[0x277CEC098])
    {
      if (v30 == *MEMORY[0x277CEC0A8] || v30 == *MEMORY[0x277CEC0B0])
      {
        v40 = v25;
        v41 = *(v25 + 8);
        v41(v87, v86);
        v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_12;
      }

      goto LABEL_6;
    }

LABEL_11:
    v40 = v34;
    v41 = *(v34 + 8);
    v41(v87, v86);
    v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v42 setIsRedownload_];
    goto LABEL_12;
  }

  v32 = v76;
  v26(v76, v28, v10);
  v33 = v32;
  v34 = v25;
  (*(v25 + 96))(v32, v10);
  v35 = sub_22273783C();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 88))(v33, v35);
  v38 = v82;
  if (v37 == *MEMORY[0x277CEC038])
  {
    goto LABEL_11;
  }

  (*(v36 + 8))(v33, v35);
LABEL_6:
  if ((v75 & 1) == 0)
  {
    *(swift_allocObject() + 16) = v71;
    sub_2227381AC();
    sub_22273819C();
    v65 = [v38 id];
    v89 = v70;
    v88[0] = v65;
    sub_22273816C();
    sub_222660468(v88, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    v66 = *(v34 + 8);
    v67 = v86;
    v66(v27, v86);
    v66(v87, v67);
    return 0;
  }

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40 = v34;
  v41 = *(v34 + 8);
  v42 = v39;
  v41(v87, v86);
LABEL_12:
  sub_2226EC744();
  v43 = sub_22273916C();

  [v42 setBuyParameters_];

  v44 = [v38 additionalHeaders];
  if (v44)
  {
    v45 = v44;
    v46 = sub_22273910C();

    sub_2226B09DC(v46);

    v47 = sub_2227390FC();
  }

  else
  {
    v47 = 0;
  }

  v48 = v78;
  [v42 setAdditionalHeaders_];

  v49 = [v38 preflightPackageURL];
  v77 = v40;
  if (v49)
  {
    v50 = v49;
    sub_2227372FC();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = sub_22273731C();
  v53 = *(v52 - 8);
  (*(v53 + 56))(v48, v51, 1, v52);
  v54 = v79;
  sub_2226B0F6C(v48, v79);
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
    sub_222660468(v54, &qword_27D013DC0, qword_222743950);
    v55 = 0;
  }

  else
  {
    sub_22273729C();
    (*(v53 + 8))(v54, v52);
    v55 = sub_22273916C();
  }

  [v42 setPreflightURLString_];

  v56 = [v38 bundleID];
  if (!v56)
  {
    sub_22273919C();
    v56 = sub_22273916C();
  }

  [v42 setBundleID_];

  v57 = [v38 id];
  v58 = [v57 numberValue];

  [v42 setItemID_];
  v59 = [v38 itemName];
  if (!v59)
  {
    sub_22273919C();
    v59 = sub_22273916C();
  }

  [v42 setItemName_];

  v60 = [v38 vendorName];
  if (!v60)
  {
    sub_22273919C();
    v60 = sub_22273916C();
  }

  [v42 setVendorName_];

  [v42 setCreatesJobs_];
  v61 = sub_22273916C();
  [v42 setClientID_];

  if ([v38 flags])
  {
    [v42 setExtensionsToEnable_];
  }

  if (([v38 flags] & 0x20) != 0)
  {
    [v42 setForceWatchInstall_];
  }

  v62 = [v38 capabilities];
  [v42 setAppCapabilities_];

  v63 = [v38 flags];
  v64 = v81;
  if ((v63 & 0x200) != 0 || [v81 supportsDSIDLessInstall])
  {
    [v42 setIsDSIDLess_];

    v41(v29, v86);
  }

  else
  {
    v41(v29, v86);
  }

  return v42;
}

uint64_t sub_2226B09DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v2 = sub_222739A6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_22269457C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_22269457C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_2227398AC();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_22269457C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226B0CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B20, &qword_222745B00);
    v2 = sub_222739A6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22262BF70(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22269457C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22269457C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22269457C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2227398AC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22269457C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226B0F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2226B0FDC(void *a1)
{
  v1 = a1;
  v2 = [v1 redownloadParams];
  sub_22273919C();

  sub_2226B1104();
  sub_22273975C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B28, &qword_222743158);
  sub_2226B1198();
  sub_22273913C();

  v3 = sub_22273916C();

  return v3;
}

unint64_t sub_2226B1104()
{
  result = qword_281312E00;
  if (!qword_281312E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312E00);
  }

  return result;
}

BOOL sub_2226B1158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  return (sub_2227392FC() & 1) == 0;
}

unint64_t sub_2226B1198()
{
  result = qword_27D013B30;
  if (!qword_27D013B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013B28, &qword_222743158);
    sub_2226B121C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B30);
  }

  return result;
}

unint64_t sub_2226B121C()
{
  result = qword_281312DD0;
  if (!qword_281312DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013AA8, &qword_222742EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DD0);
  }

  return result;
}

uint64_t sub_2226B1280(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v74 - v9;
  v11 = *(v4 + 16);
  v11(&v74 - v9, v2, a1);
  v12 = sub_222739B1C();
  v80 = v2;
  if (v12)
  {
    v13 = v12;
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    v13 = swift_allocError();
    (*(v4 + 32))(v14, v10, a1);
  }

  v15 = sub_22273726C();

  v75 = v15;
  v16 = [v15 userInfo];
  v17 = sub_22273910C();

  v96 = v17;
  if (*(v17 + 16))
  {
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    v80 = 0;
    v78 = v22;
    v79 = v17 + 64;
    v76 = v17;
    while (1)
    {
      if (!v21)
      {
        if (v22 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        else
        {
          v25 = v22;
        }

        v26 = v25 - 1;
        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v21 = 0;
            v92 = 0u;
            v93 = 0u;
            v23 = v26;
            v91 = 0u;
            goto LABEL_22;
          }

          v21 = *(v18 + 8 * v24);
          ++v23;
          if (v21)
          {
            v23 = v24;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        result = sub_222739B8C();
        __break(1u);
        return result;
      }

      v24 = v23;
LABEL_21:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = v27 | (v24 << 6);
      v29 = (*(v17 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      sub_22262BF70(*(v17 + 56) + 32 * v28, v90);
      *&v91 = v31;
      *(&v91 + 1) = v30;
      sub_22269457C(v90, &v92);

LABEL_22:
      v94 = v91;
      v95[0] = v92;
      v95[1] = v93;
      v32 = *(&v91 + 1);
      if (!*(&v91 + 1))
      {

        v65 = v75;
        v66 = [v75 domain];
        if (!v66)
        {
          sub_22273919C();
          v66 = sub_22273916C();
        }

        v67 = [v65 code];
        v68 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v69 = sub_2227390FC();

        v70 = [v68 initWithDomain:v66 code:v67 userInfo:v69];

        goto LABEL_51;
      }

      v33 = v94;
      sub_22269457C(v95, &v91);
      sub_22262BF70(&v91, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
      v34 = swift_dynamicCast();
      if (v34)
      {
        break;
      }

      if (qword_27D012998 != -1)
      {
        v34 = swift_once();
      }

      *&v87 = v33;
      *(&v87 + 1) = v32;
      MEMORY[0x28223BE20](v34);
      *(&v74 - 2) = &v87;
      v57 = v80;
      v59 = sub_222730F54(sub_2226A5750, (&v74 - 4), v58);
      v80 = v57;
      if ((v59 & 1) == 0)
      {
        sub_2226890E0(v33, v32, &v87);

        sub_222672BA0(&v87);
        __swift_destroy_boxed_opaque_existential_1(&v91);
LABEL_9:
        v18 = v79;
        goto LABEL_10;
      }

      v60 = v33;
      sub_22262BF70(&v91, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B40, &unk_222743178);
      v61 = swift_dynamicCast();
      v18 = v79;
      if ((v61 & 1) != 0 && (swift_getObjectType(), v62 = [swift_getObjCClassFromMetadata() supportsSecureCoding], swift_unknownObjectRelease(), v62))
      {
        __swift_destroy_boxed_opaque_existential_1(&v91);
      }

      else
      {
        sub_2226890E0(v60, v32, &v87);

        sub_222672BA0(&v87);
        __swift_destroy_boxed_opaque_existential_1(&v91);
      }

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v90);
      v22 = v78;
    }

    v77 = v89;
    swift_getErrorValue();
    v35 = sub_2226B1280(v85, v86);
    swift_getErrorValue();
    v36 = v33;
    v37 = v83;
    v38 = v84;
    v88 = v84;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v87);
    (*(*(v38 - 8) + 16))(boxed_opaque_existential_1, v37, v38);

    sub_22269457C(&v87, v82);
    v40 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v40;
    v42 = v36;
    v44 = sub_222688818(v36, v32);
    v45 = v40[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_53;
    }

    v48 = v43;
    if (v40[3] < v47)
    {
      sub_2226895E4(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_222688818(v36, v32);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_55;
      }

      v44 = v49;
      v51 = v77;
      if ((v48 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_38:

      v63 = v81;
      v64 = (v81[7] + 32 * v44);
      __swift_destroy_boxed_opaque_existential_1(v64);
      sub_22269457C(v82, v64);

      __swift_destroy_boxed_opaque_existential_1(&v91);
      v96 = v63;
LABEL_39:
      v17 = v76;
      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v51 = v77;
      if (v43)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_22268C710();
      v51 = v77;
      if (v48)
      {
        goto LABEL_38;
      }
    }

LABEL_28:
    v52 = v81;
    v81[(v44 >> 6) + 8] |= 1 << v44;
    v53 = (v52[6] + 16 * v44);
    *v53 = v42;
    v53[1] = v32;
    sub_22269457C(v82, (v52[7] + 32 * v44));

    __swift_destroy_boxed_opaque_existential_1(&v91);
    v54 = v52[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_54;
    }

    v52[2] = v56;
    v96 = v52;
    goto LABEL_39;
  }

  v11(v8, v80, a1);
  v71 = sub_222739B1C();
  if (v71)
  {
    v70 = v71;
    (*(v4 + 8))(v8, a1);
  }

  else
  {
    v70 = swift_allocError();
    (*(v4 + 32))(v72, v8, a1);
  }

  v69 = v75;
LABEL_51:

  return v70;
}

uint64_t sub_2226B1A94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a1;
  v35 = a2;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = *(v6 + 16);
  v33 = v14;
  v13(&v33 - v11, v14, v15);
  v16 = sub_222739B1C();
  if (v16)
  {
    v17 = v16;
    (*(v6 + 8))(v12, a4);
  }

  else
  {
    v17 = swift_allocError();
    (*(v6 + 32))(v18, v12, a4);
  }

  v19 = sub_22273726C();

  v20 = [v19 code];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22273933C();
  if (v20 == v36)
  {
    v13(v10, v33, a4);
    v22 = sub_222739B1C();
    if (v22)
    {
      v23 = v22;
      (*(v6 + 8))(v10, a4);
    }

    else
    {
      v23 = swift_allocError();
      (*(v6 + 32))(v25, v10, a4);
    }

    v26 = sub_22273726C();

    v27 = [v26 domain];
    v28 = sub_22273919C();
    v30 = v29;

    if (v28 == v34 && v30 == v35)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_222739B4C();
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_2226B1D70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D0, &qword_222745770);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222743160;
  v1 = *MEMORY[0x277CEE190];
  *(v0 + 32) = sub_22273919C();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CEE1A0];
  *(v0 + 48) = sub_22273919C();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CEE1A8];
  *(v0 + 64) = sub_22273919C();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CEE1B0];
  *(v0 + 80) = sub_22273919C();
  *(v0 + 88) = v8;
  *(v0 + 96) = sub_22273919C();
  *(v0 + 104) = v9;
  *(v0 + 112) = sub_22273919C();
  *(v0 + 120) = v10;
  v11 = *MEMORY[0x277CCA068];
  *(v0 + 128) = sub_22273919C();
  *(v0 + 136) = v12;
  v13 = *MEMORY[0x277CCA450];
  *(v0 + 144) = sub_22273919C();
  *(v0 + 152) = v14;
  v15 = *MEMORY[0x277CCA688];
  result = sub_22273919C();
  *(v0 + 160) = result;
  *(v0 + 168) = v17;
  qword_27D019C60 = v0;
  return result;
}

void sub_2226B1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v34 = a4;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D0ABC8];
  v12 = sub_22273919C();
  v14 = v13;
  type metadata accessor for FBSOpenApplicationErrorCode(0);
  v37[3] = v15;
  v37[4] = sub_2226B21E4();
  v37[0] = a3;
  LOBYTE(a3) = sub_2226B1A94(v12, v14, v37, a1);

  __swift_destroy_boxed_opaque_existential_1(v37);
  if ((a3 & 1) == 0)
  {
    (*(v7 + 16))(v10, v4, a1);
    v16 = sub_222739B1C();
    if (v16)
    {
      v17 = v16;
      (*(v7 + 8))(v10, a1);
    }

    else
    {
      v17 = swift_allocError();
      (*(v7 + 32))(v18, v10, a1);
    }

    v19 = sub_22273726C();

    v20 = [v19 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v21 = sub_22273937C();

    v22 = 0;
    v23 = *(v21 + 16);
    while (1)
    {
      if (v23 == v22)
      {
LABEL_9:

        return;
      }

      if (v22 >= *(v21 + 16))
      {
        break;
      }

      v24 = v22 + 1;
      v25 = *(v21 + 8 * v22 + 32);
      ErrorValue = swift_getErrorValue();
      v27 = v35;
      v28 = v36;
      v29 = *(v35 - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32);
      v33 = v25;
      LOBYTE(v28) = v34(v27, v28);
      (*(v29 + 8))(v32, v27);

      v22 = v24;
      if (v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2226B21E4()
{
  result = qword_27D013B48;
  if (!qword_27D013B48)
  {
    type metadata accessor for FBSOpenApplicationErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B48);
  }

  return result;
}

uint64_t JSONObject.intEnum<A>(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22273971C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = sub_22273806C();
  if (v12)
  {
    return a1(v11);
  }

  v15[1] = v11;
  sub_22273934C();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v10, 1, a2) == 1)
  {
    v11 = (*(v7 + 8))(v10, v6);
    return a1(v11);
  }

  return (*(v13 + 32))(a3, v10, a2);
}

uint64_t JSONObject.intEnumOrNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22273806C();
  if ((v4 & 1) == 0)
  {
    return sub_22273934C();
  }

  v5 = *(*(a1 - 8) + 56);

  return v5(a2, 1, 1, a1);
}

uint64_t JSONObject.intEnum<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22273971C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = sub_22273806C();
  if (v10)
  {
    v11 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v12 = MEMORY[0x277D84F90];
    *v13 = 0x65756C6156776172;
    v13[1] = 0xE800000000000000;
    v13[2] = a1;
    v13[3] = v12;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D22540], v11);
    return swift_willThrow();
  }

  v14 = v9;
  v22 = v9;
  sub_22273934C();
  v15 = *(a1 - 8);
  if ((*(v15 + 48))(v8, 1, a1) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v16 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v18 = v17;
    v22 = v14;
    *v17 = sub_222739AFC();
    v18[1] = v19;
    v18[2] = a1;
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D22520], v16);
    return swift_willThrow();
  }

  return (*(v15 + 32))(a2, v8, a1);
}

uint64_t sub_2226B270C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  result = sub_2226B2C78(a1, a2, 25705, 0xE200000000000000);
  if (!v9)
  {
    v10 = sub_22273916C();
    v11 = [v3 valueForEntitlement_];

    if (v11)
    {
      sub_22273977C();
      swift_unknownObjectRelease();
      sub_22269457C(v17, v18);
      sub_22262BF70(v18, v17);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
        return v16;
      }

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v12 = sub_222738F6C();
      __swift_project_value_buffer(v12, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v13 = *(sub_2227381FC() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2226B29BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  result = sub_2226B2C78(a1, a2, 0x6E6F6973726576, 0xE700000000000000);
  if (!v9)
  {
    v10 = sub_22273916C();
    v11 = [v3 valueForEntitlement_];

    if (v11)
    {
      sub_22273977C();
      swift_unknownObjectRelease();
      sub_22269457C(v17, v18);
      sub_22262BF70(v18, v17);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
        return v16;
      }

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v12 = sub_222738F6C();
      __swift_project_value_buffer(v12, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v13 = *(sub_2227381FC() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2226B2C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2227381BC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (!a2)
  {
    return a1;
  }

  v11 = sub_22273916C();
  v12 = [v4 valueForEntitlement_];

  if (v12)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
    if (swift_dynamicCast())
    {
      if (!*(v25 + 16) || (v13 = sub_222688818(a1, a2), (v14 & 1) == 0))
      {
LABEL_14:

        goto LABEL_15;
      }

      sub_22262BF70(*(v25 + 56) + 32 * v13, &v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
      if (swift_dynamicCast())
      {
        if (*(v26 + 16))
        {
          v15 = sub_222688818(a3, a4);
          if (v16)
          {
            v17 = (*(v26 + 56) + 16 * v15);
            a1 = *v17;
            v18 = v17[1];

            return a1;
          }
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    sub_222672BA0(&v28);
  }

LABEL_15:
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v19 = sub_222738F6C();
  __swift_project_value_buffer(v19, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v20 = *(sub_2227381FC() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  v23 = MEMORY[0x277D837D0];
  *(&v29 + 1) = MEMORY[0x277D837D0];
  *&v28 = a3;
  *(&v28 + 1) = a4;

  sub_22273816C();
  sub_222672BA0(&v28);
  sub_22273819C();
  *(&v29 + 1) = v23;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_22273816C();
  sub_222672BA0(&v28);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  return 0;
}

uint64_t sub_2226B3064()
{
  v1 = sub_22273916C();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_222672BA0(v7);
  }

  return 0;
}

uint64_t sub_2226B31E8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2227381BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  swift_getErrorValue();
  v12 = sub_2226B1280(v23);
  a2();

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v14 = *(sub_2227381FC() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v22 = MEMORY[0x277D840E8];
  v20[0] = a4;
  v20[1] = a5;
  v21 = a6;
  sub_22273816C();
  sub_222672BA0(v20);
  sub_22273819C();
  swift_getErrorValue();
  v22 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v20);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226B34A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "failedToGetStore";
  }

  else
  {
    v5 = "as_restore_deeplink";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = "as_restore_deeplink";
  }

  else
  {
    v8 = "failedToGetStore";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222739B4C();
  }

  return v10 & 1;
}

uint64_t sub_2226B354C()
{
  v1 = *v0;
  sub_222739C5C();
  sub_22273924C();

  return sub_222739C8C();
}

uint64_t sub_2226B35CC()
{
  *v0;
  sub_22273924C();
}

uint64_t sub_2226B3638()
{
  v1 = *v0;
  sub_222739C5C();
  sub_22273924C();

  return sub_222739C8C();
}

uint64_t sub_2226B36B4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222739A8C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2226B3714(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "as_restore_deeplink";
  }

  else
  {
    v3 = "failedToGetStore";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_2226B3758()
{
  result = qword_27D013B58;
  if (!qword_27D013B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B58);
  }

  return result;
}

const char *sub_2226B37C0()
{
  if (*v0)
  {
    return "pause_resume_offer_button_label_2024E";
  }

  else
  {
    return "as_restore_deeplink";
  }
}

uint64_t sub_2226B37F0()
{
  v0 = sub_22273902C();
  if (*(v0 + 16) && (v1 = sub_222688818(0xD000000000000012, 0x8000000222749F70), (v2 & 1) != 0))
  {
    sub_22262BF70(*(v0 + 56) + 32 * v1, v5);

    sub_22269457C(v5, v6);
    sub_22262BF70(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

JSValue __swiftcall NSHTTPCookie.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = sub_2227373BC();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  result.super.isa = [v13 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_15;
  }

  isa = result.super.isa;
  v16 = [v2 name];
  v17 = sub_22273919C();
  v19 = v18;

  v51 = v17;
  v52 = v19;
  v20 = [v13 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2227396AC();
  v21 = [v2 value];
  v22 = sub_22273919C();
  v24 = v23;

  v51 = v22;
  v52 = v24;
  v25 = [v13 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v13;
  sub_2227396AC();
  v27 = [v2 expiresDate];
  v29 = v49;
  v28 = v50;
  if (v27)
  {
    v30 = v27;
    sub_22273739C();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v28 + 56))(v29, v31, 1, v10);
  sub_2226B3DD0(v29, v9);
  if ((*(v28 + 48))(v9, 1, v10) == 1)
  {
    sub_2226B3E40(v9);
    v32 = in.super.isa;
    v33 = 0;
  }

  else
  {
    v34 = v48;
    (*(v28 + 32))(v48, v9, v10);
    v35 = in.super.isa;
    v33 = sub_222739B2C();
    (*(v28 + 8))(v34, v10);
  }

  v36 = [v26 valueWithObject:v33 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v36)
  {
    goto LABEL_17;
  }

  sub_2227396AC();
  v37 = [v2 domain];
  v38 = sub_22273919C();
  v40 = v39;

  v51 = v38;
  v52 = v40;
  v41 = [v26 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2227396AC();
  v42 = [v2 path];
  v43 = sub_22273919C();
  v45 = v44;

  v51 = v43;
  v52 = v45;
  v46 = [v26 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v46)
  {
    sub_2227396AC();
    return isa;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2226B3DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226B3E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226B3EFC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22273993C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2226B4644(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2226B41FC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22273993C();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2226B4BD0(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2226B44FC()
{
  v3 = sub_222739AFC();
  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v0 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v0);

  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v1 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v1);

  return v3;
}

uint64_t sub_2226B4604()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_2226B44FC();
}

unsigned __int8 *sub_2226B4610@<X0>(uint64_t *a1@<X0>, unsigned __int8 **a2@<X8>)
{
  result = sub_2226B563C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unsigned __int8 *sub_2226B4644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22273931C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2226B5154();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22273993C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2226B4BD0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_22273931C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2226B5154();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22273993C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2226B5154()
{
  v0 = sub_22273932C();
  v4 = sub_2226B51D4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2226B51D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22273923C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22273973C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2226B532C(v9, 0);
  v12 = sub_2226B53A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22273923C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22273993C();
LABEL_4:

  return sub_22273923C();
}

void *sub_2226B532C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B68, &qword_2227432E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2226B53A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2226B55C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2227392DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22273993C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2226B55C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2227392AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2226B55C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2227392EC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DBE600](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_2226B563C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  sub_2226B1104();
  v3 = sub_22273975C();

  v5 = v3[2];
  if (v5 == 2)
  {
    v6 = v3[4];
    v15 = v3[5];

    v16 = sub_2226B3EFC(v6, v15);
    if (v3[2] < 2uLL)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v17)
    {
      v6 = 0;
    }

    else
    {
      v6 = v16;
    }

    v18 = v3[6];
    v19 = v3[7];

    sub_2226B3EFC(v18, v19);
    return v6;
  }

  if (v5 != 3)
  {

    return 0;
  }

  v6 = v3[4];
  v2 = v3[5];
  v7 = HIBYTE(v2) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v6 = 0;
    goto LABEL_74;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_82;
    }

    for (result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_22273993C())
    {
      v10 = *result;
      if (v10 == 43)
      {
        if (v8 < 1)
        {
          goto LABEL_85;
        }

        v11 = v8 - 1;
        if (v8 != 1)
        {
          v6 = 0;
          if (!result)
          {
            goto LABEL_68;
          }

          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v10 == 45)
      {
        if (v8 < 1)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v11 = v8 - 1;
        if (v8 != 1)
        {
          v6 = 0;
          if (!result)
          {
            goto LABEL_68;
          }

          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v8)
      {
        v6 = 0;
        if (!result)
        {
LABEL_68:
          LOBYTE(v11) = 0;
          goto LABEL_70;
        }

        while (1)
        {
          v29 = *result - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_69:
      v6 = 0;
      LOBYTE(v11) = 1;
LABEL_70:
      v34 = v11;
      while (1)
      {
        if (v34)
        {
          v6 = 0;
        }

        if (v3[2] >= 2uLL)
        {
          break;
        }

LABEL_79:
        __break(1u);
LABEL_80:

        v6 = sub_2226B4644(v6, v2, 10);
        v34 = v38;
      }

LABEL_74:
      v35 = v3[6];
      v2 = v3[7];

      sub_2226B3EFC(v35, v2);
      if (v3[2] >= 3uLL)
      {
        v36 = v3[8];
        v37 = v3[9];

        sub_2226B3EFC(v36, v37);
        return v6;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  v39 = v3[4];
  v40 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (!v7)
      {
        goto LABEL_69;
      }

      v6 = 0;
      v31 = &v39;
      do
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          goto LABEL_69;
        }

        v33 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          goto LABEL_69;
        }

        v6 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_69;
        }

        ++v31;
        --v7;
      }

      while (v7);
      goto LABEL_68;
    }

    if (v7)
    {
      v11 = v7 - 1;
      if (v7 != 1)
      {
        v6 = 0;
        v20 = &v39 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v11)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_84;
  }

  if (v7)
  {
    v11 = v7 - 1;
    if (v7 != 1)
    {
      v6 = 0;
      v26 = &v39 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          break;
        }

        v6 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v11)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_86:
  __break(1u);
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2226B5A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2226B5ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSClientFeature.OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JSClientFeature.OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2226B5BA0()
{
  result = qword_27D013B70;
  if (!qword_27D013B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B70);
  }

  return result;
}

unint64_t sub_2226B5C04()
{
  result = qword_27D013B78;
  if (!qword_27D013B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B78);
  }

  return result;
}

uint64_t sub_2226B5C68()
{
  v0 = [objc_opt_self() processInfo];
  v1 = sub_2226B563C(908998705, 0xE400000000000000);
  v3 = v2;
  v5 = v4;
  sub_2226B563C(908997937, 0xE400000000000000);
  sub_2226B563C(3550770, 0xE300000000000000);
  sub_2226B563C(908998705, 0xE400000000000000);
  sub_2226B563C(908996913, 0xE400000000000000);
  v16[0] = 0xD000000000000017;
  v16[1] = 0x8000000222749F90;
  v16[2] = v1;
  v16[3] = v3;
  v16[4] = v5;
  v6 = MEMORY[0x277D84F90];
  if (v1 != -1 || v3 != -1 || v5 != -1)
  {

    v15[0] = v1;
    v15[1] = v3;
    v15[2] = v5;
    if ([v0 isOperatingSystemAtLeastVersion_])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15[0] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2226AE82C(0, *(v6 + 16) + 1, 1);
        v6 = v15[0];
      }

      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        v13 = *(v6 + 16);
        v14 = v8 + 1;
        sub_2226AE82C((v9 > 1), v8 + 1, 1);
        v8 = v13;
        v10 = v14;
        v6 = v15[0];
      }

      *(v6 + 16) = v10;
      v11 = (v6 + 40 * v8);
      v11[4] = 0xD000000000000017;
      v11[5] = 0x8000000222749F90;
      v11[6] = v1;
      v11[7] = v3;
      v11[8] = v5;
    }

    else
    {
    }
  }

  sub_2226B6050(v16);
  return v6;
}

uint64_t sub_2226B5E2C(uint64_t a1)
{
  v1 = sub_2226B5C68();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_17:

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B80, &unk_222743460);
    *&v27 = v6;
    sub_22269457C(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94(v26, 0x6546746E65696C63, 0xEE00736572757461, isUniquelyReferenced_nonNull_native);
    return a1;
  }

  v4 = 0;
  v5 = (v1 + 40);
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(v2 + 16))
  {
    v9 = *(v5 - 1);
    v8 = *v5;

    v10 = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v6;
    v11 = sub_222688818(v9, v8);
    v13 = v6[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v6[3] < v16)
    {
      sub_22268A60C(v16, v10);
      v11 = sub_222688818(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (v10)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_22268CF2C();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      v7 = v11;

      v6 = v27;
      *(*(v27 + 56) + v7) = 1;
      goto LABEL_4;
    }

LABEL_12:
    v6 = v27;
    *(v27 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v6[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    *(v6[7] + v11) = 1;
    v20 = v6[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v6[2] = v21;
LABEL_4:
    ++v4;
    v5 += 5;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_222739B8C();
  __break(1u);
  return result;
}

char *sub_2226B61F4(void *a1, void *a2)
{
  v5 = sub_222738FDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v10 = MEMORY[0x223DBDAF0]();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 2) = a2;
    *(v12 + 3) = v11;
    v13 = a1;
    v14 = a2;

    sub_222738FBC();
    if (v2)
    {
    }

    else
    {
      v12 = sub_222738FCC();

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    v12 = "solve fetch promise, reason: ";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2226B63D8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v32 = a1;
  v33 = a5;
  v31 = a3;
  v7 = sub_222737FDC();
  v8 = *(v7 - 8);
  v30 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B98, &qword_2227434B8);
  v16 = a4;
  v17 = sub_222738F2C();
  v18 = sub_22273946C();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2227434B0;
  v19[5] = v15;
  v29 = v17;
  v19[6] = v17;

  sub_2226D4E54(0, 0, v14, &unk_2227434C0, v19);

  v20 = *(v8 + 16);
  v20(v10, a2, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = v21 + v30;
  v30 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v30 + v21, v10, v7);
  v20(v10, v31, v7);
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v23(v25 + v21, v10, v7);
  v26 = v32;
  *(v25 + v24) = v32;
  v34[3] = sub_2227387BC();
  v34[4] = MEMORY[0x277D22078];
  v34[0] = v33;
  v27 = v26;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_2226B6748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2226B6768, 0, 0);
}

uint64_t sub_2226B6768()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution), *(*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2226B6810;

  return sub_2226A18B0();
}

uint64_t sub_2226B6810(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2226B6910, 0, 0);
}

void sub_2226B6934(uint64_t *a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2227412F0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(v5 + 32) = v4;

  v6 = sub_222737FCC();
}

char *sub_2226B6C14(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_222738FDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v12 = MEMORY[0x223DBDAF0]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = v13;
    v15 = a1;
    v16 = a2;

    sub_222738FBC();
    if (v3)
    {
    }

    else
    {
      v14 = sub_222738FCC();

      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    v14 = "pDistributionObject";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_2226B6E10(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a6;
  v34 = a1;
  v9 = sub_222737FDC();
  v10 = *(v9 - 8);
  v33 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B90, &qword_222743498);
  v18 = a4;

  v19 = sub_222738F2C();
  v20 = sub_22273946C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_222743490;
  v21[5] = v17;
  v32 = v19;
  v21[6] = v19;

  sub_2226D4E54(0, 0, v16, &unk_2227434A0, v21);

  v31 = *(v10 + 16);
  v31(v12, a2, v9);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = (v33 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v30 = *(v10 + 32);
  v33 = v24;
  v30(v24 + v22, v12, v9);
  v26 = v34;
  v25 = v35;
  *(v24 + v23) = v34;
  v31(v12, v25, v9);
  v27 = swift_allocObject();
  v30(v27 + v22, v12, v9);
  *(v27 + v23) = v26;
  v37[3] = sub_2227387BC();
  v37[4] = MEMORY[0x277D22078];
  v37[0] = v36;
  v28 = v26;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2226B71A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2226B71C8, 0, 0);
}

uint64_t sub_2226B71C8()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution), *(v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution + 24));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2226B7278;
  v2 = v0[4];

  return sub_2226A1DA8(v2);
}

uint64_t sub_2226B7278(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2226B7378, 0, 0);
}

void sub_2226B739C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2227381BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2227412F0;
  v9 = *(v7 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22273997C();
    v11 = (v7 + 48);
    do
    {
      v12 = *(v11 - 2);
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 3;

      sub_2226A10E4(a3, v12, v13, v14);

      sub_22273995C();
      v15 = *(v17 + 16);
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      --v9;
    }

    while (v9);
    v10 = v17;
  }

  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A18, &unk_222742D00);
  *(v8 + 32) = v10;
  v16 = sub_222737FCC();
}

void sub_2226B7720()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222738D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v7 = swift_allocObject();
  v12 = xmmword_2227412F0;
  *(v7 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  sub_222738D0C();
  (*(v3 + 8))(v6, v2);
  v8 = v14;
  v9 = __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 56) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = sub_222737FCC();
}

unint64_t sub_2226B7C58()
{
  result = qword_281312B48;
  if (!qword_281312B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B48);
  }

  return result;
}

unint64_t sub_2226B7CC0()
{
  result = qword_27D013EE0;
  if (!qword_27D013EE0)
  {
    sub_222738D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013EE0);
  }

  return result;
}

uint64_t sub_2226B7D38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_2226B71A4(a1, v5, v4);
}

uint64_t sub_2226B7DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

void sub_2226B7EC0(uint64_t *a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226B739C(a1, v1 + v4, v5);
}

uint64_t objectdestroy_4Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2226B7FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226B6748(a1, v4);
}

uint64_t sub_2226B8088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

void sub_2226B8164(uint64_t *a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);

  sub_2226B6934(a1);
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2226B8270()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2226B7720();
}

uint64_t sub_2226B8334(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = &a1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSAppleSiliconObject_platform];
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = a1;
  LOBYTE(a3) = a3(v6, v7);

  return a3 & 1;
}

uint64_t sub_2226B8450(void *a1)
{
  v2 = v1;
  v4 = sub_222738FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_222738FBC();
  if (!v1)
  {
    v2 = sub_222738FCC();
    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

void sub_2226B855C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227412F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  v4 = sub_222739B6C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  if (v5)
  {
    *(v3 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    *(v3 + 32) = v5;
    v6 = sub_222737FCC();
    if (v1)
    {

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v7 = sub_222738F6C();
      __swift_project_value_buffer(v7, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v8 = *(sub_2227381FC() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C6C();
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2226B8AD0(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v2 = type metadata accessor for MetricsTopicProvider();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222738BBC();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273858C();
  sub_222738C9C();
  sub_2226B92B8();
  sub_222738C9C();
  v10 = v69[0];
  v60 = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  v57 = v6;
  v58 = v9;
  sub_222738C9C();
  sub_222738C9C();
  v11 = v69[0];
  v12 = v69[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_222738C9C();
  v59 = [objc_allocWithZone(ASCJSClientObject) initWithAccountStore_];
  sub_22266BCCC(v78, v69);
  v13 = type metadata accessor for JSModernLocObject();
  v14 = objc_allocWithZone(v13);
  sub_22266BCCC(v69, v14 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer);
  v75.receiver = v14;
  v75.super_class = v13;
  v56 = objc_msgSendSuper2(&v75, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_22266BCCC(v80, v69);
  v15 = type metadata accessor for JSStoreMetricsObject();
  v16 = objc_allocWithZone(v15);
  sub_22266BCCC(v69, v16 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder);
  v74.receiver = v16;
  v74.super_class = v15;
  v54 = objc_msgSendSuper2(&v74, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v69);
  (*(v62 + 16))(v5, v9, v6);
  v17 = type metadata accessor for JSMetricsIdentifiersObject();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore];
  *v19 = v11;
  *(v19 + 1) = v12;
  v53 = v12;
  sub_2226B9304(v5, &v18[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsTopicProvider]);
  v73.receiver = v18;
  v73.super_class = v17;
  v55 = v11;
  swift_unknownObjectRetain();
  v52 = objc_msgSendSuper2(&v73, sel_init);
  sub_2226B9368(v5);
  sub_22266BCCC(v81, v69);
  v20 = type metadata accessor for JSUserObject();
  v21 = objc_allocWithZone(v20);
  v22 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_isFitnessAppInstallationAllowedCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C10, &unk_222743530);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013548, &qword_2227425B0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 24) = 2;
  *(v23 + 32) = sub_2226C2C78;
  *(v23 + 40) = 0;
  *&v21[v22] = v23;
  sub_22266BCCC(v69, &v21[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts]);
  v72.receiver = v21;
  v72.super_class = v20;
  v51 = objc_msgSendSuper2(&v72, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v50 = [objc_allocWithZone(type metadata accessor for JSClientOrderingObject()) init];
  v49 = [objc_allocWithZone(type metadata accessor for JSPersonalizationStoreObject()) init];
  v48 = [objc_allocWithZone(type metadata accessor for JSArcadeObject()) init];
  sub_22266BCCC(v79, v69);
  v25 = type metadata accessor for JSAppleSiliconObject();
  v26 = objc_allocWithZone(v25);
  sub_22266BCCC(v69, v26 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSAppleSiliconObject_platform);
  v71.receiver = v26;
  v71.super_class = v25;
  v47 = objc_msgSendSuper2(&v71, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v46 = [objc_allocWithZone(type metadata accessor for JSFeatureFlagsObject()) init];
  sub_22266BCCC(v77, v69);
  sub_22266BCCC(v76, &v70);
  v67 = &type metadata for DeviceAppDistribution;
  v68 = &off_2835C9118;
  v66[0] = swift_allocObject();
  sub_22269DCB0(v69, v66[0] + 16);
  v27 = type metadata accessor for JSAppDistributionObject();
  v28 = objc_allocWithZone(v27);
  v29 = v67;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v31 = *(v29[-1].Description + 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v65[3] = &type metadata for DeviceAppDistribution;
  v65[4] = &off_2835C9118;
  v35 = swift_allocObject();
  v65[0] = v35;
  v36 = v33[3];
  v35[3] = v33[2];
  v35[4] = v36;
  v35[5] = v33[4];
  v37 = v33[1];
  v35[1] = *v33;
  v35[2] = v37;
  sub_22266BCCC(v65, v28 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution);
  v64.receiver = v28;
  v64.super_class = v27;
  v38 = objc_msgSendSuper2(&v64, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_22269DD0C(v69);
  v39 = type metadata accessor for JSASKGlobalObject();
  v40 = objc_allocWithZone(v39);
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_client] = v59;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_loc] = v56;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_storeMetrics] = v54;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_metricsIdentifiers] = v52;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_props] = v61;
  v41 = v50;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_user] = v51;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_clientOrdering] = v41;
  v42 = v48;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_personalizationStore] = v49;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_arcade] = v42;
  v43 = v46;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_appleSilicon] = v47;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_featureFlags] = v43;
  *&v40[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_appDistribution] = v38;
  v63.receiver = v40;
  v63.super_class = v39;
  v44 = objc_msgSendSuper2(&v63, sel_init);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v76);
  (*(v62 + 8))(v58, v57);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v81);
  return v44;
}

unint64_t sub_2226B92B8()
{
  result = qword_281312D68;
  if (!qword_281312D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312D68);
  }

  return result;
}

uint64_t sub_2226B9304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsTopicProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226B9368(uint64_t a1)
{
  v2 = type metadata accessor for MetricsTopicProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226B9404()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

uint64_t sub_2226B950C()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

id sub_2226B9638()
{
  ObjectType = swift_getObjectType();
  v6[3] = &type metadata for SystemFeatureFlagsStore;
  v6[4] = &off_2835C9778;
  v1 = objc_allocWithZone(ObjectType);
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for SystemFeatureFlagsStore);
  v5[3] = &type metadata for SystemFeatureFlagsStore;
  v5[4] = &off_2835C9778;
  sub_22266BCCC(v5, v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSFeatureFlagsObject_store);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_2226B9724(id a1, void *a2)
{
  sub_22273968C();
  if (!v4)
  {
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v7 = a2;
    sub_222738D5C();
    swift_willThrow();
    return a1;
  }

  v5 = sub_222739A8C();
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v10[3] = &type metadata for Feature;
  v10[4] = sub_222672C08();
  LOBYTE(v10[0]) = v6;
  v8 = sub_22273748C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  result = [objc_opt_self() valueWithBool:v8 & 1 inContext:a1];
  if (result)
  {
LABEL_10:
    a1 = result;

    return a1;
  }

  __break(1u);
LABEL_9:
  result = [objc_opt_self() valueWithBool:0 inContext:a1];
  if (result)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226B9C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2226AE84C(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    do
    {
      v8 = *v4++;
      v7 = v8;
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2226AE84C((v9 > 1), v10 + 1, 1);
        v2 = v15;
      }

      v13 = v5;
      v14 = v6;
      *&v12 = v7;
      *(v2 + 16) = v10 + 1;
      sub_222634290(&v12, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2226B9F18(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(MEMORY[0x277CCABB8]);
    v5 = v3;
    v6 = [v4 init];
    [v6 setNumberStyle_];
    [v6 setFormatterBehavior_];
    v7 = sub_22273741C();
    [v6 setLocale_];

    [v6 setMinimumFractionDigits_];
    v8 = [v6 stringFromNumber_];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22273919C();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_2226BA180(void *a1)
{
  if (a1)
  {
    v1 = [a1 longLongValue];
    v2 = sub_22273741C();
    v3 = JECountFormatterMakeStringFromNumber();

    if (v3)
    {
      sub_22273919C();
LABEL_8:

      return;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v7 = v5;
      v3 = [v6 init];
      [v3 setNumberStyle_];
      [v3 setFormatterBehavior_];
      v8 = sub_22273741C();
      [v3 setLocale_];

      [v3 setMinimumFractionDigits_];
      v9 = [v3 stringFromNumber_];
      if (v9)
      {
        v10 = v9;
        sub_22273919C();

        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2226BA3B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = sub_2227373BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  sub_2226BD5F4(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_222660468(v14, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  (*(v16 + 32))(v22, v14, v15);
  sub_2227373AC();
  result = sub_22273733C();
  v25 = floor(v24 / 31536000.0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  if (v25 >= 1)
  {
    v27 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    sub_2227390BC();
    v54 = v20;
    v28 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
    v29 = sub_22273743C();
    v30 = v2;
    v31 = *(v29 - 8);
    (*(v31 + 16))(v7, v30 + v28, v29);
    (*(v31 + 56))(v7, 0, 1, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D83B88];
    *(v32 + 16) = xmmword_2227412F0;
    v34 = MEMORY[0x277D83C10];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v26;
LABEL_8:
    v35 = sub_2227391BC();

    sub_222660468(v7, &qword_27D013C58, &qword_222743620);
    v36 = *(v16 + 8);
    v36(v54, v15);
    v36(v22, v15);
    return v35;
  }

  v37 = floor(v24 / 86400.0);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v37 >= 7)
  {
    (*(v16 + 16))(v12, v22, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    v38 = 0x64204D4D4DLL;
    v39 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v37 < 1)
  {
    v42 = floor(v24 / 3600.0);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v42 > -9.22337204e18)
      {
        if (v42 < 9.22337204e18)
        {
          v43 = v42;
          v44 = *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
          if (v43 >= 1)
          {
            v53 = sub_2227390BC();
            v45 = v2;
            v46 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
            v47 = sub_22273743C();
            v48 = *(v47 - 8);
            v54 = v20;
            v49 = v48;
            (*(v48 + 16))(v7, v45 + v46, v47);
            (*(v49 + 56))(v7, 0, 1, v47);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
            v50 = swift_allocObject();
            v51 = MEMORY[0x277D83B88];
            *(v50 + 16) = xmmword_2227412F0;
            v52 = MEMORY[0x277D83C10];
            *(v50 + 56) = v51;
            *(v50 + 64) = v52;
            *(v50 + 32) = v43;
            goto LABEL_8;
          }

          v40 = sub_2227390BC();
          goto LABEL_17;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  (*(v16 + 16))(v12, v22, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  v38 = 69;
  v39 = 0xE100000000000000;
LABEL_16:
  v40 = sub_2226BAAFC(v38, v39, v12);
  sub_222660468(v12, &unk_27D0146D0, qword_222743270);
LABEL_17:
  v41 = *(v16 + 8);
  v41(v20, v15);
  v41(v22, v15);
  return v40;
}

uint64_t sub_2226BAAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a2;
  v4 = sub_22273747C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = sub_2227373BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222660468(v12, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v19 setFormattingContext_];
    sub_22273742C();
    v20 = sub_22273745C();
    (*(v5 + 8))(v8, v4);
    [v19 setCalendar_];

    v21 = sub_22273741C();
    [v19 setLocale_];

    v22 = sub_22273916C();
    [v19 setLocalizedDateFormatFromTemplate_];

    v23 = sub_22273734C();
    v24 = [v19 stringFromDate_];

    v25 = sub_22273919C();
    (*(v14 + 8))(v17, v13);
    return v25;
  }
}

uint64_t sub_2226BAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33[1] = a3;
  v33[2] = a4;
  v33[3] = a1;
  v7 = sub_22273747C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v33 - v14;
  v16 = sub_2227373BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a5, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_222660468(v15, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v22 setFormattingContext_];
    v33[0] = a2;
    sub_22273742C();
    v23 = sub_22273745C();
    (*(v8 + 8))(v11, v7);
    [v22 setCalendar_];

    v24 = sub_22273741C();
    [v22 setLocale_];

    v25 = sub_22273916C();
    [v22 setLocalizedDateFormatFromTemplate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2227412F0;
    v27 = sub_22273734C();
    v28 = [v22 stringFromDate_];

    v29 = sub_22273919C();
    v31 = v30;

    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2226BD664();
    *(v26 + 32) = v29;
    *(v26 + 40) = v31;
    v32 = sub_2227391CC();

    (*(v17 + 8))(v20, v16);
    return v32;
  }
}

uint64_t sub_2226BB3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v80 - v4;
  v6 = sub_22273747C();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v90 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22273715C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v80 - v16;
  v18 = sub_2227373BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - v24;
  sub_2226BD5F4(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_222660468(v17, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  v81 = v5;
  v84 = v9;
  v85 = v10;
  v86 = v18;
  v87 = v19;
  (*(v19 + 32))(v25, v17, v18);
  sub_2227373AC();
  v82 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  sub_22273742C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C60, &qword_222743628);
  v27 = sub_22273746C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_222742E90;
  v32 = *(v28 + 104);
  v32(v31 + v30, *MEMORY[0x277CC9988], v27);
  v32(v31 + v30 + v29, *MEMORY[0x277CC9998], v27);
  v32(v31 + v30 + 2 * v29, *MEMORY[0x277CC9940], v27);
  v32(v31 + v30 + 3 * v29, *MEMORY[0x277CC9968], v27);
  v32(v31 + v30 + 4 * v29, *MEMORY[0x277CC9980], v27);
  v32(v31 + v30 + 5 * v29, *MEMORY[0x277CC99A8], v27);
  sub_2226DD7F0(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v83 = v23;
  v33 = v90;
  sub_22273744C();

  (*(v88 + 8))(v33, v89);
  v34 = sub_22273712C();
  if ((v35 & 1) == 0)
  {
    v36 = v34;
    if (v34 >= 1)
    {
      v37 = v91;
      v38 = *(v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
      __swift_project_boxed_opaque_existential_1((v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
      sub_2227390BC();
      v39 = sub_22273743C();
      v40 = *(v39 - 8);
      v41 = v81;
      (*(v40 + 16))(v81, v37 + v82, v39);
      (*(v40 + 56))(v41, 0, 1, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
      v42 = swift_allocObject();
      v43 = MEMORY[0x277D83B88];
      *(v42 + 16) = xmmword_2227412F0;
      v44 = MEMORY[0x277D83C10];
      *(v42 + 56) = v43;
      *(v42 + 64) = v44;
      *(v42 + 32) = v36;
      v45 = sub_2227391BC();

      sub_222660468(v41, &qword_27D013C58, &qword_222743620);
      (*(v85 + 8))(v13, v84);
LABEL_13:
      v61 = v86;
      v62 = *(v87 + 8);
      v62(v83, v86);
      v62(v25, v61);
      return v45;
    }
  }

  v46 = sub_22273713C();
  v47 = v84;
  if ((v48 & 1) == 0)
  {
    v49 = v46;
    if (v46 >= 1)
    {
      v50 = v91;
      v51 = *(v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
      __swift_project_boxed_opaque_existential_1((v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v91 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
LABEL_12:
      sub_2227390BC();
      v55 = sub_22273743C();
      v56 = *(v55 - 8);
      v57 = v81;
      (*(v56 + 16))(v81, v50 + v82, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
      v58 = swift_allocObject();
      v59 = MEMORY[0x277D83B88];
      *(v58 + 16) = xmmword_2227412F0;
      v60 = MEMORY[0x277D83C10];
      *(v58 + 56) = v59;
      *(v58 + 64) = v60;
      *(v58 + 32) = v49;
      v45 = sub_2227391BC();

      sub_222660468(v57, &qword_27D013C58, &qword_222743620);
      (*(v85 + 8))(v13, v47);
      goto LABEL_13;
    }
  }

  v52 = sub_2227370FC();
  v50 = v91;
  if ((v53 & 1) == 0 && (v49 = v52, v52 >= 1) || (v63 = sub_22273710C(), (v64 & 1) == 0) && (v49 = v63, v63 >= 1) || (v65 = sub_22273711C(), (v66 & 1) == 0) && (v49 = v65, v65 >= 1))
  {
    v54 = *(v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    goto LABEL_12;
  }

  v67 = sub_22273714C();
  if ((v68 & 1) != 0 || v67 < 1)
  {
    v73 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v73 setDoesRelativeDateFormatting_];
    [v73 setDateStyle_];
    [v73 setTimeStyle_];
    v74 = sub_22273741C();
    [v73 setLocale_];

    v75 = sub_22273734C();
    v76 = [v73 stringFromDate_];

    v77 = sub_22273919C();
    (*(v85 + 8))(v13, v47);
    v78 = v86;
    v79 = *(v87 + 8);
    v79(v83, v86);
    v79(v25, v78);
    return v77;
  }

  else
  {
    v69 = *(v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 32);
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v50 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    v70 = sub_2227390BC();
    (*(v85 + 8))(v13, v47);
    v71 = v86;
    v72 = *(v87 + 8);
    v72(v83, v86);
    v72(v25, v71);
    return v70;
  }
}

id sub_2226BBEA8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  if (a3)
  {
    sub_22273739C();
    v11 = sub_2227373BC();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_2227373BC();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = a1;
  a4(v10);
  v15 = v14;

  sub_222660468(v10, &unk_27D0146D0, qword_222743270);
  if (v15)
  {
    v16 = sub_22273916C();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t type metadata accessor for JSLegacyLocObject()
{
  result = qword_27D013C40;
  if (!qword_27D013C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226BC180()
{
  result = sub_22273743C();
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

id sub_2226BC36C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22273919C();
  v6 = &a1[*a4];
  v7 = *(v6 + 4);
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
  v8 = a1;
  sub_2227390BC();

  v9 = sub_22273916C();

  return v9;
}

uint64_t sub_2226BCA14()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

uint64_t sub_2226BCF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2227373BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a5, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222660468(v10, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24));
    v18 = sub_22273904C();
    (*(v12 + 8))(v15, v11);
    return v18;
  }
}

id sub_2226BD11C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_22273919C();
  v15 = v14;
  v16 = sub_22273919C();
  v18 = v17;
  if (a5)
  {
    sub_22273739C();
    v19 = sub_2227373BC();
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  }

  else
  {
    v20 = sub_2227373BC();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  }

  v21 = a1;
  a6(v13, v15, v16, v18, v12);
  v23 = v22;

  sub_222660468(v12, &unk_27D0146D0, qword_222743270);
  if (v23)
  {
    v24 = sub_22273916C();
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_2226BD5F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2226BD664()
{
  result = qword_27D013C68;
  if (!qword_27D013C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C68);
  }

  return result;
}

uint64_t sub_2226BD6C4()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_27D013C70);
  __swift_project_value_buffer(v5, qword_27D013C70);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

id sub_2226BD890(void *a1, uint64_t a2, void *a3)
{
  v65 = a1;
  v62 = a3;
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222738FDC();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - v12;
  v14 = sub_22273823C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2227380FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v26 = v64;
  sub_22273967C();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v64 = v13;
    v59 = v6;
    v60 = v9;
    (*(v19 + 16))(v23, v25, v18);
    sub_22273822C();
    v28 = v18;
    v29 = sub_2226E507C(v23, v17);
    v31 = v30;
    v33 = v32;
    v34 = swift_allocObject();
    v35 = v62;
    v34[2] = v62;
    v34[3] = v29;
    v34[4] = v31;
    v34[5] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CA0, &qword_2227436B8);
    v36 = v35;
    v37 = v29;
    v62 = v33;

    v38 = sub_222738F2C();
    v39 = sub_22273946C();
    v40 = v64;
    (*(*(v39 - 8) + 56))(v64, 1, 1, v39);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = &unk_2227436B0;
    v41[5] = v34;
    v41[6] = v38;

    sub_2226D4E54(0, 0, v40, &unk_2227436C0, v41);

    sub_2227387BC();

    v43 = MEMORY[0x223DBDAF0](v42);
    if (v43)
    {
      v44 = v43;
      v64 = v37;
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 1;
      *(v45 + 32) = v44;
      *(v45 + 40) = sub_2226BF9BC;
      *(v45 + 48) = v38;
      v46 = v65;

      v47 = v60;
      sub_222738FBC();

      v58 = sub_222738FCC();

      (*(v61 + 8))(v47, v59);
      (*(v19 + 8))(v25, v28);
      return v58;
    }

    sub_2226BF75C();
    v27 = swift_allocError();
    *v48 = 0;
    swift_willThrow();

    (*(v19 + 8))(v25, v28);
  }

  v49 = v27;
  if (qword_27D0129C8 != -1)
  {
    swift_once();
  }

  v50 = sub_222738F6C();
  __swift_project_value_buffer(v50, qword_27D013C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v51 = *(sub_2227381FC() - 8);
  v52 = *(v51 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v54 = v66;
  v55 = v67;
  v68[3] = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v54, v55);
  sub_22273815C();
  sub_222672BA0(v68);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v58 = result;

    return v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226BE004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2226BE02C, 0, 0);
}

uint64_t sub_2226BE02C()
{
  v1 = v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore;
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = [*v1 ams_activeiTunesAccount];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2226BE108;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  return sub_2226E2FD8(v3, v2, v4, v8, v6, v7);
}

uint64_t sub_2226BE108(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_2226BE2B4;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = sub_2226BE23C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2226BE23C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);

  *v3 = v2;
  v3[1] = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2226BE2B4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2226BE318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];

  v5 = sub_222739B6C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:{a2, v8, v9}];
  result = swift_unknownObjectRelease();
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226BE3CC(id a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22273823C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2227380FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_22273967C();
  if (v3)
  {
    return a1;
  }

  (*(v11 + 16))(v15, v17, v10);
  sub_22273822C();
  v18 = sub_2226E507C(v15, v9);
  v38 = v19;
  v35 = v18;
  v36 = v20;
  v34 = *(a3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore);
  v21 = v34;
  v22 = [v34 ams_activeiTunesAccount];
  v23 = v22;
  if (!v22)
  {
    v23 = [v21 ams_activeiTunesAccount];
  }

  v37 = v34;
  v24 = v22;
  v25 = sub_2226E4344(v23);
  v36 = 0;
  v27 = v25;

  v28 = v35;
  v29 = [v27 identifierForKey_];

  v30 = sub_22273919C();
  v32 = v31;

  *&v37 = v30;
  *(&v37 + 1) = v32;

  v33 = sub_222739B6C();
  a1 = [objc_opt_self() valueWithObject:v33 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    (*(v11 + 8))(v17, v10);

    return a1;
  }

  __break(1u);
  return result;
}

id sub_2226BE7BC(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v55 = a3;
  v57 = a1;
  v5 = sub_2227381BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222738FDC();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = sub_22273823C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2227380FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v51 - v24;
  sub_22273967C();
  if (!v3)
  {
    v51 = v11;
    v52 = v15;
    v26 = v55;
    (*(v19 + 16))(v23, v25, v18);
    sub_22273822C();
    sub_2226BF548();
    v27 = sub_2227393BC();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014660, &qword_222743690);
    v29 = v26;
    v30 = sub_222738F2C();
    v31 = sub_22273946C();
    v32 = v52;
    (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = &unk_222743688;
    v33[5] = v28;
    v33[6] = v30;

    sub_2226D4E54(0, 0, v32, &unk_222743698, v33);

    sub_2227387BC();

    v35 = MEMORY[0x223DBDAF0](v34);
    if (v35)
    {
      v36 = v35;
      v55 = v25;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 1;
      *(v37 + 32) = v36;
      *(v37 + 40) = sub_2226BF724;
      *(v37 + 48) = v30;
      v38 = v57;

      v39 = v51;
      sub_222738FBC();

      v50 = sub_222738FCC();

      (*(v53 + 8))(v39, v54);
      (*(v19 + 8))(v55, v18);
      return v50;
    }

    sub_2226BF75C();
    v4 = swift_allocError();
    *v40 = 0;
    swift_willThrow();

    (*(v19 + 8))(v25, v18);
  }

  v41 = v4;
  if (qword_27D0129C8 != -1)
  {
    swift_once();
  }

  v42 = sub_222738F6C();
  __swift_project_value_buffer(v42, qword_27D013C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v43 = *(sub_2227381FC() - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v46 = v58;
  v47 = v59;
  v60[3] = v59;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  (*(*(v47 - 8) + 16))(boxed_opaque_existential_1, v46, v47);
  sub_22273815C();
  sub_222672BA0(v60);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v50 = result;

    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226BEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2226BEF14, 0, 0);
}

uint64_t sub_2226BEF14()
{
  v1 = v0[5] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore;
  v2 = *v1;
  v3 = *(v1 + 8);
  v0[2] = *v1;
  v0[3] = v3;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2226BEFE4;
  v6 = v0[6];

  return sub_2226E2068(v6, 0);
}

uint64_t sub_2226BEFE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v10 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    swift_unknownObjectRelease();
    v7 = sub_2226BF14C;
  }

  else
  {
    *(v4 + 72) = a1;
    v8 = *(v4 + 24);

    swift_unknownObjectRelease();
    v7 = sub_2226BF128;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226BF164(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v5[3] = sub_22273872C();
  v5[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v5);
  v2 = a1;
  sub_22273871C();
  sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  v3 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_2226BF238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v5 = sub_222739B6C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a2];
  result = swift_unknownObjectRelease();
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2226BF2FC(void *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v5 = a3;
  v6 = a1;
  v7 = sub_2227396EC();
  v8 = sub_2227396FC();

  return v8;
}

uint64_t type metadata accessor for JSMetricsIdentifiersObject()
{
  result = qword_281313200;
  if (!qword_281313200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226BF48C()
{
  result = sub_222738BBC();
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

unint64_t sub_2226BF548()
{
  result = qword_27D013C90;
  if (!qword_27D013C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C90);
  }

  return result;
}

uint64_t sub_2226BF59C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_2226BEEF0(a1, v5, v4);
}

uint64_t sub_2226BF648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D3714(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2226BF75C()
{
  result = qword_27D013C98;
  if (!qword_27D013C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C98);
  }

  return result;
}

uint64_t sub_2226BF820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2226BE004(a1, v4, v5, v7, v6);
}

uint64_t sub_2226BF8E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D34A0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2226BFAD0(void *a1)
{
  v2 = v1;
  v4 = sub_222738FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_222738FBC();
  if (!v1)
  {
    v2 = sub_222738FCC();
    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

void sub_2226BFBDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227412F0;
  v4 = [objc_opt_self() valueWithNullInContext_];
  if (v4)
  {
    v5 = v4;
    *(v3 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    *(v3 + 32) = v5;
    v6 = sub_222737FCC();
    if (v1)
    {

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v7 = sub_222738F6C();
      __swift_project_value_buffer(v7, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v8 = *(sub_2227381FC() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C6C();
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2226BFE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v49 = a7;
  v47 = a6;
  v48 = *&a4;
  v51 = a3;
  v52 = a1;
  v46 = sub_222737FDC();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22273878C();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  if ((a5 & 1) == 0 && v48 > COERCE_DOUBLE(1))
  {
    v19 = *(v11 + 16);
    v44 = a2;
    v20 = v46;
    v19(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v46);
    v21 = *(v11 + 80);
    v43[1] = a8;
    v22 = (v21 + 32) & ~v21;
    v43[0] = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v24 = v48;
    *(v23 + 16) = v18;
    *(v23 + 24) = v24;
    v25 = v20;
    a2 = v44;
    (*(v11 + 32))(v23 + v22, v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v26 = v52;
    *(v23 + v43[0]) = v52;

    v27 = v26;
    sub_22273879C();

    (*(v45 + 8))(v17, v14);
  }

  v28 = v50;
  v50 = v49(v52);
  if (v28)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2227412F0;
    v30 = sub_2226C032C();
    v31 = MEMORY[0x223DBE9E0](v28, v52);
    *(v29 + 56) = v30;
    *(v29 + 32) = v31;
    v32 = sub_222737FCC();
  }

  else
  {
    v33 = *(v11 + 16);
    v34 = a2;
    v35 = v46;
    v33(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v46);
    v49 = 0;
    v36 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    *&v37 = COERCE_DOUBLE(swift_allocObject());
    v48 = *&v37;
    *(v37 + 16) = v18;
    v45 = v18;
    v38 = *(v11 + 32);
    v38(v37 + v36, v13, v35);
    v33(v13, v51, v35);
    v39 = (v36 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v45;
    v38(v40 + v36, v13, v35);
    v41 = v52;
    *(v40 + v39) = v52;
    v53[3] = sub_2227387BC();
    v53[4] = MEMORY[0x277D22078];
    v53[0] = v47;
    swift_retain_n();
    v42 = v41;

    sub_222738E8C();

    __swift_destroy_boxed_opaque_existential_1(v53);
  }
}

unint64_t sub_2226C032C()
{
  result = qword_27D013BA8;
  if (!qword_27D013BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D013BA8);
  }

  return result;
}

void sub_2226C0378(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v17 = a4;
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v8 = *(sub_2227381FC() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = 3 * *(v8 + 72);
    *(swift_allocObject() + 16) = xmmword_222741CB0;
    sub_22273813C();
    sub_22273813C();
    v18[3] = MEMORY[0x277D839F8];
    *v18 = a2;
    sub_2227381DC();
    sub_222672BA0(v18);
    sub_222738C6C();

    swift_beginAccess();
    *(a1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2227412F0;
    v11 = sub_2226C032C();
    sub_2226BF75C();
    v12 = swift_allocError();
    *v13 = 1;
    v14 = MEMORY[0x223DBE9E0](v12, v17);

    *(v10 + 56) = v11;
    *(v10 + 32) = v14;
    v15 = sub_222737FCC();
  }
}

void sub_2226C0714(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2227412F0;
    *(v4 + 56) = sub_2226C032C();
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = sub_222737FCC();
  }
}

void sub_2226C09B8(void **a1)
{
  v3 = *(*(sub_222737FDC() - 8) + 80);
  v4 = *(v1 + 16);

  sub_2226C0714(a1, v4);
}

void sub_2226C0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2227412F0;
    v8 = sub_2226C032C();
    v9 = MEMORY[0x223DBE9E0](a1, a4);
    *(v7 + 56) = v8;
    *(v7 + 32) = v9;
    v10 = sub_222737FCC();
  }
}

void sub_2226C0CE4(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C0A2C(a1, v5, v1 + v4, v6);
}

void sub_2226C0D84()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C0378(v3, v4, v0 + v2, v5);
}

unint64_t sub_2226C0E2C()
{
  result = qword_27D013CA8;
  if (!qword_27D013CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013CA8);
  }

  return result;
}

id sub_2226C0E80(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_22273875C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273968C();
  if (!v12)
  {
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v19 = v22;
    v23 = a2;
    goto LABEL_8;
  }

  v25 = a1;
  v13 = [a3 toDictionary];
  if (!v13 || (v14 = v13, v15 = sub_22273910C(), v14, v16 = sub_2226C1140(v15), , !v16))
  {

    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v19 = v20;
    v21 = a3;
LABEL_8:
    sub_222738D5C();
    swift_willThrow();
    return v19;
  }

  sub_22273873C();
  v17 = *(v26 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 32);
  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder), *(v26 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 24));

  sub_22273880C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v19 = result;
    (*(v8 + 8))(v11, v7);

    return v19;
  }

  __break(1u);
  return result;
}

unint64_t sub_2226C1140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
    v2 = sub_222739A6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_22269458C(*(a1 + 48) + 40 * v14, v29);
        sub_22262BF70(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_22269458C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_22262BF70(v27 + 8, v22);
        sub_222660468(v26, &unk_27D0140C0, &unk_2227437C8);
        v23 = v20;
        sub_22269457C(v22, v24);
        v15 = v23;
        sub_22269457C(v24, v25);
        sub_22269457C(v25, &v23);
        result = sub_222688818(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_22269457C(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_22269457C(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_222660468(v26, &unk_27D0140C0, &unk_2227437C8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_2226C14E8(void *a1, void *a2)
{
  v5 = sub_222738FDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v10 = MEMORY[0x223DBDAF0]();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 2) = a2;
    *(v12 + 3) = v11;
    v13 = a1;
    v14 = a2;

    sub_222738FBC();
    if (v2)
    {
    }

    else
    {
      v12 = sub_222738FCC();

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    v12 = "oreMetricsObject";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2226C16CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a5;
  v22 = a3;
  v7 = sub_222737FDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 32);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder), *(a4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 24));
  v23 = sub_2227387FC();
  v12 = *(v8 + 16);
  v12(v10, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = v13 + v9;
  v21 = swift_allocObject();
  v15 = *(v8 + 32);
  v15(v21 + v13, v10, v7);
  v12(v10, v22, v7);
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v15(v17 + v13, v10, v7);
  v18 = v24;
  *(v17 + v16) = v24;
  v26[3] = sub_2227387BC();
  v26[4] = MEMORY[0x277D22078];
  v26[0] = v25;
  v19 = v18;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_2226C1910(uint64_t *a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2227412F0;
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 32) = v4;
  v6 = sub_222737FCC();
}

void sub_2226C1BE8()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222738D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v7 = swift_allocObject();
  v10 = xmmword_2227412F0;
  *(v7 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  v8 = sub_222738D6C();
  (*(v3 + 8))(v6, v2);
  *(v7 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  *(v7 + 32) = v8;
  v9 = sub_222737FCC();
}

id sub_2226C2060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSStoreMetricsObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2226C2114(uint64_t *a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);

  sub_2226C1910(a1);
}

void sub_2226C2184()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C1BE8();
}

uint64_t sub_2226C2258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v6 = sub_222738CFC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_222660468(v4, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v8 = v10;
    (*(v7 + 8))(v4, v6);
  }

  return v8;
}

id sub_2226C23D8(void *a1)
{
  v1 = a1;
  sub_2226C2258();
  v3 = v2;

  if (v3)
  {
    v4 = sub_22273916C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2226C2458(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22273919C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2226C24BC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_22273916C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_2226C25A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v12 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v6 = sub_222738CFC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_222660468(v4, &unk_27D013A90, &unk_222741DC0);
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v8 = v12[1];
    (*(v7 + 8))(v4, v6);
    if (v8)
    {
      v9 = [v8 stringValue];

      v10 = sub_22273919C();
      return v10;
    }
  }

  return 0;
}

id sub_2226C2754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t sub_2226C295C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-v3];
  v5 = sub_222738CFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v11 = &unk_27D013A90;
    v12 = &unk_222741DC0;
    v13 = v4;
LABEL_7:
    sub_222660468(v13, v11, v12);
    return 0;
  }

  (*(v6 + 32))(v9, v4, v5);
  v14 = *MEMORY[0x277CEE150];
  sub_222738CDC();
  (*(v6 + 8))(v9, v5);
  if (!v18)
  {
    v11 = &qword_27D0130C0;
    v12 = &unk_2227413B0;
    v13 = &v17;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v16[15];
  }

  return 0;
}

uint64_t sub_2226C2BA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_isFitnessAppInstallationAllowedCache);
  v3 = *(v2 + 24);
  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock(v4 + 4);
    sub_2226CA09C(&v6);
    os_unfair_lock_unlock(v4 + 4);

    LOBYTE(v3) = v6;
  }

  return v3 & 1;
}

uint64_t sub_2226C2C78@<X0>(_BYTE *a1@<X8>)
{
  v24 = a1;
  v23 = sub_222737C3C();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v23);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_222737CDC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v21 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  aBlock[4] = sub_2226C8D34;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226C2F8C;
  aBlock[3] = &block_descriptor_10;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  [v21 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v15);
  sub_222737CCC();
  *v4 = 5;
  v17 = v23;
  (*(v1 + 104))(v4, *MEMORY[0x277D85188], v23);
  MEMORY[0x223DBD070](v9, v4);
  (*(v1 + 8))(v4, v17);
  v18 = *(v5 + 8);
  v19 = v22;
  v18(v9, v22);
  sub_22273964C();

  v18(v11, v19);
  swift_beginAccess();
  *v24 = *(v13 + 16);
}

uint64_t sub_2226C2F8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2226C2FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_22273731C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = &qword_27D013DC0;
    v15 = qword_222743950;
    v16 = v8;
LABEL_5:
    sub_222660468(v16, v14, v15);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v17 = sub_2227396EC();
  v18 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v19 = sub_222738CFC();
  v20 = v13;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v4, 1, v19) == 1)
  {
    (*(v10 + 8))(v20, v9);

    v14 = &unk_27D013A90;
    v15 = &unk_222741DC0;
    v16 = v4;
    goto LABEL_5;
  }

  v30 = v20;
  v23 = sub_222738CEC();
  (*(v21 + 8))(v4, v19);
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v30;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_17:

    (*(v10 + 8))(v25, v9);
    return MEMORY[0x277D84F90];
  }

  v24 = sub_22273984C();
  v25 = v30;
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_9:
  v31 = MEMORY[0x277D84F90];
  result = sub_22273997C();
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x223DBEC70](v26, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      NSHTTPCookie.makeValue(in:)(v17);

      sub_22273995C();
      v29 = *(v31 + 16);
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
    }

    while (v24 != v26);
    (*(v10 + 8))(v30, v9);

    return v31;
  }

  return result;
}

Class sub_2226C3498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = sub_22273731C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_27D013DC0;
    v19 = qword_222743950;
    v20 = v12;
LABEL_5:
    sub_222660468(v20, v18, v19);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v21 = sub_2227396EC();
  v22 = *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v23 = sub_222738CFC();
  v24 = v14;
  v25 = *(v23 - 8);
  if ((*(v25 + 48))(v8, 1, v23) == 1)
  {
    (*(v24 + 8))(v17, v13);

    v18 = &unk_27D013A90;
    v19 = &unk_222741DC0;
    v20 = v8;
    goto LABEL_5;
  }

  v42 = v24;
  v27 = sub_222738CEC();
  (*(v25 + 8))(v8, v23);
  v43 = v13;
  if (v27 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22273984C())
  {
    v29 = 0;
    v44 = v27 & 0xFFFFFFFFFFFFFF8;
    v45 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v45)
      {
        v30 = MEMORY[0x223DBEC70](v29, v27);
      }

      else
      {
        if (v29 >= *(v44 + 16))
        {
          goto LABEL_26;
        }

        v30 = *(v27 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = v21;
      v34 = v17;
      v35 = [v30 name];
      v36 = sub_22273919C();
      v38 = v37;

      if (v36 == v46 && v38 == v47)
      {

LABEL_24:

        isa = NSHTTPCookie.makeValue(in:)(v33).super.isa;

        (*(v42 + 8))(v34, v43);
        return isa;
      }

      v40 = sub_222739B4C();

      if (v40)
      {
        goto LABEL_24;
      }

      ++v29;
      v17 = v34;
      v21 = v33;
      if (v32 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  (*(v42 + 8))(v17, v43);
  return 0;
}

char *sub_2226C399C(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a1;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_222738FDC();
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = *(v29 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v18 = MEMORY[0x223DBDAF0]();
  if (v18)
  {
    v19 = v18;
    (*(v10 + 16))(v13, a2, v9);
    v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = a7;
    v22 = swift_allocObject();
    (*(v10 + 32))(&v22[v20], v13, v9);
    v23 = v33;
    v24 = v34;
    *&v22[v21] = v34;
    *&v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8] = v19;
    v25 = v23;
    v26 = v24;

    v27 = v35;
    sub_222738FBC();
    if (v27)
    {
    }

    else
    {
      v22 = sub_222738FCC();

      (*(v29 + 8))(v17, v30);
    }
  }

  else
  {
    v22 = ": No account available.";
    sub_222738D8C();
    sub_2226C9638(&qword_27D013EE0, MEMORY[0x277D22430]);
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v22;
}

uint64_t sub_2226C3C90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  (*(v15 + 16))(v38 - v17, a4, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D58, &qword_222743910);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_222743908;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v13, &unk_222743918, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2226C40E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  (*(v15 + 16))(v38 - v17, a4, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D18, &qword_2227438B8);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_2227438B0;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v13, &unk_2227438C0, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}