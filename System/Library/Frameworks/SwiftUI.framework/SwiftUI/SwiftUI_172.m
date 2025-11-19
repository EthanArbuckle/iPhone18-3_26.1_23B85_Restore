uint64_t initializeWithTake for LegacyNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 32);
  v9 = v7 + 32;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 17);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 17) = v25;
  v26 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 8);
  if (*(v27 + 8) >= 0xFFFFFFFFuLL)
  {
    v28 = -1;
  }

  if (v28 - 1 < 0)
  {
    v26 = swift_weakTakeInit();
    *(v26 + 8) = *(v27 + 8);
  }

  else
  {
    v29 = *v27;
    *(v26 + 16) = *(v27 + 16);
    *v26 = v29;
  }

  v30 = ((v26 + 31) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v32 = *v31;
  v33 = v31[2];
  v30[1] = v31[1];
  v30[2] = v33;
  *v30 = v32;
  v34 = (v30 + 55) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 55) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 16) = *(v35 + 16);
  *v34 = v36;
  v37 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v38 = v37 + v12;
  v39 = v37 + v13;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  return a1;
}

uint64_t assignWithTake for LegacyNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  }

  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 17);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      v25 = *v22;
      *(v21 + 16) = *(v22 + 16);
      *v21 = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *v21 = *v22;
    }

    *(v21 + 17) = v26;
  }

  v27 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v27 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  v30 = v29 - 1;
  v31 = *(v28 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  v32 = v31 - 1;
  if (v30 < 0)
  {
    if (v32 < 0)
    {
      swift_weakTakeAssign();
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v32 & 0x80000000) == 0)
  {
LABEL_23:
    v33 = *v28;
    *(v27 + 16) = *(v28 + 16);
    *v27 = v33;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v27 + 8) = *(v28 + 8);
LABEL_24:
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v28 + 31) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v42 = v41 + v12;
  v43 = v41 + v13;
  *v42 = *v43;

  *(v42 + 8) = *(v43 + 8);

  *(v42 + 16) = *(v43 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for LegacyNavigationLinkButton(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = *(*(*(a3 + 16) - 8) + 64) + v10;
  v12 = ((((((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 < a2 && *(a1 + (v11 & ~v10) + v12 + 20))
  {
    return v9 + *a1 + 1;
  }

  if (v5 == v9)
  {
    return (*(v4 + 48))();
  }

  v14 = (a1 + v11) & ~v10;
  if (v8 == v9)
  {
    return (*(v7 + 48))(v14, v8, v6);
  }

  v15 = *(v12 + v14 + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void storeEnumTagSinglePayload for LegacyNavigationLinkButton(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  if (v10 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = v11 + v14;
  v16 = (v11 + v14) & ~v14;
  v17 = ((((((((((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v18 = v16 + v17 + 20;
  if (v13 >= a2)
  {
    if (v13 < a3)
    {
      a1[v18] = 0;
    }

    if (a2)
    {
      if (v7 == v13)
      {
        v20 = *(v6 + 56);

        v20();
      }

      else
      {
        v21 = &a1[v15] & ~v14;
        if (v10 == v13)
        {
          v22 = *(v9 + 56);

          v22(v21);
        }

        else
        {
          v23 = v17 + v21;
          if ((a2 & 0x80000000) != 0)
          {
            *(v23 + 16) = 0;
            *v23 = a2 & 0x7FFFFFFF;
            *(v23 + 8) = 0;
          }

          else
          {
            *(v23 + 8) = a2 - 1;
          }
        }
      }
    }
  }

  else
  {
    v19 = ~v13 + a2;
    bzero(a1, v16 + v17 + 20);
    *a1 = v19;
    if (v13 < a3)
    {
      a1[v18] = 1;
    }
  }
}

uint64_t partial apply for closure #1 in LegacyNavigationLinkButton.body.getter()
{
  v1 = *(type metadata accessor for LegacyNavigationLinkButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in LegacyNavigationLinkButton.body.getter(v2);
}

uint64_t outlined destroy of NavigationLinkPresentedValue?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Never?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #2 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for NavigationDestinationPayload() - 8);
  v4 = (*(v3 + 80) + 120) & ~*(v3 + 80);
  v5 = v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #2 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)(v0 + 48, v0 + 96, v0 + v4, v5, v1, v2);
}

uint64_t partial apply for closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for NavigationDestinationPayload() - 8);
  v6 = (*(v5 + 80) + 177) & ~*(v5 + 80);
  return closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.present(_:)((v0 + 6), (v0 + 12), (v0 + 17), v0 + v6, v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8), v1, v2, v3, v4);
}

unint64_t lazy protocol witness table accessor for type PresentingToActivationProjection and conformance PresentingToActivationProjection()
{
  result = lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection;
  if (!lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection;
  if (!lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection;
  if (!lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentingToActivationProjection and conformance PresentingToActivationProjection);
  }

  return result;
}

uint64_t partial apply for closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(type metadata accessor for NavigationDestinationPayload() - 8);
  v6 = v0 + ((*(v5 + 80) + 168) & ~*(v5 + 80));

  return closure #1 in PrimitiveNavigationLink.NavigationLinkViewRule.dismiss(_:)(v0 + 48, v0 + 96, (v0 + 120), v6, v1, v2, v3, v4);
}

uint64_t assignWithCopy for PresentingToActivationProjection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentingToActivationProjection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for PresentingToActivationProjection(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for PrimitiveNavigationLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 80);
  v4 = *(*(*(a3 + 16) - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  v6 = (v4 | v3) & 0xF8 | 7u;
  v7 = (v6 + 16) & ~v6;

  return v5 + v7;
}

uint64_t assignWithCopy for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 40);
  v9 = v7 + 24;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 24);
  LODWORD(v18) = -1;
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  else
  {
    v19 = *(v15 + 24);
  }

  v20 = v19 + 1;
  v21 = *(v16 + 24);
  if (v21 < 0xFFFFFFFF)
  {
    v18 = *(v16 + 24);
  }

  v22 = v18 + 1;
  if (v21)
  {
    v23 = v22 >= 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v17)
  {
    v25 = v20 > 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    if (!v24)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v24)
  {
    if (!v20)
    {
      v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
      if (!v22)
      {
        __swift_assign_boxed_opaque_existential_1(v26, ((v14 + v13) & 0xFFFFFFFFFFFFFFF8));
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_21:
    if (!v22)
    {
      *(v15 + 24) = v21;
      *(v15 + 32) = *(v16 + 32);
      (**(v21 - 8))((v14 + v12) & 0xFFFFFFFFFFFFFFF8, (v14 + v13) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!v20)
  {
    v26 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_26:
  v27 = *v16;
  v28 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v27;
  *(v15 + 16) = v28;
LABEL_27:
  v29 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v29 = *v30;
  *(v29 + 8) = *(v30 + 8);
  v31 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v31 + 25) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v32 + 25) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  v38 = v37 - 1;
  v39 = *(v36 + 8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  v40 = v39 - 1;
  if (v38 < 0)
  {
    if (v40 < 0)
    {
      swift_weakCopyAssign();
      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);

      goto LABEL_48;
    }

    swift_weakDestroy();

    goto LABEL_47;
  }

  if ((v40 & 0x80000000) == 0)
  {
LABEL_47:
    v41 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v41;
    goto LABEL_48;
  }

  swift_weakCopyInit();
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 16) = *(v36 + 16);

LABEL_48:
  v42 = ((v35 + 31) & 0xFFFFFFFFFFFFFFF8);
  v43 = ((v36 + 31) & 0xFFFFFFFFFFFFFFF8);
  v44 = *v43;
  v45 = v43[2];
  v42[1] = v43[1];
  v42[2] = v45;
  *v42 = v44;
  v46 = (v42 + 55) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v43 + 55) & 0xFFFFFFFFFFFFFFF8;
  v48 = *v47;
  *(v46 + 16) = *(v47 + 16);
  *v46 = v48;
  v49 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v50 = (v49 + v12);
  v51 = (v49 + v13);
  v52 = v51[1];
  *v50 = *v51;
  v50[1] = v52;

  v53 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v53 = *v54;

  *(v53 + 8) = *(v54 + 8);

  *(v53 + 16) = *(v54 + 16);
  return a1;
}

uint64_t assignWithTake for StyledNavigationLinkButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v6 + 24);
  v9 = v7 + 40;
  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v7 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  }

  v17 = *v16;
  v18 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v17;
  *(v15 + 16) = v18;
  v19 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 17);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 17);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      v25 = *v22;
      *(v21 + 16) = *(v22 + 16);
      *v21 = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *v21 = *v22;
    }

    *(v21 + 17) = v26;
  }

  v27 = (v21 + 25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v22 + 25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v27 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  v30 = v29 - 1;
  v31 = *(v28 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  v32 = v31 - 1;
  if (v30 < 0)
  {
    if (v32 < 0)
    {
      swift_weakTakeAssign();
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      goto LABEL_24;
    }

    swift_weakDestroy();

    goto LABEL_23;
  }

  if ((v32 & 0x80000000) == 0)
  {
LABEL_23:
    v33 = *v28;
    *(v27 + 16) = *(v28 + 16);
    *v27 = v33;
    goto LABEL_24;
  }

  swift_weakTakeInit();
  *(v27 + 8) = *(v28 + 8);
LABEL_24:
  v34 = ((v27 + 31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v28 + 31) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v35;
  v37 = v35[2];
  v34[1] = v35[1];
  v34[2] = v37;
  *v34 = v36;
  v38 = (v34 + 55) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v35 + 55) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  *(v38 + 16) = *(v39 + 16);
  *v38 = v40;
  v41 = (((((((((v14 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v42 = (v41 + v12);
  v43 = (v41 + v13);
  *v42 = *v43;

  v44 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v44 = *v45;

  *(v44 + 8) = *(v45 + 8);

  *(v44 + 16) = *(v45 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for StyledNavigationLinkButton(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v7 + 80) & 0xF8 | 7;
  v11 = *(*(*(a3 + 16) - 8) + 64) + v10;
  v12 = ((((((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v13 = (((v11 & ~v10) + v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v9 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_30:
    if (v5 == v9)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v11] & ~v10;
    if (v8 == v9)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v12 + v22);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v9 + (v21 | v20) + 1;
}

void storeEnumTagSinglePayload for StyledNavigationLinkButton(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  if (v9 <= 0x7FFFFFFD)
  {
    v11 = 2147483645;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v11 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v8 + 80) & 0xF8 | 7;
  v14 = v10 + v13;
  v15 = (v10 + v13) & ~v13;
  v16 = ((((((((((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 24;
  v17 = ((v15 + v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v12 >= a3)
  {
    v21 = 0;
    if (v12 >= a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = (a3 - v12 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v12 >= a2)
    {
LABEL_22:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v7 == v12)
      {
        v24 = *(v6 + 56);

        v24(a1);
      }

      else
      {
        v25 = (&a1[v14] & ~v13);
        if (v9 == v12)
        {
          if (v11 >= a2)
          {
            v28 = *(v8 + 56);

            v28(v25);
          }

          else if (v16)
          {
            v26 = ~v11 + a2;
            v27 = (&a1[v14] & ~v13);
            bzero(v25, v16);
            *v27 = v26;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          v29 = &v25[v16];
          *v29 = a2 & 0x7FFFFFFF;
          *(v29 + 1) = 0;
        }

        else
        {
          *&v25[v16] = a2 - 1;
        }
      }

      return;
    }
  }

  v22 = ~v12 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_32:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t partial apply for closure #1 in InternalResolvedNavigationLink.body.getter()
{
  v1 = *(type metadata accessor for InternalResolvedNavigationLink() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  v3 = type metadata accessor for InternalResolvedNavigationLink();
  return (*(v2 + *(v3 + 56)))(v2 + *(v3 + 52));
}

void *KeyboardShortcut.init(_:modifiers:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  return result;
}

uint64_t EnvironmentValues.keyboardShortcut.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void *KeyboardShortcut.init(_:modifiers:localization:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  return result;
}

double key path getter for EnvironmentValues.keyboardShortcut : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.keyboardShortcut : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.keyboardShortcut(_:modifiers:localization:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = a1[1];
  v8 = *a3;
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = a2;
  v11 = v8;

  View.keyboardShortcut(_:)(v10, a4, a5);
}

uint64_t static KeyboardShortcut.defaultAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultAction != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1ED57A6B8;
  v3 = qword_1ED57A6C0;
  v4 = byte_1ED57A6C8;
  *a1 = static KeyboardShortcut.defaultAction;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t static KeyboardShortcut.cancelAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for cancelAction != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EAA38FF8;
  v3 = qword_1EAA39000;
  v4 = byte_1EAA39008;
  *a1 = static KeyboardShortcut.cancelAction;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t KeyboardShortcut.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t KeyboardShortcut.key.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t KeyEquivalent.character.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KeyEquivalent.character.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static KeyEquivalent.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int KeyEquivalent.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KeyEquivalent()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KeyEquivalent()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.SceneKeyboardShortcutsKey@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

double specialized implicit closure #1 in _GraphInputs.keyboardShortcut.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasKeyboardShortcut()
{
  lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t KeyboardShortcut.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int KeyboardShortcut.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KeyboardShortcut()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance KeyboardShortcut()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KeyboardShortcut()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

uint64_t closure #1 in static KeyboardShortcutBindingBehavior._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyboardShortcutBindingBehavior();
  v5 = *(v4 + 36);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t BindKeyboardShortcutItems.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for KeyboardShortcutBindingBehavior();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t BindKeyboardShortcutItems.shortcut.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for KeyboardShortcut?, &type metadata for KeyboardShortcut, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v3 = *(Value + 24);
  *a1 = *Value;
  *(a1 + 8) = *(Value + 8);
  *(a1 + 24) = v3;
}

uint64_t BindKeyboardShortcutItems.updateValue()(uint64_t a1)
{
  v2 = v1;
  v78 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for KeyboardShortcutBindingBehavior();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v50 - v11);
  AGGraphGetValue();

  v13 = PreferenceKeys.contains(_:)();

  if ((v13 & 1) != 0 && *AGGraphGetValue() == 1 && (v56 = v10, v14 = v2[5], v74 = v2[4], *v75 = v14, v15 = v2[7], *&v75[16] = v2[6], v76 = v15, v16 = v2[1], v70 = *v2, v71 = v16, v17 = v2[3], v72 = v2[2], v73 = v17, v18 = *(v2 + 32), v77 = v18, BindKeyboardShortcutItems.shortcut.getter(&v64), *(&v64 + 1)))
  {
    v55 = *(&v64 + 1);
    v52 = v64;
    v54 = v65;
    v53 = BYTE8(v65);
    if (v18 == *MEMORY[0x1E698D3F8])
    {
      v51 = AGSubgraphGetCurrent();
      if (AGGraphGetCurrentAttribute() == v18)
      {
        __break(1u);
      }

      v19 = AGGraphGetAttributeSubgraph();
      AGSubgraphSetCurrent();

      v50[1] = v50;
      v20 = *(v2 + 56);
      v21 = *(v2 + 88);
      v68 = *(v2 + 72);
      v69[0] = v21;
      *(v69 + 12) = *(v2 + 100);
      v22 = *(v2 + 24);
      v64 = *(v2 + 8);
      v65 = v22;
      v66 = *(v2 + 40);
      v67 = v20;
      v23 = *(v2 + 56);
      v24 = *(v2 + 88);
      v62 = *(v2 + 72);
      v63[0] = v24;
      *(v63 + 12) = *(v2 + 100);
      v25 = *(v2 + 24);
      v58 = *(v2 + 8);
      v59 = v25;
      v60 = *(v2 + 40);
      v61 = v23;
      MEMORY[0x1EEE9AC00](v26);
      *&v70 = &type metadata for TextPlatformItemListFlags;
      *(&v70 + 1) = v8;
      *&v71 = &protocol witness table for TextPlatformItemListFlags;
      *(&v71 + 1) = v7;
      v27 = type metadata accessor for PlatformItemListGenerator();
      v50[-2] = v27;
      v50[-1] = swift_getWitnessTable();
      v28 = *(v27 - 8);
      (*(v28 + 16))(&v70, &v64, v27);
      _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v58, closure #1 in Attribute.init<A>(_:)partial apply, &v50[-4], v27, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
      v74 = v62;
      *v75 = v63[0];
      *&v75[12] = *(v63 + 12);
      v70 = v58;
      v71 = v59;
      v72 = v60;
      v73 = v61;
      (*(v28 + 8))(&v70, v27);
      v31 = v51;
      LODWORD(v19) = v57;
      AGSubgraphSetCurrent();

      *(v2 + 32) = v19;
    }

    _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyboardShortcutBinding>, &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18CD63400;
    v33 = v2[7];
    *&v75[16] = v2[6];
    v76 = v33;
    v77 = *(v2 + 32);
    v34 = v2[3];
    v72 = v2[2];
    v73 = v34;
    v35 = v2[5];
    v74 = v2[4];
    *v75 = v35;
    v36 = v2[1];
    v70 = *v2;
    v71 = v36;
    BindKeyboardShortcutItems.modifier.getter(v12);
    v38 = *v12;
    v37 = v12[1];
    v39 = *(v56 + 8);

    v39(v12, v9);
    AGGraphGetValue();

    PlatformItemList.mergedContentItem.getter(v40, v6);

    v41 = *v6;
    v42 = *v6;
    outlined destroy of PlatformItemList.Item(v6);
    if (v41)
    {
      v43 = [v42 string];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v48 = v54;
    v49 = v55;
    *(v32 + 32) = v52;
    *(v32 + 40) = v49;
    *(v32 + 48) = v48;
    *(v32 + 56) = v53;
    *(v32 + 64) = v38;
    *(v32 + 72) = v37;
    *(v32 + 80) = v44;
    *(v32 + 88) = v46;
    *&v70 = v32;
    _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for [KeyboardShortcutBinding], &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E62F8]);
    AGGraphSetOutputValue();
  }

  else
  {
    *&v70 = MEMORY[0x1E69E7CC0];
    _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for [KeyboardShortcutBinding], &type metadata for KeyboardShortcutBinding, MEMORY[0x1E69E62F8]);
    return AGGraphSetOutputValue();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KeyboardShortcutBinding()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  if (v3)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance KeyboardShortcutBinding()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  result = MEMORY[0x18D00F6F0](v2);
  if (v3)
  {

    return String.hash(into:)();
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KeyboardShortcutBinding()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  if (v3)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL specialized static KeyboardShortcut.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t destroy for KeyboardShortcutBinding()
{
}

uint64_t initializeWithCopy for KeyboardShortcutBinding(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

uint64_t assignWithCopy for KeyboardShortcutBinding(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for KeyboardShortcutBinding(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

unint64_t lazy protocol witness table accessor for type KeyboardShortcut.Localization.Style and conformance KeyboardShortcut.Localization.Style()
{
  result = lazy protocol witness table cache variable for type KeyboardShortcut.Localization.Style and conformance KeyboardShortcut.Localization.Style;
  if (!lazy protocol witness table cache variable for type KeyboardShortcut.Localization.Style and conformance KeyboardShortcut.Localization.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcut.Localization.Style and conformance KeyboardShortcut.Localization.Style);
  }

  return result;
}

uint64_t specialized static KeyboardShortcutBinding.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v5)
    {
      if (v8)
      {
        if (v4 != v9 || v5 != v8)
        {

          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for KeyboardShortcutBindingBehavior(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

_OWORD *assignWithTake for KeyboardShortcutBindingBehavior(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyboardShortcutBindingBehavior(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for KeyboardShortcutBindingBehavior(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t assignWithCopy for BindKeyboardShortcutItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

__n128 __swift_memcpy132_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for BindKeyboardShortcutItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for BindKeyboardShortcutItems(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 132))
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

uint64_t storeEnumTagSinglePayload for BindKeyboardShortcutItems(uint64_t result, int a2, int a3)
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
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TabCustomizationID.Base.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys, &unk_1F0007EF8, MEMORY[0x1E69E6F58]);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys, &unk_1F0007E68, v5);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys, &unk_1F0007DD8, v5);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v27)
  {
    v29 = 1;
    lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v8, v17);
  }

  else
  {
    v28 = 0;
    lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v11, v18);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t TabCustomizationID.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v13) = a4;
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TabCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys, &unk_1F0007CB8, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v15 = a3;
  v16 = BYTE4(v13) & 1;
  lazy protocol witness table accessor for type TabCustomizationID.Base and conformance TabCustomizationID.Base();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TabCustomizationID.Base@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized TabCustomizationID.Base.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TabCustomizationID.Base(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TabCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance TabCustomizationID@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized TabCustomizationID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TabCustomizationID.Base()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TabCustomizationID.Base()
{
  MEMORY[0x18D00F6F0](*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TabCustomizationID.Base()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TabCustomizationID(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v4 = v3 == *a2 && a1[1] == *(a2 + 8);
  return v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

unint64_t TabCustomizationID.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(36);

    v6 = 0xD000000000000022;
  }

  else
  {
    _StringGuts.grow(_:)(35);

    v6 = 0xD000000000000021;
  }

  MEMORY[0x18D00C9B0](a1, a2);
  return v6;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID.Base and conformance TabCustomizationID.Base()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base and conformance TabCustomizationID.Base);
  }

  return result;
}

uint64_t specialized TabCustomizationID.Base.init(from:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys, &unk_1F0007EF8, MEMORY[0x1E69E6F48]);
  v33 = v3;
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v29 - v4;
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys, &unk_1F0007E68, v2);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys, &unk_1F0007DD8, v2);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(a1 + 24);
  v36 = a1;
  v13 = a1;
  v15 = &v29 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(v13, v12);
  lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys();
  v34 = v15;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_8;
  }

  v18 = v32;
  v19 = v33;
  v35 = v11;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v37 = v20;
  v38 = v20 + 32;
  v39 = 0;
  v40 = v21;
  v22 = specialized Collection<>.popFirst()();
  v23 = v10;
  if (v22 == 2 || v39 != v40 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v27 = &type metadata for TabCustomizationID.Base;
    v16 = v34;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v35 + 8))(v16, v10);
    swift_unknownObjectRelease();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return v16;
  }

  if (v22)
  {
    v41 = 1;
    lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v35;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v30 + 8))(v18, v19);
  }

  else
  {
    v41 = 0;
    lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v35;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v31 + 8))(v8, v6);
  }

  (*(v24 + 8))(v34, v23);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v16;
}

void *specialized TabCustomizationID.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TabCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys, &unk_1F0007CB8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TabCustomizationID.CodingKeys and conformance TabCustomizationID.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type TabCustomizationID.Base and conformance TabCustomizationID.Base();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.TransientCodingKeys and conformance TabCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.ExplicitCodingKeys and conformance TabCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID.Base.CodingKeys and conformance TabCustomizationID.Base.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<TabCustomizationID.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

BOOL AccessibilityAttachment.merge(with:)(uint64_t a1)
{
  v1 = AccessibilityProperties.merge(with:)(a1);
  v2 = AccessibilityAttachment.platformElement.getter();
  if (v2)
  {
  }

  else if (AccessibilityAttachment.platformElement.getter())
  {
    AccessibilityAttachment.platformElement.setter();
    return 1;
  }

  return v1;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.UIKitBridgedInteractionKey(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v4 = a4;
  if (*a3 != -1)
  {
    swift_once();
    v4 = a4;
  }

  return type metadata accessor for NSObject & PlatformAccessibilityElementProtocol(0, v4);
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TemporalStateKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return MEMORY[0x1E697DB08];
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.AutomationVisibilityKey(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (*a3 == -1)
  {
  }

  else
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  return a4(0);
}

BOOL protocol witness for static AccessibilityPropertiesKey.isDefault(_:) in conformance AccessibilityProperties.ScrollableCollectionKey(uint64_t a1)
{
  outlined init with copy of AccessibilityTextLayoutProperties?(a1, v3, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  v1 = v4;
  if (v4)
  {
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v3, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0);
  }

  return v1 == 0;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ScrollableContextKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return MEMORY[0x1E6980998];
}

BOOL protocol witness for static AccessibilityPropertiesKey.isDefault(_:) in conformance AccessibilityProperties.ScrollableContextKey(uint64_t a1)
{
  outlined init with copy of AccessibilityTextLayoutProperties?(a1, v3, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
  v1 = v4 | (((v5 | (v6 << 16)) & 0xFFFFFF) << 32);
  if (v6 != 255)
  {
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v3, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998], type metadata accessor for AnyAccessibilityValue?);
  }

  return HIWORD(v1) > 0xFEu;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ScrollableStatusKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return MEMORY[0x1E6981148];
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TableContextKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityTableContext;
}

BOOL protocol witness for static AccessibilityPropertiesKey.isDefault(_:) in conformance AccessibilityProperties.TableContextKey(uint64_t a1)
{
  outlined init with copy of AccessibilityTextLayoutProperties?(a1, v3, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
  v1 = v4;
  if (v4 != 255)
  {
    _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOhTm_0(v3, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext, type metadata accessor for AnyAccessibilityValue?);
  }

  return v1 == 255;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TouchInfoKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityTouchInfo;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.UIKitTraitsKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityUIKitTraits;
}

BOOL protocol witness for AccessibilityCombinable.merge(with:) in conformance AccessibilityAttachment(uint64_t a1)
{
  v1 = AccessibilityProperties.merge(with:)(a1);
  v2 = AccessibilityAttachment.platformElement.getter();
  if (v2)
  {
  }

  else if (AccessibilityAttachment.platformElement.getter())
  {
    AccessibilityAttachment.platformElement.setter();
    return 1;
  }

  return v1;
}

uint64_t type metadata accessor for NSObject & PlatformAccessibilityElementProtocol(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for NSObject();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t EnvironmentValues.disableAutocorrection.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t EnvironmentValues.disableAutocorrection.setter()
{
  type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues._disableAutocorrection.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t EnvironmentValues.autocorrectionDisabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    PropertyList.subscript.getter();
  }

  return v2 & 1;
}

uint64_t key path getter for EnvironmentValues.autocorrectionDisabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.autocorrectionDisabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues._disableAutocorrection : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t (*EnvironmentValues.disableAutocorrection.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.disableAutocorrection.modify;
}

uint64_t EnvironmentValues.disableAutocorrection.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<AutocorrectionTypeKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

void UINavigationItemAdaptor.options.getter(void *a1@<X8>)
{
  UINavigationItemAdaptor.options.getter(a1);
}

{
  *a1 = 0;
}

uint64_t static NavigationItemAdaptorModifier._makeView(modifier:inputs:body:)@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  AGGraphCreateOffsetAttribute2();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static NavigationItemAdaptorModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type NavigationItemAdaptorModifier.MakeAdaptor and conformance NavigationItemAdaptorModifier.MakeAdaptor();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t NavigationItemAdaptorModifier.MakeAdaptor.updateValue()()
{
  v1 = v0;
  v26 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  v6 = *(*Value + 16);
  if (v6)
  {
    v7 = (v5 + 32);

    v8 = 0;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v7, v23);
      v9 = v24;
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v10 + 8))(&v22, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v8 |= v22;
      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = 0;
  }

  v11 = *(v0 + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = *(v5 + 2);
  if (v13)
  {
    v14 = *(v1 + 16) + 1;
    *(v1 + 16) = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 16) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v13 == 1)
      {
LABEL_9:
        v16 = 0;
LABEL_14:
        v19 = v13 - v16;
        v20 = &v5[48 * v16 + 72];
        do
        {
          *v20 = v14;
          v20 += 12;
          --v19;
        }

        while (v19);
LABEL_16:
        *(v12 + 16) = v5;
        goto LABEL_17;
      }
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      if (v13 == 1)
      {
        goto LABEL_9;
      }
    }

    v16 = v13 & 0x7FFFFFFFFFFFFFFELL;
    v17 = (v5 + 120);
    v18 = v13 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      *(v17 - 12) = v14;
      *v17 = v14;
      v17 += 24;
      v18 -= 2;
    }

    while (v18);
    if (v13 == v16)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_17:
  type metadata accessor for (_:)();
  if (AGGraphGetOutputValue() && (v4 & 1) == 0 && v8 == v11)
  {
  }

  else
  {
    v23[0] = partial apply for closure #1 in NavigationItemAdaptorModifier.MakeAdaptor.updateValue();
    v23[1] = v12;

    AGGraphSetOutputValue();
  }

  *(v1 + 8) = v8;
  return result;
}

uint64_t closure #1 in NavigationItemAdaptorModifier.MakeAdaptor.updateValue()()
{
  swift_beginAccess();

  return specialized Array.append<A>(contentsOf:)(v0);
}

uint64_t View.navigationItemAdaptor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a3;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of UINavigationItemAdaptor?(v15, &v13);
  if (v14)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v12);
    type metadata accessor for _ContiguousArrayStorage<UINavigationItemAdaptorStorage.Adaptor>();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18CD63400;
    outlined init with copy of _Benchmark(v12, v10 + 32);
    *(v10 + 72) = 0;
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  outlined destroy of UINavigationItemAdaptor?(v15);
  v15[0] = v10;
  MEMORY[0x18D00A570](v15, a2, &unk_1F0008278, a4);
}

uint64_t outlined init with copy of UINavigationItemAdaptor?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UINavigationItemAdaptor?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for UINavigationItemAdaptor?()
{
  if (!lazy cache variable for type metadata for UINavigationItemAdaptor?)
  {
    type metadata accessor for UINavigationItemAdaptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UINavigationItemAdaptor?);
    }
  }
}

unint64_t type metadata accessor for UINavigationItemAdaptor()
{
  result = lazy cache variable for type metadata for UINavigationItemAdaptor;
  if (!lazy cache variable for type metadata for UINavigationItemAdaptor)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UINavigationItemAdaptor);
  }

  return result;
}

uint64_t outlined destroy of UINavigationItemAdaptor?(uint64_t a1)
{
  type metadata accessor for UINavigationItemAdaptor?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<UINavigationItemAdaptorStorage.Adaptor>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<UINavigationItemAdaptorStorage.Adaptor>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UINavigationItemAdaptorStorage.Adaptor>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions()
{
  result = lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions;
  if (!lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions;
  if (!lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions;
  if (!lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions;
  if (!lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationItemAdaptorOptions and conformance UINavigationItemAdaptorOptions);
  }

  return result;
}

uint64_t initializeWithCopy for UINavigationItemAdaptorStorage.Adaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for UINavigationItemAdaptorStorage.Adaptor(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for UINavigationItemAdaptorStorage.Adaptor(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NavigationItemAdaptorModifier.MakeAdaptor and conformance NavigationItemAdaptorModifier.MakeAdaptor()
{
  result = lazy protocol witness table cache variable for type NavigationItemAdaptorModifier.MakeAdaptor and conformance NavigationItemAdaptorModifier.MakeAdaptor;
  if (!lazy protocol witness table cache variable for type NavigationItemAdaptorModifier.MakeAdaptor and conformance NavigationItemAdaptorModifier.MakeAdaptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationItemAdaptorModifier.MakeAdaptor and conformance NavigationItemAdaptorModifier.MakeAdaptor);
  }

  return result;
}

uint64_t View.transactionalPreference<A, B>(key:value:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a8;
  v28 = a9;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v17;
  v32 = v18;
  v33 = a10;
  v34 = a11;
  v19 = type metadata accessor for TransactionalPreferenceModifier();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  (*(v14 + 16))(v16, v26, a6, v21);
  (*(v14 + 32))(v23, v16, a6);
  v31 = a6;
  v32 = a7;
  v33 = a10;
  v34 = a11;
  v24 = &v23[*(type metadata accessor for TransactionalPreferenceModifier() + 52)];
  *v24 = v27;
  *(v24 + 1) = a4;

  MEMORY[0x18D00A570](v23, v29, v19, v30);
  return (*(v20 + 8))(v23, v19);
}

uint64_t static TransactionalPreferenceModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a4;
  v36 = a3;
  v30 = a1;
  v34 = a9;
  v67 = *MEMORY[0x1E69E9840];
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  v29 = a6;
  *&v62 = a7;
  *(&v62 + 1) = a8;
  IsAnimated = type metadata accessor for IsAnimated();
  v31 = *(IsAnimated - 8);
  MEMORY[0x1EEE9AC00](IsAnimated);
  v19 = &v28 - v18;
  LODWORD(v18) = *v30;
  v20 = a2[3];
  v53 = a2[2];
  v54 = v20;
  v55 = a2[4];
  v56 = *(a2 + 20);
  v21 = a2[1];
  v51 = *a2;
  v52 = v21;
  LODWORD(v59[0]) = v18;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  v33 = a7;
  *&v62 = a7;
  *(&v62 + 1) = a8;
  type metadata accessor for TransactionalPreferenceModifier();
  type metadata accessor for _GraphValue();
  LODWORD(a2) = _GraphValue.value.getter();
  LODWORD(a7) = HIDWORD(v52);
  v22 = *(*(a5 - 8) + 56);
  v32 = a5;
  v22(v16, 1, 1, a5);
  v23 = v29;
  IsAnimated.init(modifier:transaction:lastValue:lastTransaction:)(a2, a7, v16, 0, v19);
  v44[2] = swift_getAssociatedTypeWitness();
  v44[3] = IsAnimated;
  v44[4] = swift_getWitnessTable();
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v44, IsAnimated, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  (*(v31 + 8))(v19, IsAnimated);
  LODWORD(v16) = v61;
  AGGraphGetFlags();
  AGGraphSetFlags();
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  outlined init with copy of _ViewInputs(&v51, &v61);
  PreferencesInputs.remove<A>(_:)();
  v57[2] = v47;
  v57[3] = v48;
  v57[4] = v49;
  v58 = v50;
  v57[0] = v45;
  v57[1] = v46;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v61 = v45;
  v62 = v46;
  v26 = outlined init with copy of _ViewInputs(v57, v59);
  v36(v26, &v61);
  v59[2] = v63;
  v59[3] = v64;
  v59[4] = v65;
  v60 = v66;
  v59[0] = v61;
  v59[1] = v62;
  outlined destroy of _ViewInputs(v59);
  v37 = v54;
  v38 = DWORD2(v54);
  v39 = v32;
  v40 = v23;
  v41 = v33;
  v42 = a8;
  v43 = v16;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v61 = v45;
  v62 = v46;
  return outlined destroy of _ViewInputs(&v61);
}

uint64_t IsAnimated.init(modifier:transaction:lastValue:lastTransaction:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  IsAnimated = type metadata accessor for IsAnimated();
  v9 = *(IsAnimated + 56);
  v10 = type metadata accessor for Optional();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(IsAnimated + 60)] = a4;
  return result;
}

uint64_t IsAnimated.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TransactionalPreferenceModifier();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransactionalPreferenceModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static IsAnimated.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t closure #2 in IsAnimated.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  IsAnimated = type metadata accessor for IsAnimated();
  v9 = *(IsAnimated - 8);
  v10 = MEMORY[0x1EEE9AC00](IsAnimated);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, IsAnimated, v10);
  v13 = *AGGraphGetValue();
  v14 = *(v9 + 8);

  result = v14(v12, IsAnimated);
  *a6 = v13;
  return result;
}

uint64_t closure #3 in IsAnimated.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[1] = a7;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v17 = *(a1 + *(type metadata accessor for TransactionalPreferenceModifier() + 52));
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  IsAnimated = type metadata accessor for IsAnimated();
  (*(v14 + 16))(v16, a2 + *(IsAnimated + 56), v13);
  v19 = *(a3 - 8);
  result = (*(v19 + 48))(v16, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = *(a2 + *(IsAnimated + 60));

    v17(v16, v21);

    return (*(v19 + 8))(v16, a3);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance IsAnimated<A, B>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  static IsAnimated.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = a2;
  v17[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, _s14AttributeGraph12StatefulRulePAAE5value5ValueQzvsySPyAFGXEfU_TA_0, &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance IsAnimated<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for IsAnimated()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for IsAnimated(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = ((v9 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + v8 + 4) & ~v8);
    v18 = ((v16 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v16 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v17, v18, v9);
    }

    else
    {
      (*(v6 + 16))(v17, v18, v4);
      (*(v6 + 56))(v17, 0, 1, v4);
    }

    *((v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for IsAnimated(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 4) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }
}

_DWORD *initializeWithCopy for IsAnimated(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for IsAnimated(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for IsAnimated(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for IsAnimated(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  *((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for IsAnimated(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      v24 = v23 - 1;
      if (v24 < 0)
      {
        v24 = -1;
      }

      return (v24 + 1);
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for IsAnimated(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFE)
    {
      v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v23 = a2;
    }

    *((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8) = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

uint64_t partial apply for closure #1 in IsAnimated.updateValue()@<X0>(BOOL *a1@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t specialized IsAnimated.description.getter()
{
  strcpy(v2, "Transaction: ");
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x18D00C9B0](v0);

  return v2[0];
}

void static NavigationSplitViewVisibility.automatic.getter(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  if (CGRectGetHeight(v14) >= Width)
  {
    v12 = 1194.0;
  }

  else
  {
    v12 = 1024.0;
  }

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  *a1 = CGRectGetWidth(v15) >= v12;
  a1[1] = 1;
}

uint64_t NavigationSplitView.init(sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v25 = a5;
  v26 = a4;
  v23[1] = a3;
  v24 = a2;
  v27 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = xmmword_18CDF3C60;
  v36 = 0;
  v37 = 0;
  v34 = 512;
  v20 = v19();
  v21 = v24(v20);
  v26(v21);
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v31);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v35, &v34, &v28, v18, v15, v12, a6, a7, v27, a9);
}

uint64_t NavigationSplitView.init(columnVisibility:sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a7;
  v38 = a6;
  v34 = a5;
  v35 = a4;
  v32 = a3;
  v33 = a2;
  v41 = a9;
  v39 = a13;
  v40 = a12;
  v36 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v21;
  if (*(v21 + 17))
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | *(v21 + 16) | 0x8000;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns();
  v27 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v49[0] = v24;
  v49[1] = v27;
  v50 = v26;
  v51 = 1;
  v48 = 512;
  v29 = v33(v28);
  v30 = v35(v29);
  v38(v30);
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v45);
  v42 = v45;
  v43 = v46;
  v44 = v47;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v49, &v48, &v42, v23, v19, v16, a8, a10, v41, a11);
}

uint64_t NavigationSplitView.init(columnVisibility:sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v28 = a5;
  v29 = a4;
  v26[1] = a3;
  v27 = a2;
  v30 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v19;
  v21 = v19[1];
  v38 = xmmword_18CDF3C60;
  v39 = 0;
  v40 = 0;
  if (v21)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v37 = v22 | v20;
  v23 = v16();
  v24 = v27(v23);
  v29(v24);
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v34);
  v31 = v34;
  v32 = v35;
  v33 = v36;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v38, &v37, &v31, v18, v14, v11, a6, a8, v30, a9);
}

uint64_t NavigationSplitView.init<>(columnVisibility:sidebar:detail:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[1];
  v30 = xmmword_18CDF3C70;
  v31 = 0;
  v32 = 0;
  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v29 = v18 | v16;
  v19 = v12();
  a2(v19);
  v20 = MEMORY[0x1E6981E70];
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v26);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v30, &v29, &v23, v14, v21, v10, a3, v20, a5, a4);
}

uint64_t NavigationSplitView.init(preferredCompactColumn:sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, __int128 a9)
{
  v28 = a4;
  v29 = a3;
  v30 = a6;
  v27 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v35 = xmmword_18CDF3C60;
  v36 = 0;
  v37 = 0;
  v34 = 512;
  v31[0] = v20;
  v31[1] = v21;
  v32 = v22;
  v33 = 1;
  v24 = v23();
  v25 = a2(v24);
  v29(v25);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v35, &v34, v31, v18, v15, v12, a5, a7, v30, a8);
}

uint64_t NavigationSplitView.init(columnVisibility:preferredCompactColumn:sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v43 = a7;
  v44 = a6;
  v39 = a5;
  v40 = a4;
  v36 = a3;
  v37 = a2;
  v46 = a8;
  v42 = a12;
  v41 = a13;
  v45 = a11;
  v35 = a9;
  v38 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v19;
  v25 = *v23;
  v24 = *(v23 + 8);
  v26 = *(v23 + 16);
  if (*(v19 + 17))
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | *(v19 + 16) | 0x8000;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns();
  v29 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v51[0] = v22;
  v51[1] = v29;
  v52 = v28;
  v53 = 1;
  v50 = 512;
  v47[0] = v25;
  v47[1] = v24;
  v48 = v26;
  v49 = 1;
  v31 = v37(v30);
  v32 = v40(v31);
  v44(v32);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v51, &v50, v47, v21, v17, v14, v35, v38, v46, v45);
}

uint64_t NavigationSplitView.init<>(preferredCompactColumn:sidebar:detail:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v27 = xmmword_18CDF3C70;
  v28 = 0;
  v29 = 0;
  v26 = 512;
  v23[0] = v15;
  v23[1] = v16;
  v24 = v17;
  v25 = 1;
  v19 = v18();
  a2(v19);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v27, &v26, v23, v13, v20, v10, a3, MEMORY[0x1E6981E70], a5, a4);
}

uint64_t NavigationSplitView.init<>(columnVisibility:preferredCompactColumn:sidebar:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v35 = a8;
  v29[1] = a3;
  v30 = a2;
  v31 = a9;
  v29[0] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v14;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (*(v14 + 17))
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 | *(v14 + 16) | 0x4000;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns();
  v24 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v40[0] = v17;
  v40[1] = v24;
  v41 = v23;
  v42 = 1;
  v39 = 512;
  v36[0] = v19;
  v36[1] = v20;
  v37 = v21;
  v38 = 1;
  v26 = v30(v25);
  v34(v26);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v40, &v39, v36, v16, v27, v12, v32, MEMORY[0x1E6981E70], v35, a7);
}

uint64_t NavigationSplitView.init(columnVisibility:preferredCompactColumn:sidebar:content:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, void (*a3)(uint64_t)@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v31 = a4;
  v32 = a3;
  v33 = a5;
  v30 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v19;
  v21 = v19[1];
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v38 = xmmword_18CDF3C60;
  v39 = 0;
  v40 = 0;
  if (v21)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  v37 = v26 | v20;
  v34[0] = v23;
  v34[1] = v24;
  v35 = v25;
  v36 = 1;
  v27 = v16();
  v28 = a2(v27);
  v32(v28);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v38, &v37, v34, v18, v14, v11, a6, a7, v33, a8);
}

uint64_t NavigationSplitView.init<>(columnVisibility:preferredCompactColumn:sidebar:detail:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[1];
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v31 = xmmword_18CDF3C70;
  v32 = 0;
  v33 = 0;
  if (v17)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v30 = v22 | v16;
  v27[0] = v19;
  v27[1] = v20;
  v28 = v21;
  v29 = 1;
  v23 = v12();
  a2(v23);
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v31, &v30, v27, v14, v24, v10, a3, MEMORY[0x1E6981E70], a5, a4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NavigationSplitViewVisibility.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D6F7475417369 && a2 == 0xEB00000000636974)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NavigationSplitViewVisibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NavigationSplitViewVisibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns()
{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToThreeColumns and conformance AnyNavigationSplitVisibility.ToThreeColumns);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationSplitView(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = a3[4] - 8;
  v13 = *v12;
  v14 = *(*v12 + 80);
  v15 = v11 + v14;
  v16 = *(*v12 + 64) + 7;
  v17 = ((((v16 + ((v11 + v14 + v10) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 20;
  v18 = v14 | *(v4 + 80) & 0xF8 | v8;
  if (v18 > 7 || ((*(v13 + 80) | *(v7 + 80) | *(v4 + 80)) & 0x100000) != 0 || v17 > 0x18)
  {
    v21 = *a2;
    *a1 = *a2;
    v22 = v21 + (((v18 | 7) + 16) & ~(v18 | 7));
  }

  else
  {
    v23 = ~v8;
    v24 = ~v14;
    v39 = a3[4];
    (*(v4 + 16))(a1);
    v40 = a1;
    v26 = (a1 + v9) & v23;
    v27 = (a2 + v9) & v23;
    (*(v7 + 16))(v26, v27, v6);
    v28 = (v27 + v15) & v24;
    (*(v13 + 16))((v26 + v15) & v24, v28, v39);
    v29 = (v16 + ((v26 + v15) & v24)) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v16 + v28) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v30 + 18);
    if (v31 >= 2)
    {
      v31 = *v30 + 2;
    }

    if (v31 == 1)
    {
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 16) = *(v30 + 16);

      v32 = 1;
    }

    else
    {
      v32 = 0;
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
    }

    *(v29 + 18) = v32;
    v33 = v29 + 26;
    v34 = (v30 + 26) & 0xFFFFFFFFFFFFFFF8;
    v35 = *(v34 + 17);
    if (v35 >= 2)
    {
      v35 = *v34 + 2;
    }

    v36 = v33 & 0xFFFFFFFFFFFFFFF8;
    if (v35 == 1)
    {
      *v36 = *v34;
      *(v36 + 8) = *(v34 + 8);
      *(v36 + 16) = *(v34 + 16);

      v37 = 1;
    }

    else
    {
      v37 = 0;
      *v36 = *v34;
      *(v36 + 8) = *(v34 + 8);
    }

    *(v36 + 17) = v37;
    *(v36 + 18) = *(v34 + 18);
    return v40;
  }

  return v22;
}

uint64_t assignWithCopy for NavigationSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = *(a3[4] - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19);
  v20 = *(v15 + 40) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 18);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 18);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      *v21 = *v22;
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 16) = *(v22 + 16);
      *(v21 + 18) = 1;
    }

    else
    {
      *v21 = *v22;
      *(v21 + 8) = *(v22 + 8);
      *(v21 + 18) = 0;
    }
  }

  v25 = (v21 + 26) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + 26) & 0xFFFFFFFFFFFFFFF8;
  if (v25 != v26)
  {
    v27 = *(v25 + 17);
    if (v27 >= 2)
    {
      v27 = *v25 + 2;
    }

    if (v27 == 1)
    {
    }

    v28 = *(v26 + 17);
    if (v28 >= 2)
    {
      v28 = *v26 + 2;
    }

    if (v28 == 1)
    {
      *v25 = *v26;
      *(v25 + 8) = *(v26 + 8);
      *(v25 + 16) = *(v26 + 16);
      *(v25 + 17) = 1;
    }

    else
    {
      *v25 = *v26;
      *(v25 + 8) = *(v26 + 8);
      *(v25 + 17) = 0;
    }
  }

  *(v25 + 18) = *(v26 + 18);
  return a1;
}

uint64_t initializeWithTake for NavigationSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = *(a3[4] - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 18);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    v24 = *v22;
    *(v21 + 16) = *(v22 + 16);
    *v21 = v24;
    v25 = 1;
  }

  else
  {
    v25 = 0;
    *v21 = *v22;
  }

  *(v21 + 18) = v25;
  v26 = v21 + 26;
  v27 = (v22 + 26) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v27 + 17);
  if (v28 >= 2)
  {
    v28 = *v27 + 2;
  }

  v29 = v26 & 0xFFFFFFFFFFFFFFF8;
  if (v28 == 1)
  {
    v30 = *v27;
    *(v29 + 16) = *(v27 + 16);
    *v29 = v30;
    v31 = 1;
  }

  else
  {
    v31 = 0;
    *v29 = *v27;
  }

  *(v29 + 17) = v31;
  *(v29 + 18) = *(v27 + 18);
  return a1;
}

uint64_t assignWithTake for NavigationSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = *(a3[4] - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19);
  v20 = *(v15 + 24) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  if (v21 != v22)
  {
    v23 = *(v21 + 18);
    if (v23 >= 2)
    {
      v23 = *v21 + 2;
    }

    if (v23 == 1)
    {
    }

    v24 = *(v22 + 18);
    if (v24 >= 2)
    {
      v24 = *v22 + 2;
    }

    if (v24 == 1)
    {
      v25 = *v22;
      *(v21 + 16) = *(v22 + 16);
      *v21 = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *v21 = *v22;
    }

    *(v21 + 18) = v26;
  }

  v27 = (v21 + 26) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v22 + 26) & 0xFFFFFFFFFFFFFFF8;
  if (v27 != v28)
  {
    v29 = *(v27 + 17);
    if (v29 >= 2)
    {
      v29 = *v27 + 2;
    }

    if (v29 == 1)
    {
    }

    v30 = *(v28 + 17);
    if (v30 >= 2)
    {
      v30 = *v28 + 2;
    }

    if (v30 == 1)
    {
      v31 = *v28;
      *(v27 + 16) = *(v28 + 16);
      *v27 = v31;
      v32 = 1;
    }

    else
    {
      v32 = 0;
      *v27 = *v28;
    }

    *(v27 + 17) = v32;
  }

  *(v27 + 18) = *(v28 + 18);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitView(_DWORD *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 < a2 && *(a1 + ((((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 20))
  {
    return v16 + *a1 + 1;
  }

  if (v7 == v16)
  {
    v20 = *(v5 + 48);

    return v20();
  }

  else
  {
    v21 = (a1 + v17) & ~v13;
    if (v9 == v16)
    {
      v22 = *(v8 + 48);

      return v22(v21);
    }

    else
    {
      v23 = (v21 + v14 + v15) & ~v15;
      if (v12 == v16)
      {
        v24 = *(v11 + 48);

        return v24(v23, v12, v6);
      }

      else
      {
        v25 = *(((v18 + v23) & 0xFFFFFFFFFFFFFFF8) + 18);
        if (v25 >= 2)
        {
          return (v25 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

void storeEnumTagSinglePayload for NavigationSplitView(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v6 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v8 - 8);
  v14 = *(v13 + 84);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v10 + 80);
  v17 = *(*(v7 - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (v19 <= 0xFE)
  {
    v20 = 254;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(*(v8 - 8) + 64) + 7;
  v22 = ((((v21 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 20;
  if (v20 < a2)
  {
    v23 = ~v20 + a2;
    bzero(a1, v22);
    *a1 = v23;
    if (v20 < a3)
    {
      *(a1 + v22) = 1;
    }

    return;
  }

  if (v20 < a3)
  {
    *(a1 + v22) = 0;
  }

  if (a2)
  {
    if (v9 != v20)
    {
      v25 = (a1 + v15 + v16) & ~v16;
      if (v11 == v20)
      {
        v26 = *(v10 + 56);
      }

      else
      {
        v25 = (v25 + v17 + v18) & ~v18;
        if (v14 != v20)
        {
          v27 = (v21 + v25) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *v27 = 0;
            *(v27 + 8) = 0;
            *(v27 + 15) = 0;
            *v27 = a2 - 255;
          }

          else
          {
            *(v27 + 18) = -a2;
          }

          return;
        }

        v26 = *(v13 + 56);
      }

      v26(v25);
      return;
    }

    v24 = *(v6 + 56);

    v24(a1);
  }
}

uint64_t static ControlWidgetTemplateModifier._makeControlWidgetTemplate(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = a2[1];
  v35 = *a2;
  v36 = v8;
  v37[0] = a2[2];
  *(v37 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v9 = v41;
  v10 = v42;
  v32 = v35;
  v33 = v36;
  v34[0] = v37[0];
  *(v34 + 12) = *(v37 + 12);
  v19 = DWORD1(v42);
  v20 = v7;
  v38 = v41;
  LOBYTE(v39) = v42;
  DWORD1(v39) = DWORD1(v42);
  outlined init with copy of _WidgetInputs(&v35, &v41);
  static ControlWidgetTemplateModifier.makeBody(modifier:inputs:fields:)();
  v18 = v41;
  v21 = v42;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  v11 = type metadata accessor for ControlWidgetTemplateModifier_Content.BodyInput();
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.append<A, B>(_:to:)(&v41, v11, v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = v32;
  v39 = v33;
  v40[0] = v34[0];
  *(v40 + 12) = *(v34 + 12);
  v28 = v32;
  v29 = v33;
  *v30 = v34[0];
  *&v30[12] = *(v34 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 40);
  outlined init with copy of _WidgetInputs(&v38, &v41);
  v14(&v23, v31, &v28, AssociatedTypeWitness, AssociatedConformanceWitness);
  v41 = v28;
  v42 = v29;
  v43[0] = *v30;
  *(v43 + 12) = *&v30[12];
  outlined destroy of _WidgetInputs(&v41);
  v15 = v23;
  v16 = DWORD2(v23);
  if ((v21 & 1) == 0)
  {
    v27 = v18;
    v26 = v20;
    v23 = v9;
    v24 = v10;
    v25 = v19;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v28 = v32;
  v29 = v33;
  *v30 = v34[0];
  *&v30[12] = *(v34 + 12);
  outlined destroy of _WidgetInputs(&v28);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v15;
  *(a5 + 8) = v16;
  return result;
}

uint64_t static ControlWidgetTemplateModifier._controlType.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static ControlWidgetTemplateModifier.makeBody(modifier:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for ControlWidgetTemplateModifierBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(41);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ControlWidgetTemplateModifierBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ControlWidgetTemplateModifierBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

void _s7SwiftUI29ControlWidgetTemplateModifierPAAE16controlBodyErrors5NeverOyFAA05EmptycdE0V_Ttg5()
{
  _StringGuts.grow(_:)(42);

  MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD59A40);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyControlWidgetTemplate._makeControlWidgetTemplate(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 12) = *(a2 + 44);
  return a3(a1, v5);
}

uint64_t ControlWidgetTemplate.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return ModifiedContent.init(content:modifier:)();
}

uint64_t static ModifiedContent<>._makeControlWidgetTemplate(control:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeControlWidgetTemplate(control:inputs:), v12, a4, a6);
}

uint64_t closure #2 in static ModifiedContent<>._makeControlWidgetTemplate(control:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v13[0] = a2[2];
  *(v13 + 12) = *(a2 + 44);
  v11 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 40))(v10, v12, a4, a6);
}

uint64_t static ModifiedContent<>._makeControlWidgetTemplate(modifier:inputs:body:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a2[1];
  v21[0] = *a2;
  v21[1] = v15;
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v20 = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  *(v16 + 64) = a4;
  v17 = *(a8 + 32);

  v17(v19, v21, partial apply for closure #2 in static ModifiedContent<>._makeControlWidgetTemplate(modifier:inputs:body:), v16, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeControlWidgetTemplate(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a8 + 32))(v14, v16, a4, a5, a6, a8);
}

uint64_t static ControlWidgetTemplateModifier_Content._makeControlWidgetTemplate(control:inputs:)(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v21[0] = *a2;
  v21[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v22[0] = a2[2];
  *(v22 + 12) = *(a2 + 44);
  v18 = v4;
  v19 = v3;
  v20[0] = a2[2];
  *(v20 + 12) = *(a2 + 44);
  type metadata accessor for ControlWidgetTemplateModifier_Content.BodyInput();
  outlined init with copy of _WidgetInputs(v21, v15);
  type metadata accessor for (_:_:)();
  swift_getWitnessTable();
  _SceneInputs.popLast<A, B>(_:)();
  v5 = v17;
  if (v17)
  {
    v11[0] = v18;
    v11[1] = v19;
    v12[0] = v20[0];
    *(v12 + 12) = *(v20 + 12);
    v8 = v18;
    v9 = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v6 = outlined init with copy of _WidgetInputs(v11, v15);
    v5(v6, &v8);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    v13[0] = v8;
    v13[1] = v9;
    v14[0] = v10[0];
    *(v14 + 12) = *(v10 + 12);
    outlined destroy of _WidgetInputs(v13);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v15[0] = v18;
  v15[1] = v19;
  v16[0] = v20[0];
  *(v16 + 12) = *(v20 + 12);
  return outlined destroy of _WidgetInputs(v15);
}

unint64_t static ControlWidgetTemplateModifier_Content.BodyInput.defaultValue.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for (_:_:)();
  *a1 = 0;
  return result;
}

void specialized ControlWidgetTemplateModifier.controlBodyError()()
{
  _StringGuts.grow(_:)(42);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for ControlWidgetTemplateModifier_Content<A>.BodyInput(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static CLKLiveText._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v34 = type metadata accessor for CLKLiveText.DynamicTextEnvironment(0);
  MEMORY[0x1EEE9AC00](v34);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CLKLiveText.ResolvedDate(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[1];
  v52 = *a2;
  v53 = v13;
  v14 = a2[3];
  v54 = a2[2];
  v55 = v14;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v28[1] = v52;
  v29 = DWORD2(v52);
  v15 = v53;
  v32 = HIDWORD(v53);
  swift_beginAccess();
  v16 = *(v15 + 16);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v17 = PropertyList.Tracker.init()();
  *&v60[0] = __PAIR64__(v16, v12);
  *(&v60[0] + 1) = v17;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CLKLiveText.ResolvedStyle and conformance CLKLiveText.ResolvedStyle();
  v18 = Attribute.init<A>(body:value:flags:update:)();
  v30 = v18;

  LODWORD(a2) = *(v15 + 16);
  PropertyList.subscript.getter();
  v19 = *&v60[0];
  static Date.distantPast.getter();
  *v11 = a2;
  *(v11 + 1) = v18;
  *(v11 + 1) = v19;
  *(v11 + 4) = v29;
  swift_allocObject();
  *(v11 + 3) = PropertyList.Tracker.init()();
  *(v11 + 4) = 0;
  v20 = *(v7 + 32);
  v21 = v33;
  v20(&v11[*(v31 + 40)], v9, v33);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate, type metadata accessor for CLKLiveText.ResolvedDate);
  v22 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of CLKLiveText.ResolvedDate(v11, type metadata accessor for CLKLiveText.ResolvedDate);
  LODWORD(a2) = *(v15 + 16);
  static Date.distantPast.getter();
  v23 = v32;
  *v6 = a2;
  *(v6 + 1) = v23;
  *(v6 + 2) = v22;
  v20(&v6[*(v34 + 28)], v9, v21);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.DynamicTextEnvironment and conformance CLKLiveText.DynamicTextEnvironment, type metadata accessor for CLKLiveText.DynamicTextEnvironment);
  LODWORD(v15) = Attribute.init<A>(body:value:flags:update:)();
  v24 = v6;
  v25 = v30;
  outlined destroy of CLKLiveText.ResolvedDate(v24, type metadata accessor for CLKLiveText.DynamicTextEnvironment);
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  outlined init with copy of _ViewInputs(&v52, v60);
  _GraphInputs.environment.setter();
  type metadata accessor for CLKLiveText.TextContentView(0);
  *&v60[0] = __PAIR64__(v22, v25);
  DWORD2(v60[0]) = v15;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CLKLiveText.ChildQuery and conformance CLKLiveText.ChildQuery();
  LODWORD(v36) = Attribute.init<A>(body:value:flags:update:)();
  v58[2] = v48;
  v58[3] = v49;
  v58[4] = v50;
  v59 = v51;
  v58[0] = v46;
  v58[1] = v47;
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  outlined init with copy of _ViewInputs(v58, v60);
  static View.makeDebuggableView(view:inputs:)();
  v60[2] = v42;
  v60[3] = v43;
  v60[4] = v44;
  v61 = v45;
  v60[0] = v40;
  v60[1] = v41;
  outlined destroy of _ViewInputs(v60);
  if ([objc_opt_self() _alwaysOnSupported])
  {
    v36 = v49;
    v37 = DWORD2(v49);
    MEMORY[0x1EEE9AC00](v49);
    LODWORD(v28[-2]) = v25;

    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  result = outlined destroy of _ViewInputs(&v40);
  v27 = v35;
  *v35 = v38;
  v27[1] = v39;
  return result;
}

uint64_t implicit closure #1 in static CLKLiveText._makeView(view:inputs:)()
{
  v0 = [objc_allocWithZone(type metadata accessor for TimelineIdentifier()) init];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<CLKLiveText.Style, TimelineSchedule?>();
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type Map<CLKLiveText.Style, TimelineSchedule?> and conformance Map<A, B>, type metadata accessor for Map<CLKLiveText.Style, TimelineSchedule?>);

  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type AlwaysOnTimelinePreferenceWriter and conformance AlwaysOnTimelinePreferenceWriter();
  v1 = Attribute.init<A>(body:value:flags:update:)();

  return v1;
}

uint64_t CLKLiveText.Style.schedule.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, MEMORY[0x1E6980B10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for ResolvableAttributeConfiguration();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009540]([a1 updateFrequency]);
  v11 = ResolvableAttributeConfiguration.isDynamic.getter();
  result = outlined destroy of CLKLiveText.ResolvedDate(v10, MEMORY[0x1E6980B18]);
  if (v11)
  {
    MEMORY[0x18D009540]([a1 updateFrequency]);
    ResolvableAttributeConfiguration.Schedule.init(config:)();
    v13 = type metadata accessor for ResolvableAttributeConfiguration.Schedule();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
      result = outlined destroy of ResolvableAttributeConfiguration.Schedule?(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, MEMORY[0x1E6980B10]);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
    }

    else
    {
      *(a2 + 24) = v13;
      *(a2 + 32) = lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule, MEMORY[0x1E6980B10]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      return (*(v14 + 32))(boxed_opaque_existential_1, v6, v13);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLKLiveText.Style()
{
  type metadata accessor for NSObject();
  if (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CLKLiveText.DynamicTextEnvironment.updateValue()()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for CLKLiveText.DynamicTextEnvironment(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  Value = AGGraphGetValue();
  v14 = *Value;
  v13 = Value[1];
  v29 = v14;
  v30 = v13;
  v15 = *(v0 + 8);

  v26 = v15;
  v16 = AGGraphGetValue();
  v17 = *(v6 + 16);
  v17(v11, v16, v5);
  v18 = *(v2 + 36);
  v27 = v0;
  v25 = v18;
  v17(v8, v0 + v18, v5);
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v6 + 8);
  v20(v8, v5);
  v20(v11, v5);
  if ((v19 & 1) == 0)
  {
    AGGraphClearUpdate();
    v21 = v27;
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v27, v4, type metadata accessor for CLKLiveText.DynamicTextEnvironment);
    AGGraphGetValue();

    outlined destroy of CLKLiveText.ResolvedDate(v4, type metadata accessor for CLKLiveText.DynamicTextEnvironment);
    AGGraphSetUpdate();
    v22 = EnvironmentValues.contentTransitionState.modify();
    ContentTransition.State.applyDynamicTextAnimation(in:)();
    v22(v28, 0);
    v23 = AGGraphGetValue();
    v17(v11, v23, v5);

    (*(v6 + 40))(v21 + v25, v11, v5);
  }

  v28[0] = v29;
  v28[1] = v30;

  AGGraphSetOutputValue();
}

void CLKLiveText.ResolvedStyle.updateValue()()
{
  v13[2] = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v1 = v0;

  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  if (!AGGraphGetOutputValue() || (v4 & 1) != 0)
  {
    v6 = v5;
    goto LABEL_8;
  }

  if ((v1 & 1) == 0)
  {

    return;
  }

  v12 = v5;

  v11 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

  if (v11)
  {
LABEL_8:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();

    v7 = v5;

    v8 = specialized CLKLiveText.Style.init(in:provider:)(v13, v7);
    v10 = v9;
    v13[0] = v8;
    v13[1] = v9;
    AGGraphSetOutputValue();

    return;
  }
}

void CLKLiveText.ResolvedDate.updateValue()()
{
  v1 = v0;
  v62[5] = *MEMORY[0x1E69E9840];
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for ResolvableAttributeConfiguration();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v59 = v24;
  v25 = *(Value + 8);
  v26 = *Value;
  v27 = v25;
  v28 = v26;
  v29 = v27;
  MEMORY[0x18D009540]([v28 updateFrequency]);
  v30 = ResolvableAttributeConfiguration.isDynamic.getter();
  v60 = v29;

  outlined destroy of CLKLiveText.ResolvedDate(v22, MEMORY[0x1E6980B18]);
  if (v30)
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      outlined init with copy of Date?(WeakValue, v7);
      outlined init with take of Date?(v7, v4);
      if ((*(v9 + 48))(v4, 1, v8) != 1)
      {
        (*(v9 + 32))(v19, v4, v8);
        goto LABEL_11;
      }

      outlined destroy of ResolvableAttributeConfiguration.Schedule?(v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    }

    if (*AGGraphGetValue() >= *(v1 + 32))
    {
      v33 = v56;
      Date.init()();
    }

    else
    {
      v32 = type metadata accessor for CLKLiveText.ResolvedDate(0);
      v33 = v56;
      (*(v9 + 16))(v56, v1 + *(v32 + 40), v8);
    }

    (*(v9 + 32))(v19, v33, v8);
  }

  else
  {
    v34 = type metadata accessor for CLKLiveText.ResolvedDate(0);
    (*(v9 + 16))(v19, v1 + *(v34 + 40), v8);
  }

LABEL_11:
  if (!AGGraphGetOutputValue() || (v59 & 1) != 0 || (v35 = type metadata accessor for CLKLiveText.ResolvedDate(0), v36 = v58, (*(v9 + 16))(v58, v1 + *(v35 + 40), v8), lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]), v37 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v9 + 8))(v36, v8), (v37 & 1) == 0))
  {
    AGGraphSetOutputValue();
    v38 = type metadata accessor for CLKLiveText.ResolvedDate(0);
    (*(v9 + 24))(v1 + *(v38 + 40), v19, v8);
  }

  if (v30)
  {
    v39 = v28;
    v40 = v60;
    CLKLiveText.Style.schedule.getter(v39, v61);

    if (v61[3])
    {
      outlined init with take of ScrollEnvironmentTransform(v61, v62);
      AGGraphGetValue();
      v53 = v1;

      EnvironmentValues.init(_:tracker:)();
      v59 = v61[0];
      v60 = v61[1];
      v41 = EnvironmentValues.isLuminanceReduced.getter();
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      v42 = *(v9 + 16);
      v58 = v39;
      v43 = v54;
      v42(v54, v19, v8);
      LOBYTE(v61[0]) = v41 & 1;
      v44 = v55;
      TimelineSchedule.nextEntry(after:mode:limit:)();
      v45 = *(v9 + 8);
      v45(v43, v8);
      v46 = v53;
      v47 = *AGGraphGetValue();
      Date.timeIntervalSince(_:)();
      *(v46 + 32) = v47 + v48;
      v49 = v46;
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();

      v45(v44, v8);
      v45(v19, v8);
      type metadata accessor for ViewGraph();
      v50 = swift_dynamicCastClassUnconditional();
      v51 = *(v49 + 32);
      swift_beginAccess();
      v52 = *(v50 + 376);
      if (v51 < v52)
      {
        v52 = v51;
      }

      *(v50 + 376) = v52;

      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    else
    {
      (*(v9 + 8))(v19, v8);

      outlined destroy of ResolvableAttributeConfiguration.Schedule?(v61, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule);
    }
  }

  else
  {
    (*(v9 + 8))(v19, v8);
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CLKLiveText.ResolvedDate@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance CLKLiveText.ChildQuery@<X0>(char *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = type metadata accessor for Date();
  v6 = v3;
  v7 = v4;
  v8 = AGGraphGetValue();
  v9 = type metadata accessor for CLKLiveText.TextContentView(0);
  (*(*(v5 - 8) + 16))(&a1[*(v9 + 20)], v8, v5);
  v10 = AGGraphGetValue();
  v12 = *v10;
  v11 = v10[1];
  *a1 = v6;
  *(a1 + 1) = v7;
  v13 = &a1[*(v9 + 24)];
  *v13 = v12;
  *(v13 + 1) = v11;
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance CLKLiveText.TextLayoutComputer(uint64_t a1, uint64_t a2)
{
  v19[0] = a1;
  v19[1] = a2;
  v2 = type metadata accessor for CLKLiveText.TextLayoutEngine(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CLKLiveText.TextContentView(0);
  Value = AGGraphGetValue();
  v7 = *(Value + 8);
  v8 = *Value;
  v9 = v7;
  v10 = AGGraphGetValue();
  v11 = *(v5 + 20);
  v12 = *(v2 + 20);
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 16))(&v4[v12], v10 + v11, v13);
  v14 = (AGGraphGetValue() + *(v5 + 24));
  v15 = *v14;
  v16 = v14[1];
  *v4 = v8;
  *(v4 + 1) = v9;
  v17 = &v4[*(v2 + 24)];
  *v17 = v15;
  *(v17 + 1) = v16;
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.TextLayoutEngine and conformance CLKLiveText.TextLayoutEngine, type metadata accessor for CLKLiveText.TextLayoutEngine);

  StatefulRule<>.update<A>(to:)();
  return outlined destroy of CLKLiveText.ResolvedDate(v4, type metadata accessor for CLKLiveText.TextLayoutEngine);
}

void CLKLiveText.TextContentView.resolvedText(in:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = type metadata accessor for CLKLiveText.TextContentView(0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v11 attributedTextAndSize:0 forMaxWidth:v12 withStyle:isa now:a1];

  if (v15)
  {
    v16 = v15;
    AttributedString.init(_:)();
    (*(v5 + 16))(v7, v10, v4);
    v17 = Text.init(_:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    (*(v5 + 8))(v10, v4);
    v24 = (v2 + *(v13 + 24));
    v25 = v24[1];
    v27[0] = *v24;
    v27[1] = v25;

    specialized static CLKLiveText.resolve(text:in:)(v17, v19, v21 & 1, v23, v27);
    outlined consume of Text.Storage(v17, v19, v21 & 1);
  }

  else
  {
    __break(1u);
  }
}

double static CLKLiveText.TextContentView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, double *a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v27 = a2[4];
  v28 = *(a2 + 20);
  v6 = a2[1];
  v23 = *a2;
  v24 = v6;
  v7 = BYTE4(v25);
  v17 = v23;
  v20 = v5;
  v21 = v27;
  v18 = v6;
  v19 = v25;
  v22 = v28;
  DWORD1(v19) = DWORD1(v25) & 0xFFFFFFFD;
  outlined init with copy of _ViewInputs(&v23, &v11);
  PreferenceKeys.remove(_:)();
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  LOBYTE(v9) = 1;
  v11 = v23;
  v12 = v24;
  _ViewInputs.resolvedShapeStyles(role:mode:)();
  type metadata accessor for CLKLiveText.TextContentView(0);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.TextContentView and conformance CLKLiveText.TextContentView, type metadata accessor for CLKLiveText.TextContentView);
  static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)();
  if ((v7 & 2) != 0)
  {
    LODWORD(v11) = v4;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type CLKLiveText.TextLayoutComputer and conformance CLKLiveText.TextLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v11) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  outlined destroy of _ViewInputs(&v11);
  *a3 = v9;
  result = v10;
  a3[1] = v10;
  return result;
}

double protocol witness for ShapeStyledLeafView.shape(in:) in conformance CLKLiveText.TextContentView(uint64_t a1, double a2)
{
  CLKLiveText.TextContentView.resolvedText(in:)(a2);
  *(a1 + 64) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v3;
  result = 0.0;
  *(a1 + 104) = 0x40000000;
  return result;
}

uint64_t specialized ShapeStyledLeafView.isClear(styles:)()
{
  v0 = _ShapeStyle_Pack.isClear(name:)();
  v1 = 0;
  if (v0)
  {
    v1 = _ShapeStyle_Pack.isClear(name:)();
  }

  return v1 & 1;
}

uint64_t protocol witness for ContentResponder.contains(points:size:) in conformance CLKLiveText.TextContentView(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.TextContentView and conformance CLKLiveText.TextContentView, type metadata accessor for CLKLiveText.TextContentView);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEDE1088](a1, a2, a3, v10, v11, v12);
}

double protocol witness for ContentResponder.contentPath(size:) in conformance CLKLiveText.TextContentView@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type CLKLiveText.TextContentView and conformance CLKLiveText.TextContentView, type metadata accessor for CLKLiveText.TextContentView);
  ShapeStyledLeafView.contentPath(size:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void CLKLiveText.TextLayoutEngine.text(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = *(a1 + 8);
  v12 = a1[2];
  v13 = *(a1 + 24);
  v31 = *a1;
  LOBYTE(v32) = v11;
  v33 = v12;
  v34 = v13;
  *&v14 = *&_ProposedSize.fixingUnspecifiedDimensions(at:)(__PAIR128__(0x7FF0000000000000, 0x7FF0000000000000));
  v15 = *v2;
  v16 = *(v2 + 8);
  v17 = type metadata accessor for CLKLiveText.TextLayoutEngine(0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v19 = [v15 attributedTextAndSize:0 forMaxWidth:v16 withStyle:isa now:v14];

  if (v19)
  {
    v20 = v19;
    AttributedString.init(_:)();
    (*(v5 + 16))(v7, v10, v4);
    v21 = Text.init(_:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    (*(v5 + 8))(v10, v4);
    v28 = (v2 + *(v17 + 24));
    v29 = v28[1];
    v31 = *v28;
    v32 = v29;

    specialized static CLKLiveText.resolve(text:in:)(v21, v23, v25 & 1, v27, &v31);
    outlined consume of Text.Storage(v21, v23, v25 & 1);
  }

  else
  {
    __break(1u);
  }
}

double CLKLiveText.TextLayoutEngine.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  if ((a2 & 1) == 0)
  {
    v11 = *a1;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v7 = _ProposedSize.width.getter();
    if ((v8 & 1) == 0 && (v7 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      return 0.0;
    }
  }

  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  CLKLiveText.TextLayoutEngine.sizeThatFits(_:)(&v11);
  if (a2)
  {
    return v10;
  }

  return result;
}

uint64_t CLKLiveText.TextLayoutEngine.sizeThatFits(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v14 = *a1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  _ProposedSize.init(width:height:)();
  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  result = MEMORY[0x18D004850](&v14, &v6);
  if ((result & 1) == 0)
  {
    v14 = v1;
    v15 = v2;
    v16 = v3;
    v17 = v4;
    CLKLiveText.TextLayoutEngine.text(_:)(&v14);
    v14 = v1;
    v15 = v2;
    v16 = v3;
    v17 = v4;
    dispatch thunk of ResolvedStyledText.sizeThatFits(_:)();

    v14 = v1;
    v15 = v2;
    v16 = v3;
    v17 = v4;
    return _ProposedSize.width.getter();
  }

  return result;
}

uint64_t CLKLiveText.TextLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v16 = *a2;
  v2 = v16;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  ViewSize.proposal.getter();
  v8 = v12;
  v9 = v13;
  v10 = v14;
  v11 = v15;
  CLKLiveText.TextLayoutEngine.text(_:)(&v8);
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  MEMORY[0x18D00B390]();
  v6 = dispatch thunk of ResolvedStyledText.explicitAlignment(_:at:)();

  return v6;
}

uint64_t protocol witness for LayoutEngine.spacing() in conformance CLKLiveText.TextLayoutEngine()
{
  _ProposedSize.init()();
  v1 = v5;
  v2 = v6;
  v3 = v7;
  v4 = v8;
  CLKLiveText.TextLayoutEngine.text(_:)(&v1);
  dispatch thunk of ResolvedStyledText.spacing()();
}

unint64_t lazy protocol witness table accessor for type CLKLiveText.ResolvedStyle and conformance CLKLiveText.ResolvedStyle()
{
  result = lazy protocol witness table cache variable for type CLKLiveText.ResolvedStyle and conformance CLKLiveText.ResolvedStyle;
  if (!lazy protocol witness table cache variable for type CLKLiveText.ResolvedStyle and conformance CLKLiveText.ResolvedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLKLiveText.ResolvedStyle and conformance CLKLiveText.ResolvedStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of CLKLiveText.ResolvedDate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CLKLiveText.ChildQuery and conformance CLKLiveText.ChildQuery()
{
  result = lazy protocol witness table cache variable for type CLKLiveText.ChildQuery and conformance CLKLiveText.ChildQuery;
  if (!lazy protocol witness table cache variable for type CLKLiveText.ChildQuery and conformance CLKLiveText.ChildQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLKLiveText.ChildQuery and conformance CLKLiveText.ChildQuery);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 4);
    v5 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    v6 = *(a3 + 40);
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t destroy for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a3 + 40);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithCopy for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 40);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a3 + 40);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithTake for CLKLiveText.ResolvedDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 40);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for CLKLiveText.ResolvedDate()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CLKLiveText.DynamicTextEnvironment(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 28);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for CLKLiveText.DynamicTextEnvironment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for CLKLiveText.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithCopy for CLKLiveText.DynamicTextEnvironment(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t initializeWithTake for CLKLiveText.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for CLKLiveText.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t type metadata completion function for CLKLiveText.DynamicTextEnvironment()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized CLKLiveText.Style.init(in:provider:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  EnvironmentValues.effectiveFont.getter();
  v5 = Font.platformFont(in:)();

  v6 = [v5 fontDescriptor];
  [v5 pointSize];
  v8 = [objc_opt_self() fontWithDescriptor:v6 size:v7];

  EnvironmentValues.textCase.getter();
  v10 = (v4 & 1) == 0 && v4 != 2;
  v11 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type CLKLiveText.ResolvedDate and conformance CLKLiveText.ResolvedDate(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [objc_opt_self() styleWithFont:v11 smallCapsBaseFont:v11 uppercase:v10 otherAttributes:isa];

  v14 = v13;
  EnvironmentValues.minimumScaleFactor.getter();
  v16 = v15;

  v17 = 0.0;
  if (v16 != 1.0)
  {
    v17 = v16;
  }

  [v14 setMinimumScaleFactor_];

  return a2;
}

uint64_t specialized static CLKLiveText.resolve(text:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v8 = a5[1];
  *&v26 = *a5;
  *(&v26 + 1) = v8;

  EnvironmentValues.textCase.setter();
  memset(v19, 0, sizeof(v19));
  LOBYTE(v20) = 0;
  v9 = v26;
  v17[0] = v26;
  v27 = 0u;
  v28 = 0u;
  v29 = 1;

  _ShapeStyle_Shape.init(operation:result:environment:foregroundStyle:bounds:role:substrate:)();
  MEMORY[0x18D005120](v21);
  if (BYTE8(v22))
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  else
  {
    v10 = v22;
    v19[0] = v22;

    a1 = _ShapeStyle_Shape.PreparedTextResult.apply(to:)();
    a2 = v11;
    a3 = v12;
    outlined consume of _ShapeStyle_Shape.Result(v10, 0);
  }

  v17[0] = v9;

  v13 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)();

  type metadata accessor for ResolvedStyledText();
  v14 = v13;
  EdgeInsets.negatedInsets.getter();

  default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();
  v15 = static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)();

  outlined consume of Text.Storage(a1, a2, a3 & 1);

  outlined destroy of Text.ResolvedProperties(v19);

  outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);

  v17[4] = v24;
  v18[0] = v25[0];
  *(v18 + 12) = *(v25 + 12);
  v17[0] = v21[0];
  v17[1] = v21[1];
  v17[2] = v22;
  v17[3] = v23;
  outlined destroy of _ShapeStyle_Shape(v17);

  return v15;
}

uint64_t outlined destroy of ResolvableAttributeConfiguration.Schedule?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for TimelineSchedule()
{
  result = lazy cache variable for type metadata for TimelineSchedule;
  if (!lazy cache variable for type metadata for TimelineSchedule)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TimelineSchedule);
  }

  return result;
}

uint64_t outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for Map<CLKLiveText.Style, TimelineSchedule?>()
{
  if (!lazy cache variable for type metadata for Map<CLKLiveText.Style, TimelineSchedule?>)
  {
    _s10Foundation4DateVSgMaTm_0(255, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<CLKLiveText.Style, TimelineSchedule?>);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for CLKLiveText.TextContentView(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = a2[1];
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 16);
    v12 = v4;
    v13 = v6;
    v11(&v5[v7], a2 + v7, v10);
    v14 = *(a3 + 24);
    v15 = &v5[v14];
    v16 = (a2 + v14);
    v17 = v16[1];
    *v15 = *v16;
    *(v15 + 1) = v17;
  }

  return v5;
}

uint64_t destroy for CLKLiveText.TextContentView(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

char *initializeWithCopy for CLKLiveText.TextContentView(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v7;
  v8 = *(a3 + 20);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 16);
  v11 = v6;
  v12 = v7;
  v10(&a1[v8], a2 + v8, v9);
  v13 = *(a3 + 24);
  v14 = &a1[v13];
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  *(v14 + 1) = v16;

  return a1;
}

uint64_t assignWithCopy for CLKLiveText.TextContentView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a2 + 8);
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;
  v11 = v9;

  v12 = *(a3 + 20);
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  v14 = *(a3 + 24);
  v15 = a1 + v14;
  v16 = (a2 + v14);
  *(a1 + v14) = *v16;

  *(v15 + 8) = v16[1];

  return a1;
}

char *initializeWithTake for CLKLiveText.TextContentView(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t assignWithTake for CLKLiveText.TextContentView(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = *(a3 + 20);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 40))(a1 + v8, &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = &a2[v10];
  *(a1 + v10) = *v12;

  *(v11 + 8) = *(v12 + 1);

  return a1;
}

uint64_t type metadata completion function for CLKLiveText.TextContentView()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void TextAttributeResolver.potentiallyEffectfulControls()(uint64_t a1)
{
  if (one-time initialization token for allControls != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = static TextFormattingControl.allControls;
  MEMORY[0x1EEE9AC00](a1);
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;

  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TextAttributeResolver.potentiallyEffectfulControls(), v6, v2);
}

void closure #1 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for AttributeContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  specialized AttributedTextStorage.typingAttributes.getter(v10);
  v28[0] = a3;
  v28[1] = a4;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = Strong;
  v14 = [Strong textStorage];

  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25 = v11;
  v26 = v8;
  v27 = v7;
  ObjectType = swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = *(*(v16 + 8) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24[1] = v24;
    v19 = *(AssociatedTypeWitness - 8);
    v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v22 = v24 - v21;
    v28[3] = v14;
    (*(v17 + 56))(ObjectType, v17, v20);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    specialized TextFormattingControl.canPerformModification(on:in:using:)(v10, v28, v22, v25, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v26 + 8))(v10, v27);
    (*(v19 + 8))(v22, AssociatedTypeWitness);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v34 = a5;
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v11 = v10;
  v33 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a3, v11);
  type metadata accessor for MainActor();

  v20 = a4;

  v21 = static MainActor.shared.getter();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v21;
  *(v24 + 3) = v25;
  *(v24 + 4) = a2;
  (*(v12 + 32))(&v24[v22], v15, v33);
  v26 = &v24[v23];
  v27 = v34;
  *v26 = v20;
  *(v26 + 1) = v27;
  v28 = &v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8];
  v29 = v32;
  *v28 = v31;
  *(v28 + 1) = v29;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCScSy7SwiftUI22TextEditorModificationVG_Tt2g5(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:), v24);
}

uint64_t closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v15;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy, &type metadata for TextEditorModification, MEMORY[0x1E69E8658]);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[17] = v12;
  v8[18] = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:), v12, v11);
}

uint64_t closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)()
{
  v1 = *(v0 + 32);
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  *(v0 + 16) = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:), 0, 0);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v12 = *(v0 + 104);
  v8 = swift_task_alloc();
  *(v8 + 16) = *(v0 + 48);
  *(v8 + 32) = v0 + 16;
  *(v8 + 40) = v1;
  *(v8 + 48) = v7;
  *(v8 + 56) = v6;
  (*(v5 + 104))(v3, *MEMORY[0x1E69E8650], v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  (*(v2 + 8))(v1, v12);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:), v9, v10);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(uint64_t a1)
{
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #2 in RichTextEditorCoordinator.startUpdatingFormattingUIDisabledState(storage:environment:)(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

void specialized closure #1 in Collection<>.effectfulModifications<A>(in:of:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v122 = a7;
  v121 = a6;
  v109 = a5;
  v125 = a1;
  v126 = a3;
  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>.Continuation.YieldResult, &type metadata for TextEditorModification, MEMORY[0x1E69E8638]);
  v119 = v10;
  v105 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v91 - v11;
  v117 = type metadata accessor for AttributedString.Runs.Run();
  v106 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AttributedString.Runs();
  v107 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for AttributeContainer();
  v99 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v127 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sScPSgMaTm_0(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v128 = &v91 - v16;
  type metadata accessor for Range<AttributedString.Index>();
  v123 = v17;
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v91 - v22;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v108 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>();
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v124 = a2;
  v132 = a2;
  v32 = *(a3 + 8);
  v33 = *(v32 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = AssociatedConformanceWitness;
  v110 = __swift_allocate_boxed_opaque_existential_1(&v136);
  v102 = ObjectType;
  v33(ObjectType, v32);
  v135 = MEMORY[0x1E69E7CD0];

  v35 = 0;
  v36 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21NSAttributedStringKeya_Say7SwiftUI21TextFormattingControlVGTt1g505_sSl7g6UIAA21ijk2V7c84RtzrlE22effectfulModifications2in2of11environmentScSyAA0C18EditorModificationVGqd___u13A16Attributede71_pAA17EnvironmentValuesVtYaSTRd__Sny10Foundation0nO0V5IndexVGADRtd__lFys31S12ContinuationVyAK_GXEfU_So012D60O3KeyaACcfu_33_24f0dd856df31afde49bf31cb3cb1132ACA_Tf3nnpk_nTf1nc_nTf4g_n(v34);
  v120 = a4;

  (*(v25 + 16))(v108, v109, v24);
  v37 = v30;
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
  dispatch thunk of Sequence.makeIterator()();
  v38 = *(v28 + 44);
  v39 = v36;
  v40 = v126;
  v41 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type RangeSet<AttributedString.Index>.Ranges and conformance RangeSet<A>.Ranges, type metadata accessor for RangeSet<AttributedString.Index>.Ranges);
  v103 = v24;
  v42 = v39;
  dispatch thunk of Collection.endIndex.getter();
  if (*(v37 + v38) != v132)
  {
    v96 = v40 + 40;
    v109 = v98 + 48;
    ++v107;
    ++v106;
    ++v105;
    v108 = (v99 + 8);
    v94 = v37;
    v95 = v39;
    v92 = v38;
    v91 = v41;
    v97 = v39 + 64;
    while (2)
    {
      v44 = dispatch thunk of Collection.subscript.read();
      v45 = v100;
      _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v46, v100, type metadata accessor for Range<AttributedString.Index>);
      v44(&v132, 0);
      v47 = v97;
      dispatch thunk of Collection.formIndex(after:)();
      outlined init with take of Range<AttributedString.Index>(v45, v104);
      v48 = 1 << *(v42 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & *(v42 + 64);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = v101;
      v54 = v126;
      v93 = v51;
      if (v50)
      {
        while (1)
        {
          v55 = v52;
LABEL_13:
          v56 = (v55 << 9) | (8 * __clz(__rbit64(v50)));
          v57 = *(*(v42 + 48) + v56);
          v58 = *(*(v42 + 56) + v56);
          v59 = v57;

          if (static Task<>.isCancelled.getter())
          {
            break;
          }

          v50 &= v50 - 1;
          v99 = *(v54 + 40);
          v60 = v54;
          v61 = v102;
          v130 = swift_getAssociatedTypeWitness();
          v131 = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_1(&v129);
          v98 = v59;
          (v99)(v59, v104, v61, v60);
          v99 = v35;
          v62 = __swift_project_boxed_opaque_existential_1(&v129, v130);
          v63 = MEMORY[0x1EEE9AC00](v62);
          (*(v65 + 16))(&v91 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
          v133 = swift_getAssociatedTypeWitness();
          v134 = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_1(&v132);
          v35 = v99;
          dispatch thunk of Sequence.makeIterator()();
          __swift_destroy_boxed_opaque_existential_1(&v129);
          while (1)
          {
            __swift_mutable_project_boxed_opaque_existential_1(&v132, v133);
            v66 = v128;
            dispatch thunk of IteratorProtocol.next()();
            if ((*v109)(v66, 1, v123) == 1)
            {
              break;
            }

            outlined init with take of Range<AttributedString.Index>(v128, v53);
            v67 = static Task<>.isCancelled.getter();
            v68 = v126;
            if (v67)
            {

              outlined destroy of Range<AttributedString.Index>(v53, type metadata accessor for Range<AttributedString.Index>);
              outlined destroy of Range<AttributedString.Index>(v104, type metadata accessor for Range<AttributedString.Index>);
              outlined destroy of Range<AttributedString.Index>(v94, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
              __swift_destroy_boxed_opaque_existential_1(&v132);
              goto LABEL_35;
            }

            v69 = v113;
            dispatch thunk of AttributedStringProtocol.runs.getter();
            v70 = v115;
            AttributedString.Runs.subscript.getter();
            (*v107)(v69, v114);
            v71 = v127;
            AttributedString.Runs.Run.attributes.getter();
            v72 = (*v106)(v70, v117);
            MEMORY[0x1EEE9AC00](v72);
            *(&v91 - 6) = &v135;
            *(&v91 - 5) = v71;
            v73 = v122;
            *(&v91 - 4) = v121;
            *(&v91 - 3) = v73;
            *(&v91 - 2) = v124;
            *(&v91 - 1) = v68;

            specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #1 in Collection<>.effectfulModifications<A>(in:of:environment:), (&v91 - 8), v58);
            v75 = *(v74 + 16);
            if (v75)
            {
              if (v75 > 4)
              {
                v78 = *(v74 + 16) & 3;
                if ((v75 & 3) == 0)
                {
                  v78 = 4;
                }

                v77 = v75 - v78;
                v79 = (v74 + 96);
                v80 = 0uLL;
                v81 = v77;
                v82 = 0uLL;
                do
                {
                  v83 = v79 - 6;
                  v84 = vld3q_f64(v83);
                  v85 = vld3q_f64(v79);
                  v80 = vorrq_s8(v84, v80);
                  v82 = vorrq_s8(v85, v82);
                  v79 += 12;
                  v81 -= 4;
                }

                while (v81);
                v86 = vorrq_s8(v82, v80);
                v76 = vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
              }

              else
              {
                v76 = 0;
                v77 = 0;
              }

              v87 = v75 - v77;
              v88 = (v74 + 24 * v77 + 48);
              do
              {
                v89 = *v88;
                v88 += 3;
                v76 |= v89;
                --v87;
              }

              while (v87);
            }

            else
            {
              v76 = 0;
            }

            specialized Set._Variant.insert(_:)(&v129, v76);
            v129 = v76;
            type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>.Continuation, &type metadata for TextEditorModification, MEMORY[0x1E69E8660]);
            v90 = v118;
            AsyncStream.Continuation.yield(_:)();
            (*v105)(v90, v119);
            outlined destroy of Range<AttributedString.Index>(v53, type metadata accessor for Range<AttributedString.Index>);
            if (*(v135 + 16) == *(v120 + 16))
            {

              outlined destroy of Range<AttributedString.Index>(v104, type metadata accessor for Range<AttributedString.Index>);
              outlined destroy of Range<AttributedString.Index>(v94, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
              (*v108)(v127, v116);
              __swift_destroy_boxed_opaque_existential_1(&v132);

              __swift_destroy_boxed_opaque_existential_1(&v136);
              goto LABEL_37;
            }

            (*v108)(v127, v116);
          }

          __swift_destroy_boxed_opaque_existential_1(&v132);
          v52 = v55;
          v54 = v126;
          v42 = v95;
          v47 = v97;
          v51 = v93;
          if (!v50)
          {
            goto LABEL_10;
          }
        }

        outlined destroy of Range<AttributedString.Index>(v104, type metadata accessor for Range<AttributedString.Index>);
        v43 = v94;
        goto LABEL_3;
      }

      while (1)
      {
LABEL_10:
        v55 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
          return;
        }

        if (v55 >= v51)
        {
          break;
        }

        v50 = *(v47 + 8 * v55);
        ++v52;
        if (v50)
        {
          goto LABEL_13;
        }
      }

      outlined destroy of Range<AttributedString.Index>(v104, type metadata accessor for Range<AttributedString.Index>);
      v37 = v94;
      dispatch thunk of Collection.endIndex.getter();
      if (*(v37 + v92) != v132)
      {
        continue;
      }

      break;
    }
  }

  v43 = v37;
LABEL_3:
  outlined destroy of Range<AttributedString.Index>(v43, type metadata accessor for IndexingIterator<RangeSet<AttributedString.Index>.Ranges>);
LABEL_35:

  __swift_destroy_boxed_opaque_existential_1(&v136);
  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for AsyncStream<TextEditorModification>.Continuation, &type metadata for TextEditorModification, MEMORY[0x1E69E8660]);
LABEL_37:
  AsyncStream.Continuation.finish()();
}

uint64_t closure #1 in closure #1 in Collection<>.effectfulModifications<A>(in:of:environment:)(uint64_t a1, void *a2, char *a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 16);
  if (specialized Set.contains(_:)(v13, *a2))
  {
    v14 = 0;
  }

  else
  {
    v26[0] = a4;
    v26[1] = a5;
    ObjectType = swift_getObjectType();
    v16 = *(a7 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25[0] = v25;
    v25[1] = v7;
    v18 = a3;
    v19 = *(AssociatedTypeWitness - 8);
    v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v22 = v25 - v21;
    v26[3] = a6;
    (*(v16 + 56))(ObjectType, v16, v20);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = specialized TextFormattingControl.canPerformModification(on:in:using:)(v18, v26, v22, v13, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v19 + 8))(v22, AssociatedTypeWitness);
  }

  return v14 & 1;
}

uint64_t one-time initialization function for allControls()
{
  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CDF4920;
  v1 = *MEMORY[0x1E69DE5D8];
  v2 = static NSAttributedStringKey.kitFont.getter();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 1;
  v3 = *MEMORY[0x1E69DE5E8];
  v4 = static NSAttributedStringKey.kitFont.getter();
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = 2;
  v5 = *MEMORY[0x1E69DE5F8];
  v6 = static NSAttributedStringKey.kitUnderlineStyle.getter();
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  *(v0 + 96) = 4;
  v7 = *MEMORY[0x1E69DE5F0];
  v8 = static NSAttributedStringKey.kitStrikethroughStyle.getter();
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 120) = 8;
  v9 = *MEMORY[0x1E69DE668];
  v10 = static NSAttributedStringKey.kitForegroundColor.getter();
  *(v0 + 128) = v9;
  *(v0 + 136) = v10;
  *(v0 + 144) = 16;
  v11 = *MEMORY[0x1E69DE600];
  v12 = static NSAttributedStringKey.kitFont.getter();
  *(v0 + 152) = v11;
  *(v0 + 160) = v12;
  *(v0 + 168) = 64;
  v13 = *MEMORY[0x1E69DE608];
  v14 = static NSAttributedStringKey.kitFont.getter();
  *(v0 + 176) = v13;
  *(v0 + 184) = v14;
  *(v0 + 192) = 32;
  v15 = *MEMORY[0x1E69DE620];
  v16 = static NSAttributedStringKey.kitParagraphStyle.getter();
  *(v0 + 200) = v15;
  *(v0 + 208) = v16;
  *(v0 + 216) = 512;
  v17 = *MEMORY[0x1E69DE630];
  result = static NSAttributedStringKey.kitParagraphStyle.getter();
  *(v0 + 224) = v17;
  *(v0 + 232) = result;
  *(v0 + 240) = 128;
  static TextFormattingControl.allControls = v0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextFormattingControl()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextFormattingControl()
{
  v1 = *(v0 + 16);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return MEMORY[0x18D00F6F0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextFormattingControl()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

BOOL closure #1 in TextAttributeResolver.potentiallyEffectfulControls()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(v9, *(a1 + 8), a3, a4);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 8))(&v8, v4, v5);
  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v9);
  v9[0] = v6;
  AttributedString.Keys.init()();
  LOBYTE(v4) = static AttributedString.Keys.== infix(_:_:)();

  return (v4 & 1) == 0;
}

uint64_t ValidatingTextAttributeResolver.allowsFontTraitChange(_:on:in:)(int a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v9 = type metadata accessor for AttributeContainer();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v35 = a3[1];
  v36 = v14;
  (*(v10 + 16))(v13, a2, v9, v11);
  v15 = static NSAttributedStringKey.kitFont.getter();
  (*(a5 + 32))(v39, v15, a4, a5);

  v16 = v40;
  v17 = v41;
  v18 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v42[3] = v16;
  v42[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v20 = *(v17 + 8);
  v21 = *(v20 + 16);
  v21(v39, v13, v16, v20);
  if (!v40)
  {
    (*(v10 + 8))(v13, v9);
LABEL_9:
    outlined destroy of Any?(v39);
    goto LABEL_10;
  }

  v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
LABEL_10:
    v29 = 0;
    goto LABEL_11;
  }

  v33 = v22;
  v34 = v9;
  v23 = v38;
  v24 = CTFontRef.symbolicTraits.getter();

  v32 = v24 & v37;
  v39[0] = v36;
  v39[1] = v35;
  AttributeContainer.update(_:to:in:)(v37, (v24 & v37) != v37, v39);
  ValidatingTextAttributeDefinition.fixup(_:)(v13, v16, v17);
  v21(v39, v13, v16, v20);
  if (!v40)
  {
    (*(v10 + 8))(v13, v34);

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v10 + 8))(v13, v34);

    goto LABEL_10;
  }

  v25 = v37;
  v26 = v32 == v37;
  v27 = v38;
  v28 = CTFontRef.symbolicTraits.getter();

  (*(v10 + 8))(v13, v34);
  v29 = v26 ^ ((v25 & ~v28) == 0);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v29;
}

BOOL ValidatingTextAttributeResolver.allowsSettingForegroundColors(to:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = static NSAttributedStringKey.kitForegroundColor.getter();
  (*(a4 + 32))(v17, v7, a3, a4);

  v16 = v18;
  v8 = v18;
  v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v20 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI5ColorVSgG_So7UIColorCSgs5NeverOTg503_s7d3UI5f6VSgSo7g13CSgIggo_AdGs5H11OIegnrzr_TRAiMIggo_Tf1cn_nTf4ng_n(a1, partial apply for platformColor #1 <A>(for:) in ValidatingTextAttributeResolver.allowsSettingForegroundColors(to:on:));
  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo7UIColorCSg_SayAFGTt0g5Tf4g_n(v11);

  v13 = *(v12 + 16);

  v14 = v13 == *(a1 + 16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

id closure #1 in closure #7 in TextFormattingControl.canPerformModification(on:in:using:)@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 alignment];
  if (result)
  {
    result = [v3 setAlignment_];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id closure #2 in closure #7 in TextFormattingControl.canPerformModification(on:in:using:)@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 alignment];
  if (result == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    result = [v3 setAlignment_];
  }

  *a2 = v5;
  return result;
}

id closure #3 in closure #7 in TextFormattingControl.canPerformModification(on:in:using:)@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 alignment];
  if (result == 2)
  {
    v5 = 0;
  }

  else
  {
    result = [v3 setAlignment_];
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

id closure #1 in closure #8 in TextFormattingControl.canPerformModification(on:in:using:)@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 alignment];
  if (result == 3)
  {
    v5 = 0;
  }

  else
  {
    result = [v3 setAlignment_];
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

id closure #2 in closure #8 in TextFormattingControl.canPerformModification(on:in:using:)@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 alignment];
  if (result == 3)
  {
    result = [v3 setAlignment_];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t one-time initialization function for validationColors()
{
  result = closure #1 in variable initialization expression of static TextFormattingControl.validationColors();
  static TextFormattingControl.validationColors = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static TextFormattingControl.validationColors()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v2 = 0;
    ++v0;
    v3 = v1;
    do
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      Color.init(_:red:green:blue:opacity:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      Color.init(_:red:green:blue:opacity:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      Color.init(_:red:green:blue:opacity:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = *(v1 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v6 + v5 <= *(v3 + 24) >> 1)
      {
        if (!*(v1 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = result;
        if (!*(v1 + 16))
        {
LABEL_4:

          if (v5)
          {
            goto LABEL_18;
          }

          goto LABEL_5;
        }
      }

      if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v5)
      {
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, v5);
        v9 = v7 + v5;
        if (v8)
        {
          goto LABEL_20;
        }

        *(v3 + 16) = v9;
      }

LABEL_5:
      v2 += 8;
    }

    while (v2 != 24);
    specialized Array.append<A>(contentsOf:)(v3);
    if (v0 != 3)
    {
      continue;
    }

    break;
  }

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI5ColorV_SayAFGTt0g5Tf4g_n(v12);

  v11 = specialized _setUpCast<A, B>(_:)(v10);

  return v11;
}

uint64_t specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for _SetStorage<Color?>();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  v10 = MEMORY[0x1E69815C0];
  while (v5)
  {
LABEL_15:
    type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for Color?, v10, MEMORY[0x1E69E6720]);

    swift_dynamicCast();
    Hasher.init(_seed:)();
    if (v20)
    {
      Hasher._combine(_:)(1u);
      dispatch thunk of AnyColorBox.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v11 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_29;
    }

    v11 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    *(*(v2 + 48) + 8 * v11) = v20;
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

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t platformColor #1 <A>(for:) in ValidatingTextAttributeResolver.allowsSettingForegroundColors(to:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AttributeContainer();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v17[0] = a1;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();

  AttributeContainer.subscript.setter();
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  ValidatingTextAttributeDefinition.fixup(_:)(v10, v11, v12);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  (*(*(v14 + 8) + 16))(v17, v10, v13);
  (*(v7 + 8))(v10, v6);
  if (v17[3])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    if (swift_dynamicCast())
    {
      return v16[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v17);
    return 0;
  }
}

uint64_t AttributeContainer.update(_:to:in:)(__int16 a1, char a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
  AttributeContainer.subscript.getter();
  v8 = v19;
  if (!v19)
  {
    v21 = v5;
    v22 = v6;
    v8 = EnvironmentValues.effectiveFont.getter();
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  AttributeContainer.subscript.getter();
  if (v22 == 1)
  {
    getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19);
    v9 = AttributedString.Keys.contains(_:)();

    if ((v9 & 1) != 0 && (getter of scope #1 in Dictionary<>.update(_:to:in:)(v7, &v19), v10 = AttributedString.Keys.contains(_:)(), , (v10 & 1) == 0))
    {
      v11 = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v8;
  if ((a1 & 2) != 0)
  {
    v12 = Font.bold(_:)();

    if ((v11 & 1) == 0)
    {
      if (a2)
      {
        v13 = v21 | 2;
      }

      else
      {
        v13 = v21 & 0xFFFFFFFFFFFFFFFDLL;
      }

      v21 = v13;
    }
  }

  if (a1)
  {
    v14 = Font.italic(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v15 = v21 | 1;
      }

      else
      {
        v15 = v21 & 0xFFFFFFFFFFFFFFFELL;
      }

      v21 = v15;
    }
  }

  else
  {
    v14 = v12;
  }

  if ((a1 & 0x400) != 0)
  {
    v16 = Font.monospaced(_:)();

    if ((v22 & 1) == 0)
    {
      if (a2)
      {
        v17 = v21 | 4;
      }

      else
      {
        v17 = v21 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v21 = v17;
    }
  }

  else
  {
    v16 = v14;
  }

  v19 = v16;

  AttributeContainer.subscript.setter();
  v19 = v21;
  v20 = v22;
  AttributeContainer.subscript.setter();
}

uint64_t _s7SwiftUI21TextFormattingControlV9canToggle33_1D08ED28859ED243BBEACA21C0966F88LL_2on9trueValue24inlinePresentationIntent5usingSbSo21NSAttributedStringKeya_10Foundation18AttributeContainerVxSo08NSInlinerS0VSgAA0cY8Resolver_ptSQRzlFZSo8NSNumberC_Tt4g5Tf4nnnne_n(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for AttributeContainer();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = a7;
  v61 = a8;
  v45 = a8;
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v21 = *(*(a7 - 8) + 16);
  v52 = boxed_opaque_existential_1;
  v21(boxed_opaque_existential_1, a6, a7);
  v50 = v17;
  v51 = v16;
  (*(v17 + 16))(v19, a2, v16);
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v57 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  *&v56 = a3;
  outlined init with take of Any(&v56, v55);
  v43 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  v54 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, a1, isUniquelyReferenced_nonNull_native);
  v24 = v54;
  v58 = v54;
  v49 = a5;
  if ((a5 & 1) == 0)
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v26 = AttributeContainer.subscript.modify();
    if (*(v25 + 8) != 1)
    {
      *v25 |= a4;
    }

    v26(&v56, 0);
  }

  v42 = a4;
  v47 = v61;
  v48 = v60;
  v46 = __swift_project_boxed_opaque_existential_1(v59, v60);
  v27 = v45;
  v28 = *(v45 + 40);
  v28(v24, v19, 0, a7, v45);
  v44 = *(v27 + 32);
  v29 = v44(v19, a7, v27);
  if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v31 & 1) != 0))
  {
    outlined init with copy of Any(*(v29 + 56) + 32 * v30, &v56);
  }

  else
  {

    v56 = 0u;
    v57 = 0u;
  }

  type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast() && (v32 = *&v55[0]) != 0)
  {
    v33 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v33 = 0;
  }

  specialized Dictionary._Variant.removeValue(forKey:)(v53, &v56);
  outlined destroy of Any?(&v56);
  if ((v49 & 1) == 0)
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v35 = AttributeContainer.subscript.modify();
    if (*(v34 + 8) != 1)
    {
      *v34 &= ~v42;
    }

    v35(&v56, 0);
  }

  v28(v58, v19, 1, v48, v47);
  if (v33)
  {
    v36 = v44(v19, a7, v27);
    if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v38 & 1) != 0))
    {
      outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v56);
      (*(v50 + 8))(v19, v51);

      v39 = 0;
    }

    else
    {

      (*(v50 + 8))(v19, v51);
      v56 = 0u;
      v57 = 0u;
      v39 = 1;
    }

    outlined destroy of Any?(&v56);
  }

  else
  {
    (*(v50 + 8))(v19, v51);

    v39 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v39;
}

BOOL specialized static TextFormattingControl.canIncrementFontSize(on:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributeContainer();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v73 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v13 = *(*(a3 - 8) + 16);
  v63 = boxed_opaque_existential_1;
  v64 = a3;
  v13(boxed_opaque_existential_1, a2, a3);
  (*(v9 + 16))(v11, a1, v8);
  v14 = v72;
  v15 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v16 = static NSAttributedStringKey.kitFont.getter();
  (*(a4 + 32))(&v67, v16, v14, v15);

  v18 = v68;
  v17 = v69;
  v19 = __swift_project_boxed_opaque_existential_1(&v67, v68);
  v70[3] = v18;
  v70[4] = v17;
  v20 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(v18 - 1) + 16))(v20, v19, v18);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v62 = v17;
  v22 = *(*(v17 + 8) + 16);
  v61 = *(v17 + 8);
  v60 = v22;
  (v22)(&v67, a1, v18);
  if (!v68)
  {
    (*(v9 + 8))(v11, v8);
    outlined destroy of Any?(&v67);
LABEL_10:

    goto LABEL_14;
  }

  v59 = v8;
  v58 = v9;
  v23 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v58 + 8))(v11, v59);
    goto LABEL_10;
  }

  v57 = v23;
  v24 = *&v66[0];
  CTFontRef.pointSize.getter();
  v26 = v25;
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v24, v25 + 1.0, 0, 0);
  v28 = static NSAttributedStringKey.kitFont.getter();
  type metadata accessor for CTFontRef(0);
  v54 = v29;
  v68 = v29;
  *&v67 = CopyWithAttributes;
  outlined init with take of Any(&v67, v66);
  v30 = CopyWithAttributes;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v28, isUniquelyReferenced_nonNull_native);

  v32 = v65;
  v33 = *(a4 + 8);
  v55 = *(v33 + 40);
  v55(v65, v11, 0, v64, v33);
  ValidatingTextAttributeDefinition.fixup(_:)(v11, v18, v62);
  v60(&v67, v11, v18, v61);
  if (!v68)
  {

    (*(v58 + 8))(v11, v59);
LABEL_12:
    outlined destroy of Any?(&v67);
    goto LABEL_13;
  }

  v56 = v32;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    (*(v58 + 8))(v11, v59);
LABEL_13:

    goto LABEL_14;
  }

  v34 = *&v66[0];
  CTFontRef.pointSize.getter();
  v36 = v35;

  if (v36 == v26)
  {

    goto LABEL_7;
  }

  if (v26 <= 1.0)
  {

    (*(v58 + 8))(v11, v59);

    v37 = 1;
    goto LABEL_15;
  }

  v53 = v34;
  v39 = CTFontCreateCopyWithAttributes(v24, v26 + -1.0, 0, 0);
  v51 = v24;

  v52 = static NSAttributedStringKey.kitFont.getter();
  v68 = v54;
  *&v67 = v39;
  outlined init with take of Any(&v67, v66);
  v54 = v39;
  v40 = v56;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v40;
  v42 = v52;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v52, v41);

  v55(v65, v11, 0, v64, v33);
  ValidatingTextAttributeDefinition.fixup(_:)(v11, v18, v62);
  v60(&v67, v11, v18, v61);
  if (!v68)
  {
    (*(v58 + 8))(v11, v59);

    goto LABEL_12;
  }

  v43 = v54;
  v44 = swift_dynamicCast();
  v45 = v58;
  v46 = v59;
  if (v44)
  {
    v47 = *&v66[0];
    CTFontRef.pointSize.getter();
    v49 = v48;

    (*(v45 + 8))(v11, v46);

    v37 = v49 != v26;
    goto LABEL_15;
  }

  (*(v58 + 8))(v11, v59);

LABEL_14:
  v37 = 0;
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v37;
}

uint64_t specialized closure #9 in TextFormattingControl.canPerformModification(on:in:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString.LineHeight();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  static AttributedString.LineHeight.exact(points:)();
  v13 = *(a4 + 8);
  LOBYTE(a2) = specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(v11, a1, boxed_opaque_existential_1, a3, v13);
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a2)
  {
    static AttributedString.LineHeight.exact(points:)();
    v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v16 = specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(v11, a1, v15, a3, v13);
    v14(v11, v8);
  }

  else
  {
    v16 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16 & 1;
}

uint64_t specialized static TextFormattingControl.canSetLineHeight(to:on:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a2;
  v60 = a1;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for AttributedString.LineHeight();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v56 - v17;
  v18 = type metadata accessor for AttributeContainer();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v26;
  (*(v26 + 16))(v25, a3, a4, v23);
  v62 = v21;
  v63 = v19;
  v27 = *(v19 + 16);
  v28 = v57;
  v64 = v18;
  v27(v21, v57, v18);
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
  v29 = static AttributedStringKey.nsAttributedStringKey.getter();
  v30 = *(a5 + 24);
  v58 = v29;
  v61 = a4;
  v31 = a4;
  v32 = a5;
  v30(v71, v29, v31, a5);
  v33 = v72;
  v34 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  (*(v34 + 16))(&v69, v28, v33, v34);
  if (v70)
  {
    v35 = swift_dynamicCast();
    v36 = *(v14 + 56);
    v36(v12, v35 ^ 1u, 1, v13);
    v37 = *(v14 + 48);
    if (v37(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v66, v12, v13);
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of Any?(&v69);
    v36 = *(v14 + 56);
    v36(v12, 1, 1, v13);
  }

  static AttributedString.LineHeight.normal.getter();
  v37 = *(v14 + 48);
  if (v37(v12, 1, v13) != 1)
  {
    outlined destroy of Range<AttributedString.Index>(v12, type metadata accessor for AttributedString.LineHeight?);
  }

LABEL_7:
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v70 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(v14 + 16))(boxed_opaque_existential_1, v60, v13);
  outlined init with take of Any(&v69, v68);
  v40 = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v38;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v40, isUniquelyReferenced_nonNull_native);

  v42 = v32;
  v43 = *(v32 + 40);
  v44 = v61;
  v45 = v62;
  v43(v67, v62, 0, v61, v42);

  (*(v59 + 8))(v25, v44);
  v46 = v72;
  v47 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  (*(v47 + 16))(&v69, v45, v46, v47);
  if (v70)
  {
    v48 = v65;
    v49 = swift_dynamicCast();
    v36(v48, v49 ^ 1u, 1, v13);
    if (v37(v48, 1, v13) != 1)
    {
      v51 = v56;
      (*(v14 + 32))(v56, v48, v13);
      _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590]);
      v52 = v66;
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();

      v54 = *(v14 + 8);
      v54(v51, v13);
      v54(v52, v13);
      (*(v63 + 8))(v45, v64);
      v50 = v53 ^ 1;
      goto LABEL_13;
    }

    (*(v14 + 8))(v66, v13);
    (*(v63 + 8))(v45, v64);
  }

  else
  {

    (*(v14 + 8))(v66, v13);
    (*(v63 + 8))(v45, v64);
    outlined destroy of Any?(&v69);
    v48 = v65;
    v36(v65, 1, 1, v13);
  }

  outlined destroy of Range<AttributedString.Index>(v48, type metadata accessor for AttributedString.LineHeight?);
  v50 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v50 & 1;
}

void _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

BOOL specialized static TextFormattingControl.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    return a3 == a6;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return a3 == a6;
  }

  return 0;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI5ColorVSgG_So7UIColorCSgs5NeverOTg503_s7d3UI5f6VSgSo7g13CSgIggo_AdGs5H11OIegnrzr_TRAiMIggo_Tf1cn_nTf4ng_n(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v22 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v22;
    v6 = v22 + 56;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(v22 + 36);
    v20 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      a2(v12);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v22;
      v10 = 1 << *(v22 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v13 = *(v6 + 8 * v11);
      if ((v13 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v7 & 0x3F));
      if (v14)
      {
        v10 = __clz(__rbit64(v14)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v11 << 6;
        v16 = v11 + 1;
        v17 = (v22 + 64 + 8 * v11);
        while (v16 < (v10 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
            v10 = __clz(__rbit64(v18)) + v15;
            goto LABEL_18;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
LABEL_18:
        v5 = v22;
      }

      ++v8;
      v7 = v10;
      if (v8 == v20)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

unint64_t _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesO04CoreC0E04CoreC10AttributesV0c9AlignmentS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a2;
  v80 = type metadata accessor for AttributedString.TextAlignment();
  v74 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?)();
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v75 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for AttributeContainer();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v66 - v24;
  v98 = a4;
  v99 = a5;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v97);
  v27 = *(*(a4 - 8) + 16);
  v78 = v26;
  v81 = a4;
  v27(v26, a3, a4);
  v28 = *(v21 + 16);
  v84 = v21 + 16;
  v83 = v28;
  v28(v25, a1, v20);
  v29 = v98;
  v30 = v99;
  __swift_project_boxed_opaque_existential_1(&v97, v98);
  v31 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v82 = a5;
  (*(a5 + 32))(&v92, v31, v29, v30);

  v32 = v94;
  v33 = v95;
  v34 = __swift_project_boxed_opaque_existential_1(&v92, v94);
  v96[3] = v32;
  v96[4] = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v34, v32);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  ValidatingTextAttributeDefinition.fixup(_:)(v25, v32, v33);
  v77 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
  AttributeContainer.subscript.getter();
  (*(*(v33 + 8) + 16))(&v92, v25, v32);
  if (!v94)
  {
    outlined destroy of Range<AttributedString.Index>(v19, type metadata accessor for AttributedString.TextAlignment?);
    (*(v21 + 8))(v25, v20);
    outlined destroy of Any?(&v92);
LABEL_23:
    v65 = 0;
    goto LABEL_24;
  }

  v85 = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of Range<AttributedString.Index>(v19, type metadata accessor for AttributedString.TextAlignment?);
    (*(v85 + 8))(v25, v20);
    goto LABEL_23;
  }

  v76 = v19;
  v88 = v20;
  v89 = v91;
  v36 = *(v69 + 16);
  v37 = v85;
  if (!v36)
  {
LABEL_21:

    outlined destroy of Range<AttributedString.Index>(v76, type metadata accessor for AttributedString.TextAlignment?);
    (*(v37 + 8))(v25, v88);
    v65 = 1;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    return v65;
  }

  v73 = *MEMORY[0x1E69DB688];
  v72 = (v74 + 6);
  v67 = (v74 + 4);
  v68 = (v74 + 1);
  v74 = (v85 + 8);
  v38 = v69 + 40;
  v71 = v25;
  while (1)
  {
    v39 = *(v38 - 8);

    [v89 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v40 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of Range<AttributedString.Index>(v76, type metadata accessor for AttributedString.TextAlignment?);
      (*v74)(v25, v88);
      goto LABEL_23;
    }

    v41 = v91;
    v92 = v91;
    v39(&v91, &v92);

    if ((v91 & 1) == 0)
    {

      goto LABEL_6;
    }

    v42 = v87;
    v83(v87, v25, v88);
    v90[4] = v40;
    v43 = v73;
    v90[0] = v73;
    v90[1] = v41;
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
    v44 = static _DictionaryStorage.allocate(capacity:)();
    v45 = v43;
    v46 = v41;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v90, &v92, type metadata accessor for (NSAttributedStringKey, Any));
    v47 = v92;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v92);
    if (v49)
    {
      break;
    }

    v44[(result >> 6) + 8] |= 1 << result;
    *(v44[6] + 8 * result) = v47;
    result = outlined init with take of Any(&v93, (v44[7] + 32 * result));
    v50 = v44[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_26;
    }

    v44[2] = v52;
    outlined destroy of Range<AttributedString.Index>(v90, type metadata accessor for (NSAttributedStringKey, Any));
    (*(*(v82 + 8) + 40))(v44, v42, 0, v81);

    v53 = v86;
    AttributeContainer.subscript.getter();
    v54 = *(v79 + 48);
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v53, v12, type metadata accessor for AttributedString.TextAlignment?);
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v76, &v12[v54], type metadata accessor for AttributedString.TextAlignment?);
    v55 = *v72;
    v56 = v80;
    if ((*v72)(v12, 1, v80) == 1)
    {

      outlined destroy of Range<AttributedString.Index>(v53, type metadata accessor for AttributedString.TextAlignment?);
      v57 = *v74;
      (*v74)(v42, v88);
      v58 = v55(&v12[v54], 1, v56);
      v25 = v71;
      if (v58 == 1)
      {

        outlined destroy of Range<AttributedString.Index>(v76, type metadata accessor for AttributedString.TextAlignment?);
        v57(v25, v88);
        outlined destroy of Range<AttributedString.Index>(v12, type metadata accessor for AttributedString.TextAlignment?);
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    v59 = v75;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v12, v75, type metadata accessor for AttributedString.TextAlignment?);
    if (v55(&v12[v54], 1, v56) == 1)
    {

      outlined destroy of Range<AttributedString.Index>(v53, type metadata accessor for AttributedString.TextAlignment?);
      (*v74)(v87, v88);
      (*v68)(v59, v56);
      v25 = v71;
LABEL_16:
      outlined destroy of Range<AttributedString.Index>(v12, type metadata accessor for (AttributedString.TextAlignment?, AttributedString.TextAlignment?));
      v37 = v85;
      goto LABEL_6;
    }

    v60 = &v12[v54];
    v61 = v70;
    (*v67)(v70, v60, v56);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_7(&lazy protocol witness table cache variable for type AttributedString.TextAlignment and conformance AttributedString.TextAlignment, MEMORY[0x1E6965580]);
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();

    v63 = *v68;
    (*v68)(v61, v56);
    outlined destroy of Range<AttributedString.Index>(v86, type metadata accessor for AttributedString.TextAlignment?);
    v64 = *v74;
    (*v74)(v87, v88);
    v63(v59, v56);
    outlined destroy of Range<AttributedString.Index>(v12, type metadata accessor for AttributedString.TextAlignment?);
    v37 = v85;
    v25 = v71;
    if (v62)
    {

      outlined destroy of Range<AttributedString.Index>(v76, type metadata accessor for AttributedString.TextAlignment?);
      v64(v25, v88);
      goto LABEL_23;
    }

LABEL_6:
    v38 += 16;
    if (!--v36)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesOAAE0A12UIAttributesV0c13JustificationS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AttributeContainer();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v64 = a4;
  v65 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v18 = *(*(a4 - 8) + 16);
  v49 = boxed_opaque_existential_1;
  v50 = a4;
  v18(boxed_opaque_existential_1, a3, a4);
  v19 = *(v11 + 16);
  v53 = v11 + 16;
  v52 = v19;
  v19(v16, a1, v10);
  v20 = v64;
  v21 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v22 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v51 = a5;
  (*(a5 + 32))(&v58, v22, v20, v21);

  v24 = v60;
  v23 = v61;
  v25 = __swift_project_boxed_opaque_existential_1(&v58, v60);
  v62[3] = v24;
  v62[4] = v23;
  v26 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  ValidatingTextAttributeDefinition.fixup(_:)(v16, v24, v23);
  v48 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
  AttributeContainer.subscript.getter();
  (*(*(v23 + 8) + 16))(&v58, v16, v24);
  if (!v60)
  {
    (*(v11 + 8))(v16, v10);
    outlined destroy of Any?(&v58);
LABEL_27:
    v45 = 0;
    goto LABEL_28;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_27;
  }

  v54 = v56;
  v27 = *(a2 + 16);
  v28 = v11;
  if (!v27)
  {
LABEL_24:
    (*(v28 + 8))(v16, v10);

    v45 = 1;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return v45;
  }

  v46 = *MEMORY[0x1E69DB688];
  v47 = (v11 + 8);
  v29 = a2 + 40;
  while (1)
  {
    v30 = *(v29 - 8);

    [v54 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v31 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v47)(v16, v10);

      goto LABEL_26;
    }

    v32 = v56;
    v58 = v56;
    v30(&v56, &v58);

    if ((v56 & 1) == 0)
    {

      v28 = v11;
      goto LABEL_6;
    }

    v52(v13, v16, v10);
    v55[4] = v31;
    v33 = v46;
    v55[0] = v46;
    v55[1] = v32;
    type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>();
    v34 = static _DictionaryStorage.allocate(capacity:)();
    v35 = v33;
    v36 = v32;
    _sSny10Foundation16AttributedStringV5IndexVGWOcTm_0(v55, &v58, type metadata accessor for (NSAttributedStringKey, Any));
    v37 = v58;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v58);
    if (v39)
    {
      break;
    }

    v34[(result >> 6) + 8] |= 1 << result;
    *(v34[6] + 8 * result) = v37;
    result = outlined init with take of Any(&v59, (v34[7] + 32 * result));
    v40 = v34[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    v34[2] = v42;
    outlined destroy of Range<AttributedString.Index>(v55, type metadata accessor for (NSAttributedStringKey, Any));
    (*(*(v51 + 8) + 40))(v34, v13, 0, v50);

    AttributeContainer.subscript.getter();

    v43 = *v47;
    (*v47)(v13, v10);
    if (v58 == 3)
    {
      v28 = v11;
      if (v57 == 3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = v11;
      if (v57 != 3)
      {
        if (v58 == 2)
        {
          if (v57 == 2)
          {
            goto LABEL_21;
          }
        }

        else if (v57 != 2)
        {
          v44 = v57 ^ v58;
          if ((v44 & 1) == 0 && ((v44 >> 8) & 1) == 0)
          {
LABEL_21:
            v43(v16, v10);
LABEL_26:

            goto LABEL_27;
          }
        }
      }
    }

LABEL_6:
    v29 += 16;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized TextFormattingControl.canPerformModification(on:in:using:)(char *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16, v12);
  v18 = *a2;
  v17 = a2[1];
  v19 = *(a6 + 8);
  rawValue = TextAttributeResolver.potentiallyEffectfulModifications()().rawValue;
  v21 = 0;
  if (a4 > 31)
  {
    if (a4 > 127)
    {
      switch(a4)
      {
        case 128:
          if ((rawValue & 0x80) == 0)
          {
            goto LABEL_38;
          }

          v21 = _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesO04CoreC0E04CoreC10AttributesV0c9AlignmentS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(a1, &outlined read-only object #0 of specialized TextFormattingControl.canPerformModification(on:in:using:), v14, a5, a6);
          type metadata accessor for ()();
          break;
        case 256:
          if ((rawValue & 0x100) == 0)
          {
            goto LABEL_38;
          }

          v21 = _s7SwiftUI21TextFormattingControlV9canChange33_1D08ED28859ED243BBEACA21C0966F88LL_2on4with2in5usingSbxm_10Foundation18AttributeContainerVSbSo23NSMutableParagraphStyleCcdAA17EnvironmentValuesVAA010ValidatingcS8Resolver_ptAJ19AttributedStringKeyRzlFAJ0S6ScopesOAAE0A12UIAttributesV0c13JustificationS0O_Ttt2g5Tf4nnen_nTf4nnnd_n(a1, &outlined read-only object #1 of specialized TextFormattingControl.canPerformModification(on:in:using:), v14, a5, a6);
          type metadata accessor for ()();
          break;
        case 512:
          if ((rawValue & 0x200) == 0)
          {
            goto LABEL_38;
          }

          v22 = specialized closure #9 in TextFormattingControl.canPerformModification(on:in:using:)(a1, v14, a5, a6);
          goto LABEL_29;
        default:
          goto LABEL_39;
      }

      swift_arrayDestroy();
      goto LABEL_39;
    }

    if (a4 != 32)
    {
      v21 = a4 == 64 && (rawValue & 0x40) != 0;
      goto LABEL_39;
    }

    if ((rawValue & 0x20) == 0)
    {
      goto LABEL_38;
    }

    v22 = specialized static TextFormattingControl.canIncrementFontSize(on:using:)(a1, v14, a5, a6);
LABEL_29:
    v21 = v22;
    goto LABEL_39;
  }

  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      if ((rawValue & 1) == 0)
      {
        goto LABEL_38;
      }

      v33 = v18;
      v34 = v17;
      v23 = 2;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_39;
      }

      if ((rawValue & 2) == 0)
      {
        goto LABEL_38;
      }

      v33 = v18;
      v34 = v17;
      v23 = 1;
    }

    v22 = ValidatingTextAttributeResolver.allowsFontTraitChange(_:on:in:)(v23, a1, &v33, a5, a6);
    goto LABEL_29;
  }

  switch(a4)
  {
    case 4:
      if ((rawValue & 4) == 0)
      {
        goto LABEL_38;
      }

      v24 = *MEMORY[0x1E69DB758];
      v25.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      v26 = v24;
      v27 = a1;
      isa = v25.super.super.isa;
      v29 = 0;
      v30 = 1;
LABEL_36:
      v21 = _s7SwiftUI21TextFormattingControlV9canToggle33_1D08ED28859ED243BBEACA21C0966F88LL_2on9trueValue24inlinePresentationIntent5usingSbSo21NSAttributedStringKeya_10Foundation18AttributeContainerVxSo08NSInlinerS0VSgAA0cY8Resolver_ptSQRzlFZSo8NSNumberC_Tt4g5Tf4nnnne_n(v26, v27, isa, v29, v30, v14, a5, v19);

      break;
    case 8:
      if ((rawValue & 8) == 0)
      {
        goto LABEL_38;
      }

      v31 = *MEMORY[0x1E69DB6B8];
      v25.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      v26 = v31;
      v27 = a1;
      isa = v25.super.super.isa;
      v29 = 32;
      v30 = 0;
      goto LABEL_36;
    case 16:
      if ((rawValue & 0x10) != 0)
      {
        if (one-time initialization token for validationColors != -1)
        {
          swift_once();
        }

        v22 = ValidatingTextAttributeResolver.allowsSettingForegroundColors(to:on:)(static TextFormattingControl.validationColors, a1, a5, a6);
        goto LABEL_29;
      }

LABEL_38:
      v21 = 0;
      break;
  }

LABEL_39:
  (*(v11 + 8))(v14, a5);
  return v21 & 1;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21NSAttributedStringKeya_Say7SwiftUI21TextFormattingControlVGTt1g505_sSl7g6UIAA21ijk2V7c84RtzrlE22effectfulModifications2in2of11environmentScSyAA0C18EditorModificationVGqd___u13A16Attributede71_pAA17EnvironmentValuesVtYaSTRd__Sny10Foundation0nO0V5IndexVGADRtd__lFys31S12ContinuationVyAK_GXEfU_So012D60O3KeyaACcfu_33_24f0dd856df31afde49bf31cb3cb1132ACA_Tf3nnpk_nTf1nc_nTf4g_n(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v5 = *(i - 2);
    v6 = *i;
    v7 = *(i - 1);
    v8 = v5;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, 1);
      v1 = v30;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v29 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v8;
      *(v4 + 5) = v7;
      *(v4 + 6) = v6;
    }

    else
    {
      type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_18CD63400;
      *(v24 + 32) = v8;
      *(v24 + 40) = v7;
      *(v24 + 48) = v6;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      *(v1[6] + 8 * v10) = v7;
      *(v1[7] + 8 * v10) = v24;
      v25 = v1[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v1[2] = v27;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of Range<AttributedString.Index>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _SetStorage<Color?>()
{
  if (!lazy cache variable for type metadata for _SetStorage<Color?>)
  {
    type metadata accessor for AsyncStream<TextEditorModification>.Continuation.BufferingPolicy(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<Color?>);
    }
  }
}