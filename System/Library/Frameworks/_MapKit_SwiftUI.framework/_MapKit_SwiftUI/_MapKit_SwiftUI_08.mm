uint64_t sub_213D76C28(unsigned int *a1, uint64_t a2, void (*a3)(char *))
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _MapContentInputs(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CD6B10(a2, v10);
  type metadata accessor for _TraitWritingMapContentModifier();
  v11 = sub_213CDF810(a1);
  v12 = *(a2 + *(v7 + 36));
  v19[0] = v11;
  v19[1] = v12;
  v13 = type metadata accessor for _TraitWritingMapContentModifier.AddTrait();
  v21 = v13;
  WitnessTable = swift_getWitnessTable();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(v19, sub_213D781DC, v20, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  *&v10[*(v7 + 36)] = v18[5];
  a3(v10);
  result = sub_213CD7144(v10);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D76E14@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TraitWritingMapContentModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_213D76E9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v4 == v3)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t sub_213D76FC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v19 - v5;
  v7 = type metadata accessor for _TraitWritingMapContentModifier();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v22 = a1;
  sub_213D76E9C(a1, &v19 - v13);
  v15 = sub_213D9100C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_213D90FFC();
    if (v17(v14, 1, v15) != 1)
    {
      sub_213CD8330(v14, &qword_27C8EA180, &qword_213D94A40);
    }
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
  }

  sub_213D76E14(v10);
  (*(v3 + 32))(v6, v10, AssociatedTypeWitness);
  return sub_213D9102C();
}

uint64_t sub_213D77270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_213D76FC0(*v2, a2);
}

uint64_t sub_213D77280(unsigned int *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  v5 = *(a5 + 24);
  return sub_213D76C28(a1, a2, a3);
}

uint64_t sub_213D772A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + *MEMORY[0x277D84308] + 8);
  v7 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 28);

  return v8(v9, a2, v6);
}

uint64_t sub_213D77360@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a3;
  v37 = a1;
  v34 = a5;
  v39 = *MEMORY[0x277D85DE8];
  type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  v6 = sub_213D91C7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = (&v31 - v12);
  v14 = type metadata accessor for ChildEnvironment();
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CD6B10(a2, v21);
  v22 = sub_213CDF810(v37);
  sub_213D90C3C();
  if (v11 != 4)
  {
    __break(1u);
  }

  v23 = *v13;
  v24 = v33;
  (*(v10 + 8))(v13, v33);
  v25 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = sub_213D77734(v22, v23, v9, v17);
  MEMORY[0x28223BE20](v26);
  *(&v31 - 2) = v14;
  *(&v31 - 1) = swift_getWitnessTable();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED0C8, &unk_213D9BEC0);
  sub_213CDDDA4(v17, sub_213D78184, (&v31 - 4), v14, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);
  (*(v32 + 8))(v17, v14);
  (*(v10 + 16))(v13, &v38, v24);
  sub_213D90C4C();
  v36(v21);
  result = sub_213CD7144(v21);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D77734@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ChildEnvironment() + 32);
  type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  v7 = sub_213D91C7C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_213D777D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return (*(v2 + 24))(v1);
}

uint64_t sub_213D77828(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v64 = a1;
  v2 = *(a1 + 16);
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](a1);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1E8, &unk_213D9C090);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  v10 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v55 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v20 = *(v19 + 48);
  v21 = *v1;
  Value = AGGraphGetValue();
  v24 = v23;
  v25 = *(v10 - 8);
  v26 = *(v25 + 16);
  v63 = v10;
  v26(v18, Value, v10);
  v27 = v24 & 1;
  v18[v20] = v24 & 1;
  v28 = *(v6 + 56);
  v65 = v1;
  v29 = *(v1 + 1);
  v30 = sub_213D90C0C();
  v31 = AGGraphGetValue();
  LOBYTE(v29) = v32;
  v33 = (*(*(v30 - 8) + 16))(v9, v31, v30);
  v62 = v9;
  v9[v28] = v29 & 1;
  if (v29 & 1) != 0 || v27 && ((v35 = *(v64 + 32), MEMORY[0x28223BE20](v33), *(&v55 - 2) = v2, *(&v55 - 1) = v18, sub_213D91C7C(), sub_213CF3D9C(sub_213D788E4, (&v55 - 4), MEMORY[0x277D84A98], MEMORY[0x277D839B0], v36, &v68), v68 == 2) || (v68) || !AGGraphGetOutputValue())
  {
    v56 = v2;
    v37 = v66;
    v38 = *(v67 + 16);
    v38(v66, v18, TupleTypeMetadata2);
    v57 = v38;
    v58 = v25;
    v39 = *v37;
    v40 = TupleTypeMetadata2;
    v41 = *(v25 + 8);

    v42 = v37;
    v43 = v63;
    v41(v42, v63);
    v44 = v59;
    v38(v59, v18, v40);
    v45 = *(v61 + 16);
    v46 = &v44[*(v43 + 28)];
    v61 = v30;
    v45(v60, v46, v56);
    v41(v44, v43);
    TupleTypeMetadata2 = v40;
    v47 = v62;
    swift_setAtWritableKeyPath();

    AGGraphSetOutputValue();
    sub_213CD8330(v47, &qword_27C8ED1E8, &unk_213D9C090);
    v48 = *(v64 + 32);
    v49 = sub_213D91C7C();
    v50 = v65;
    (*(*(v49 - 8) + 8))(&v65[v48], v49);
    v51 = v66;
    v57(v66, v18, TupleTypeMetadata2);
    v34 = v67;
    v52 = v58;
    (*(v58 + 32))(&v50[v48], v51, v43);
    (*(v52 + 56))(&v50[v48], 0, 1, v43);
  }

  else
  {
    sub_213CD8330(v62, &qword_27C8ED1E8, &unk_213D9C090);
    v34 = v67;
  }

  result = (*(v34 + 8))(v18, TupleTypeMetadata2);
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D77DB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v34 = a4;
  v33 = *(a3 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v28 - v14;
  v32 = a1;
  v36 = *a1;
  v16 = *(v11 + 16);
  v30 = a2;
  v16(v28 - v14, a2, TupleTypeMetadata2, v13);
  v17 = *v15;
  v18 = *(v9 - 8);
  v19 = *(v18 + 8);
  v20 = v18 + 8;

  v28[1] = v20;
  v29 = v19;
  v19(v15, v9);
  v35 = v17;
  sub_213D90C0C();
  sub_213D91E7C();
  LOBYTE(v20) = sub_213D918DC();

  if (v20)
  {
    v22 = *(v9 + 28);
    (v16)(v15, v30, TupleTypeMetadata2);
    v23 = v33;
    v24 = v31;
    (*(v33 + 16))(v31, &v15[*(v9 + 28)], a3);
    v25 = v29(v15, v9);
    MEMORY[0x28223BE20](v25);
    v28[-4] = a3;
    v28[-3] = v24;
    LODWORD(v28[-2]) = 2;
    sub_213CDDDA4(v32 + v22, sub_213D78904, &v28[-6], a3, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v26);
    LOBYTE(v22) = v36;
    result = (*(v23 + 8))(v24, a3);
    v27 = v22 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  *v34 = v27 & 1;
  return result;
}

uint64_t sub_213D78108@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_213D7821C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

unint64_t sub_213D78298()
{
  result = qword_27C8ED0D8[0];
  if (!qword_27C8ED0D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED0D0, &qword_213D9BED8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED0D8);
  }

  return result;
}

uint64_t sub_213D782FC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_213D75EC4(a1, v1[2]);
}

uint64_t sub_213D78308()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D78344(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyWritingMapContentModifier();
  sub_213D903FC();
  if (v2 <= 0x3F)
  {
    sub_213D78854();
    if (v3 <= 0x3F)
    {
      sub_213D91C7C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D783F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void sub_213D785D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 8) & ~(v10 | 7));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7));
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

void sub_213D78854()
{
  if (!qword_27C8ED1E0)
  {
    sub_213D90C0C();
    v0 = sub_213D903FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8ED1E0);
    }
  }
}

uint64_t sub_213D78904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return sub_213CDDDA4(v9, sub_213D78968, &v12, v13, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], a8);
}

uint64_t sub_213D78968@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = AGCompareValues();
  *a1 = result;
  return result;
}

unint64_t sub_213D789A8()
{
  sub_213D91D8C();

  v0 = sub_213D9205C();
  MEMORY[0x21604EB30](v0);

  return 0xD000000000000014;
}

uint64_t MapZoomStepper.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t MapZoomStepper.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F0, &unk_213D9C0F0);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v34[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v5 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34[-v6];
  v7 = type metadata accessor for MapControlsConfig();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_213D90C0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *v1;
  v38 = *(v1 + 8);
  v17 = *(v1 + 16);
  LODWORD(v14) = *(v1 + 24);
  v36 = *(v1 + 32);
  v35 = *(v1 + 40);
  if (v14 == 1)
  {
    v18 = v17;
  }

  else
  {

    sub_213D91BDC();
    v19 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v17, 0);
    (*(v12 + 8))(v15, v11);
    v18 = v45;
  }

  if (v18 == 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = v7[5];
  v23 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v23 - 8) + 56))(&v10[v22], 1, 1, v23);
  v24 = v7[6];
  v25 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v25 - 8) + 56))(&v10[v24], 1, 1, v25);
  v26 = v7[7];
  v27 = type metadata accessor for MapCompassConfig(0);
  (*(*(v27 - 8) + 56))(&v10[v26], 1, 1, v27);
  *&v10[v7[8]] = (v20 << 8) | 1;
  *&v10[v7[9]] = 2;
  *&v10[v7[10]] = 2;
  if (!v38)
  {

    sub_213D91BDC();
    v30 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v16, 0);
    (*(v12 + 8))(v15, v11);
    if (v44 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v31 = sub_213D9149C();
    v32 = v37;
    sub_213CEE7C8(v10, v37 + *(v40 + 36));
    *v32 = v31;
    sub_213CEE82C(v32, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F8, &unk_213D9C128);
    sub_213CE189C();
    sub_213D79004();
    sub_213D90E5C();
    sub_213CEE89C(v32);
    return sub_213CEE76C(v10);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v43 = 0;
  v29 = v35;
  v42 = v35;
  *v4 = KeyPath;
  v4[8] = 0;
  *(v4 + 2) = v36;
  v4[24] = v29;
  v4[25] = 1;
  v4[26] = v20;
  *(v4 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F8, &unk_213D9C128);
  sub_213CE189C();
  sub_213D79004();
  sub_213D90E5C();
  return sub_213CEE76C(v10);
}

unint64_t sub_213D79004()
{
  result = qword_27C8ED200;
  if (!qword_27C8ED200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED1F8, &unk_213D9C128);
    sub_213D79090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED200);
  }

  return result;
}

unint64_t sub_213D79090()
{
  result = qword_27C8ED208;
  if (!qword_27C8ED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED208);
  }

  return result;
}

unint64_t sub_213D79110()
{
  result = qword_27C8ED210;
  if (!qword_27C8ED210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED218, &qword_213D9C258);
    sub_213CE189C();
    sub_213D79004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED210);
  }

  return result;
}

void __swiftcall MapCamera.init(_:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, MKMapCamera a2)
{
  [(objc_class *)a2.super.isa centerCoordinate];
  v5 = v4;
  v7 = v6;
  [(objc_class *)a2.super.isa centerCoordinateDistance];
  v9 = v8;
  [(objc_class *)a2.super.isa heading];
  v11 = v10;
  [(objc_class *)a2.super.isa pitch];
  v13 = v12;

  retstr->centerCoordinate.latitude = v5;
  retstr->centerCoordinate.longitude = v7;
  retstr->distance = v9;
  retstr->heading = v11;
  retstr->pitch = v13;
}

void sub_213D79274(void *a1@<X8>, double a2@<D4>, double a3@<D5>)
{
  v6 = MEMORY[0x21604F420]();
  v10 = [objc_opt_self() _cameraLookingAtMapRect_forViewSize_];
  if (v10)
  {
    v11 = v10;
    [v10 centerCoordinate];
    v13 = v12;
    v15 = v14;
    [v11 centerCoordinateDistance];
    v17 = v16;
    [v11 heading];
    v19 = v18;
    [v11 pitch];
    v21 = v20;

    *a1 = v13;
    a1[1] = v15;
    a1[2] = v17;
    a1[3] = v19;
    a1[4] = v21;
  }

  else
  {
    __break(1u);
  }
}

void sub_213D7936C(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v8 = [objc_opt_self() _cameraLookingAtMapRect_forViewSize_];
  if (v8)
  {
    v9 = v8;
    [v8 centerCoordinate];
    v11 = v10;
    v13 = v12;
    [v9 centerCoordinateDistance];
    v15 = v14;
    [v9 heading];
    v17 = v16;
    [v9 pitch];
    v19 = v18;

    *a1 = v11;
    a1[1] = v13;
    a1[2] = v15;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

double MapCamera.centerCoordinate.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void __swiftcall MapCamera.init(centerCoordinate:distance:heading:pitch:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, __C::CLLocationCoordinate2D centerCoordinate, Swift::Double distance, Swift::Double heading, Swift::Double pitch)
{
  retstr->centerCoordinate.latitude = centerCoordinate.latitude;
  retstr->centerCoordinate.longitude = centerCoordinate.longitude;
  retstr->distance = distance;
  retstr->heading = heading;
  retstr->pitch = pitch;
}

__n128 sub_213D79538@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  return result;
}

__n128 sub_213D79548@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 1;
  return result;
}

uint64_t MapCameraBounds.init(centerCoordinateBounds:minimumDistance:maximumDistance:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  return sub_213D795CC(a1, a2, a3, a4, type metadata accessor for MKCoordinateRegion, &qword_27C8ED220, type metadata accessor for MKCoordinateRegion, a5, a6, a7, a8, a9);
}

{
  return sub_213D795CC(a1, a2, a3, a4, type metadata accessor for MKMapRect, &qword_27C8ED228, type metadata accessor for MKMapRect, a5, a6, a7, a8, a9);
}

uint64_t sub_213D795CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  *(a8 + 32) = 0;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  v25[3] = a5(0);
  v25[4] = sub_213D797E8(a6, a7);
  v23 = swift_allocObject();
  v25[0] = v23;
  v23[2] = a9;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  result = sub_213D79778(v25, a8);
  *(a8 + 40) = a1;
  *(a8 + 48) = a2 & 1;
  *(a8 + 56) = a3;
  *(a8 + 64) = a4 & 1;
  return result;
}

double MapCameraBounds.init(minimumDistance:maximumDistance:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  sub_213D79830(a5);
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2 & 1;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4 & 1;
  return result;
}

uint64_t sub_213D79778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC0, &qword_213D98578);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D797E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213D79830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC0, &qword_213D98578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A12CameraRegion_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_213D7991C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213D79978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 static MapCameraPosition.camera(_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(v5 + 48) = v4;
  *a2 = v5 | 0x6000000000000000;
  return result;
}

void MapCameraPosition.camera.getter(uint64_t a1@<X8>)
{
  v2 = *v1 & 0xE000000000000000;
  if (v2 == 0x6000000000000000)
  {
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2 != 0x6000000000000000;
}

unint64_t static MapCameraPosition.userLocation(followsHeading:fallback:)@<X0>(char a1@<W0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x8000000000000000;

  return sub_213D1DFC0(v5);
}

uint64_t sub_213D79B18(unint64_t a1, double *a2)
{
  while (1)
  {
    v2 = a1 >> 61;
    if (a1 >> 61 != 4)
    {
      break;
    }

    if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      return 0;
    }

    a1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 61 == 2)
      {
        v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) isEqual_] & (v4 ^ v5 ^ 1);
      }

      return 0;
    }

    if (v2 == 3)
    {
      if (a2 >> 61 == 3 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10)), vceqq_f64(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28), *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28))))) & 1) != 0)
      {
        return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      }

      return 0;
    }

    if (a1 == 0xA000000000000000)
    {
      if (a2 == 0xA000000000000000)
      {
        return 1;
      }
    }

    else if (a2 == 0xA000000000000008)
    {
      return 1;
    }

    return 0;
  }

  if (!v2)
  {
    if (!(a2 >> 61) && vabdd_f64(*(a1 + 16), a2[2]) < 0.00000000999999994 && vabdd_f64(*(a1 + 24), a2[3]) < 0.00000000999999994 && vabdd_f64(*(a1 + 32), a2[4]) < 0.00000000999999994)
    {
      return vabdd_f64(*(a1 + 40), a2[5]) < 0.00000000999999994;
    }

    return 0;
  }

  if (a2 >> 61 != 1)
  {
    return 0;
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    return 0;
  }

  return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

double *static MapCameraPosition.region(_:)@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  *a1 = result;
  return result;
}

uint64_t static MapCameraPosition.rect(_:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *a1 = result | 0x2000000000000000;
  return result;
}

id static MapCameraPosition.item(_:allowsAutomaticPitch:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *a3 = v5 | 0x4000000000000000;

  return a1;
}

void MapCameraPosition.region.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = 0uLL;
  v4 = *v1 >> 61;
  v5 = 0uLL;
  if (!v4)
  {
    v3 = *(v2 + 16);
    v5 = *(v2 + 32);
  }

  *v1;
  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4 != 0;
}

void MapCameraPosition.rect.getter(uint64_t a1@<X8>)
{
  v2 = *v1 & 0xE000000000000000;
  v3 = 0uLL;
  v4 = 0uLL;
  if (v2 == 0x2000000000000000)
  {
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2 != 0x2000000000000000;
}

void *MapCameraPosition.item.getter()
{
  if (*v0 >> 61 != 2)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = v1;
  return v1;
}

uint64_t MapCameraPosition.followsUserHeading.getter()
{
  if (*v0 >> 61 == 4)
  {
    return *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    return 0;
  }
}

unint64_t MapCameraPosition.fallbackPosition.getter@<X0>(unint64_t *a1@<X8>)
{
  if (*v1 >> 61 == 4)
  {
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    result = sub_213D1DFC0(v3);
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a1 = v3;
  return result;
}

uint64_t MapCameraPosition.allowsAutomaticPitch.getter()
{
  if (*v0 >> 61 == 2)
  {
    return *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D79F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D79FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_213D7A054(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

MKMapConfiguration __swiftcall MapStyle.configuration()()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    if ((*(v0 + 48) & 1) == 0)
    {
      v9 = *(v0 + 40);
      v4 = objc_allocWithZone(MEMORY[0x277CD4E10]);
      v5 = sel_initWithElevationStyle_;

      return [v4 v5];
    }

    v2 = *(v0 + 64);
    if (*(v0 + 64) == 1)
    {
      v3 = *(v0 + 136);
      if (v3 == 2)
      {
        v4 = objc_allocWithZone(MEMORY[0x277CD4F50]);
        v5 = sel_init;

        return [v4 v5];
      }

      v16 = *(v0 + 104);
      v17 = *(v0 + 88);
      v11 = *(v0 + 120);
      v12 = *(v0 + 128);
      v13 = *(v0 + 144);
      v14 = *(v0 + 145);
      *v18 = v17;
      *&v18[16] = v16;
      v19 = v11;
      v20 = v12;
      v21 = v3 & 1;
      v15 = [objc_allocWithZone(MEMORY[0x277CD4F90]) initWithCartographicConfiguration_];
      [v15 setShowsTraffic_];
      [v15 setShowsHiking_];
      return v15;
    }

    else
    {
      v10 = *(v0 + 80);
      *v18 = *(v0 + 56);
      *&v18[8] = v2;
      v18[24] = v10 & 1;
      return sub_213D7AC08();
    }
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = *(v0 + 24);
    *v18 = *v0;
    *&v18[16] = v1;
    *&v18[24] = v8;
    LOWORD(v19) = v7 & 0x101;
    return sub_213D7AAB0();
  }
}

double static MapStyle.standard.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = xmmword_213D99630;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

double static MapStyle.hybrid.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_213D98BB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

double static MapStyle.imagery(elevation:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_213D98BB0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = xmmword_213D99630;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 2;
  *(a2 + 144) = 0;
  return result;
}

uint64_t static MapStyle.standard(elevation:emphasis:pointsOfInterest:showsTraffic:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v8;
  *(a5 + 24) = v7;
  *(a5 + 32) = a4 & 1;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = xmmword_213D99630;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 2;
  *(a5 + 144) = 0;
}

uint64_t static MapStyle.hybrid(elevation:pointsOfInterest:showsTraffic:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = xmmword_213D98BB0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = v4;
  *(a4 + 64) = v6;
  *(a4 + 72) = v5;
  *(a4 + 80) = a3;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 2;
  *(a4 + 144) = 0;
}

void sub_213D7A454(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 elevationStyle];
    v7 = [v5 emphasisStyle];
    v8 = [v5 showsTraffic];
    v9 = [v5 showsHiking];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v9)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v8;
    v20 = 0uLL;
    v21 = 1;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v15 = [v26 elevationStyle];
    v17 = [v27 showsTraffic];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v14 = 0;
    v25 = 0;
    v20 = 0uLL;
    v16 = MEMORY[0x277D84F90];
    v13 = 1;
    v23 = 2;
    v24 = 0uLL;
    v21 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v14 = [v28 elevationStyle];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v21 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v13 = 1;
LABEL_6:
    v23 = 2;
    v24 = 0uLL;
    v25 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    [v29 cartographicConfiguration];
    v11 = v37;
    v23 = v38;
    v33 = [v30 showsTraffic];
    v31 = [v30 showsHiking];

    v20 = v34;
    v24 = v35;
    v10 = v36;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v31)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v12 = v32 | v33;
    v13 = 1;
    v21 = 1;
    v25 = 1;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v13 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v25 = 1;
    v22 = MEMORY[0x277D84F90];
    v23 = 2;
    v24 = 0uLL;
    v21 = 1;
  }

LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v14;
  *(a2 + 48) = v21;
  *(a2 + 56) = v15;
  *(a2 + 64) = v25;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v20;
  *(a2 + 104) = v24;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v23;
  *(a2 + 144) = v12;
}

uint64_t sub_213D7A794()
{
  sub_213D64778();

  return sub_213D90C1C();
}

double static MapStyle.imagery.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_213D98BB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_213D99630;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

uint64_t View.mapStyle(_:)(__int128 *a1)
{
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = *(a1 + 72);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  sub_213D9130C();
}

double sub_213D7A8DC@<D0>(uint64_t a1@<X8>)
{
  sub_213D64778();
  sub_213D90C1C();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213D7A964(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v26 = *(a1 + 96);
  v27 = v1;
  v3 = *(a1 + 112);
  v28 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v7;
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v8;
  v17 = v26;
  v18 = v3;
  v19 = *(a1 + 128);
  v13 = v22;
  v14 = v6;
  v15 = v24;
  v16 = v2;
  v29 = *(a1 + 144);
  v20 = *(a1 + 144);
  v11 = v21[0];
  v12 = v5;
  sub_213D1E0AC(v21, v10);
  sub_213D64778();
  return sub_213D90C2C();
}

uint64_t static MapStyle._standard(elevation:emphasis:pointsOfInterest:showsTraffic:showsHiking:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v9 = *a3;
  v8 = a3[1];
  if (a5)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *a6 = v6;
  *(a6 + 8) = v7;
  *(a6 + 16) = v9;
  *(a6 + 24) = v8;
  *(a6 + 32) = v10 & 0xFFFE | a4 & 1;
  *(a6 + 40) = 0;
  *(a6 + 48) = 1;
  *(a6 + 56) = xmmword_213D99630;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 2;
  *(a6 + 144) = 0;
}

id sub_213D7AAB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CD4F50]);

  v7 = [v6 initWithElevationStyle:v1 emphasisStyle:v2];
  if (v3)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v9 = sub_213D919EC();
    v10 = [v8 initIncludingCategories_];
  }

  else
  {
    if (!v4)
    {

      v12 = 0;
      goto LABEL_6;
    }

    v11 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v9 = sub_213D919EC();
    v10 = [v11 initExcludingCategories_];
  }

  v12 = v10;

LABEL_6:
  [v7 setPointOfInterestFilter_];

  [v7 setShowsTraffic_];
  return v7;
}

id sub_213D7AC08()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = objc_allocWithZone(MEMORY[0x277CD4E00]);

  v6 = [v5 initWithElevationStyle_];
  if (v1)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v8 = sub_213D919EC();
    v9 = [v7 initIncludingCategories_];
  }

  else
  {
    if (!v3)
    {

      v11 = 0;
      goto LABEL_6;
    }

    v10 = objc_allocWithZone(MEMORY[0x277CD4F10]);
    type metadata accessor for MKPointOfInterestCategory(0);
    v8 = sub_213D919EC();
    v9 = [v10 initExcludingCategories_];
  }

  v11 = v9;

LABEL_6:
  [v6 setPointOfInterestFilter_];

  [v6 setShowsTraffic_];
  return v6;
}

uint64_t sub_213D7AD58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 146))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_213D7ADC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_213D7AE7C()
{
  result = qword_27C8ED2D0[0];
  if (!qword_27C8ED2D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED2C8, &qword_213D9C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED2D0);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213D7AEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213D7AF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213D7AFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_213D7B010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_213D7B088(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213D7B0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_213D7B150()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277CD4E10]);

  return [v2 initWithElevationStyle_];
}

id sub_213D7B19C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 57);
  v6 = objc_allocWithZone(MEMORY[0x277CD4F90]);
  v7 = *v0;
  v10[1] = v0[1];
  v10[0] = v7;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v8 = [v6 initWithCartographicConfiguration_];
  [v8 setShowsTraffic_];
  [v8 setShowsHiking_];
  return v8;
}

double sub_213D7B24C()
{
  xmmword_27C8ED230 = 0uLL;
  *&xmmword_27C8ED240 = 0;
  *(&xmmword_27C8ED240 + 1) = MEMORY[0x277D84F90];
  LOWORD(xmmword_27C8ED250) = 0;
  *(&xmmword_27C8ED250 + 1) = 0;
  LOBYTE(xmmword_27C8ED260) = 1;
  *(&xmmword_27C8ED260 + 8) = xmmword_213D99630;
  qword_27C8ED278 = 0;
  LOBYTE(xmmword_27C8ED280) = 0;
  result = 0.0;
  *(&xmmword_27C8ED280 + 8) = 0u;
  *(&xmmword_27C8ED290 + 8) = 0u;
  *(&xmmword_27C8ED2A0 + 8) = 0u;
  qword_27C8ED2B8 = 2;
  word_27C8ED2C0 = 0;
  return result;
}

uint64_t sub_213D7B2A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C8E99F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27C8ED280;
  v11[6] = xmmword_27C8ED290;
  v11[7] = xmmword_27C8ED2A0;
  v2 = xmmword_27C8ED2A0;
  v11[8] = unk_27C8ED2B0;
  v3 = xmmword_27C8ED250;
  v4 = xmmword_27C8ED240;
  v11[2] = xmmword_27C8ED250;
  v11[3] = xmmword_27C8ED260;
  v5 = xmmword_27C8ED260;
  v6 = unk_27C8ED270;
  v11[4] = unk_27C8ED270;
  v11[5] = xmmword_27C8ED280;
  v7 = xmmword_27C8ED230;
  v11[0] = xmmword_27C8ED230;
  v11[1] = xmmword_27C8ED240;
  *(a1 + 96) = xmmword_27C8ED290;
  *(a1 + 112) = v2;
  *(a1 + 128) = unk_27C8ED2B0;
  *(a1 + 32) = v3;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v1;
  v12 = word_27C8ED2C0;
  *(a1 + 144) = word_27C8ED2C0;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_213D1E0AC(v11, v10);
}

uint64_t sub_213D7B398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213D91C7C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for MapSelectionManagerBox();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7B444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = *(a1[3] - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v48 - v7;
  v56 = v8;
  v9 = sub_213D91C7C();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v48 - v13;
  v14 = *(a1 - 1);
  v15 = v14[8];
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v57 = a1[2];
  v22 = sub_213D91C7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v48 - v26;
  v28 = v14[2];
  v28(v21, v2, a1, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *(v23 + 32);
    v29(v27, v21, v22);
    return (v29)(v58, v27, v22);
  }

  v31 = v58;
  v32 = v14[1];
  v32(v21, a1);
  (v28)(v18, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v34 = v52;
    v33 = v53;
    v35 = v54;
    (*(v53 + 32))(v52, v18, v54);
    v36 = v51;
    (*(v33 + 16))(v51, v34, v35);
    v38 = v55;
    v37 = v56;
    if ((*(v55 + 48))(v36, 1, v56) == 1)
    {
      v39 = *(v33 + 8);
      v39(v34, v35);
      v39(v36, v35);
    }

    else
    {
      v40 = v50;
      v41 = v36;
      v42 = *(v38 + 32);
      v42(v50, v41, v37);
      (*(a1[5] + 16))(&v59, v37);
      (*(v33 + 8))(v34, v35);
      if (!v59)
      {
        v42(v49, v40, v37);
        v46 = v57;
        v47 = swift_dynamicCast();
        v43 = *(*(v46 - 8) + 56);
        if (v47)
        {
          v44 = v31;
          v45 = 0;
        }

        else
        {
          v44 = v31;
          v45 = 1;
        }

        return v43(v44, v45, 1);
      }

      (*(v38 + 8))(v40, v37);
    }
  }

  else
  {
    v32(v18, a1);
  }

  v43 = *(*(v57 - 8) + 56);
  v44 = v31;
  v45 = 1;
  return v43(v44, v45, 1);
}

uint64_t sub_213D7B980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213D91C7C();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v33 - v14;
  v15 = *(a1 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = v15[2];
  v24(&v33 - v22, v3, a1, v21);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    *a2 = *v23;
    return result;
  }

  v34 = a2;
  v26 = v15[1];
  v26(v23, a1);
  (v24)(v19, v3, a1);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = v26(v19, a1);
    goto LABEL_7;
  }

  v28 = v35;
  v27 = v36;
  v29 = v37;
  (*(v36 + 32))(v35, v19, v37);
  (*(v27 + 16))(v12, v28, v29);
  v30 = v38;
  if ((*(v38 + 48))(v12, 1, v6) == 1)
  {
    v31 = *(v27 + 8);
    v31(v28, v29);
    result = (v31)(v12, v29);
LABEL_7:
    *v34 = 0;
    return result;
  }

  v32 = v33;
  (*(v30 + 32))(v33, v12, v6);
  (*(*(a1 + 40) + 16))(v6);
  (*(v30 + 8))(v32, v6);
  return (*(v27 + 8))(v28, v29);
}

uint64_t sub_213D7BD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213D91C7C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for MapSelectionManagerBox();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7BDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = *(a1 + 24);
    v10 = sub_213D91C7C();
    return (*(*(v10 - 8) + 32))(a2, v8, v10);
  }

  else
  {
    (*(v4 + 8))(v8, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_213D7BF40(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = v3[2];
  v11(&v16 - v9, v1, a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v3[1];
  v13(v10, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 1;
  }

  (v11)(v6, v1, a1);
  v14 = swift_getEnumCaseMultiPayload() == 2;
  v13(v6, a1);
  return v14;
}

uint64_t sub_213D7C0AC@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_213D7C0E0(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = v3[2];
  v11(&v16 - v9, v1, a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v3[1];
  v13(v10, a1);
  if (!EnumCaseMultiPayload)
  {
    return 1;
  }

  (v11)(v6, v1, a1);
  v14 = swift_getEnumCaseMultiPayload() == 2;
  v13(v6, a1);
  return v14;
}

uint64_t sub_213D7C248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v14 = *v13;
  v15 = v5[2];
  v15(&v24 - v11, v3, a2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v5[1];
  if (EnumCaseMultiPayload)
  {
    v17(v12, a2);
  }

  else
  {
    v17(v3, a2);
    v17(v12, a2);
    *v3 = v14;
    swift_storeEnumTagMultiPayload();
    v18 = v14;
  }

  (v15)(v8, v3, a2);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (v17)(v8, a2);
  }

  v17(v3, a2);
  v17(v8, a2);
  v19 = *(a2 + 24);
  v25 = v14;
  v20 = *(a2 + 40);
  v21 = *(v20 + 24);
  v22 = v14;
  v21(&v25, v19, v20);
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D7C498(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = *(a2 + 16);
  v5 = sub_213D91C7C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v27 - v7;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  v19 = *(v8 + 16);
  v19(&v27 - v17, v2, a2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v8 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v21(v2, a2);
    v21(v18, a2);
    v22 = v29;
    (*(v30 + 16))(v2, v29, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21(v18, a2);
    v22 = v29;
  }

  (v19)(v14, v2, a2);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return (v21)(v14, a2);
  }

  v21(v2, a2);
  v21(v14, a2);
  (*(v30 + 16))(v27, v22, v5);
  v23 = *(a2 + 24);
  v24 = v28;
  v25 = swift_dynamicCast();
  (*(*(v23 - 8) + 56))(v24, v25 ^ 1u, 1, v23);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 32))(v2, v24, a2);
}

uint64_t _s15_MapKit_SwiftUI0A9SelectionV2eeoiySbACyxG_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v36 = *(a3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v6;
  v7 = type metadata accessor for MapSelection.Storage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v16 = *(v35 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v33 - v18;
  v21 = *(v20 + 48);
  v22 = *(v8 + 16);
  v22(&v33 - v18, v37, v7, v17);
  (v22)(&v19[v21], v38, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v22)(v11, v19, v7);
    v23 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *&v19[v21];
      if (v23)
      {
        if (v24)
        {
          v25 = v23;
          v26 = [v25 isEqual_];

          if (v26)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        if (!v24)
        {
LABEL_16:
          v27 = 1;
          goto LABEL_17;
        }

        v23 = 0;
      }

LABEL_15:
      v27 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    (v22)(v14, v19, v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v36;
      v29 = v33;
      (*(v36 + 32))(v33, &v19[v21], a3);
      v30 = *(v34 + 8);
      v27 = sub_213D918DC();
      v31 = *(v28 + 8);
      v31(v29, a3);
      v31(v14, a3);
      goto LABEL_17;
    }

    (*(v36 + 8))(v14, a3);
  }

  v27 = 0;
  v8 = v35;
  v7 = TupleTypeMetadata2;
LABEL_17:
  (*(v8 + 8))(v19, v7);
  return v27 & 1;
}

void sub_213D7CC1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v15, a2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v13;
    MEMORY[0x21604F190](1);
    sub_213D91FDC();
    if (v16)
    {
      v17 = v16;
      sub_213D91C6C();
    }
  }

  else
  {
    (*(v4 + 32))(v7, v13, v3);
    MEMORY[0x21604F190](0);
    v18 = *(a2 + 24);
    sub_213D918BC();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213D7CDFC(uint64_t a1)
{
  sub_213D91FBC();
  sub_213D7CC1C(v3, a1);
  return sub_213D91FFC();
}

uint64_t MapSelection.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for MapSelection.Storage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(v6 - 8);
    v14 = 1;
  }

  else
  {
    v13 = *(v6 - 8);
    (*(v13 + 32))(a2, v12, v6);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v6);
}

uint64_t MapSelection.feature.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for MapSelection.Storage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v14 - v11);
  (*(v8 + 16))(&v14 - v11, v3, v7, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    *a2 = *v12;
  }

  else
  {
    *a2 = 0;
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t MapSelection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for MapSelection.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t MapSelection.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for MapSelection.Storage();

  return swift_storeEnumTagMultiPayload();
}

void MapSelection.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for MapSelection.Storage();

  sub_213D7CC1C(a1, v5);
}

uint64_t MapSelection.hashValue.getter(uint64_t a1)
{
  sub_213D91FBC();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for MapSelection.Storage();
  sub_213D7CC1C(v6, v4);
  return sub_213D91FFC();
}

uint64_t sub_213D7D328@<X0>(void *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return MapSelection.init(_:)(a1, a2);
}

uint64_t sub_213D7D354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_213D91FBC();
  a4(v7, a2);
  return sub_213D91FFC();
}

uint64_t sub_213D7D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a1;
  v132 = a2;
  v120 = *(a4 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](a1);
  v107 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v111 = *(TupleTypeMetadata2 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v115 = &v106 - v14;
  v129 = v12;
  v128 = *(v12 - 8);
  v15 = v128[8];
  MEMORY[0x28223BE20](v16);
  v113 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v118 = &v106 - v19;
  MEMORY[0x28223BE20](v20);
  v124 = &v106 - v21;
  v119 = *(a3 - 8);
  v22 = *(v119 + 64);
  MEMORY[0x28223BE20](v23);
  v106 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_213D91C7C();
  v121 = swift_getTupleTypeMetadata2();
  v110 = *(v121 - 8);
  v26 = *(v110 + 64);
  MEMORY[0x28223BE20](v121);
  v114 = &v106 - v27;
  v126 = *(v25 - 8);
  v28 = v126[8];
  MEMORY[0x28223BE20](v29);
  v112 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v117 = &v106 - v32;
  MEMORY[0x28223BE20](v33);
  v123 = &v106 - v34;
  v125 = a3;
  v133 = a3;
  v134 = a4;
  v116 = a4;
  v108 = a5;
  v135 = a5;
  v136 = a6;
  v109 = a6;
  v35 = type metadata accessor for MapSelectionManagerBox();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v106 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = (&v106 - v44);
  v46 = swift_getTupleTypeMetadata2();
  v130 = *(v46 - 8);
  v47 = *(v130 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v106 - v49;
  v52 = *(v51 + 48);
  v127 = v36;
  v53 = *(v36 + 16);
  v53(&v106 - v49, v131, v35, v48);
  (v53)(&v50[v52], v132, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v53)(v42, v50, v35);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = v126;
        v56 = v126[4];
        v57 = v123;
        v56(v123, v42, v25);
        v58 = &v50[v52];
        v59 = v117;
        v56(v117, v58, v25);
        v60 = *(v121 + 48);
        v61 = v114;
        v62 = v57;
        v63 = v59;
        v64 = v55[2];
        v64(v114, v62, v25);
        v132 = v60;
        v64(&v61[v60], v63, v25);
        v65 = *(v119 + 48);
        if (v65(v61, 1, v125) == 1)
        {
          v66 = v55[1];
          v66(v63, v25);
          v66(v123, v25);
          if (v65(&v61[v132], 1, v125) == 1)
          {
            v67 = v61;
            v68 = v25;
LABEL_13:
            v66(v67, v68);
LABEL_14:
            v82 = 1;
LABEL_35:
            v83 = v127;
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        v86 = v112;
        v64(v112, v61, v25);
        v87 = v132;
        v88 = v125;
        if (v65(&v61[v132], 1, v125) == 1)
        {
          v89 = v126[1];
          v89(v117, v25);
          v89(v123, v25);
          (*(v119 + 8))(v86, v88);
LABEL_23:
          (*(v110 + 8))(v61, v121);
          goto LABEL_31;
        }

        v95 = v119;
        v96 = v106;
        (*(v119 + 32))(v106, &v61[v87], v88);
        v97 = *(v108 + 8);
        v82 = sub_213D918DC();
        v98 = v88;
        v99 = *(v95 + 8);
        v99(v96, v98);
        v100 = v126[1];
        v100(v117, v25);
        v100(v123, v25);
        v101 = &v137;
LABEL_34:
        v99(*(v101 - 32), v98);
        v100(v61, v25);
        goto LABEL_35;
      }

      (v126[1])(v42, v25);
    }

    else
    {
      (v53)(v39, v50, v35);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v70 = v128;
        v71 = v129;
        v72 = v128[4];
        v73 = v124;
        v72(v124, v39, v129);
        v74 = &v50[v52];
        v75 = v118;
        v72(v118, v74, v71);
        v76 = *(TupleTypeMetadata2 + 48);
        v77 = v70[2];
        v61 = v115;
        v77(v115, v73, v71);
        v132 = v76;
        v77(&v61[v76], v75, v71);
        v78 = *(v120 + 48);
        v79 = v116;
        if (v78(v61, 1, v116) == 1)
        {
          v66 = v128[1];
          v80 = v75;
          v81 = v129;
          v66(v80, v129);
          v66(v124, v81);
          if (v78(&v61[v132], 1, v79) == 1)
          {
            v67 = v61;
            v68 = v81;
            goto LABEL_13;
          }
        }

        else
        {
          v90 = v113;
          v91 = v79;
          v25 = v129;
          v77(v113, v61, v129);
          v92 = v132;
          v93 = v91;
          if (v78(&v61[v132], 1, v91) != 1)
          {
            v102 = v120;
            v103 = v107;
            v98 = v93;
            (*(v120 + 32))(v107, &v61[v92], v93);
            v104 = *(*(v109 + 8) + 8);
            v82 = sub_213D918DC();
            v99 = *(v102 + 8);
            v99(v103, v98);
            v100 = v128[1];
            v100(v118, v25);
            v100(v124, v25);
            v101 = &v138;
            goto LABEL_34;
          }

          v94 = v128[1];
          v94(v118, v25);
          v94(v124, v25);
          (*(v120 + 8))(v90, v93);
        }

        (*(v111 + 8))(v61, TupleTypeMetadata2);
        goto LABEL_31;
      }

      (v128[1])(v39, v129);
    }
  }

  else
  {
    (v53)(v45, v50, v35);
    v69 = *v45;
    if (!swift_getEnumCaseMultiPayload())
    {
      v84 = *&v50[v52];
      if (v69)
      {
        if (v84)
        {
          v85 = v69;
          v82 = [v85 isEqual_];

          goto LABEL_35;
        }
      }

      else
      {
        if (!v84)
        {
          goto LABEL_14;
        }

        v69 = 0;
      }

LABEL_31:
      v82 = 0;
      goto LABEL_35;
    }
  }

  v82 = 0;
  v83 = v130;
  v35 = v46;
LABEL_36:
  (*(v83 + 8))(v50, v35);
  return v82 & 1;
}

uint64_t (*sub_213D7DFD4())()
{
  sub_213D7EC1C();
  sub_213D90C1C();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_213D7EC8C;
}

uint64_t View.mapFeatureSelectionDisabled(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_213D9130C();
}

double sub_213D7E11C@<D0>(_OWORD *a1@<X8>)
{
  sub_213D7EC1C();
  sub_213D90C1C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213D7E16C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_213D7EC70;
    *(v4 + 24) = v3;
  }

  sub_213CD4E28(v1);
  sub_213D7EC1C();
  return sub_213D90C2C();
}

uint64_t sub_213D7E230@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213D7E264(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D7E2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MapSelection.Storage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D7E354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_213D7E46C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_213D7E63C()
{
  result = qword_27C8ED360[0];
  if (!qword_27C8ED360[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED358, &qword_213D9CA38);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED360);
  }

  return result;
}

void sub_213D7E6A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_213D7E718();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_213D7E718()
{
  if (!qword_27C8ED3E8[0])
  {
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ED3E8);
    }
  }
}

void sub_213D7E768(uint64_t a1)
{
  sub_213D7E718();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_213D91C7C();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      sub_213D91C7C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D7E7F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (!*(*(*(a3 + 16) - 8) + 84))
  {
    ++v3;
  }

  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  if (v3 > v5)
  {
    v5 = v3;
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_32;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v11 < 2)
    {
LABEL_32:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_32;
  }

LABEL_21:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_213D7E99C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = *(*(a4 + 24) - 8);
  if (!*(*(*(a4 + 16) - 8) + 84))
  {
    ++v5;
  }

  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v5 > v7)
  {
    v7 = v5;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_46:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v7] = -a2;
      return;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_31;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_32;
  }
}

unint64_t sub_213D7EC1C()
{
  result = qword_27C8ED470;
  if (!qword_27C8ED470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED470);
  }

  return result;
}

BOOL sub_213D7EC90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return MKMapRectEqualToRect(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

void MapCircle.init(center:radius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void MapCircle.init(mapRect:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 1;
}

void MapCircle.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 coordinate];
  v5 = v4;
  v7 = v6;
  [a1 radius];
  v9 = v8;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

uint64_t static MapCircle._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED478, &qword_213D9CBA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  v25 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v26;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(v16 + *(v18 + 28));
  v27 = 1;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 28);
  v33[28] = -1;
  v34 = 0;
  v35 = -1;
  v36 = 0;
  v37 = 1;
  sub_213CDB9F8();
  sub_213D7FEB0();
  v20 = sub_213D903EC();
  v21 = *(v18 + 24);
  MEMORY[0x28223BE20](v20);
  *(&v25 - 4) = v22;
  sub_213CD8390();
  result = sub_213D90F7C();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_213D7F0D8()
{
  v168 = *MEMORY[0x277D85DE8];
  v118 = type metadata accessor for MapContentList.Item.Content(0);
  v1 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v3 = &v112[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = type metadata accessor for MapContentList.Item(0);
  v122 = *(v120 - 8);
  v4 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v112[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v123 = &v112[-v7];
  v137 = sub_213D90C0C();
  v8 = *(v137 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v137);
  v147 = &v112[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v148 = &v112[-v12];
  MEMORY[0x28223BE20](v13);
  v145 = &v112[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v112[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v112[-v22];
  v24 = sub_213D9100C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v141 = &v112[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v149 = &v112[-v29];
  v30 = *v0;
  Value = AGGraphGetValue();
  v131 = v32;
  v33 = *Value;
  v114 = *(Value + 16);
  v115 = v33;
  v113 = *(Value + 32);
  v139 = v0;
  LODWORD(Value) = v0[2];
  v34 = *MEMORY[0x277CEF7D0];
  v150 = v24;
  v121 = v3;
  v146 = v25;
  if (Value == v34)
  {
    (*(v20 + 56))(v18, 1, 1, v19);
    v35 = *(v19 + 48);
    sub_213D90FFC();
    v23[v35] = 0;
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      sub_213CD8330(v18, &qword_27C8EA920, &unk_213D96380);
    }
  }

  else
  {
    v36 = AGGraphGetValue();
    v37 = v8;
    v39 = v38;
    v40 = *(v19 + 48);
    (*(v25 + 16))(v18, v36, v24);
    v41 = v39 & 1;
    v8 = v37;
    v18[v40] = v41;
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_213CF3968(v18, v23);
  }

  v128 = v23[*(v19 + 48)];
  v116 = *(v146 + 32);
  v117 = v146 + 32;
  v116(v149, v23, v150);
  v42 = v139;
  v43 = v139[1];
  v44 = v137;
  v45 = AGGraphGetValue();
  v46 = v8[2];
  v47 = v145;
  v46(v145, v45, v44);
  v48 = sub_213D90A7C();
  v151 = v8[1];
  v151(v47, v44);
  v49 = *(v42 + 2);
  v140 = (v48 | v49) == 0;
  if (v48 && v49)
  {

    v140 = sub_213D9147C();
  }

  v138 = v49;
  v144 = v48;
  v50 = AGGraphGetValue();
  v46(v47, v50, v44);
  sub_213D4F17C();
  sub_213D90C1C();
  v151(v47, v44);
  v136 = v160;
  v154 = v160;
  v155 = v161;
  v135 = v162;
  v156 = v162;
  v133 = *(&v161 + 1);
  v134 = v161;
  v51 = *(v42 + 6);
  v132 = v51;
  if (v51)
  {
    v52 = *(v42 + 7);
    v53 = *(v42 + 5);
    v54 = *(v42 + 4);
    v157[0] = *(v42 + 3);
    v157[1] = v54;
    v157[2] = v53;
    v157[3] = v51;
    v157[4] = v52;
    sub_213D1E3A4(&v154, &v160);

    v55 = MEMORY[0x21604D700](&v154, v157);

    sub_213D1E400(&v154);
    v56 = v55 ^ 1;
  }

  else
  {

    v56 = 1;
  }

  v125 = v56;
  v57 = AGGraphGetValue();
  v46(v47, v57, v44);
  sub_213D4F1D0();
  sub_213D90C1C();
  v151(v47, v44);
  v58 = AGGraphGetValue();
  v59 = v148;
  v46(v148, v58, v44);
  v60 = sub_213D67A84(&v160, v59);
  v62 = *(v42 + 8);
  v63 = *(v42 + 72);
  v143 = v60;
  LODWORD(v148) = v61;
  v130 = v62;
  v129 = v63;
  if (v63 == 255)
  {
    goto LABEL_16;
  }

  if ((v61 & 1) == 0)
  {
    if ((v63 & 1) == 0)
    {
      v142 = v46;
      v64 = v60;
      sub_213D2BCD4(v60, 0);
      sub_213D4F40C(v62, v63);
      v65 = sub_213D9147C();
      goto LABEL_18;
    }

LABEL_16:
    v124 = 1;
    goto LABEL_19;
  }

  if ((v63 & 1) == 0)
  {
    goto LABEL_16;
  }

  v142 = v46;
  v64 = v60;
  sub_213D2BCD4(v60, 1);
  sub_213D4F40C(v62, v63);
  v65 = MEMORY[0x21604E890](v64, v62);
LABEL_18:
  v66 = v62;
  v67 = v65;
  sub_213D4F3F4(v66, v63);
  sub_213CE2B28(v64, v148 & 1);
  v124 = v67 ^ 1;
  v46 = v142;
LABEL_19:
  v68 = AGGraphGetValue();
  v69 = v147;
  v46(v147, v68, v44);
  sub_213D4F224();
  sub_213D90C1C();
  v151(v69, v44);
  if (v159)
  {
    sub_213D1E2DC(&v158, &v160);
  }

  else
  {
    v70 = AGGraphGetValue();
    v71 = (v46)(v47, v70, v44);
    v72 = MEMORY[0x21604DD60](v71);
    v151(v47, v44);
    *(&v161 + 1) = MEMORY[0x277CDF6A8];
    *&v162 = MEMORY[0x277CDF6A0];
    *&v160 = v72;
    if (v159)
    {
      sub_213CD8330(&v158, &qword_27C8EBF98, &qword_213D9E670);
    }
  }

  v73 = AGGraphGetValue();
  v46(v47, v73, v44);
  v74 = sub_213D67A84(&v160, v47);
  v76 = *(v42 + 10);
  v77 = *(v42 + 88);
  v142 = v74;
  LODWORD(v147) = v75;
  v127 = v76;
  v126 = v77;
  if (v77 != 255)
  {
    if (v75)
    {
      if (v77)
      {
        v78 = v74;
        sub_213D2BCD4(v74, 1);
        sub_213D4F40C(v76, v77);
        v79 = MEMORY[0x21604E890](v78, v76);
LABEL_30:
        v81 = v76;
        v82 = v79;
        sub_213D4F3F4(v81, v77);
        sub_213CE2B28(v78, v147 & 1);
        v80 = v82 ^ 1;
        goto LABEL_31;
      }
    }

    else if ((v77 & 1) == 0)
    {
      v78 = v74;
      sub_213D2BCD4(v74, 0);
      sub_213D4F40C(v76, v77);
      v79 = sub_213D9147C();
      goto LABEL_30;
    }
  }

  v80 = 1;
LABEL_31:
  v83 = AGGraphGetValue();
  v84 = v145;
  v46(v145, v83, v44);
  sub_213D4F278();
  sub_213D90C1C();
  v151(v84, v44);
  v85 = v160;
  if ((*(v42 + 104) | v131) & 1 | ((v140 & 1) == 0) | v125 & 1 | v124 & 1 | v128 & 1 || (v80 & 1) != 0 || v160 != *(v42 + 12) || !AGGraphGetOutputValue())
  {
    LODWORD(v145) = v42[3] + 1;
    v42[3] = v145;
    LOBYTE(v158) = v113;
    v163 = v154;
    v164 = v155;
    v86 = v148 & 1;
    v153 = v148 & 1;
    v87 = v147 & 1;
    v152 = v147 & 1;
    v160 = v115;
    v161 = v114;
    LOBYTE(v162) = v113;
    v88 = v143;
    *(&v162 + 1) = v144;
    *&v165 = v156;
    *(&v165 + 1) = v143;
    LOBYTE(v166) = v148 & 1;
    v89 = v142;
    *(&v166 + 1) = v142;
    LOBYTE(v167) = v147 & 1;
    v151 = v85;
    *(&v167 + 1) = v85;
    v90 = v146;
    (*(v146 + 16))(v141, v149, v150);
    v91 = v165;
    v92 = v121;
    v121[4] = v164;
    v92[5] = v91;
    v93 = v167;
    v92[6] = v166;
    v92[7] = v93;
    v94 = v161;
    *v92 = v160;
    v92[1] = v94;
    v95 = v163;
    v92[2] = v162;
    v92[3] = v95;
    swift_storeEnumTagMultiPayload();

    sub_213D1E3A4(&v154, &v158);
    sub_213D2BCD4(v88, v86);
    sub_213D2BCD4(v89, v87);
    sub_213D80048(&v160, &v158);
    sub_213CDF60C();
    sub_213D9101C();
    v96 = v158;
    if (!v158)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_213D94520;
      *(v96 + 32) = 0;
      *(v96 + 72) = 0;
    }

    v98 = v119;
    v97 = v120;
    *v119 = v96;
    v99 = v150;
    v116(v98 + *(v97 + 28), v141, v150);
    *(v98 + 2) = v145;
    sub_213CF39D8(v92, v98 + *(v97 + 24), type metadata accessor for MapContentList.Item.Content);
    v100 = v98;
    v101 = v123;
    sub_213CF39D8(v100, v123, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v102 = *(v122 + 72);
    v103 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_213D94520;
    sub_213D4F304(v101, v104 + v103);
    *&v158 = sub_213D71A68(v104);
    *(&v158 + 1) = v105;
    AGGraphSetOutputValue();
    sub_213D2BCE0(&v160);
    sub_213D4F398(v101);
    (*(v90 + 8))(v149, v99);

    sub_213D4F3F4(v127, v126);
    sub_213D4F3F4(v130, v129);

    *(v42 + 12) = v151;
  }

  else
  {
    (*(v146 + 8))(v149, v150);
    sub_213D4F3F4(v127, v126);
    sub_213D4F3F4(v130, v129);

    *(v42 + 12) = v85;
  }

  *(v42 + 104) = 0;
  v106 = v147 & 1;
  v107 = v143;
  *(v42 + 10) = v142;
  *(v42 + 88) = v106;
  *(v42 + 72) = v148 & 1;
  v108 = v144;
  result = *&v136;
  *(v42 + 6) = v136;
  v110 = v133;
  *(v42 + 5) = v134;
  *(v42 + 6) = v110;
  *(v42 + 7) = v135;
  *(v42 + 8) = v107;
  *(v42 + 2) = v108;
  v111 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_213D7FEB0()
{
  result = qword_27C8ED480;
  if (!qword_27C8ED480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED480);
  }

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

uint64_t initializeBufferWithCopyOfBuffer for MapCircle.LocationArea(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_213D7FF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_213D7FFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

BOOL MKMapRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 != a5 || a2 != a6)
  {
    return 0;
  }

  if (a4 == a8)
  {
    return a3 == a7;
  }

  return 0;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_213D800A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D800EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213D80164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t static MapInteractionModes.all.getter@<X0>(void *a1@<X8>)
{
  if (qword_27C8E99F8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27C8ED488;
  return result;
}

uint64_t sub_213D80248()
{
  result = _MKLinkedOnOrAfterReleaseSet();
  v1 = 3;
  if (result)
  {
    v1 = 15;
  }

  qword_27C8ED488 = v1;
  return result;
}

BOOL sub_213D802CC(void *a1, uint64_t *a2)
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

void *sub_213D802FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_213D80328@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_213D80420()
{
  result = qword_27C8ED490;
  if (!qword_27C8ED490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED490);
  }

  return result;
}

unint64_t sub_213D80478()
{
  result = qword_27C8ED498;
  if (!qword_27C8ED498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED498);
  }

  return result;
}

unint64_t sub_213D804D0()
{
  result = qword_27C8ED4A0;
  if (!qword_27C8ED4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4A0);
  }

  return result;
}

unint64_t sub_213D80528()
{
  result = qword_27C8ED4A8;
  if (!qword_27C8ED4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4A8);
  }

  return result;
}

uint64_t View.mapItemDetailSheet(isPresented:item:displaysMap:)(uint64_t a1, uint64_t a2, char a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  v11 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  sub_213D9140C();
}

unint64_t sub_213D806D8()
{
  result = qword_27C8ED4C0;
  if (!qword_27C8ED4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4C8, &qword_213D9D098);
    sub_213D80764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4C0);
  }

  return result;
}

unint64_t sub_213D80764()
{
  result = qword_27C8ED4D0;
  if (!qword_27C8ED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4D0);
  }

  return result;
}

unint64_t sub_213D807B8()
{
  result = qword_27C8ED4D8;
  if (!qword_27C8ED4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4D8);
  }

  return result;
}

uint64_t View.mapItemDetailSheet(item:displaysMap:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v10 = a3;
  swift_retain_n();
  swift_retain_n();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  *(v12 + 24) = v16;
  *(v12 + 32) = v17;
  *(v12 + 40) = a4;
  v13 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D81790();
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  sub_213D9141C();
}

uint64_t View.mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  v13 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4F08(a1, a2, a3, a6, 4);
}

uint64_t View.mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, unsigned int a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a5;
  v14 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4F08(a1, a2, a3, a6, a7);
}

double sub_213D80CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  LOBYTE(v14) = a3;
  *(&v14 + 1) = a4;
  memset(v15, 0, 24);
  v15[24] = a5;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = a5;
  v7 = a4;

  sub_213D82434(&v13, v23);
  sub_213D8246C(v16);
  v8 = sub_213D908DC();
  v9 = sub_213D911DC();
  *v24 = *v15;
  *&v24[9] = *&v15[9];
  v10 = v14;
  *a6 = v13;
  *(a6 + 16) = v10;
  result = *v24;
  v12 = *&v24[16];
  *(a6 + 32) = *v24;
  *(a6 + 48) = v12;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

uint64_t View.mapItemDetailPopover(item:displaysMap:attachmentAnchor:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = a3;
  swift_retain_n();
  swift_retain_n();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v13 = v19[1];
  v14 = v19[2];
  v15 = swift_allocObject();
  *(v15 + 16) = v19[0];
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  *(v15 + 40) = a4;
  v16 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790();
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4FD0(v19, a5, 4);
}

uint64_t View.mapItemDetailPopover(item:displaysMap:attachmentAnchor:arrowEdge:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, unsigned int a6)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = a3;
  swift_retain_n();
  swift_retain_n();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4E0, &qword_213D9D0A0);
  sub_213D9161C();
  v14 = v21[1];
  v15 = v21[2];
  v16 = swift_allocObject();
  *(v16 + 16) = v21[0];
  *(v16 + 24) = v14;
  *(v16 + 32) = v15;
  *(v16 + 40) = a4;
  v17 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790();
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  sub_213CD4FD0(v21, a5, a6);
}

double sub_213D811A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v12 = 0uLL;
  LOBYTE(v13) = 0;
  *(&v13 + 1) = 0;
  *v14 = a1;
  *&v14[8] = a2;
  *&v14[16] = a3;
  v14[24] = a4;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v6 = a3;

  sub_213D82434(&v12, v22);
  sub_213D8246C(v15);
  v7 = sub_213D908DC();
  v8 = sub_213D911DC();
  *v23 = *v14;
  *&v23[9] = *&v14[9];
  v9 = v13;
  *a5 = v12;
  *(a5 + 16) = v9;
  result = *v23;
  v11 = *&v23[16];
  *(a5 + 32) = *v23;
  *(a5 + 48) = v11;
  *(a5 + 64) = v7;
  *(a5 + 72) = v8;
  return result;
}

uint64_t sub_213D8125C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED590, &qword_213D9D3E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_213D812D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A0, &qword_213D9D3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    sub_213D9173C();
    sub_213D9063C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A8, &qword_213D9D3F8);
    (*(*(v12 - 8) + 16))(v5, a1, v12);
    v13 = &v5[*(v2 + 36)];
    v14 = v17[1];
    *v13 = v17[0];
    *(v13 + 1) = v14;
    *(v13 + 2) = v17[2];
    sub_213D822B0(v5, v9);
    swift_storeEnumTagMultiPayload();
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    sub_213D90E5C();
    return sub_213D823C4(v5);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5A8, &qword_213D9D3F8);
    (*(*(v16 - 8) + 16))(v9, a1, v16);
    swift_storeEnumTagMultiPayload();
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    return sub_213D90E5C();
  }
}

uint64_t sub_213D81598()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_213D91FBC();
  if (v2 == 1)
  {
    MEMORY[0x21604F190](1);
    MEMORY[0x21604F190](v1);
  }

  else
  {
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F1B0](v1);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D81614()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x21604F190](1);
    return MEMORY[0x21604F190](v1);
  }

  else
  {
    MEMORY[0x21604F190](0);
    return MEMORY[0x21604F1B0](v1);
  }
}

uint64_t sub_213D8166C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_213D91FBC();
  if (v2 == 1)
  {
    MEMORY[0x21604F190](1);
    MEMORY[0x21604F190](v1);
  }

  else
  {
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F1B0](v1);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D8170C(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D8, &qword_213D9D418);
  return sub_213D915FC();
}

unint64_t sub_213D81790()
{
  result = qword_27C8ED4E8;
  if (!qword_27C8ED4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED4E8);
  }

  return result;
}

uint64_t sub_213D8180C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_213D806D8();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D81890()
{
  result = qword_27C8ED500;
  if (!qword_27C8ED500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED500);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_213D8192C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D8, &qword_213D9D418);
  result = MEMORY[0x21604E7B0](&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_213D8198C(id *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_213D8170C(a1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_213D819E4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ([v3 _hasMUID] && objc_msgSend(v3, sel__muid))
  {

    v3 = [v3 _muid];
    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
}

id sub_213D81B40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapItemDetailView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213D81BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_213D81C58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_213D81CD0(id result)
{
  if (*(v1 + 8))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4E90]) initWithMapItem:*(v1 + 24) displaysMap:*(v1 + 56)];
LABEL_5:
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C0, &qword_213D9D400);
    sub_213D9116C();
    [v8 setDelegate_];

    return v8;
  }

  if (*(v1 + 40))
  {
    v9 = *(v1 + 32);
    v10 = *(v1 + 40);
    v3 = *(v1 + 48);

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C8, &qword_213D9D408);
    v5 = v1;
    MEMORY[0x21604E7B0](&v11, v4);
    v6 = v11;
    v7 = [objc_allocWithZone(MEMORY[0x277CD4E90]) initWithMapItem:v11 displaysMap:*(v5 + 56)];

    v2 = v7;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_213D81E28(uint64_t result)
{
  if (*(result + 8))
  {
    v2 = *result;
    v4 = *(result + 8);
    v6 = *(result + 16) & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5D0, &qword_213D9D410);
    sub_213D915FC();
LABEL_5:
  }

  if (*(result + 40))
  {
    v3 = *(result + 32);
    v5 = *(result + 40);
    v1 = *(result + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C8, &qword_213D9D408);
    sub_213D915FC();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_213D81F1C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_213D81CD0(a1);
}

void sub_213D81F60()
{
  v1 = v0[1];
  v10 = *v0;
  v11 = v1;
  v12[0] = v0[2];
  *(v12 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED5C0, &qword_213D9D400);
  sub_213D9116C();
  v2 = v9;
  v3 = swift_allocObject();
  *(v3 + 57) = *(v12 + 9);
  v4 = v12[0];
  v3[2] = v11;
  v3[3] = v4;
  v3[1] = v10;
  v5 = &v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal];
  v6 = *&v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal];
  v7 = *&v2[OBJC_IVAR____TtCV15_MapKit_SwiftUIP33_88864655A4452E6E3BB4AF822A3E769217MapItemDetailView11Coordinator_didRequestDismissal + 8];
  *v5 = sub_213D8242C;
  v5[1] = v3;
  sub_213D82434(&v10, v8);
  sub_213CCE520(v6);
}

id sub_213D82040@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MapItemDetailView.Coordinator()) init];
  *a1 = result;
  return result;
}

unint64_t sub_213D820A4()
{
  result = qword_27C8ED578;
  if (!qword_27C8ED578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED578);
  }

  return result;
}

unint64_t sub_213D820FC()
{
  result = qword_27C8ED580;
  if (!qword_27C8ED580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED580);
  }

  return result;
}

uint64_t sub_213D8216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D8225C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_213D821D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D8225C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_213D82234()
{
  sub_213D8225C();
  sub_213D9114C();
  __break(1u);
}

unint64_t sub_213D8225C()
{
  result = qword_27C8ED588;
  if (!qword_27C8ED588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED588);
  }

  return result;
}

uint64_t sub_213D822B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D82320()
{
  result = qword_27C8ED5B8;
  if (!qword_27C8ED5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED598, &qword_213D9D3E8);
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED5B8);
  }

  return result;
}

uint64_t sub_213D823C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED598, &qword_213D9D3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D824B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D82508()
{
  result = qword_27C8ED5E8;
  if (!qword_27C8ED5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C8ED5F0, &unk_213D9D430);
    sub_213D824B4(&qword_27C8ED5B0, &qword_27C8ED5A8, &qword_213D9D3F8);
    sub_213D82320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED5E8);
  }

  return result;
}

uint64_t sub_213D825D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D82624()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D82678(uint64_t a1)
{
  if (qword_27C8E99C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C8F7320;
  if (*(qword_27C8F7320 + 16) && (v3 = sub_213CE20E8(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = sub_213D82788();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = qword_27C8F7320;
    qword_27C8F7320 = 0x8000000000000000;
    sub_213D8D20C(v5, a1, isUniquelyReferenced_nonNull_native);
    qword_27C8F7320 = v8;
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_213D82788()
{
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = AGTupleElementType();
      _mapContentProtocolDescriptor();
      v6 = swift_conformsToProtocol();
      if (v6)
      {
        v7 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_213D6F6B4(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_213D6F6B4((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        v4 = &v3[24 * v9];
        *(v4 + 4) = v2;
        *(v4 + 5) = v5;
        *(v4 + 6) = v7;
      }

      ++v2;
    }

    while (v1 != v2);
    return v3;
  }

  return result;
}

uint64_t static TupleMapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v51 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for _MapContentOutputs(0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MultiPreferenceCombinerVisitor();
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for _MapContentInputs(0);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleMapContent();
  v15 = sub_213D9057C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  List = type metadata accessor for TupleMapContent.MakeList();
  v45 = *(List - 8);
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](List);
  v23 = &v44 - v22;
  v24 = sub_213D82678(a3);
  (*(v16 + 16))(v19, v51, v15);
  v49 = a2;
  sub_213CDDF50(a2, v14, type metadata accessor for _MapContentInputs);
  sub_213D82E58(v19, v14, 0, MEMORY[0x277D84F90], v23);
  v51 = v24;
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(List + 32);
    v27 = (v51 + 48);
    do
    {
      v28 = *(v27 - 2);
      v29 = *(v27 - 1);
      v30 = *v27;
      v27 += 3;
      *&v23[v26] = AGTupleElementOffset();
      sub_213CD72E4(v23, v29, v30, List, &off_28263E8D8);
      --v25;
    }

    while (v25);
  }

  v31 = *&v23[*(List + 36)];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v52 = MEMORY[0x277D84F90];

    sub_213D4E8D4(0, v32, 0);
    v33 = v52;
    v34 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v51 = v31;
    v35 = v31 + v34;
    v36 = *(v44 + 72);
    do
    {
      sub_213CDDF50(v35, v9, type metadata accessor for _MapContentOutputs);
      v52 = v33;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_213D4E8D4(v37 > 1, v38 + 1, 1);
        v33 = v52;
      }

      *(v33 + 16) = v38 + 1;
      sub_213CDEA2C(v9, v33 + v34 + v38 * v36, type metadata accessor for _MapContentOutputs);
      v35 += v36;
      --v32;
    }

    while (v32);
  }

  v39 = v48;
  v40 = *(v47 + 20);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  *v39 = v33;
  v41 = *(v46 + 24);
  sub_213D83A08();
  sub_213D90F2C();
  sub_213CDDF50(v39 + v40, v50, type metadata accessor for _MapContentOutputs);
  sub_213D83CD8(v39, type metadata accessor for MultiPreferenceCombinerVisitor);
  result = (*(v45 + 8))(v23, List);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D82E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for TupleMapContent();
  v10 = sub_213D9057C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  List = type metadata accessor for TupleMapContent.MakeList();
  result = sub_213CDEA2C(a2, a5 + List[7], type metadata accessor for _MapContentInputs);
  *(a5 + List[8]) = a3;
  *(a5 + List[9]) = a4;
  return result;
}

uint64_t static TupleMapContent._mapContentCount(inputs:)(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for _MapContentInputs(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TupleMapContent.CountContents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = sub_213D82678(a2);
  sub_213CDDF50(a1, v7, type metadata accessor for _MapContentInputs);
  sub_213CDEA2C(v7, v12, type metadata accessor for _MapContentInputs);
  v14 = &v12[*(v8 + 28)];
  *v14 = 0;
  v14[8] = 0;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = (v13 + 48);
    do
    {
      sub_213CD72E4(v12, *(v16 - 1), *v16, v8, &off_28263E8C8);
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  v17 = &v12[*(v8 + 28)];
  v18 = *v17;
  v19 = v17[8];
  (*(v9 + 8))(v12, v8);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_213D83120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v45 = sub_213D9057C();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v9 = &v40 - v8;
  v10 = type metadata accessor for _MapContentOutputs(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = &v40 - v14;
  v15 = type metadata accessor for _MapContentInputs(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v4 + *(a2 + 28);
  sub_213CDDF50(v20, v19, type metadata accessor for _MapContentInputs);
  v21 = *(v20 + *(v16 + 36));
  v42 = a2;
  v22 = *(v4 + *(a2 + 32));
  v23 = *(a2 + 16);
  v48 = sub_213D83584(v21);
  v49 = v24;
  v50 = v25;
  v26 = type metadata accessor for TupleMapContent.ChildTraits();
  v52 = v26;
  WitnessTable = swift_getWitnessTable();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(&v48, sub_213CDE810, v51, v26, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);

  *&v19[*(v16 + 36)] = v47;
  v30 = v40;
  v29 = v41;
  v31 = v4;
  type metadata accessor for TupleMapContent();
  sub_213CDF810(v4);
  v32 = *(*(a3 - 8) + 64);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_213CDF770(OffsetAttribute2, v9);
  (*(v44 + 32))(v9, v19, a3);
  (*(v43 + 8))(v9, v45);
  sub_213CDDF50(v30, v29, type metadata accessor for _MapContentOutputs);
  v34 = *(v42 + 36);
  v35 = *(v4 + v34);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_213D6F7D0(0, v35[2] + 1, 1, v35);
  }

  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_213D6F7D0(v36 > 1, v37 + 1, 1, v35);
  }

  sub_213D83CD8(v30, type metadata accessor for _MapContentOutputs);
  sub_213D83CD8(v19, type metadata accessor for _MapContentInputs);
  v35[2] = v37 + 1;
  result = sub_213CDEA2C(v29, v35 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37, type metadata accessor for _MapContentOutputs);
  *(v31 + v34) = v35;
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D83584(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213D94520;
  *(v2 + 32) = -1;
  *(v2 + 72) = 0;
  return a1;
}

uint64_t sub_213D835EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v4 == a1)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t sub_213D83724@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  sub_213D835EC(a1, v18 - v11);
  v13 = sub_213D9100C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_213D90FFC();
    if (v15(v12, 1, v13) != 1)
    {
      sub_213CDF4FC(v12);
    }
  }

  else
  {
    (*(v14 + 32))(a3, v12, v13);
  }

  (*(v14 + 16))(v9, a3, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v18[0] = a2;
  v19 = 0;
  v16 = sub_213D71C7C(v9, v18);
  sub_213CDF5B8(v18);
  sub_213CDF4FC(v9);
  v18[0] = v16;
  sub_213CDF60C();
  return sub_213D9102C();
}

uint64_t sub_213D83934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 16);
  return sub_213D83724(*v2, *(v2 + 8), a2);
}

void sub_213D83948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + *(a2 + 28));
  if (v5[1] & 1) != 0 || (v6 = *v5, v7 = (*(a4 + 40))(v4, a3, a4), (v8))
  {
    v9 = 0;
    v10 = 1;
LABEL_6:
    *v5 = v9;
    *(v5 + 8) = v10;
    return;
  }

  v9 = v6 + v7;
  if (!__OFADD__(v6, v7))
  {
    v10 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_213D83A08()
{
  result = qword_27C8ED700[0];
  if (!qword_27C8ED700[0])
  {
    type metadata accessor for MultiPreferenceCombinerVisitor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED700);
  }

  return result;
}

uint64_t sub_213D83A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213D83AE8()
{
  type metadata accessor for _MapContentInputs(319);
  if (v0 <= 0x3F)
  {
    sub_213D83B94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213D83B94()
{
  if (!qword_27C8ED808[0])
  {
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ED808);
    }
  }
}

void sub_213D83BE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for TupleMapContent();
  sub_213D9057C();
  if (v2 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v3 <= 0x3F)
    {
      sub_213CF6624();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D83CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D83D38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D83D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D83DBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_213D83E18(uint64_t a1)
{
  v28 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(type metadata accessor for MapUserLocationButtonConfig(0) + 28);
  v14 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v12, *MEMORY[0x277CDF440], v2);
  v15 = sub_213D9050C();
  v27 = *(v3 + 8);
  v27(v12, v2);
  v16 = *(v3 + 16);
  v17 = (v3 + 88);
  if ((v15 & 1) == 0)
  {
    v16(v6, v1 + v13, v2);
    v23 = (*v17)(v6, v2);
    if (v23 == *MEMORY[0x277CDF418] || v23 == *MEMORY[0x277CDF438] || v23 == v14)
    {
      return 1;
    }

    v26 = v23 == *MEMORY[0x277CDF420] || v23 == *MEMORY[0x277CDF410];
    v9 = v6;
    if (!v26)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v16(v9, v28, v2);
  v18 = (*v17)(v9, v2);
  if (v18 == *MEMORY[0x277CDF418] || v18 == *MEMORY[0x277CDF438] || v18 == v14)
  {
    return 1;
  }

  if (v18 == *MEMORY[0x277CDF420] || v18 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v27(v9, v2);
  return 1;
}

uint64_t sub_213D840AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213CE2C28(v2, &v17 - v11, &qword_27C8EC550, &qword_213D94A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D90A6C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_213D842AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MapUserLocationButton(0);
  sub_213CE2C28(v1 + *(v12 + 20), v11, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D9051C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_213D91BDC();
    v16 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_213D844B4()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MapUserLocationButton(0) + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_213D91BDC();
    v9 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_213D84608()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapUserLocationButton(0) + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_213D84760()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MapUserLocationButton(0) + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10[15];
  }

  return v7;
}

uint64_t MapUserLocationButton.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapUserLocationButton(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a3 + v6[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a3 + v6[9];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  v13 = a3 + v6[10];
  *v13 = a1;
  v13[8] = a2 & 1;
  return result;
}

uint64_t MapUserLocationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED910, &qword_213D9D7D8);
  v2 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v51 = &v49 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED918, &qword_213D9D7E0);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v60 = &v49 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v6 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v50 = &v49 - v7;
  v8 = type metadata accessor for MapControlsConfig();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D9051C();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_213D90A6C();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v53);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MapUserLocationButtonConfig(0);
  v57 = *(v52 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v26 = sub_213D84760();
  sub_213D840AC(v19);
  sub_213D842AC(v15);
  v27 = sub_213D844B4();
  if (v26 == 3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v29 = v25;
  v22[1] = v28;
  v30 = v52;
  (*(v16 + 32))(&v22[*(v52 + 24)], v19, v53);
  v31 = v56;
  (*(v54 + 32))(&v22[*(v30 + 28)], v15, v55);
  *&v22[*(v30 + 32)] = v27;
  *v22 = 1;
  sub_213D859B4(v22, v25);
  v32 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v33 = v9[7];
  v34 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v34 - 8) + 56))(v31 + v33, 1, 1, v34);
  v35 = v9[8];
  sub_213D85B40(v25, v31 + v35, type metadata accessor for MapUserLocationButtonConfig);
  (*(v57 + 56))(v31 + v35, 0, 1, v30);
  v36 = v9[9];
  v37 = type metadata accessor for MapCompassConfig(0);
  (*(*(v37 - 8) + 56))(v31 + v36, 1, 1, v37);
  *(v31 + v9[10]) = 2;
  *(v31 + v9[11]) = 2;
  *(v31 + v9[12]) = 2;
  if (sub_213D84608())
  {
    v38 = sub_213D9149C();
    v39 = v50;
    sub_213D85B40(v31, &v50[*(v59 + 36)], type metadata accessor for MapControlsConfig);
    *v39 = v38;
    v40 = &qword_27C8EA1B8;
    v41 = &qword_213D94B50;
    sub_213CE2C28(v39, v60, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v42 = type metadata accessor for _MapUserLocationButton(0);
    v39 = v51;
    sub_213D85B40(v25, &v51[*(v42 + 20)], type metadata accessor for MapUserLocationButtonConfig);
    v43 = (v1 + *(type metadata accessor for MapUserLocationButton(0) + 40));
    v44 = *v43;
    v45 = *(v43 + 8);
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v46 = v39 + *(v42 + 24);
    *v46 = v44;
    *(v46 + 8) = v45;
    v47 = v60;
    *(v39 + *(v61 + 36)) = 257;
    v40 = &qword_27C8ED910;
    v41 = &qword_213D9D7D8;
    sub_213CE2C28(v39, v47, &qword_27C8ED910, &qword_213D9D7D8);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213D85A38();
  sub_213D90E5C();
  sub_213CD8330(v39, v40, v41);
  sub_213D85AE0(v31, type metadata accessor for MapControlsConfig);
  return sub_213D85AE0(v29, type metadata accessor for MapUserLocationButtonConfig);
}

uint64_t sub_213D850AC()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_213D85200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D860D8(&qword_27C8ED970);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213D85280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D860D8(&qword_27C8ED970);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213D85300()
{
  sub_213D860D8(&qword_27C8ED970);
  sub_213D90E1C();
  __break(1u);
}

id sub_213D85344()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_213D90A6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for _MapUserLocationButton(0);
  v13 = v0 + *(v12 + 24);
  if ((*(v13 + 8) & 1) == 0)
  {
    v14 = *v13;
    v15 = sub_213D850AC();
    if (*(v15 + 16) && (v16 = sub_213CE212C(v14), (v17 & 1) != 0))
    {
      sub_213CE2A1C(*(v15 + 56) + 8 * v16, v29);

      sub_213CE2A78(v29, v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = [objc_opt_self() userTrackingButtonWithMapView_];

        sub_213CE2AD4(v30);
        goto LABEL_8;
      }

      sub_213CE2AD4(v30);
    }

    else
    {
    }
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CD4F68]) init];
LABEL_8:
  v21 = v1 + *(v12 + 20);
  v22 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(v8 + 16))(v11, v21 + *(v22 + 24), v7);
  v23 = v20;
  [v23 setBackgroundStyle_];
  (*(v3 + 16))(v6, v21 + *(v22 + 28), v2);
  v24 = (*(v3 + 88))(v6, v2);
  if (v24 == *MEMORY[0x277CDF418] || v24 == *MEMORY[0x277CDF438] || v24 == *MEMORY[0x277CDF440])
  {
    goto LABEL_18;
  }

  v27 = 2;
  if (v24 != *MEMORY[0x277CDF420] && v24 != *MEMORY[0x277CDF410])
  {
    (*(v3 + 8))(v6, v2, 2);
LABEL_18:
    v27 = 1;
  }

  [v23 _setControlSize_];

  return v23;
}

id sub_213D85688(id a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213D90A6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _MapUserLocationButton(0);
  v15 = v1 + *(v14 + 24);
  if ((*(v15 + 8) & 1) == 0)
  {
    v30 = a1;
    v16 = *v15;
    v17 = sub_213D850AC();
    if (*(v17 + 16) && (v18 = sub_213CE212C(v16), (v19 & 1) != 0))
    {
      sub_213CE2A1C(*(v17 + 56) + 8 * v18, v31);

      sub_213CE2A78(v31, v32);
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v30;
      [v30 setMapView_];

      sub_213CE2AD4(v32);
    }

    else
    {

      a1 = v30;
    }
  }

  v21 = v2 + *(v14 + 20);
  v22 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(v10 + 16))(v13, v21 + *(v22 + 24), v9);
  [a1 setBackgroundStyle_];
  (*(v5 + 16))(v8, v21 + *(v22 + 28), v4);
  v23 = (*(v5 + 88))(v8, v4);
  if (v23 == *MEMORY[0x277CDF418] || v23 == *MEMORY[0x277CDF438] || v23 == *MEMORY[0x277CDF440])
  {
    goto LABEL_19;
  }

  if (v23 != *MEMORY[0x277CDF420] && v23 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v8, v4);
LABEL_19:
    v27 = 1;
    return [a1 _setControlSize_];
  }

  v27 = 2;
  return [a1 _setControlSize_];
}

uint64_t sub_213D859B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D85A38()
{
  result = qword_27C8ED920;
  if (!qword_27C8ED920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED910, &qword_213D9D7D8);
    sub_213D860D8(&qword_27C8ED928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED920);
  }

  return result;
}

uint64_t sub_213D85AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D85B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D85BEC()
{
  sub_213CE1CD4(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
  if (v0 <= 0x3F)
  {
    sub_213CE1CD4(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
    if (v1 <= 0x3F)
    {
      sub_213CE1D28(319, &qword_27C8EA208, &qword_27C8EA210, &unk_213D94C00);
      if (v2 <= 0x3F)
      {
        sub_213D86054(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_213D86054(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_213CE1D28(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750);
            if (v5 <= 0x3F)
            {
              sub_213D86054(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_213D85DBC()
{
  result = qword_27C8ED940;
  if (!qword_27C8ED940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED948, "ؿ");
    sub_213CE189C();
    sub_213D85A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED940);
  }

  return result;
}

void sub_213D85E70()
{
  sub_213D86054(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MapUserLocationButtonConfig(319);
    if (v1 <= 0x3F)
    {
      sub_213D86054(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213D85F7C()
{
  sub_213D90A6C();
  if (v0 <= 0x3F)
  {
    sub_213D9051C();
    if (v1 <= 0x3F)
    {
      sub_213D86054(319, &qword_27C8EA248, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213D86054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_213D860D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapUserLocationButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D8611C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a2[1];
  v6 = a1[1];
  if (sub_213D904DC())
  {
    v7 = type metadata accessor for MapUserLocationButtonConfig(0);
    v8 = v7[6];
    if (sub_213D90A2C())
    {
      v9 = v7[7];
      if (sub_213D9050C())
      {
        v10 = v7[8];
        v11 = *&a2[v10];
        if (*&a1[v10])
        {
          if (v11)
          {

            v12 = sub_213D9147C();

            if (v12)
            {
              return 1;
            }
          }
        }

        else if (!v11)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

id sub_213D8622C(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_213D9193C();

    v8 = sub_213D9190C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_213D862DC(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_213D9193C();
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
    v7 = a1;
    v9 = sub_213D9190C();
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped];
    v8 = a1;
    v9 = 0;
  }

  [v6 *a4];
}

id sub_213D86620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapPolyline.CocoaWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MapPolyline.init(coordinates:contourStyle:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v3 = 257;
  }

  else
  {
    v3 = 1;
  }

  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t MapPolyline.init(points:contourStyle:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

id MapPolyline.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapPolyline.CocoaWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped] = a1;
  v7.receiver = v5;
  v7.super_class = v4;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  *(a2 + 8) = 0x8000;
  return result;
}

void MapPolyline.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 polyline];
  v5 = type metadata accessor for MapPolyline.CocoaWrapper();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV15_MapKit_SwiftUI11MapPolyline12CocoaWrapper_wrapped] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v9, sel_init);

  *a2 = v8;
  *(a2 + 8) = 0x8000;
}

uint64_t static MapPolyline._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v36 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED980, &qword_213D9D9A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - v13);
  v25 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v26;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = type metadata accessor for _MapContentInputs(0);
  v19 = *(v16 + *(v18 + 28));
  v27 = 1;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, 28);
  v33[28] = -1;
  v34 = 0;
  v35 = 1;
  sub_213CDB9F8();
  sub_213D87690();
  v20 = sub_213D903EC();
  v21 = *(v18 + 24);
  MEMORY[0x28223BE20](v20);
  *(&v25 - 4) = v22;
  sub_213CD8438();
  result = sub_213D90F7C();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_213D86AF0()
{
  v137 = *MEMORY[0x277D85DE8];
  v98 = type metadata accessor for MapContentList.Item.Content(0);
  v1 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MapContentList.Item(0);
  v102 = *(v100 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = (v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v103 = v97 - v6;
  v7 = sub_213D90C0C();
  v126 = *(v7 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x28223BE20](v7);
  v122 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v127 = v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v97 - v19;
  v21 = sub_213D9100C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v116 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v124 = v97 - v26;
  v27 = *v0;
  Value = AGGraphGetValue();
  v108 = v29;
  v30 = *Value;
  v31 = *(Value + 8);
  v114 = v0;
  v32 = v0[2];
  v33 = *MEMORY[0x277CEF7D0];
  v125 = v21;
  v119 = v31;
  v118 = v30;
  v120 = v22;
  if (v32 == v33)
  {
    v34 = v31;
    v35 = v30;
    (*(v17 + 56))(v15, 1, 1, v16);
    v36 = *(v16 + 48);
    sub_213D1E7B8(v35, v34);
    sub_213D90FFC();
    v20[v36] = 0;
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_213CF3B08(v15);
    }
  }

  else
  {
    sub_213D1E7B8(v30, v31);
    v37 = AGGraphGetValue();
    v39 = v38;
    v40 = v21;
    v41 = *(v16 + 48);
    (*(v22 + 16))(v15, v37, v40);
    v15[v41] = v39 & 1;
    (*(v17 + 56))(v15, 0, 1, v16);
    sub_213CF3968(v15, v20);
  }

  v105 = v20[*(v16 + 48)];
  v97[0] = *(v120 + 32);
  v97[1] = v120 + 32;
  (v97[0])(v124, v20, v125);
  v42 = v114;
  v43 = v114[1];
  v44 = AGGraphGetValue();
  v45 = v126;
  v46 = v127;
  v47 = *(v126 + 16);
  v47(v127, v44, v7);
  v48 = sub_213D90A7C();
  v51 = *(v45 + 8);
  v49 = v45 + 8;
  v50 = v51;
  v51(v46, v7);
  v52 = *(v42 + 2);
  v115 = (v48 | v52) == 0;
  v123 = v48;
  if (v48 && v52)
  {

    v115 = sub_213D9147C();
  }

  v53 = AGGraphGetValue();
  v54 = v127;
  v47(v127, v53, v7);
  sub_213D4F17C();
  sub_213D90C1C();
  v50(v54, v7);
  v113 = v133;
  v128 = v133;
  v129 = *v134;
  v112 = *&v134[16];
  v130 = *&v134[16];
  v110 = *&v134[8];
  v111 = *v134;
  v55 = *(v42 + 6);
  v126 = v49;
  v117 = v52;
  v109 = v55;
  if (v55)
  {
    v56 = *(v42 + 7);
    v57 = *(v42 + 5);
    v58 = *(v42 + 4);
    v131[0] = *(v42 + 3);
    v131[1] = v58;
    v131[2] = v57;
    v131[3] = v55;
    v131[4] = v56;
    sub_213D1E3A4(&v128, &v133);

    v59 = MEMORY[0x21604D700](&v128, v131);

    sub_213D1E400(&v128);
    v104 = v59 ^ 1;
  }

  else
  {

    v104 = 1;
  }

  v60 = AGGraphGetValue();
  v61 = v127;
  v47(v127, v60, v7);
  sub_213D4F1D0();
  sub_213D90C1C();
  v50(v61, v7);
  v62 = AGGraphGetValue();
  v63 = v122;
  v47(v122, v62, v7);
  v64 = sub_213D67A84(&v133, v63);
  v66 = *(v42 + 8);
  v67 = *(v42 + 72);
  v122 = v64;
  v121 = v65;
  v107 = v66;
  v106 = v67;
  if (v67 != 255)
  {
    if (v65)
    {
      if (v67)
      {
        v68 = v64;
        sub_213D2BCD4(v64, 1);
        sub_213D4F40C(v66, v67);
        v69 = MEMORY[0x21604E890](v68, v66);
LABEL_18:
        v71 = v69;
        sub_213D4F3F4(v66, v67);
        sub_213CE2B28(v122, v121 & 1);
        v70 = v71 ^ 1;
        goto LABEL_19;
      }
    }

    else if ((v67 & 1) == 0)
    {
      sub_213D2BCD4(v64, 0);
      sub_213D4F40C(v66, v67);
      v69 = sub_213D9147C();
      goto LABEL_18;
    }
  }

  v70 = 1;
LABEL_19:
  v72 = AGGraphGetValue();
  v73 = v127;
  v47(v127, v72, v7);
  sub_213D4F278();
  sub_213D90C1C();
  v50(v73, v7);
  v74 = v133;
  if ((*(v42 + 88) | v108) & 1 | ((v115 & 1) == 0) | v104 & 1 | v105 & 1 || (v70 & 1) != 0 || v133 != *(v42 + 10) || !AGGraphGetOutputValue())
  {
    v75 = v129;
    *&v134[8] = v128;
    LODWORD(v126) = v42[3] + 1;
    v42[3] = v126;
    *&v134[24] = v75;
    v76 = v121 & 1;
    LOBYTE(v132[0]) = v121 & 1;
    v77 = v118;
    *&v133 = v118;
    v78 = v119;
    WORD4(v133) = v119;
    v79 = v122;
    *v134 = v123;
    *&v134[40] = v130;
    *&v135 = v122;
    BYTE8(v135) = v121 & 1;
    v127 = v74;
    v136 = v74;
    v80 = v120;
    (*(v120 + 16))(v116, v124, v125);
    v81 = *&v134[32];
    v82 = v101;
    *(v101 + 2) = *&v134[16];
    *(v82 + 48) = v81;
    *(v82 + 64) = v135;
    *(v82 + 80) = v136;
    v83 = *v134;
    *v82 = v133;
    *(v82 + 16) = v83;
    swift_storeEnumTagMultiPayload();
    sub_213D1E7B8(v77, v78);

    sub_213D1E3A4(&v128, v132);
    sub_213D2BCD4(v79, v76);
    sub_213D87A90(&v133, v132);
    sub_213CDF60C();
    sub_213D9101C();
    v84 = v132[0];
    if (!v132[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_213D94520;
      *(v84 + 32) = 0;
      *(v84 + 72) = 0;
    }

    v86 = v99;
    v85 = v100;
    *v99 = v84;
    v87 = v125;
    (v97[0])(v86 + *(v85 + 28), v116, v125);
    *(v86 + 8) = v126;
    sub_213CF39D8(v82, v86 + *(v85 + 24), type metadata accessor for MapContentList.Item.Content);
    v88 = v103;
    sub_213CF39D8(v86, v103, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v89 = *(v102 + 72);
    v90 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_213D94520;
    sub_213D4F304(v88, v91 + v90);
    v132[0] = sub_213D71A68(v91);
    v132[1] = v92;
    AGGraphSetOutputValue();
    sub_213D87AC8(&v133);
    sub_213D1E6A0(v118, v119);
    sub_213D4F398(v88);
    (*(v80 + 8))(v124, v87);

    sub_213D4F3F4(v107, v106);

    *(v42 + 10) = v127;
  }

  else
  {
    (*(v120 + 8))(v124, v125);
    sub_213D1E6A0(v118, v119);
    sub_213D4F3F4(v107, v106);

    *(v42 + 10) = v74;
  }

  *(v42 + 88) = 0;
  v93 = v122;
  *(v42 + 72) = v121 & 1;
  result = *&v113;
  *(v42 + 6) = v113;
  v95 = v110;
  *(v42 + 5) = v111;
  *(v42 + 6) = v95;
  *(v42 + 7) = v112;
  *(v42 + 8) = v93;
  *(v42 + 2) = v123;
  v96 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_213D87690()
{
  result = qword_27C8ED988;
  if (!qword_27C8ED988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED988);
  }

  return result;
}

uint64_t sub_213D87714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 10))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 8) & 0xFE | (*(a1 + 8) >> 15) | (*(a1 + 8) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D8777C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_213D8781C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_213D87878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_213D878FC()
{
  result = qword_27C8ED990;
  if (!qword_27C8ED990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED990);
  }

  return result;
}

BOOL sub_213D87950(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0)
  {
    if (v5 < 0)
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      sub_213D1E7B8(v4, v5);
      sub_213D1E7B8(v2, v3);
      v8 = sub_213D91C5C();
      sub_213D1E6A0(v2, v3);
      sub_213D1E6A0(v4, v5);
      return v8 & 1;
    }

LABEL_7:
    sub_213D1E7B8(*a2, *(a2 + 8));
    sub_213D1E7B8(v2, v3);
    sub_213D1E6A0(v2, v3);
    sub_213D1E6A0(v4, v5);
    return 0;
  }

  if (v5 < 0)
  {
    goto LABEL_7;
  }

  sub_213D1E7B8(*a2, *(a2 + 8));
  sub_213D1E7B8(v2, v3);
  v6 = sub_213D6798C(v2, v3 & 1, v4, v5 & 1);
  sub_213D1E6A0(v2, v3);
  sub_213D1E6A0(v4, v5);
  return v6 && ((v5 ^ v3) & 0x100) == 0;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213D87B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D87B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213D87BE0@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for MapPitchToggleConfig(0);
  v3 = &a1[v2[6]];
  sub_213D90A5C();
  v4 = v2[7];
  v5 = *MEMORY[0x277CDF440];
  v6 = sub_213D9051C();
  v7 = *(*(v6 - 8) + 104);
  v7(&a1[v4], v5, v6);
  a1[1] = 2;
  *&a1[v2[8]] = 0;
  *a1 = 0;
  (*(*(v2 - 1) + 56))(a1, 0, 1, v2);
  v8 = type metadata accessor for MapControlsConfig();
  v9 = &a1[v8[5]];
  v10 = sub_213D90D6C();
  v11 = type metadata accessor for MapScaleViewConfig(0);
  v7(&v9[*(v11 + 28)], v5, v6);
  *(v9 + 1) = v10;
  *v9 = 1;
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = &a1[v8[6]];
  v13 = type metadata accessor for MapUserLocationButtonConfig(0);
  v14 = &v12[v13[6]];
  sub_213D90A5C();
  v7(&v12[v13[7]], v5, v6);
  v12[1] = 2;
  *&v12[v13[8]] = 0;
  *v12 = 0;
  (*(*(v13 - 1) + 56))(v12, 0, 1, v13);
  v15 = &a1[v8[7]];
  v16 = type metadata accessor for MapCompassConfig(0);
  v7(v15 + *(v16 + 24), v5, v6);
  *v15 = 1;
  result = (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  *&a1[v8[8]] = 512;
  *&a1[v8[9]] = 512;
  *&a1[v8[10]] = 2;
  return result;
}

uint64_t sub_213D87E70()
{
  v0 = type metadata accessor for MapControlsConfig();
  __swift_allocate_value_buffer(v0, qword_27C8F7348);
  v1 = __swift_project_value_buffer(v0, qword_27C8F7348);
  v2 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[5];
  v4 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v0[6];
  v6 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v0[7];
  v8 = type metadata accessor for MapCompassConfig(0);
  result = (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + v0[8]) = 2;
  *(v1 + v0[9]) = 2;
  *(v1 + v0[10]) = 2;
  return result;
}

uint64_t sub_213D88010()
{
  v0 = type metadata accessor for MapControlsConfig();
  __swift_allocate_value_buffer(v0, qword_27C8F7360);
  v1 = __swift_project_value_buffer(v0, qword_27C8F7360);
  return sub_213D87BE0(v1);
}

uint64_t sub_213D88080@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MapControlsConfig();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_213CEE7C8(v6, a3);
}

uint64_t sub_213D880E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8BB80(&qword_27C8EDAC8, type metadata accessor for MapControlsConfig);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D88190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8BCC0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D881F4()
{
  sub_213D73334();

  return sub_213D90C1C();
}

uint64_t sub_213D8823C()
{
  sub_213CE2CE4();
  sub_213D90C1C();
  return v1;
}

uint64_t sub_213D88278()
{
  sub_213CE2C90();
  sub_213D90C1C();
  return v1;
}

uint64_t sub_213D882B4(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_213CEE7C8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213D9156C();
  return sub_213D8BBC8(a1, type metadata accessor for MapControlsConfig);
}

uint64_t sub_213D88368(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213CEE7C8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0);
  sub_213D9158C();
  return sub_213D8BBC8(a1, type metadata accessor for MapControlsConfig);
}

uint64_t sub_213D88420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MapControlsConfig();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v7[7];
  v13 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  v14 = v7[8];
  v15 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = v7[9];
  v17 = type metadata accessor for MapCompassConfig(0);
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  *&v10[v7[10]] = 2;
  *&v10[v7[11]] = 2;
  *&v10[v7[12]] = 2;
  sub_213D882B4(v10);
  v18 = type metadata accessor for _MapControlsModifier();
  return (*(*(a2 - 8) + 32))(a3 + *(v18 + 36), a1, a2);
}

uint64_t sub_213D8862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v50 = a3;
  v4 = type metadata accessor for MapControlsConfig();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D90EAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA80, &qword_213D9E058);
  v38 = sub_213D908CC();
  v49 = *(v38 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = *(a2 + 16);
  v45 = &v37 - v9;
  v46 = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  sub_213D908CC();
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  v10 = sub_213D908CC();
  v11 = *(a2 + 24);
  v43 = v11;
  v44 = MEMORY[0x277CE0868];
  v12 = sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060);
  v62 = v11;
  v63 = v12;
  v13 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_213D8BA40();
  v60 = WitnessTable;
  v61 = v15;
  v39 = v13;
  v16 = swift_getWitnessTable();
  v17 = sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068);
  v58 = v16;
  v59 = v17;
  v40 = v10;
  v41 = swift_getWitnessTable();
  v42 = sub_213D90E4C();
  v18 = sub_213D908CC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0);
  v26 = v37;
  v27 = v47;
  sub_213D9157C();
  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_213D9130C();

  sub_213D8BBC8(v26, type metadata accessor for MapControlsConfig);
  v51 = v46;
  v52 = v43;
  v53 = v27;
  sub_213D9173C();
  v30 = sub_213CEDCEC(&qword_27C8EDAB0, &qword_27C8EDA80, &qword_213D9E058);
  v56 = v28;
  v57 = v30;
  v31 = v38;
  v32 = swift_getWitnessTable();
  sub_213D912CC();
  (*(v49 + 8))(v29, v31);
  v33 = swift_getWitnessTable();
  v54 = v32;
  v55 = v33;
  v34 = swift_getWitnessTable();
  sub_213D4CEAC(v22, v18, v34);
  v35 = *(v19 + 8);
  v35(v22, v18);
  sub_213D4CEAC(v25, v18, v34);
  return (v35)(v25, v18);
}

uint64_t sub_213D88B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v52 = a4;
  v6 = type metadata accessor for _MapControlsModifier();
  v42 = v6;
  v7 = *(v6 - 8);
  v49 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  v41 = a2;
  v9 = sub_213D908CC();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - v11;
  v13 = sub_213D908CC();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = v40 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  v16 = sub_213D908CC();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = v40 - v20;
  v21 = *(v6 + 36);
  swift_getKeyPath();
  v59 = 1;
  v22 = a1;
  v23 = v44;
  sub_213D9130C();

  v24 = sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060);
  v57 = v23;
  v58 = v24;
  v40[1] = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v26 = v43;
  sub_213D9142C();
  (*(v45 + 8))(v12, v9);
  v27 = v47;
  v28 = v42;
  (*(v7 + 16))(v47, v22, v42);
  v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v41;
  *(v30 + 24) = v23;
  (*(v7 + 32))(v30 + v29, v27, v28);
  v31 = sub_213D8BA40();
  v55 = WitnessTable;
  v56 = v31;
  v32 = swift_getWitnessTable();
  sub_213D8BB2C();
  sub_213D8BB80(&qword_27C8EDAC8, type metadata accessor for MapControlsConfig);
  v33 = v46;
  sub_213D9137C();

  (*(v50 + 8))(v26, v13);
  v34 = sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068);
  v53 = v32;
  v54 = v34;
  v35 = swift_getWitnessTable();
  v36 = v48;
  v37 = v33;
  sub_213D4CEAC(v33, v16, v35);
  v38 = *(v51 + 8);
  v38(v37, v16);
  sub_213D4CEAC(v36, v16, v35);
  return (v38)(v36, v16);
}

uint64_t sub_213D890F8(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CEE7C8(a1, v5);
  return sub_213D88368(v5);
}

uint64_t View.mapControls<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _MapControlsModifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v18 - v15;
  a1(v14);
  sub_213D88420(v10, a4, v16);
  MEMORY[0x21604E600](v16, a3, v11, v18);
  return (*(v12 + 8))(v16, v11);
}

uint64_t View.mapControlVisibility(_:)()
{
  swift_getKeyPath();
  sub_213D9130C();
}

void sub_213D8937C(uint64_t a1)
{
  sub_213D8A210(319, &qword_27C8EDA28, type metadata accessor for MapControlsConfig, MEMORY[0x277CE10B8]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D89434(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_213D90A6C();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(sub_213D9051C() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v9 <= v12)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  if (v12 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  v17 = v16 - 1;
  if (v16 - 1 <= v15)
  {
    v18 = v14 - 1;
  }

  else
  {
    v18 = v16 - 1;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(*(a3 + 16) - 8);
  v21 = *(v20 + 84);
  v22 = *(v7 + 80);
  v23 = *(v7 + 64);
  v24 = *(v10 + 80);
  v25 = *(v10 + 64);
  v26 = *(v20 + 80);
  v27 = *(v20 + 64);
  if (v21 <= v19)
  {
    v28 = v19;
  }

  else
  {
    v28 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v54 = v6;
  v29 = v25 + 7;
  v30 = ((v25 + 7 + ((v23 + v24 + ((v22 + 2) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = v30 + (v24 | 7);
  v32 = ((v24 + 2) & ~v24) + v25 + ((v30 + v24 + ((((v24 + 16) & ~v24) + v25 + (v24 | 7 | v22) + (v31 & ~(v24 | 7))) & ~(v24 | 7 | v22))) & ~v24);
  v33 = ((v32 + 13) & 0xFFFFFFFFFFFFFFF8) + v26 + 8;
  v34 = a2 - v28;
  if (a2 > v28)
  {
    v35 = v33 & ~v26;
    v36 = v35 + v27;
    v37 = 8 * (v35 + v27);
    if (v36 > 3)
    {
      goto LABEL_22;
    }

    v39 = ((v34 + ~(-1 << v37)) >> v37) + 1;
    if (HIWORD(v39))
    {
      v38 = *(a1 + v36);
      if (!v38)
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v39 > 0xFF)
    {
      v38 = *(a1 + v36);
      if (!*(a1 + v36))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if (v39 >= 2)
    {
LABEL_22:
      v38 = *(a1 + v36);
      if (!*(a1 + v36))
      {
        goto LABEL_42;
      }

LABEL_29:
      v40 = (v38 - 1) << v37;
      if (v36 > 3)
      {
        v40 = 0;
      }

      if (v36)
      {
        if (v36 <= 3)
        {
          v41 = v36;
        }

        else
        {
          v41 = 4;
        }

        if (v41 > 2)
        {
          if (v41 == 3)
          {
            v42 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v42 = *a1;
          }
        }

        else if (v41 == 1)
        {
          v42 = *a1;
        }

        else
        {
          v42 = *a1;
        }
      }

      else
      {
        v42 = 0;
      }

      return v28 + (v42 | v40) + 1;
    }
  }

LABEL_42:
  if (v19 < v21)
  {
    v43 = *(v20 + 48);

    return v43((a1 + v33) & ~v26, v21);
  }

  if (v18 < 0x7FFFFFFE)
  {
    v49 = *((a1 + v32 + 13) & 0xFFFFFFFFFFFFFFF8);
    if (v49 >= 0xFFFFFFFF)
    {
      LODWORD(v49) = -1;
    }

    if ((v49 + 1) >= 2)
    {
      return v49;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v45 = ~v24;
    if (v15 < v17)
    {
      v46 = ((a1 + v31) & ~(v24 | 7));
      if (v12 > 0xFE)
      {
        v48 = (*(v11 + 48))((v24 + ((v46 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & v45);
LABEL_62:
        v51 = v48 != 0;
        result = (v48 - 1);
        if (result != 0 && v51)
        {
          return result;
        }

        return 0;
      }

      v47 = *v46;
      if (v47 >= 2)
      {
        v48 = ((v47 + 2147483646) & 0x7FFFFFFF) + 1;
        goto LABEL_62;
      }

      return 0;
    }

    if (v9 == v14)
    {
      v50 = (*(v8 + 48))((a1 + v22 + 2) & ~v22, v9, v54);
    }

    else
    {
      v52 = (((a1 + v22 + 2) & ~v22) + v23 + v24) & v45;
      if (v12 == v14)
      {
        v50 = (*(v11 + 48))(v52);
      }

      else
      {
        v53 = *((v29 + v52) & 0xFFFFFFFFFFFFFFF8);
        if (v53 >= 0xFFFFFFFF)
        {
          LODWORD(v53) = -1;
        }

        if ((v53 + 1) >= 2)
        {
          v50 = v53;
        }

        else
        {
          v50 = 0;
        }
      }
    }

    if (v50 >= 2)
    {
      return v50 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_213D898BC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v65 = sub_213D90A6C();
  v7 = *(v65 - 8);
  v67 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_213D9051C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v8 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v11 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = v15 - 1;
  if (v15 - 1 <= v14)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = v15 - 1;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(*(a4 + 16) - 8);
  v20 = *(v19 + 84);
  v21 = *(v7 + 80);
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v9 + 64);
  v25 = *(v19 + 80);
  if (v20 <= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = *(v19 + 84);
  }

  v27 = v24 + 7;
  v28 = ((v24 + 7 + ((v22 + v23 + ((v21 + 2) & ~v21)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v23 | 7;
  v30 = ((v23 + 16) & ~v23) + v24;
  v31 = v28 + (v23 | 7);
  v32 = ((v23 + 2) & ~v23) + v24 + ((v28 + v23 + ((v30 + (v23 | 7 | v21) + (v31 & ~(v23 | 7))) & ~(v23 | 7 | v21))) & ~v23);
  v33 = ((v32 + 13) & 0xFFFFFFFFFFFFFFF8) + v25 + 8;
  v34 = (v33 & ~v25) + *(v19 + 64);
  v35 = a3 >= v26;
  v36 = a3 - v26;
  if (v36 != 0 && v35)
  {
    if (v34 <= 3)
    {
      v41 = ((v36 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v41))
      {
        v37 = 4;
      }

      else
      {
        if (v41 < 0x100)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        if (v41 >= 2)
        {
          v37 = v42;
        }

        else
        {
          v37 = 0;
        }
      }
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = a1;
  if (v26 < a2)
  {
    v39 = ~v26 + a2;
    if (v34 >= 4)
    {
      bzero(v38, v34);
      *v38 = v39;
      v40 = 1;
      if (v37 > 1)
      {
        goto LABEL_26;
      }

      goto LABEL_73;
    }

    v40 = (v39 >> (8 * v34)) + 1;
    if (v34)
    {
      v43 = v39 & ~(-1 << (8 * v34));
      bzero(v38, v34);
      if (v34 != 3)
      {
        if (v34 == 2)
        {
          *v38 = v43;
          if (v37 > 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *v38 = v39;
          if (v37 > 1)
          {
LABEL_26:
            if (v37 == 2)
            {
              *(v38 + v34) = v40;
            }

            else
            {
              *(v38 + v34) = v40;
            }

            return;
          }
        }

LABEL_73:
        if (v37)
        {
          *(v38 + v34) = v40;
        }

        return;
      }

      *v38 = v43;
      *(v38 + 2) = BYTE2(v43);
    }

    if (v37 > 1)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

  if (v37 > 1)
  {
    if (v37 != 2)
    {
      *(a1 + v34) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v34) = 0;
  }

  else if (v37)
  {
    *(a1 + v34) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v18 < v20)
  {
    v44 = *(v19 + 56);

    v44((a1 + v33) & ~v25, a2, v20);
    return;
  }

  if (v18 < a2)
  {
    v45 = (v32 + 13) & 0xFFFFFFF8;
    v46 = (v45 + 8);
    if (v45 == -8)
    {
      return;
    }

    v47 = ~v18 + a2;
    v48 = a1;
LABEL_54:
    bzero(v48, v46);
    *a1 = v47;
    return;
  }

  if (v17 <= 0x7FFFFFFD)
  {
    v53 = ((a1 + v32 + 13) & 0xFFFFFFFFFFFFFFF8);
    if (a2 <= 0x7FFFFFFE)
    {
      *v53 = a2;
      return;
    }

    v59 = a2 - 0x7FFFFFFF;
    goto LABEL_93;
  }

  if (v17 < a2)
  {
    v49 = (v32 + 6);
    if (v49 <= 3)
    {
      v50 = ~(-1 << (8 * (v32 + 6)));
    }

    else
    {
      v50 = -1;
    }

    if (v32 != -6)
    {
      v51 = v50 & (~v17 + a2);
      if (v49 <= 3)
      {
        v52 = v32 + 6;
      }

      else
      {
        v52 = 4;
      }

      bzero(v38, v49);
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          *v38 = v51;
          *(v38 + 2) = BYTE2(v51);
        }

        else
        {
          *v38 = v51;
        }
      }

      else if (v52 == 1)
      {
        *v38 = v51;
      }

      else
      {
        *v38 = v51;
      }
    }

    return;
  }

  v54 = ~v23;
  if (v14 < v16)
  {
    v55 = ((a1 + v31) & ~v29);
    if (v16 < a2)
    {
      if (v30 <= 3)
      {
        v56 = ~(-1 << (8 * v30));
      }

      else
      {
        v56 = -1;
      }

      if (!v30)
      {
        return;
      }

      v57 = v56 & (a2 - v15);
      if (v30 <= 3)
      {
        v58 = v30;
      }

      else
      {
        v58 = 4;
      }

      bzero(((v38 + v31) & ~v29), v30);
      if (v58 <= 2)
      {
        if (v58 == 1)
        {
LABEL_91:
          *v55 = v57;
          return;
        }

LABEL_118:
        *v55 = v57;
        return;
      }

      goto LABEL_121;
    }

    if (a2 >= v15)
    {
      if (v30 <= 3)
      {
        v62 = ~(-1 << (8 * v30));
      }

      else
      {
        v62 = -1;
      }

      if (!v30)
      {
        return;
      }

      v57 = v62 & (a2 - v15);
      if (v30 <= 3)
      {
        v58 = v30;
      }

      else
      {
        v58 = 4;
      }

      bzero(((v38 + v31) & ~v29), v30);
      if (v58 <= 2)
      {
        if (v58 == 1)
        {
          goto LABEL_91;
        }

        goto LABEL_118;
      }

LABEL_121:
      if (v58 == 3)
      {
        *v55 = v57;
        v55[2] = BYTE2(v57);
      }

      else
      {
        *v55 = v57;
      }

      return;
    }

    if (v11 <= 0xFE)
    {
      *v55 = a2 + 2;
      return;
    }

    v63 = *(v10 + 56);
    v64 = (v23 + ((v55 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & v54;
    v60 = a2 + 1;
    goto LABEL_126;
  }

  if (v14 < a2)
  {
    if (!v28)
    {
      return;
    }

    v47 = a2 - v13;
LABEL_120:
    v48 = a1;
    v46 = v28;
    goto LABEL_54;
  }

  v47 = a2 - v13;
  if (a2 >= v13)
  {
    if (!v28)
    {
      return;
    }

    goto LABEL_120;
  }

  v60 = a2 + 1;
  if (v8 != v13)
  {
    if (v11 == v13)
    {
      v63 = *(v10 + 56);
      v64 = (((a1 + v21 + 2) & ~v21) + v22 + v23) & v54;
LABEL_126:

      v63(v64, v60);
      return;
    }

    v53 = ((v27 + ((((a1 + v21 + 2) & ~v21) + v22 + v23) & v54)) & 0xFFFFFFFFFFFFFFF8);
    if (a2 <= 0x7FFFFFFD)
    {
      *v53 = v60;
      return;
    }

    v59 = a2 - 2147483646;
LABEL_93:
    *v53 = 0;
    *v53 = v59;
    return;
  }

  v61 = *(v67 + 56);

  v61((a1 + v21 + 2) & ~v21, v60, v8, v65);
}

uint64_t type metadata accessor for MapControlsConfig()
{
  result = qword_27C8EDA30;
  if (!qword_27C8EDA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213D8A024()
{
  sub_213D8A210(319, &qword_27C8EDA40, type metadata accessor for MapPitchToggleConfig, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_213D8A210(319, &qword_27C8EDA48, type metadata accessor for MapScaleViewConfig, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_213D8A210(319, &qword_27C8EDA50, type metadata accessor for MapUserLocationButtonConfig, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213D8A210(319, &qword_27C8EDA58, type metadata accessor for MapCompassConfig, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_213CF3CE4(319, &qword_27C8EDA60);
          if (v4 <= 0x3F)
          {
            sub_213CF3CE4(319, &qword_27C8EDA68);
            if (v5 <= 0x3F)
            {
              sub_213CF3CE4(319, &qword_27C8EDA70);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_213D8A210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_213D8A2C8(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v112 = a2;
  v2 = type metadata accessor for MapCompassConfig(0);
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v2);
  v95 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v95 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAD0, &qword_213D9E0C8);
  v8 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v95 - v9;
  v10 = type metadata accessor for MapUserLocationButtonConfig(0);
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](v10);
  v97 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v95 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAD8, &qword_213D9E0D0);
  v16 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v107 = &v95 - v17;
  v18 = type metadata accessor for MapScaleViewConfig(0);
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v18);
  v103 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v108 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAE0, &qword_213D9E0D8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v95 - v26;
  v28 = type metadata accessor for MapPitchToggleConfig(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v95 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAE8, &unk_213D9E0E0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v95 - v39;
  v42 = *(v41 + 56);
  sub_213CE2C28(v111, &v95 - v39, &qword_27C8EBAD8, &unk_213D98590);
  sub_213CE2C28(v112, &v40[v42], &qword_27C8EBAD8, &unk_213D98590);
  v43 = *(v29 + 48);
  if (v43(v40, 1, v28) == 1)
  {
    if (v43(&v40[v42], 1, v28) == 1)
    {
      sub_213CD8330(v40, &qword_27C8EBAD8, &unk_213D98590);
      goto LABEL_8;
    }

LABEL_6:
    v44 = &qword_27C8EDAE8;
    v45 = &unk_213D9E0E0;
    v46 = v40;
LABEL_27:
    sub_213CD8330(v46, v44, v45);
    return 0;
  }

  sub_213CE2C28(v40, v36, &qword_27C8EBAD8, &unk_213D98590);
  if (v43(&v40[v42], 1, v28) == 1)
  {
    sub_213D8BBC8(v36, type metadata accessor for MapPitchToggleConfig);
    goto LABEL_6;
  }

  sub_213D8BC28(&v40[v42], v32, type metadata accessor for MapPitchToggleConfig);
  v47 = sub_213CE2948(v36, v32);
  sub_213D8BBC8(v32, type metadata accessor for MapPitchToggleConfig);
  sub_213D8BBC8(v36, type metadata accessor for MapPitchToggleConfig);
  sub_213CD8330(v40, &qword_27C8EBAD8, &unk_213D98590);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v48 = type metadata accessor for MapControlsConfig();
  v49 = v48[5];
  v50 = *(v24 + 48);
  v51 = v111;
  sub_213CE2C28(v111 + v49, v27, &unk_27C8EBAE0, &unk_213D9DF40);
  v52 = v112;
  sub_213CE2C28(v112 + v49, &v27[v50], &unk_27C8EBAE0, &unk_213D9DF40);
  v53 = v110;
  v54 = *(v109 + 48);
  if (v54(v27, 1, v110) == 1)
  {
    if (v54(&v27[v50], 1, v53) == 1)
    {
      sub_213CD8330(v27, &unk_27C8EBAE0, &unk_213D9DF40);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v59 = v108;
  sub_213CE2C28(v27, v108, &unk_27C8EBAE0, &unk_213D9DF40);
  if (v54(&v27[v50], 1, v53) == 1)
  {
    sub_213D8BBC8(v59, type metadata accessor for MapScaleViewConfig);
LABEL_16:
    v44 = &qword_27C8EDAE0;
    v45 = &qword_213D9E0D8;
LABEL_26:
    v46 = v27;
    goto LABEL_27;
  }

  v60 = v103;
  sub_213D8BC28(&v27[v50], v103, type metadata accessor for MapScaleViewConfig);
  if (*v59 != *v60 || (v61 = v60[1], v62 = v59[1], (sub_213D904DC() & 1) == 0) || (v63 = *(v59 + 1), v64 = *(v60 + 1), (sub_213D90D4C() & 1) == 0))
  {
    sub_213D8BBC8(v60, type metadata accessor for MapScaleViewConfig);
    sub_213D8BBC8(v59, type metadata accessor for MapScaleViewConfig);
    v44 = &unk_27C8EBAE0;
    v45 = &unk_213D9DF40;
    goto LABEL_26;
  }

  v65 = *(v53 + 28);
  v66 = sub_213D9050C();
  sub_213D8BBC8(v60, type metadata accessor for MapScaleViewConfig);
  sub_213D8BBC8(v59, type metadata accessor for MapScaleViewConfig);
  sub_213CD8330(v27, &unk_27C8EBAE0, &unk_213D9DF40);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v55 = v48[6];
  v56 = *(v104 + 48);
  v27 = v107;
  sub_213CE2C28(v51 + v55, v107, &qword_27C8EBAC8, &unk_213D98580);
  sub_213CE2C28(v52 + v55, &v27[v56], &qword_27C8EBAC8, &unk_213D98580);
  v57 = v106;
  v58 = *(v105 + 48);
  if (v58(v27, 1, v106) == 1)
  {
    if (v58(&v27[v56], 1, v57) == 1)
    {
      sub_213CD8330(v27, &qword_27C8EBAC8, &unk_213D98580);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v67 = v102;
  sub_213CE2C28(v27, v102, &qword_27C8EBAC8, &unk_213D98580);
  if (v58(&v27[v56], 1, v57) == 1)
  {
    sub_213D8BBC8(v67, type metadata accessor for MapUserLocationButtonConfig);
LABEL_25:
    v44 = &qword_27C8EDAD8;
    v45 = &qword_213D9E0D0;
    goto LABEL_26;
  }

  v69 = &v27[v56];
  v70 = v97;
  sub_213D8BC28(v69, v97, type metadata accessor for MapUserLocationButtonConfig);
  v71 = sub_213D8611C(v67, v70);
  sub_213D8BBC8(v70, type metadata accessor for MapUserLocationButtonConfig);
  sub_213D8BBC8(v67, type metadata accessor for MapUserLocationButtonConfig);
  sub_213CD8330(v27, &qword_27C8EBAC8, &unk_213D98580);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v72 = v48[7];
  v73 = *(v98 + 48);
  v74 = v101;
  sub_213CE2C28(v51 + v72, v101, &qword_27C8EBAD0, &unk_213D9DF50);
  v75 = v52 + v72;
  v76 = v74;
  sub_213CE2C28(v75, v74 + v73, &qword_27C8EBAD0, &unk_213D9DF50);
  v77 = v100;
  v78 = *(v99 + 48);
  if (v78(v74, 1, v100) == 1)
  {
    if (v78(v74 + v73, 1, v77) == 1)
    {
      sub_213CD8330(v74, &qword_27C8EBAD0, &unk_213D9DF50);
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v88 = v96;
  sub_213CE2C28(v76, v96, &qword_27C8EBAD0, &unk_213D9DF50);
  if (v78(v76 + v73, 1, v77) == 1)
  {
    sub_213D8BBC8(v88, type metadata accessor for MapCompassConfig);
LABEL_42:
    v44 = &qword_27C8EDAD0;
    v45 = &qword_213D9E0C8;
    v46 = v76;
    goto LABEL_27;
  }

  v89 = v76 + v73;
  v90 = v95;
  sub_213D8BC28(v89, v95, type metadata accessor for MapCompassConfig);
  if (*v88 != *v90 || (v91 = v90[1], v92 = v88[1], (sub_213D904DC() & 1) == 0))
  {
    sub_213D8BBC8(v90, type metadata accessor for MapCompassConfig);
    sub_213D8BBC8(v88, type metadata accessor for MapCompassConfig);
    v44 = &qword_27C8EBAD0;
    v45 = &unk_213D9DF50;
    v46 = v76;
    goto LABEL_27;
  }

  v93 = *(v77 + 24);
  v94 = sub_213D9050C();
  sub_213D8BBC8(v90, type metadata accessor for MapCompassConfig);
  sub_213D8BBC8(v88, type metadata accessor for MapCompassConfig);
  sub_213CD8330(v76, &qword_27C8EBAD0, &unk_213D9DF50);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v79 = v48[8];
  v80 = *(v51 + v79);
  v81 = *(v52 + v79);
  if (v80 == 2)
  {
    if (v81 != 2)
    {
      return 0;
    }
  }

  else if (v81 == 2 || ((v81 ^ v80) & 1) != 0 || (sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v82 = v48[9];
  v83 = *(v51 + v82);
  v84 = *(v52 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      return 0;
    }
  }

  else if (v84 == 2 || ((v84 ^ v83) & 1) != 0 || (sub_213D904DC() & 1) == 0)
  {
    return 0;
  }

  v85 = v48[10];
  v86 = *(v51 + v85);
  v87 = *(v52 + v85);
  if (v86 != 2)
  {
    return v87 != 2 && ((v87 ^ v86) & 1) == 0 && (sub_213D904DC() & 1) != 0;
  }

  return v87 == 2;
}

uint64_t sub_213D8AFA0(uint64_t a1, void (*a2)(double))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v27 = type metadata accessor for MapControlsConfig();
  v28 = *(*(v27 - 1) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v29);
  sub_213CE2C28(v31, v23, &qword_27C8EBAD8, &unk_213D98590);
  v32 = type metadata accessor for MapPitchToggleConfig(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v23, 1, v32) == 1)
  {
    sub_213CE2C28(a1, v26, &qword_27C8EBAD8, &unk_213D98590);
    if (v34(v23, 1, v32) != 1)
    {
      sub_213CD8330(v23, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D8BC28(v23, v26, type metadata accessor for MapPitchToggleConfig);
    (*(v33 + 56))(v26, 0, 1, v32);
  }

  sub_213D4A7D0(v26, a1, &qword_27C8EBAD8, &unk_213D98590);
  sub_213CE2C28(&v31[v27[5]], v17, &unk_27C8EBAE0, &unk_213D9DF40);
  v35 = type metadata accessor for MapScaleViewConfig(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v17, 1, v35);
  v40 = v64;
  v39 = v65;
  if (v38 == 1)
  {
    v41 = v61;
    sub_213CE2C28(a1 + v27[5], v61, &unk_27C8EBAE0, &unk_213D9DF40);
    if (v37(v17, 1, v35) != 1)
    {
      sub_213CD8330(v17, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    v42 = v61;
    sub_213D8BC28(v17, v61, type metadata accessor for MapScaleViewConfig);
    (*(v36 + 56))(v42, 0, 1, v35);
    v41 = v42;
  }

  sub_213D4A7D0(v41, a1 + v27[5], &unk_27C8EBAE0, &unk_213D9DF40);
  v43 = v62;
  sub_213CE2C28(&v31[v27[6]], v62, &qword_27C8EBAC8, &unk_213D98580);
  v44 = type metadata accessor for MapUserLocationButtonConfig(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v43, 1, v44) == 1)
  {
    v47 = v43;
    v48 = v63;
    sub_213CE2C28(a1 + v27[6], v63, &qword_27C8EBAC8, &unk_213D98580);
    if (v46(v47, 1, v44) != 1)
    {
      sub_213CD8330(v47, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    v49 = v43;
    v48 = v63;
    sub_213D8BC28(v49, v63, type metadata accessor for MapUserLocationButtonConfig);
    (*(v45 + 56))(v48, 0, 1, v44);
  }

  sub_213D4A7D0(v48, a1 + v27[6], &qword_27C8EBAC8, &unk_213D98580);
  sub_213CE2C28(&v31[v27[7]], v40, &qword_27C8EBAD0, &unk_213D9DF50);
  v50 = type metadata accessor for MapCompassConfig(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v40, 1, v50) == 1)
  {
    sub_213CE2C28(a1 + v27[7], v39, &qword_27C8EBAD0, &unk_213D9DF50);
    if (v52(v40, 1, v50) != 1)
    {
      sub_213CD8330(v40, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    sub_213D8BC28(v40, v39, type metadata accessor for MapCompassConfig);
    (*(v51 + 56))(v39, 0, 1, v50);
  }

  sub_213D4A7D0(v39, a1 + v27[7], &qword_27C8EBAD0, &unk_213D9DF50);
  v53 = v27[8];
  v54 = *&v31[v53];
  if (v54 == 2)
  {
    v54 = *(a1 + v53);
  }

  *(a1 + v53) = v54;
  v55 = v27[9];
  v56 = *&v31[v55];
  if (v56 == 2)
  {
    v56 = *(a1 + v55);
  }

  *(a1 + v55) = v56;
  v57 = *&v31[v27[10]];
  result = sub_213D8BBC8(v31, type metadata accessor for MapControlsConfig);
  v59 = v27[10];
  if (v57 == 2)
  {
    v57 = *(a1 + v59);
  }

  *(a1 + v59) = v57;
  return result;
}

uint64_t sub_213D8B784(char *a1, char a2)
{
  v4 = sub_213D90A6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10, a1, v4);
  sub_213D90A3C();
  sub_213D8BB80(&qword_27C8EDA78, MEMORY[0x277CDDBB8]);
  v12 = sub_213D918DC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    v13(a1, v4);
    v13(v11, v4);
    return 2;
  }

  sub_213D90A1C();
  v15 = sub_213D918DC();
  v13(v9, v4);
  if (v15)
  {
    v13(a1, v4);
    v16 = v11;
LABEL_7:
    v13(v16, v4);
    return 1;
  }

  sub_213D90A4C();
  v17 = sub_213D918DC();
  v13(v9, v4);
  v13(v11, v4);
  if (v17)
  {
    v16 = a1;
    goto LABEL_7;
  }

  if (_MKLinkedOnOrAfterReleaseSet())
  {
    v18 = sub_213D9171C();
    v13(a1, v4);
    if (v18)
    {
      v19 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    v13(a1, v4);
  }

  v19 = 1;
LABEL_13:
  if (a2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_213D8BA40()
{
  result = qword_27C8EDAA0;
  if (!qword_27C8EDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAA0);
  }

  return result;
}

uint64_t sub_213D8BAA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(type metadata accessor for _MapControlsModifier() - 8) + 80);

  return sub_213D890F8(a1);
}

unint64_t sub_213D8BB2C()
{
  result = qword_27C8EDAC0;
  if (!qword_27C8EDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAC0);
  }

  return result;
}

uint64_t sub_213D8BB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213D8BBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D8BC28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213D8BCC0()
{
  result = qword_27C8EDAF0;
  if (!qword_27C8EDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE20, &qword_213D98750);
    sub_213CE30F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAF0);
  }

  return result;
}

__n128 (*CLLocationCoordinate2D.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_213D8BD7C;
}

__n128 sub_213D8BD7C(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

unint64_t sub_213D8BD90()
{
  result = qword_27C8EDAF8;
  if (!qword_27C8EDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB00, &qword_213D9E1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDAF8);
  }

  return result;
}

__n128 sub_213D8BDF4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_213D8BE00(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_213D8BE0C(uint64_t a1))(__n128 *)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_213D8BE3C;
}

uint64_t View.mapScrollEdgeEffectViewInteractionDisabled(_:)()
{
  swift_getKeyPath();
  sub_213D9130C();
}

uint64_t sub_213D8BEB4()
{
  sub_213D8BFF0();
  sub_213D90C1C();
  return v1;
}

uint64_t sub_213D8BEF0@<X0>(_BYTE *a1@<X8>)
{
  sub_213D8BFF0();
  result = sub_213D90C1C();
  *a1 = v3;
  return result;
}

uint64_t sub_213D8BF40(char *a1)
{
  v2 = *a1;
  sub_213D8BFF0();
  return sub_213D90C2C();
}

unint64_t sub_213D8BF8C()
{
  result = qword_27C8EDB10;
  if (!qword_27C8EDB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB08, &qword_213D9E288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB10);
  }

  return result;
}

unint64_t sub_213D8BFF0()
{
  result = qword_27C8EDB18;
  if (!qword_27C8EDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB18);
  }

  return result;
}

uint64_t sub_213D8C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8C0C4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_213D8C0C4()
{
  result = qword_27C8EDB20;
  if (!qword_27C8EDB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBE78, qword_213D98778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB20);
  }

  return result;
}

id sub_213D8C140()
{
  v1 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
  [v1 layoutSubviews];
  [v1 sizeThatFits_];
  v3 = v2;
  v5 = v4;
  [v0 setBounds_];
  [v1 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  v7 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint + 8];
  [v0 frame];
  [v0 setCenterOffset_];
  v19 = *&v0[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
  [v0 frame];
  v11.f64[1] = v10;
  __asm { FMOV            V0.2D, #0.5 }

  v17 = vnegq_f64(vsubq_f64(vmulq_f64(v11, _Q0), vmulq_f64(v19, v11)));

  return [v0 setAccessoryOffset_];
}

id sub_213D8C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = 0;
  v7 = &v3[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  sub_213D917CC();
  *v7 = v8;
  *(v7 + 1) = v9;
  v10 = &v4[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
  sub_213D917CC();
  *v10 = v11;
  *(v10 + 1) = v12;
  v20 = sub_213D915DC();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB48, &qword_213D9E318));
  v14 = sub_213D907EC();
  sub_213D9080C();
  *&v4[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView] = v14;
  v15 = v14;
  if (a3)
  {
    v16 = sub_213D9190C();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for SwiftUIAnnotationView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithAnnotation_reuseIdentifier_, a1, v16);

  swift_unknownObjectRelease();
  return v17;
}

id sub_213D8C5C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIAnnotationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_213D8C664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_213CD8330(a1, &qword_27C8EBF38, &qword_213D98B80);
    v5 = *v2;
    v6 = sub_213CE212C(a2);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_213D1BDD8();
        v12 = v16;
      }

      sub_213CE2A78(*(v12 + 56) + 8 * v9, &v18);
      sub_213D1BAC8(v9, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v8 & 1) == 0;
    return sub_213CD8330(&v18, &qword_27C8EBF38, &qword_213D98B80);
  }

  else
  {
    sub_213CE2A78(a1, &v18);
    v13 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    result = sub_213D8D498(&v18, a2, v14);
    *v2 = v17;
  }

  return result;
}

uint64_t View.mapScope(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v9[0] = a1;
  v9[1] = swift_getKeyPath();
  v10 = 0;
  sub_213CE2C28(v7, v6, &qword_27C8EDB50, &qword_213D9E348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB50, &qword_213D9E348);
  sub_213D9156C();
  sub_213CD8330(v7, &qword_27C8EDB50, &qword_213D9E348);
  MEMORY[0x21604E600](v9, a2, &type metadata for MapScopeModifier, a3);
  return sub_213D8C9E4(v9);
}

uint64_t sub_213D8C858()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_213D8C9A8()
{
  sub_213CE2BD0();
  sub_213D90C1C();
  return v1;
}

unint64_t sub_213D8CA14()
{
  result = qword_27C8EDB58;
  if (!qword_27C8EDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI9NamespaceV2IDV_08_MapKit_aB00E13ViewReferenceVtSg(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D8CA84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_213D8CAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_213D8CB70(uint64_t a1, uint64_t a2)
{
  sub_213CE2C28(a1, v8, &qword_27C8EDB50, &qword_213D9E348);
  if (v9[8])
  {
    sub_213CD8330(v8, &qword_27C8EDB50, &qword_213D9E348);
  }

  else
  {
    sub_213CED608(v8, v10, &unk_27C8EB340, &qword_213D97480);
    v7 = a2;
    v3 = v10[0];
    sub_213CE2C28(v10, v8, &unk_27C8EB340, &qword_213D97480);
    sub_213CE2A78(v9, v6);
    v6[8] = 0;
    sub_213CE2C28(v6, v5, &qword_27C8EBF38, &qword_213D98B80);

    sub_213D8C664(v5, v3);
    sub_213CD8330(v6, &qword_27C8EBF38, &qword_213D98B80);
    sub_213CD8330(v10, &unk_27C8EB340, &qword_213D97480);
    return v7;
  }

  return a2;
}

uint64_t sub_213D8CCAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_213CE212C(*a2), (v5 & 1) != 0))
  {
    sub_213CE2A1C(*(v2 + 56) + 8 * v4, &v8);
    sub_213CE2A78(&v8, v11);
    v8 = v3;
    sub_213CE2A1C(v11, &v9);
    v10 = 0;
    sub_213CE2C28(&v8, v7, &qword_27C8EDB50, &qword_213D9E348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
    sub_213D9158C();
    sub_213CD8330(&v8, &qword_27C8EDB50, &qword_213D9E348);
    return sub_213CE2AD4(v11);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    sub_213CE2C28(&v8, v7, &qword_27C8EDB50, &qword_213D9E348);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
    sub_213D9158C();
    return sub_213CD8330(&v8, &qword_27C8EDB50, &qword_213D9E348);
  }
}

uint64_t sub_213D8CDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = sub_213D8C858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB60, &qword_213D9E500);
  sub_213D9157C();
  v8 = sub_213D8CB70(v14, v7);

  sub_213CD8330(v14, &qword_27C8EDB50, &qword_213D9E348);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB68, &qword_213D9E508);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB70, &qword_213D9E510) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  sub_213D8D194(v3, v14);
  v11 = swift_allocObject();
  sub_213D8D1CC(v14, v11 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB78, &qword_213D9E518);
  v13 = (a2 + *(result + 36));
  *v13 = sub_213D8D204;
  v13[1] = v11;
  return result;
}

unint64_t sub_213D8CF64()
{
  result = sub_213D1DC64(MEMORY[0x277D84F90]);
  qword_27C8F7318 = result;
  return result;
}

uint64_t sub_213D8CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8D870();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D8CFF0@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9790 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27C8F7318;
}

uint64_t sub_213D8D060(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v7);
  v3 = v7;

  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  sub_213D8DA64(v3, sub_213D8D8C4, 0, isUniquelyReferenced_nonNull_native, &v7);
  result = swift_bridgeObjectRelease_n();
  *a1 = v7;
  return result;
}

uint64_t sub_213D8D0FC(uint64_t *a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDB80, &unk_213D9E520);
  result = AGCompareValues();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_213D8D20C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_213CE20E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_213D18F84(v14, a3 & 1);
      v18 = *v4;
      result = sub_213CE20E8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_213D91F8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_213D1BC7C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

_OWORD *sub_213D8D358(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_213CE2158(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_213D1BF54();
      v8 = v16;
      goto LABEL_8;
    }

    sub_213D19490(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_213CE2158(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_213D91F8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_213CEB34C(a1, v20);
  }

  else
  {
    sub_213D8D5B8(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_213D8D498(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_213CE212C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_213D1BDD8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_213D191F4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_213CE212C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_213D91F8C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_213D8D68C(a1, v21);
  }

  else
  {

    return sub_213D8D620(v9, a2, a1, v20);
  }
}

_OWORD *sub_213D8D5B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213CEB34C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_213D8D620(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_213CE2A78(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_213D8D6D4()
{
  result = qword_27C8EDB88;
  if (!qword_27C8EDB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB78, &qword_213D9E518);
    sub_213D8D78C();
    sub_213CEDCEC(&qword_27C8EDBB0, &qword_27C8EDBB8, &qword_213D9E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB88);
  }

  return result;
}

unint64_t sub_213D8D78C()
{
  result = qword_27C8EDB90;
  if (!qword_27C8EDB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB70, &qword_213D9E510);
    sub_213CEDCEC(&qword_27C8EDB98, &qword_27C8EDB68, &qword_213D9E508);
    sub_213CEDCEC(&qword_27C8EDBA0, &qword_27C8EDBA8, &qword_213D9E548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDB90);
  }

  return result;
}

unint64_t sub_213D8D870()
{
  result = qword_27C8EDBC0;
  if (!qword_27C8EDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDBC0);
  }

  return result;
}

uint64_t sub_213D8D8C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_213CE2A1C((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t sub_213D8D8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = (v8 << 9) | (8 * __clz(__rbit64(v7)));
    v14 = *(*(v3 + 48) + v13);
    sub_213CE2A1C(*(v3 + 56) + v13, v20);
    v22 = v14;
    sub_213CE2A78(v20, &v23);
    v24 = 0;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    v16 = v1[5];
    v15 = v1[6];
    result = sub_213CED608(&v22, v20, &qword_27C8EDBC8, &qword_213D9E5D8);
    v18 = v21;
    if (v21)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      sub_213CED608(v20, v19, &qword_27C8EDBD0, &unk_213D9E5E0);
      v16(v19);
      result = sub_213CD8330(v19, &qword_27C8EDBD0, &unk_213D9E5E0);
    }

    *(a1 + 16) = v18;
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v12 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 1;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_213D8DA64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_213D8D8F4(&v43);
  if (v45)
  {
    goto LABEL_16;
  }

  v12 = v43;
  sub_213CE2A78(&v44, v42);
  v13 = *a5;
  result = sub_213CE212C(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_213D191F4(v19, a4 & 1);
    v21 = *a5;
    result = sub_213CE212C(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_213D91F8C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_213D1BDD8();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 8 * result;
    sub_213CE2A1C(*(*a5 + 56) + 8 * result, &v41);
    sub_213CE2AD4(v42);
    sub_213D8D68C(&v41, *(v23 + 56) + v24);
LABEL_15:
    sub_213D8D8F4(&v43);
    if (v45)
    {
LABEL_16:
      sub_213CDE778();
    }

    v20 = 1;
    while (1)
    {
      v12 = v43;
      sub_213CE2A78(&v44, v42);
      v31 = *a5;
      result = sub_213CE212C(v12);
      v33 = *(v31 + 16);
      v34 = (v32 & 1) == 0;
      v18 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v18)
      {
        goto LABEL_26;
      }

      a4 = v32;
      if (*(v31 + 24) < v35)
      {
        sub_213D191F4(v35, 1);
        v36 = *a5;
        result = sub_213CE212C(v12);
        if ((a4 & 1) != (v37 & 1))
        {
          goto LABEL_8;
        }
      }

      if (a4)
      {
        v29 = *a5;
        v30 = 8 * result;
        sub_213CE2A1C(*(*a5 + 56) + 8 * result, &v41);
        sub_213CE2AD4(v42);
        sub_213D8D68C(&v41, *(v29 + 56) + v30);
      }

      else
      {
        v38 = *a5;
        *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v38[6] + 8 * result) = v12;
        result = sub_213CE2A78(v42, v38[7] + 8 * result);
        v39 = v38[2];
        v18 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v18)
        {
          goto LABEL_27;
        }

        v38[2] = v40;
      }

      sub_213D8D8F4(&v43);
      if (v45)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_213CE2A78(v42, v26[7] + 8 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_213D8DD6C@<D0>(double *a1@<X8>)
{
  sub_213D4F17C();
  sub_213D90C1C();
  result = v5;
  *a1 = v3;
  *(a1 + 1) = v4;
  a1[2] = v5;
  *(a1 + 3) = v6;
  *(a1 + 4) = v7;
  return result;
}

uint64_t sub_213D8DDD0()
{
  sub_213D4F1D0();

  return sub_213D90C1C();
}

uint64_t sub_213D8DE18()
{
  sub_213D4F224();

  return sub_213D90C1C();
}

uint64_t sub_213D8DE60()
{
  sub_213D4F278();
  sub_213D90C1C();
  return v1;
}

double sub_213D8DE9C()
{
  sub_213D9054C();
  result = *&v1;
  xmmword_27C8EDBD8 = v1;
  unk_27C8EDBE8 = v2;
  qword_27C8EDBF8 = v3;
  return result;
}

uint64_t sub_213D8DEF8@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9A18 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = *(&xmmword_27C8EDBD8 + 1);
  v2 = unk_27C8EDBE8;
  v4 = qword_27C8EDBF0;
  v5 = qword_27C8EDBF8;
  *a1 = xmmword_27C8EDBD8;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_213D8DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8EBCC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213D8DFE8()
{
  result = sub_213D9149C();
  qword_27C8EDC18 = MEMORY[0x277CE0F78];
  unk_27C8EDC20 = MEMORY[0x277CE0F60];
  qword_27C8EDC00 = result;
  return result;
}

uint64_t sub_213D8E020@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27C8E9A20 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_213D1E22C(&qword_27C8EDC00, v2);
}

double sub_213D8E090()
{
  qword_27C8EDC48 = 0;
  result = 0.0;
  xmmword_27C8EDC28 = 0u;
  unk_27C8EDC38 = 0u;
  return result;
}

uint64_t sub_213D8E0A8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27C8E9A28 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_213D8EB1C(&xmmword_27C8EDC28, v2);
}

id sub_213D8E118()
{
  result = [objc_opt_self() _defaultOverlayLevel];
  qword_27C8EDC50 = result;
  return result;
}

uint64_t sub_213D8E14C@<X0>(void *a1@<X8>)
{
  if (qword_27C8E9A30 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27C8EDC50;
  return result;
}

uint64_t sub_213D8E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213D8EC20();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t MapContent.stroke<A>(_:lineWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  v11 = sub_213D908CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  KeyPath = swift_getKeyPath();
  *(&v24 + 1) = a3;
  v25 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_213D74C28(KeyPath, &v23, a2);

  __swift_destroy_boxed_opaque_existential_1(&v23);
  v18 = swift_getKeyPath();
  sub_213D9054C();
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  v20[2] = a4;
  v20[3] = &off_281655AC0;
  swift_getWitnessTable();
  sub_213D74C28(v18, v21, v11);

  sub_213D1E400(&v23);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_213D8E438(uint64_t a1)
{
  sub_213D1E22C(a1, v3);
  sub_213D1E22C(v3, &v2);
  sub_213D4F1D0();
  sub_213D90C2C();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

double sub_213D8E498@<D0>(double *a1@<X8>)
{
  sub_213D4F17C();
  sub_213D90C1C();
  result = v5;
  *a1 = v3;
  *(a1 + 1) = v4;
  a1[2] = v5;
  *(a1 + 3) = v6;
  *(a1 + 4) = v7;
  return result;
}

uint64_t sub_213D8E500(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_213D4F17C();

  return sub_213D90C2C();
}

uint64_t MapContent.stroke(lineWidth:)(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_213D9054C();
  v4[0] = v6[0];
  v4[1] = v6[1];
  v5 = v7;
  sub_213D74C28(KeyPath, v4, a1);

  return sub_213D1E400(v6);
}

uint64_t MapContent.stroke<A>(_:style:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  v13 = sub_213D908CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - v16;
  KeyPath = swift_getKeyPath();
  *(&v25 + 1) = a4;
  v26 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  sub_213D74C28(KeyPath, &v24, a3);

  __swift_destroy_boxed_opaque_existential_1(&v24);
  v20 = swift_getKeyPath();
  v21 = a2[1];
  v24 = *a2;
  v25 = v21;
  v26 = *(a2 + 4);
  v23[2] = a5;
  v23[3] = &off_281655AC0;
  swift_getWitnessTable();
  sub_213D74C28(v20, &v24, v13);

  return (*(v14 + 8))(v17, v13);
}

uint64_t MapContent.strokeStyle(style:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  sub_213D74C28(KeyPath, v7, a2);
}

uint64_t MapContent.foregroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12[3] = a3;
  v12[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_213D74C28(KeyPath, v12, a2);

  return sub_213D8E9D0(v12);
}

uint64_t sub_213D8E970(uint64_t a1)
{
  sub_213D8EB1C(a1, v3);
  sub_213D8EB1C(v3, &v2);
  sub_213D4F224();
  sub_213D90C2C();
  return sub_213D8E9D0(v3);
}

uint64_t sub_213D8E9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF98, &qword_213D9E670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MapContent.mapOverlayLevel(level:)(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = a1;
  sub_213D74C28(KeyPath, &v6, a2);
}

uint64_t get_witness_table_15_MapKit_SwiftUI0A7ContentRzl0cD008ModifiedE0VyxAA022_EnvironmentKeyWritingaE8ModifierVyAC11StrokeStyleVGGAaBHpxAaBHD1__AjA01_aeJ0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213D8EB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF98, &qword_213D9E670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213D8EBCC()
{
  result = qword_27C8EDC78;
  if (!qword_27C8EDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC78);
  }

  return result;
}

unint64_t sub_213D8EC20()
{
  result = qword_27C8E9AA8;
  if (!qword_27C8E9AA8)
  {
    type metadata accessor for MKOverlayLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9AA8);
  }

  return result;
}

uint64_t View.lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, uint64_t *a7)
{
  v10 = *a7;
  v11 = a7[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 25) = a6;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;

  v13 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  sub_213D9134C();
}

uint64_t sub_213D8ED94@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for LookAroundPreview() + 36);
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  swift_storeEnumTagMultiPayload();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 24) = a2;
  *(a6 + 25) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = 0;
  v13 = a1;

  LOBYTE(a5) = sub_213D911DC();
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC98, &qword_213D9E838) + 36)) = a5;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830) + 36);
  v15 = *MEMORY[0x277CDF3C0];
  v16 = sub_213D904FC();
  v19 = *(v16 - 8);
  (*(v19 + 104))(a6 + v14, v15, v16);
  v17 = *(v19 + 56);

  return v17(a6 + v14, 0, 1, v16);
}

unint64_t sub_213D8EF34()
{
  result = qword_27C8EDC88;
  if (!qword_27C8EDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC80, &qword_213D9E830);
    sub_213D8EFC0();
    sub_213D8F0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC88);
  }

  return result;
}

unint64_t sub_213D8EFC0()
{
  result = qword_27C8EDC90;
  if (!qword_27C8EDC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC98, &qword_213D9E838);
    sub_213D8F04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDC90);
  }

  return result;
}

unint64_t sub_213D8F04C()
{
  result = qword_27C8EDCA0;
  if (!qword_27C8EDCA0)
  {
    type metadata accessor for LookAroundPreview();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCA0);
  }

  return result;
}

unint64_t sub_213D8F0A4()
{
  result = qword_27C8EDCA8;
  if (!qword_27C8EDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCB0, &qword_213D9E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCA8);
  }

  return result;
}

uint64_t View.lookAroundViewer(isPresented:scene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, char a8, uint64_t *a9)
{
  v14 = *a9;
  v15 = a9[1];
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 41) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = v15;

  v17 = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  sub_213D9134C();
}

uint64_t sub_213D8F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for LookAroundPreview() + 36);
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC018, &qword_213D993F0);
  swift_storeEnumTagMultiPayload();
  *a8 = a1;
  *(a8 + 8) = a2 | 0x8000000000000000;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *(a8 + 48) = 0;
  v17 = a3;

  LOBYTE(a7) = sub_213D911DC();
  *(a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC98, &qword_213D9E838) + 36)) = a7;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDC80, &qword_213D9E830) + 36);
  v19 = *MEMORY[0x277CDF3C0];
  v20 = sub_213D904FC();
  v23 = *(v20 - 8);
  (*(v23 + 104))(a8 + v18, v19, v20);
  v21 = *(v23 + 56);

  return v21(a8 + v18, 0, 1, v20);
}

uint64_t MapLocationCompass.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  result = swift_getKeyPath();
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t MapLocationCompass.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCB8, &unk_213D9E8D0);
  v2 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v4 = &v35[-v3];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  v5 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v35[-v6];
  v7 = type metadata accessor for MapControlsConfig();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_213D90C0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *v1;
  v36 = *(v1 + 8);
  v16 = v1[2];
  v39 = *(v1 + 24);
  v17 = v1[4];
  if (*(v1 + 40) == 1)
  {
    v18 = v1[4];
  }

  else
  {
    v19 = v1[4];

    sub_213D91BDC();
    v20 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v17, 0);
    (*(v12 + 8))(v15, v11);
    v18 = v46;
  }

  if (v18 == 3)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = v7[5];
  v24 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v7[6];
  v26 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v26 - 8) + 56))(&v10[v25], 1, 1, v26);
  v27 = v7[7];
  v28 = type metadata accessor for MapCompassConfig(0);
  (*(*(v28 - 8) + 56))(&v10[v27], 1, 1, v28);
  *&v10[v7[8]] = 2;
  *&v10[v7[9]] = 2;
  *&v10[v7[10]] = (v21 << 8) | 1;
  if (!v39)
  {

    sub_213D91BDC();
    v31 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v16, 0);
    (*(v12 + 8))(v15, v11);
    if (v45 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v32 = sub_213D9149C();
    v33 = v38;
    sub_213CEE7C8(v10, v38 + *(v41 + 36));
    *v33 = v32;
    sub_213CEE82C(v33, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCC0, &unk_213D9E908);
    sub_213CE189C();
    sub_213D8F9E0();
    sub_213D90E5C();
    sub_213CEE89C(v33);
    return sub_213CEE76C(v10);
  }

  if (v16)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v44 = 0;
  v30 = v36;
  v43 = v36;
  *v4 = KeyPath;
  v4[8] = 0;
  *(v4 + 2) = v37;
  v4[24] = v30;
  v4[25] = 1;
  v4[26] = v21;
  *(v4 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDCC0, &unk_213D9E908);
  sub_213CE189C();
  sub_213D8F9E0();
  sub_213D90E5C();
  return sub_213CEE76C(v10);
}

unint64_t sub_213D8F9E0()
{
  result = qword_27C8EDCC8;
  if (!qword_27C8EDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCC0, &unk_213D9E908);
    sub_213D8FA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCC8);
  }

  return result;
}

unint64_t sub_213D8FA6C()
{
  result = qword_27C8EDCD0;
  if (!qword_27C8EDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCD0);
  }

  return result;
}

uint64_t sub_213D8FAE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213D8FB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_213D8FB88()
{
  result = qword_27C8EDCD8;
  if (!qword_27C8EDCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDCE0, &qword_213D9EA48);
    sub_213CE189C();
    sub_213D8F9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EDCD8);
  }

  return result;
}

uint64_t sub_213D8FC98()
{
  v0 = sub_213D9029C();
  __swift_allocate_value_buffer(v0, qword_27C8E9770);
  v1 = __swift_project_value_buffer(v0, qword_27C8E9770);
  *v1 = _s15_MapKit_SwiftUI19ResourceBundleClassCMa_0();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27C8F7308 == -1)
  {
    if (qword_27C8F7310)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27C8F7310)
    {
      goto LABEL_3;
    }
  }

  if (qword_27C8F7300 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27C8F72F4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27C8F72F4 >= a3)
      {
        result = dword_27C8F72F8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27C8F7310;
  if (qword_27C8F7310)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27C8F7310 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21604F540](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27C8F72F4, &dword_27C8F72F8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}